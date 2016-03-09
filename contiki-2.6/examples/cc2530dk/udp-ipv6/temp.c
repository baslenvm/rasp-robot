/*
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 * 3. Neither the name of the Institute nor the names of its contributors
 *    may be used to endorse or promote products derived from this software
 *    without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE INSTITUTE AND CONTRIBUTORS ``AS IS'' AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE INSTITUTE OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 *
 * This file is part of the Contiki operating system.
 *
 */

#include "contiki.h"
#include "contiki-lib.h"
#include "contiki-net.h"
#include "net/rpl/rpl.h"
#include <cc253x.h> 
#include <stdio.h> /* For PRINTF() */
#include "math.h"
#include "float.h" 
#include "dev/leds.h"
#include "debug.h"
#include "math.h"
#include "random.h"
#include "uip.h"
#include "time.h"
#include "net/uip-debug.h" 

#include "../temp_hum.h" 

#define DEBUG DEBUG_PRINT

#define SEND_INTERVAL		5 * CLOCK_SECOND//ตั้งค่าหน่วงเวลาส่ง
#define SEND_CHECK_ACK		60 * CLOCK_SECOND//ตั้งค่าหน่วงเวลาส่ง
#define MAX_PAYLOAD_LEN		20
#define NODE_NUM	 7//ตั้งค่าเลขโนต
#define NODE_ALIVE       0xff // NODE_ALIVE prefix
//for print routing
#define UIP_IP_BUF   ((struct uip_ip_hdr *)&uip_buf[UIP_LLH_LEN])
#define UIP_UDP_BUF  ((struct uip_udp_hdr *)&uip_buf[uip_l2_l3_hdr_len])
static uint8_t min_delay;
uint8_t is_ack;
static struct temp_hum node_alive;
//----------------------------------------------------------------------------------
// modul-var
//----------------------------------------------------------------------------------
enum {TEMP,HUMI};

#define	DATA   	P1_5
#define	SCK   	P1_6
#define PWR 	P1_4

#define PWR_ON()	(P1DIR|=0X10)
#define IIC_DATA_OUT()  (P1DIR|=0X20)  
#define IIC_DATA_IN()  (P1DIR&=~0X20)  
#define IIC_SCK_OUT()  (P1DIR|=0X40) 

#define noACK 0
#define ACK   1

                            //adr  command  r/w
#define STATUS_REG_W 0x06   //000   0110    0
#define STATUS_REG_R 0x07   //000   0111    1
#define MEASURE_TEMP 0x03   //000   0011    1
#define MEASURE_HUMI 0x05   //000   0101    1
#define RESET        0x1e   //000   1111    0

typedef union 
{ unsigned int i;
  float f;
} value;
/*---------------------------------------------------------------------------*/

extern uip_ds6_nbr_t uip_ds6_nbr_cache[];
extern uip_ds6_route_t uip_ds6_routing_table[];

static struct uip_udp_conn *listen_conn;
static struct uip_udp_conn *border_conn;

static struct temp_hum t_h;

static uint16_t len;
static uint16_t len_local;

char buf[MAX_PAYLOAD_LEN];
char buf_border[MAX_PAYLOAD_LEN];

/*---------------------------------------------------------------------------*/
PROCESS(send_node_process, "Send node process");
AUTOSTART_PROCESSES(&send_node_process);
/*---------------------------------------------------------------------------*/

char s_write_byte(unsigned char value2);
char s_read_byte(unsigned char ack);
void s_transstart(void);
void s_connectionreset(void);
char s_softreset(void);
char s_read_statusreg(unsigned char *p_value, unsigned char *p_checksum);
char s_write_statusreg(unsigned char *p_value);
char s_measure(unsigned char *p_value, unsigned char *p_checksum, unsigned char mode);
void calc_sth11(float *p_humidity ,float *p_temperature);
float calc_dewpoint(float h,float t);

/*---------------------------------------------------------------------------*/
void delay(unsigned char n)          //delay  n  us
{
    unsigned char i;
    unsigned int j;
    for(i = 0; i < n; i++)	  ASM(nop);	
   //   for(j = 0; j < 150; j++)
   //         ;
}
//----------------------------------------------------------------------------------
char s_write_byte(unsigned char value2)
//----------------------------------------------------------------------------------
// writes a byte on the Sensibus and checks the acknowledge 
{ 
  unsigned char i,error=0; 
  //P1DIR|=0X20;
IIC_DATA_IN();
IIC_SCK_OUT();
IIC_DATA_OUT();
 
  for (i=0x80;i>0;i/=2)             //shift bit for masking
  {                      
    (i & value2)?(DATA=1):(DATA=0); //masking value with i , write to SENSI-BUS 
    SCK=1;                          //clk for SENSI-BUS
    delay(5);			    //pulswith approx. 5 us  	
    SCK=0;
   delay(1);
  }
  DATA=1;                           //release DATA-line
  IIC_DATA_IN();
  SCK=1;                            //clk #9 for ack 
  error=DATA;                       //check ack (DATA will be pulled down by SHT11)
  SCK=0;        
  return error;                     //error=1 in case of no acknowledge
}

//----------------------------------------------------------------------------------
char s_read_byte(unsigned char ack)
//----------------------------------------------------------------------------------
// reads a byte form the Sensibus and gives an acknowledge in case of "ack=1" 
{ 
  unsigned char i,val=0;
  //P1DIR|=0X20;
IIC_DATA_IN();
IIC_SCK_OUT();
IIC_DATA_OUT();

  DATA=1;                           //release DATA-line
IIC_DATA_IN();
  for (i=0x80;i>0;i/=2)             //shift bit for masking
  { 
    SCK=1;                          //clk for SENSI-BUS
    delay(5);
    (DATA)? (val=(val | i)):(val=(val |0));        //read bit  
    SCK=0;  
    delay(1);					 
  }
IIC_DATA_OUT();
  DATA=!ack;                        //in case of "ack==1" pull down DATA-Line
  SCK=1;                            //clk #9 for ack
  delay(5);  			    //pulswith approx. 5 us 
  SCK=0;						    
  DATA=1;                           //release DATA-line

  return val;
}

//----------------------------------------------------------------------------------
void s_transstart(void)
//----------------------------------------------------------------------------------
// generates a transmission start 
//       _____         ________
// DATA:      |_______|
//           ___     ___
// SCK : ___|   |___|   |______
{ 
//P1DIR|=0X20;
IIC_SCK_OUT();
IIC_DATA_OUT();

  DATA=1; 
  SCK=0;                   //Initial state
   delay(5);
   SCK=1;
   delay(2);
   DATA=0;
   delay(3);
   SCK=0;  
   delay(5);
    SCK=1;
   delay(3);
   DATA=1;		   
   delay(2);
   SCK=0;	
	   
}

//----------------------------------------------------------------------------------
void s_connectionreset(void)
//----------------------------------------------------------------------------------
// communication reset: DATA-line=1 and at least 9 SCK cycles followed by transstart
//       _____________________________________________________         ________
// DATA:                                                      |_______|
//          _    _    _    _    _    _    _    _    _        ___     ___
// SCK : __| |__| |__| |__| |__| |__| |__| |__| |__| |______|   |___|   |______
{  
  unsigned char i; 
  //P1DIR|=0X20;
IIC_SCK_OUT();
IIC_DATA_OUT(); 
//PWR_ON();PWR = 1;

  DATA=1; SCK=0;                    //Initial state
  delay(2);
  for(i=0;i<9;i++)                  //9 SCK cycles
  { 
  SCK=1;
  delay(2);
  SCK=0;
  delay(2);	
  }
  s_transstart();                   //transmission start
}

//----------------------------------------------------------------------------------
char s_softreset(void)
//----------------------------------------------------------------------------------
// resets the sensor by a softreset 
{ 
  unsigned char error=0;  
  s_connectionreset();              //reset communication
  error+=s_write_byte(RESET);       //send RESET-command to sensor
  return error;                     //error=1 in case of no response form the sensor
}

//----------------------------------------------------------------------------------
char s_read_statusreg(unsigned char *p_value, unsigned char *p_checksum)
//----------------------------------------------------------------------------------
// reads the status register with checksum (8-bit)
{ 
  unsigned char error=0;
  s_transstart();                   //transmission start
  error=s_write_byte(STATUS_REG_R); //send command to sensor
  *p_value=s_read_byte(ACK);        //read status register (8-bit)
  *p_checksum=s_read_byte(noACK);   //read checksum (8-bit)  
  return error;                     //error=1 in case of no response form the sensor
}

//----------------------------------------------------------------------------------
char s_write_statusreg(unsigned char *p_value)
//----------------------------------------------------------------------------------
// writes the status register with checksum (8-bit)
{ 
  unsigned char error=0;
  s_transstart();                   //transmission start
  error+=s_write_byte(STATUS_REG_W);//send command to sensor
  error+=s_write_byte(*p_value);    //send value of status register
  return error;                     //error>=1 in case of no response form the sensor
}
 							   
//----------------------------------------------------------------------------------
char s_measure(unsigned char *p_value, unsigned char *p_checksum, unsigned char mode)
//----------------------------------------------------------------------------------
// makes a measurement (humidity/temperature) with checksum
{ 

  unsigned error=0;
  unsigned int i;

  s_transstart();                   //transmission start
  switch(mode){                     //send command to sensor
    case TEMP	: error+=s_write_byte(MEASURE_TEMP); break;
    case HUMI	: error+=s_write_byte(MEASURE_HUMI); break;
    default     : break;	 
  }
  
  for (i=0;i<65535;i++)
  	{

  	delay(5);
	if(DATA==0) break; //wait until sensor has finished the measurement
  	}

  if(DATA) error+=1;                // or timeout (~2 sec.) is reached
  *(p_value+1)  =s_read_byte(ACK);    //read the first byte (MSB)
  *(p_value) =s_read_byte(ACK);     //read the second byte (LSB)
  *p_checksum =s_read_byte(noACK);  //read checksum
  return error;
}
//----------------------------------------------------------------------------------------
void calc_sth11(float *p_humidity ,float *p_temperature)
//----------------------------------------------------------------------------------------
// calculates temperature and humidity [%RH] 
// input :  humi [Ticks] (12 bit) 
//          temp [Ticks] (14 bit)
// output:  humi [%RH]
//          temp 
{ const float C1=-2.0468;              // for 12 Bit
  const float C2=+0.0367;           // for 12 Bit
  const float C3=-0.0000015955;        // for 12 Bit
  const float T1=+0.01;             // for 14 Bit @ 5V
  const float T2=+0.00008;           // for 14 Bit @ 5V	

  float rh=*p_humidity;             // rh:      Humidity [Ticks] 12 Bit 
  float t=*p_temperature;           // t:       Temperature [Ticks] 14 Bit
  float rh_lin;                     // rh_lin:  Humidity linear
  float rh_true;                    // rh_true: Temperature compensated humidity
  float t_C;                        // t_C   :  Temperature 	

  t_C=t*0.01 - 39.66;                  //calc. temperature from ticks to [°C]
  rh_lin=C3*rh*rh + C2*rh + C1;     //calc. humidity from ticks to [%RH]
  rh_true=(t_C-25)*(T1+T2*rh)+rh_lin;   //calc. temperature compensated humidity [%RH]
  if(rh_true>100)rh_true=100;       //cut if the value is outside of
  if(rh_true<0.1)rh_true=0.1;       //the physical possible range

  *p_temperature=t_C;               //return temperature [°C]
  *p_humidity=rh_true;              //return humidity[%RH]

}
/*
//--------------------------------------------------------------------
float calc_dewpoint(float h,float t)
//--------------------------------------------------------------------
// calculates dew point
// input:   humidity [%RH], temperature 
// output:  dew point
{ 
  float logEx,dew_point;

  logEx=0.66077+7.5*t/(237.3+t)+(log10f(h)-2);			//log10() = log10f()
  dew_point = (logEx - 0.66077)*237.3/(0.66077+7.5-logEx);
  return dew_point;

}*/
//---------------------------------------------------------------------------
static void send_temp_humi(void){
//---------------------------------------------------------------------------
   value humi_val,temp_val;
  unsigned char error;
  unsigned char checksum;
  //float dew_point, temp_cal, humi_cal;
  float  temp_cal, humi_cal;
  uint16_t node_id, humi_i, temp_i, humi_int, temp_int, temp_i_l, temp_i_h, humi_i_l, humi_i_h;
 // uint16_t node_mac;

leds_on(LEDS_GREEN);
   memset(buf_border, 0, MAX_PAYLOAD_LEN);
   s_connectionreset();

      error=0;
      error += s_measure((unsigned char*) &temp_val.i,(unsigned char*)&checksum,TEMP);
      error += s_measure((unsigned char*) &humi_val.i,(unsigned char*)&checksum,HUMI);
	
	if(error!=0) s_connectionreset();//in case of an error: connection reset
	else{ 
	humi_val.f=(float)humi_val.i;  //converts integer to float
	temp_val.f=(float)temp_val.i;  //converts integer to float

	calc_sth11(&humi_val.f,&temp_val.f);  //calculate humidity,temperature  
	//dew_point=calc_dewpoint(humi_val.f,temp_val.f); //calculate dew point

  temp_cal = temp_val.f*100;  
  temp_int = ((int)temp_val.f)*100;
  temp_i_l = (int)(temp_cal-temp_int);
  temp_i_h = (int)temp_val.f;

  humi_cal = humi_val.f*100;  
  humi_int = ((int)humi_val.f)*100;
  humi_i_l = (int)(humi_cal-humi_int);
  humi_i_h = (int)humi_val.f;
   
temp_i_l = (int)(temp_cal-temp_int);
temp_i_h = (int)temp_val.f;
humi_i_l = (int)(humi_cal-humi_int);
humi_i_h = (int)humi_val.f;

   
  PRINTF("T=%d.%d C\t",temp_i_h,temp_i_l);
  PRINTF("H=%d.%d RH\n",humi_i_h,humi_i_l);
 
  node_id = NODE_NUM;

  t_h.n_id = uip_htons(node_id);
  //t_h.n_mac = uip_htons(node_mac);

  //t_h.n_temp_f = uip_htons(temp_val.f);
  //t_h.n_humi_f = uip_htons(humi_val.f);

  t_h.n_temp_i_h = uip_htons(temp_i_h);
  t_h.n_temp_i_l = uip_htons(temp_i_l);
  t_h.n_humi_i_h = uip_htons(humi_i_h);
  t_h.n_humi_i_l = uip_htons(humi_i_l);

  memcpy(buf_border, &t_h, sizeof(t_h));
  uip_udp_packet_send(border_conn, buf_border, sizeof(buf_border));
printf("sending \n");
}
leds_off(LEDS_GREEN);
}
//---------------------------------------------------------------------------
static void
tcpip_handler(void)
{
  char *appdata;
  //temp_hum_t  *read_t_h = (struct temp_hum *)uip_appdata;

  //memset(buf, 0, MAX_PAYLOAD_LEN);
  if(uip_newdata()) {
        appdata = (char *)uip_appdata;
    leds_on(LEDS_RED);
    len = uip_datalen();
    memcpy(buf, uip_appdata, len);
    PRINTF("%u bytes from [", len);
    PRINT6ADDR(&UIP_IP_BUF->srcipaddr);
    printf("]:%u\n", UIP_HTONS(UIP_UDP_BUF->srcport));

        is_ack=1; //set is_ack flag


}
  leds_off(LEDS_RED);
printf("is_ack= %d \n",is_ack);
}
static void send_alive(void){
        //is_ack=0; //reset is_ack
  node_alive.n_id = uip_htons(NODE_ALIVE);
  memset(buf_border, 0, MAX_PAYLOAD_LEN);
  memcpy(buf_border, &node_alive, sizeof(node_alive));
  uip_udp_packet_send(border_conn, buf_border, sizeof(buf_border));
  printf("send_alive\n");


}




static void
print_local_addresses(void)
{
  int i;
  uint8_t state;

  PRINTF("Server IPv6 addresses:\n");
  for(i = 0; i < UIP_DS6_ADDR_NB; i++) {
    state = uip_ds6_if.addr_list[i].state;
    if(uip_ds6_if.addr_list[i].isused && (state == ADDR_TENTATIVE || state
        == ADDR_PREFERRED)) {
      PRINTF("  ");
      PRINT6ADDR(&uip_ds6_if.addr_list[i].ipaddr);
      PRINTF("\n");
      if (state == ADDR_TENTATIVE) {
        uip_ds6_if.addr_list[i].state = ADDR_PREFERRED;
      }
    }
  }
}
/*---------------------------------------------------------------------------*/
static void
set_global_address(void)
{
  uip_ipaddr_t ipaddr;
  int i;
  uint8_t state;

  uip_ip6addr(&ipaddr, 0xaaaa, 0, 0, 0, 0, 0, 0, 0);
  uip_ds6_set_addr_iid(&ipaddr, &uip_lladdr);
  uip_ds6_addr_add(&ipaddr, 0, ADDR_AUTOCONF);

  PRINTF("IPv6 addresses: ");
  for(i = 0; i < UIP_DS6_ADDR_NB; i++) {
    state = uip_ds6_if.addr_list[i].state;
    if(uip_ds6_if.addr_list[i].isused &&
       (state == ADDR_TENTATIVE || state == ADDR_PREFERRED)) {
      uip_debug_ipaddr_print(&uip_ds6_if.addr_list[i].ipaddr);
      PRINTF("\n");
    }
  }
}

/*---------------------------------------------------------------------------*/

PROCESS_THREAD(send_node_process, ev, data)
{
static struct etimer et;
static struct etimer et_check_ack;
  uip_ipaddr_t ipaddr_border;
  PROCESS_BEGIN();
  set_global_address();
  print_local_addresses();
printf("cwww\n");
//bind
	listen_conn  = udp_new(NULL, UIP_HTONS(0), NULL);
	udp_bind(listen_conn,UIP_HTONS(4000));
//border_IP ต้องใส่แมคแอดเดรด ตัว root
uip_ip6addr(&ipaddr_border,0xaaaa,0,0,0,0x0212,0x4b00,0x04e9,0x054d);
	border_conn = udp_new(&ipaddr_border, UIP_HTONS(3000), NULL);
  if(!border_conn) {
    PRINTF("udp_new border_conn error.\n");
  }	
  
etimer_set(&et, SEND_INTERVAL);
etimer_set(&et_check_ack, SEND_CHECK_ACK);
min_delay=0;
    while(1) {
      PROCESS_YIELD();
      if(etimer_expired(&et)) {
	send_temp_humi();
	etimer_restart(&et);
  }
//keep inform alive interval
        if(etimer_expired(&et_check_ack)) {
        min_delay++;
                if(min_delay==2){
                send_alive();
                min_delay=0;
        }
        printf("check is_ack= %d\n",is_ack);
                if(is_ack==0){ // if is_ack ==0 then restart node cause node can't reachable network.
        printf("check is_ack= %d call reset\n",is_ack);
        //SOFT_RESET();
        }
        is_ack=0; //reset is_ack
        etimer_restart(&et_check_ack);
        }

  if(ev == tcpip_event) {
 printf("tcp_event\n");
        tcpip_handler();
   
 }
 }
  PROCESS_END();
}
/*---------------------------------------------------------------------------*/


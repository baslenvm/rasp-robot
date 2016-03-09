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

#define DEBUG DEBUG_PRINT

#define SEND_INTERVAL		5 * CLOCK_SECOND//ตั้งค่าหน่วงเวลาส่ง
#define MAX_PAYLOAD_LEN		20
#define NODE_NUM	 1//ตั้งค่าเลขโนต

//for print routing
#define UIP_IP_BUF   ((struct uip_ip_hdr *)&uip_buf[UIP_LLH_LEN])
#define UIP_UDP_BUF  ((struct uip_udp_hdr *)&uip_buf[uip_l2_l3_hdr_len])


#define CODE_DEBUG 1

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

static struct uip_udp_conn *g_conn;
static struct uip_udp_conn *listen_conn;
static struct uip_udp_conn *border_conn;
static struct uip_udp_conn *border_conn1;

static struct temp_hum ;

static uint16_t len;
static uint16_t len_local;

char buf[MAX_PAYLOAD_LEN];
char buf_border[MAX_PAYLOAD_LEN];

/*---------------------------------------------------------------------------*/
/*---------------------------------------------------------------------------*/

char s_write_byte(unsigned char value2);
char s_read_byte(unsigned char ack);
void s_transstart(void);
void s_connectionreset(void);

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
//       ____      ____________________
// DATA:     |____|
//       ______       ___      ____
// SCK :       |_____|   |____|    |____
{ 
//P1DIR|=0X20;
IIC_SCK_OUT();
IIC_DATA_OUT();

  DATA=1; 
  SCK=1;                   //Initial state
   delay(3);
   DATA=0;
   delay(2);
   SCK=0;
   delay(3);
   DATA=1;
   delay(2);
   SCK=1;
        
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

  DATA=1; SCK=1;                    //Initial state
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

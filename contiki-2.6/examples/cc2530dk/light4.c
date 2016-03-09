

#include "contiki.h"
#include <cc253x.h>
#include <stdio.h> /* For printf() */
#include <port.h>
#include "dev/leds.h"

static uint8_t blinks;


#define	DATA   	P1_5
#define	SCK   	P1_6
                            //adr  command  r/w
#define STATUS_REG_Write 	0xB8   //101   1100    0
#define STATUS_REG_Read 	0xB9   //101   1100    1
#define STATUS_REG_ACK		0x23   //001   0001    1
#define MEASURE_LIGHT 		0x03   //000   0011    1
#define RESET        		0x07   //000   0111    0

// Power on 							0000_0001
// Reset 								0000_0111
//Continuously H-Resolution Mode		0001_0000
#define IIC_DATA_OUT()	(P1DIR |= 0X20)  // dataout port p1_5
#define IIC_DATA_IN()	(P1DIR &= ~0X20)  // datain port p1_5
#define IIC_SCK_OUT()	(P1DIR |= 0X40)	// clock port p1_6

int act = -1;

unsigned int Highbyte = 0x00;
unsigned int Lowbyte = 0x00;
//===============================================================
/*---------------------------------------------------------------------------*/
void delay(unsigned char n)          //delay  n  us
{
    unsigned char i;
    
    for(i = 0; i < n; i++)     ASM(nop); 
   
}


void s_transstart(void)
{
//----------------------------------------------------------------------------------
// generates a transmission start 
//       ___       
// DATA:    |____
//       ____   
// SCK :     |___
//P1DIR|=0X20;

IIC_SCK_OUT();
IIC_DATA_OUT();
 
   DATA = 1; 
   SCK = 1;                   //Initial state
   delay(5);
   SCK = 0;
   delay(2);
   DATA = 0;
   delay(3);
   SCK = 0;  
   
        
} 

void I2CInit()
{
IIC_DATA_OUT();
IIC_SCK_OUT();
  DATA = 1;
  SCK = 1;
  delay(5);
}
 

void I2CStart(){
	IIC_DATA_OUT();
	IIC_SCK_OUT();
	DATA = 0;
	SCK = 0;
	delay(5);
}
 
 void I2CStop(){
	IIC_DATA_OUT();
	IIC_SCK_OUT();
	SCK = 0;

	DATA = 0;
	SCK = 1;

	DATA = 1;
}
 

//----------------------------------------------------------------------------------
char s_write_byte(unsigned char value2)
//----------------------------------------------------------------------------------
// writes a byte on the Sensibus and checks the acknowledge 
{ 
  unsigned char i,ack=0; 
  //P1DIR|=0X20;
IIC_DATA_IN();
IIC_SCK_OUT();
IIC_DATA_OUT();
  
  for (i=0x80;i>0;i/=2)             //shift bit for masking
  {                      
    (i & value2)?(DATA=1):(DATA=0); //masking value with i , write to SENSI-BUS 
    SCK=1;                          //clk for SENSI-BUS
    delay(5);               //pulswith approx. 5 us     
    SCK=0;
   delay(1);
  }
  DATA=1;                           //release DATA-line
  IIC_DATA_IN();
  SCK=1;                            //clk #9 for ack 
  ack=DATA;                       //check ack (DATA will be pulled down by SHT11)
  SCK=0;        
  return ack;                     //error=1 in case of no acknowledge
}
 
//----------------------------------------------------------------------------------
char s_read_byte(unsigned char ack)
//----------------------------------------------------------------------------------
// reads a byte form the Sensibus and gives an acknowledge in case of "ack=1" 
{ 
  unsigned char i,val=0;
  //P1DIR|=0X20;
IIC_DATA_OUT();
IIC_SCK_OUT();

 
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
  DATA=0;                        //in case of "ack==1" pull down DATA-Line
  SCK=1;                            //clk #9 for ack
  delay(5);                 //pulswith approx. 5 us 
  SCK=0;                            
  DATA=1;                           //release DATA-line
 
  return val;
}

//----------------------------------------------------------------


int SentLowRes()
{	int act = -1;
	s_transstart();
	act = s_write_byte(0xB8);
	if (act > -1){
	printf("recive ACK : %d\n", act);
		act = -1;
		act = s_write_byte(0x23);
	}
	if (act > -1){
		I2CStop();
	}
	
	return 0;
}


//===============================================================
int ReadLowRes()
{	int act = -1;
	s_transstart();
	act = s_write_byte(0xB9);
	if (act > -1){
		printf("ReadLowRes ACK : %d\n", act);
		Highbyte = s_read_byte(1);
		}
		if(Highbyte > -1){				
		Lowbyte = s_read_byte(0);
		}
		I2CStop();

		printf("Highbyte: %x \t Lowbyte: %x \n",Highbyte ,Lowbyte);
	}


/*---------------------------------------------------------------------------*/
PROCESS(hello_world_process, "Hello world process");
AUTOSTART_PROCESSES(&hello_world_process);
/*---------------------------------------------------------------------------*/
PROCESS_THREAD(hello_world_process, ev, data)
{

  PROCESS_BEGIN();
 
  act = s_write_byte(0x8f);
	
	
  PROCESS_END();

}

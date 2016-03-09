

#include "contiki.h"
#include <cc253x.h>
#include <stdio.h> /* For printf() */
#include <port.h>
#include "dev/leds.h"

static uint8_t blinks;


#define	SDA   	P1_5
#define	SCL   	P1_6
                            //adr  command  r/w
#define STATUS_REG_Write 	0xB8   //101   1100    0
#define STATUS_REG_Read 	0xB9   //101   1100    1
#define STATUS_REG_ACK		0x23   //001   0001    1
#define MEASURE_LIGHT 		0x03   //000   0011    1
#define RESET        		0x07   //000   0111    0

// Power on 							0000_0001
// Reset 								0000_0111
//Continuously H-Resolution Mode		0001_0000
#define IIC_DATA_OUT()  (P1DIR|=0X20)  // dataout port p1_5
#define IIC_DATA_IN()  (P1DIR&=~0X20)  // datain port p1_5
#define IIC_SCL_OUT()  (P1DIR|=0X40)	// clock port p1_6

int act = -1;

unsigned int Highbyte = 0x00;
unsigned int Lowbyte = 0x00;
//===============================================================
void Delay(int time){
	int i;
	for ( i=0;i<time;i++){
	}

}

void I2CInit()
{

	IIC_DATA_OUT();

	SDA = 1;
	SCL = 1;

}
 
void I2CStart(){
	IIC_DATA_OUT();
	SDA = 0;
	SCL = 0;
	
}
 
void I2CRestart(){
	IIC_DATA_OUT();
	SDA = 1;
	SCL = 1;
	
	SDA = 0;
	SCL = 0;

}
 
void I2CStop(){
	IIC_DATA_OUT();
	SCL = 0;

	SDA = 0;
	SCL = 1;

	SDA = 1;
}
 
void I2CAck(){
	IIC_DATA_OUT();
	SDA = 0;
	SCL = 1;

	SCL = 0;

	SDA = 1;

}
 
void I2CNak(){
	IIC_DATA_OUT();
	SDA = 1;
	SCL = 1;

	SCL = 0;

	SDA = 1;
}
 
unsigned char I2CSend(unsigned char Data)
{
	 unsigned char i, ack_bit;
	 for (i = 0; i < 8; i++) {
		if ((Data & 0x80) == 0)
			SDA = 0;
		else
			SDA = 1;
		SCL = 1;

	 	SCL = 0;
	 
		Data<<=1;
	 }
	 SDA = 1;
	 SCL = 1;
	
	 IIC_DATA_IN();
	 ack_bit = SDA;
	 IIC_DATA_OUT();
	 SCL = 0;
	
	 return ack_bit;
}
 
unsigned char I2CRead()
{
	unsigned char i, Data=0;
	IIC_DATA_IN();
	for (i = 0; i < 8; i++) {
		SCL = 1;
		
		if(SDA == 1)
			printf("DATA = %d \n", Data);
			Data |=1;
		if(i<7)
			Data<<=1;
		SCL = 0;
		
	}
	return Data;
}
//----------------------------------------------------------------


int SentLowRes()
{
	I2CInit();
	I2CStart();
	act = I2CSend(0xB8);
	if (act = 1){
	printf("recive ACK : %d\n", act);
		act = -1;
		act = I2CSend(0x23);

	}
	if (act = 1){
		I2CStop();
	}
	
	return 0;
}


//===============================================================
int ReadLowRes()
{
	I2CInit();
	I2CStart();
	act = I2CSend(0xB9);
	if (act = 1){
		printf("ReadLowRes ACK : %d\n", act);
		Highbyte = I2CRead();
		if(Highbyte > -1){
			I2CAck ();
		}
		Lowbyte = I2CRead();
		if (Lowbyte > -1)
		{
			I2CNak();
		}
		I2CStop();
		printf("Highbyte: %x \t Lowbyte: %x \n",Highbyte ,Lowbyte);
	}
}

/*---------------------------------------------------------------------------*/
PROCESS(hello_world_process, "Hello world process");
AUTOSTART_PROCESSES(&hello_world_process);
/*---------------------------------------------------------------------------*/
PROCESS_THREAD(hello_world_process, ev, data)
{

  PROCESS_BEGIN();
  while(1){
	IIC_SCL_OUT();
	SDA = 0;
	SCL = 0;
	Delay (500);
	SentLowRes();
	ReadLowRes();
	}
  PROCESS_END();

}

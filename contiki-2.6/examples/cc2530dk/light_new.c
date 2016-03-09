#include "contiki.h"
#include <cc253x.h>
#include <stdio.h> /* For printf() */
#include <port.h>
#include "dev/leds.h"
#include <stdio.h>

static uint8_t blinks;
#define TRUE 1 
#define FALSE 0 

#define SDA P1_5			//port of data
#define SCL P1_6 			//port of clock 

                            //adr  command  r/w
#define STATUS_REG_Write 	0xB8   //101   1100    0
#define STATUS_REG_Read 	0xB9   //101   1100    1
#define STATUS_REG_ACK		0x23   //001   0001    1
#define MEASURE_LIGHT 		0x03   //000   0011    1
#define RESET        		0x07   //000   0111    0


unsigned int Highbyte = 0x00;
unsigned int Lowbyte = 0x00;

/*---------------------------------------------------------------------------*/
void Delay_1u (unsigned int len	) 
	{ 
DISABLE_INTERRUPTS();
  while(len--) {
    ASM(nop);
  }
  ENABLE_INTERRUPTS();
}
void Delay_1m(unsigned int len)
{	while(len--) {
		Delay_1u(1000);
	}
}
/*---------------------------------------------------------------------------*/

unsigned char error; /* error, the global variable */ 

/*---------------------------------------------------------------------------*/

void WriteSDA1 (void) // SDA output 1, which is equivalent to 51 of SDA = 1 
	{ 
		P1DIR |= 0x20; 
		SDA = 1; 
	} 

void WriteSDA0 (void) // SDA Output 0 
	{ 
		P1DIR |= 0x20; 
		SDA = 0; 
	} 

void WriteSCL1 (void) // SCL output 1 
	{ 
		P1DIR |= 0x40; 
		SCL = 1; 
	} 

void WriteSCL0 (void) // SCL output 1 
	{ 
		P1DIR |= 0x40; 
		SCL = 0; 
	} 

void ReadSDA (void) // set SDA here correspond DIR IO port can receive data 
	{ 
		P1DIR &= ~0x20; 
	} 

/* Function to start the I2C bus, while SCL is high time that the SDA produces a negative transition */ 
void I2C_Start_1 (void) 
	{ 
		WriteSDA1 (); 
		WriteSCL1 (); 
		Delay_1u (50); 
		WriteSDA0 (); 
		Delay_1u (50); 
		WriteSCL0 (); 
		Delay_1u (50); 
	} 

/* Terminate the I2C bus, so when SCL high SDA produces a positive transition */ 
void I2C_Stop_1 (void) 
	{ 
		WriteSDA0 (); 
		Delay_1u (50); 
		WriteSCL1 (); 
		Delay_1u (50); 
		WriteSDA1 (); 
		Delay_1u (50); 
		WriteSCL0 (); 
		Delay_1u (50); 
	} 

/* Send 0, so that the SDA signal SCL is high is low */ 
void SEND_0_1 (void) /* SEND ACK */ 
	{ 
		WriteSDA0 (); 
		WriteSCL1 (); 
		Delay_1u (50); 
		WriteSCL0 (); 
		Delay_1u (50); 
	} 

/* Send 1, so that the SDA signal SCL is high is high */ 
void SEND_1_1 (void) 
	{ 
		WriteSDA1 (); 
		WriteSCL1 (); 
		Delay_1u (50); 
		WriteSCL0 (); 
		Delay_1u (50); 
	} 

/* Byte sending the response signal after a test device */ 
int Check_Acknowledge_1 (void) 
	{ 
		int F0;
		WriteSDA1 (); 
		WriteSCL1 (); 
		Delay_1u (50); 
		F0 = SDA; 
		Delay_1u (50); 
		WriteSCL0 (); 
		Delay_1u (50); 
			if (F0 == 1) 
				return FALSE; 
				return TRUE; 
	} 

void Write_Acknowledge_1 (void) 
	{ 
		WriteSDA0 (); 
		Delay_1u (50); 
		WriteSCL1 (); 
		Delay_1u (50); 
		WriteSCL0 (); 
		Delay_1u (50); 
	} 

/* Write a byte to the I2C bus */ 
void WriteI2CByte_1 (unsigned char b) 
	{ 
		char i; 
			for (i = 0; i <8; i ++) 
		{ 
				if ((b << i) & 0x80) 
			{ 
				SEND_1_1 (); 
			} 
				else 
				{ 
					SEND_0_1 (); 
				} 
		} 
	} 

/* Read a byte from the I2C bus */ 
unsigned char ReadI2CByte_1 (void) 
	{ 
		int F0;
		unsigned char b = 0, i; 
		WriteSDA1 (); 

			for (i = 0; i <8; i ++) 
		{
			int b;
			WriteSCL0 (); 
			Delay_1u (50); 
			WriteSCL1 (); 
			Delay_1u (50); 

			ReadSDA (); 
			F0 = SDA; // register one for storing one bit of data in the SDA 

			if (F0 == 1) 
				{ 
					b = b << 1; 
					b = b | 0x01; 
				} 
			else 
				b = b << 1; 
		}	 
				WriteSCL0 (); 
				return b; 
	} 

/*---------------------------------------------------------------------------*/
void sendComm(){
	unsigned char reciAct = 0;
	I2C_Start_1();
	WriteI2CByte_1(0x01);
	I2C_Stop_1();

	I2C_Start_1();
	WriteI2CByte_1(0xB8);
	//reciAct = Check_Acknowledge_1();
	//Delay_1m(1);
	
	I2C_Stop_1();
	I2C_Stop_1();
	I2C_Start_1();
	//if(reciAct == TRUE) 
	WriteI2CByte_1(0x23);
	//reciAct = Check_Acknowledge_1();
	//if(reciAct == TRUE) 
	I2C_Stop_1();
}
/*---------------------------------------------------------------------------*/

/*---------------------------------------------------------------------------*/
void readData(){
	unsigned char reciAct = 0;
	I2C_Start_1();
	WriteI2CByte_1(0xB9);
	reciAct = Check_Acknowledge_1();
	if(reciAct == TRUE){
	 Highbyte = ReadI2CByte_1();
	 Write_Acknowledge_1();
	 Write_Acknowledge_1();
	 Lowbyte = ReadI2CByte_1();
	 Write_Acknowledge_1();
	 I2C_Stop_1();
	}
	printf("Highbyte: %d \t Lowbyte: %d \n",Highbyte ,Lowbyte);
}
/*---------------------------------------------------------------------------*/

/*---------------------------------------------------------------------------*/
PROCESS(hello_world_process, "Hello world process");
AUTOSTART_PROCESSES(&hello_world_process);
/*---------------------------------------------------------------------------*/
PROCESS_THREAD(hello_world_process, ev, data)
{

  PROCESS_BEGIN();
//while(1){
  sendComm();
  Delay_1m(20);
  readData();  
//}
  PROCESS_END();
}
/*---------------------------------------------------------------------------*/

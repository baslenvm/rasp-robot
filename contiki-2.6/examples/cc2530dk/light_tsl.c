#include "contiki.h" 
#include "dev/leds.h" 
#include "port.h" 
#include "adc-sensor.h"
#include "sys/clock.h"

#include <stdio.h> /* For printf() */ 


int b = 0;
int a = 0;
int c = 0;
int d = 0;
uint16_t lv, tv, tick;

/*---------------------------------------------------------------------------*/ 
PROCESS(hello_world_process, "Hello world process");
 AUTOSTART_PROCESSES(&hello_world_process); 
/*---------------------------------------------------------------------------*/ 
PROCESS_THREAD(hello_world_process, ev, data) {

PROCESS_BEGIN();
for(c = 0; c <= 5000; c++){
	ReadLightSensor();
	

//printf("ticktimer is value:0x%04x\n", tick);

	//printf("ticktimer is value2:0x%04x\n", clock_time());
delay();
}

PROCESS_END(); 
} 



void delay(){
	for( a = 0; a <= 70; a++){

		for( b = 0; b <= 10000; b++){
			
		}
		b = 0;
	}

}

static void ReadLightSensor(void)
{
            //P0SEL &= 0x40; /* Set pin as GPIO */
            //P0DIR &= ~0x10; /* Set pin as input*/
            P0INP |= 0x20;  /* Set as tri-state*/
            APCFG |= 0x20;  /* configure ADC on pin*/
            ADCCON3 = 0x75; /*This represents the paramters passed into ADCCON3*/
            while (!ADCIF);
            ADCIF = 0;
            tv = ADCL;
            lv = ADCH;
	    
 	//printf("ADCL = 0x%02x\n", tv);
        //printf(" ADCH = 0x%02x\n",lv);
             
          tv |= (((unsigned short) ADCH) << 8);
          tv >>= 4 ;
          lv = tv;
           
	    printf("Port 0 Pin  reading = %d \n", lv);
            //printf("ADCL = 0x%04x\n", tv);
            //printf(" ADCH = 0x%04x\n",lv);
	   
            return; 
}


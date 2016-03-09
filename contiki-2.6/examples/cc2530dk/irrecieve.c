#include "contiki.h"
#include "dev/leds.h"
#include "port.h"
#include <stdio.h> /* For printf() */

		int x;
		int oldx;
		int ir[100];		
void test()
	{	
		int count,i,n,m = 0;
		P0DIR |= 0xB0; /* ขาที่ 4,5,7 เป็น output */
		P1DIR &= 0x0C; /* ขาที่ 2 เป็น input */
		oldx = P1_2;			
		for(count=0;count < 20000;count++){
		//printf("\n\t==============================\t\n");
				
		//Delay_5us();	
		x = P1_2;
		
			for(i=0;i<50;i++){			
				//printf("\n\t+++++++++++++++++++++++++\t\n");
				if(oldx != x){
				//	printf("\n\t!!!!!!!!!!!!!!!!!!!!!!!!!!!!\t\n");
					if(x ==1){
						n=i*2;
						m=(i*2)+1;
						ir[n]=1;
						ir[m]=count;
						printf("1");
						printf("\ttime %d\n",count);
						
					}else if(x ==0){
							n=i*2;
							m=(i*2)+1;
							ir[n]=0;
							ir[m]=count;
							printf("0");
							printf("\ttime %d\n",count);
						}
						
	
				oldx = x;
				count = 0;
				printf("\n");
				}
				
				
			}
			
		}
		
	}
	
	void Delay_5us(void)
		{
			unsigned char i;
			for(i=0;i<4;i++);
		}
	void printIR(){
		int i;
		printf("Data is");
		for(i=0;i<=100;i++)
		{		
		printf("%d",ir[i]);
		}
		printf("\n");
	}

/*---------------------------------------------------------------------------*/
/*---------------------------------------------------------------------------*/
PROCESS(hello_world_process, "Hello world process");
AUTOSTART_PROCESSES(&hello_world_process);
/*---------------------------------------------------------------------------*/
unsigned int input;
PROCESS_THREAD(hello_world_process, ev, data)
{
	PROCESS_BEGIN();
	while(1){
	input = P1_3;
	if(input == 0){
		//printf("\n\t&&&&&&&&&&&&&&&&&&&&&\t\n");
		test();
		printIR();
	}
	}
	PROCESS_END();
}

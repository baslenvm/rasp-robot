/**
 * \file
 *         Basic hello world example
 * \author
 *         Zach Shelby <zach@sensinode.com>
 */

#include "contiki.h"
#include <stdio.h> /* For printf() */
#include "dev/uart1.c"
#include "dev/uart0.c"

#define UART1_CONF_ENABLE 1
#define UART_ZERO_CONF_ENABLE 1

unsigned char message0[] = "HELLOuart0 :)\n";
unsigned char message1[] = "HELLOuart1 :P\n";

uint16_t byte0;
uint16_t byte1;
int size_message0 = sizeof(message0);
int size_message1 = sizeof(message1);
int j = 0;
int i = 0;
/*---------------------------------------------------------------------------*/
PROCESS(hello_world_process, "Hello world process");
AUTOSTART_PROCESSES(&hello_world_process);
/*---------------------------------------------------------------------------*/
PROCESS_THREAD(hello_world_process, ev, data)
{

  PROCESS_BEGIN();

	
	
	UART_SET_SPEED(0, UART_9_M, UART_9_E);
	UART_SET_SPEED(1, UART_9_M, UART_9_E);
	uart0_init();
	uart1_init();
	uart0_writeb(0x0d);
  	uart0_writeb(0x0a);
	while(i < size_message0)	
	{
		byte0 = message0[i];		
		uart0_writeb(byte0);
		i = i+1;
	}
  uart0_writeb(0x0d);
  uart0_writeb(0x0a);
	while(j < size_message1)	
	{
		byte1 = message1[j];		
		uart1_writeb(byte1);
		j = j+1;
	}
  uart1_writeb(0x0d);
  uart1_writeb(0x0a);

  PROCESS_END();
}
/*---------------------------------------------------------------------------*/

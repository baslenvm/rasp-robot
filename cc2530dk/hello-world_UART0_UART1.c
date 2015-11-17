/**
 * \file
 *         Basic hello world example
 * \author
 *         Zach Shelby <zach@sensinode.com>
 */

#include "contiki.h"
#include <stdio.h> /* For printf() */
#include "dev/uart0.h"
#include "dev/uart1.h"
#include "sys/clock.h"

#define UART0_CONF_ENABLE 1
#define UART1_CONF_ENABLE 1
unsigned char test0[15] = "Hello World  0000\n";
unsigned char test1[15] = "Hello World  1111\n";
/*---------------------------------------------------------------------------*/
PROCESS(hello_world_process, "Hello world process");
AUTOSTART_PROCESSES(&hello_world_process);
/*---------------------------------------------------------------------------*/
void senduart0()
{ int i;
	for(i=0;i<((int)( sizeof(test0) / sizeof(test0[0])));i++)
	{
	uart1_writeb(test0[i]);
	}
}

void senduart1()
{ int i;
	for(i=0;i<((int)( sizeof(test1) / sizeof(test1[0])));i++)
	{
	uart1_writeb(test1[i]);
	}
}

int uart0_rx_callback(unsigned char words)
{
uart0_writeb(words);
//uart0_writeb(d);
return 1;
}

int uart1_rx_callback(unsigned char words)
{
uart1_writeb(words);
//uart0_writeb(d);
return 1;
}

PROCESS_THREAD(hello_world_process, ev, data)
{

  PROCESS_BEGIN();
  senduart0();
  senduart1()
  uart1_set_input(uart1_rx_callback);
  uart0_set_input(uart0_rx_callback);

  while(1) 
	{
	PROCESS_YIELD(); 

	}

  PROCESS_END();
}
/*---------------------------------------------------------------------------*/

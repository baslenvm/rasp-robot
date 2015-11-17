/*---------------------------------------------------------------------------*/
#include "contiki.h"
#include "dev/leds.h"
#include "sys/clock.h"
#include "dev/uart0.h"
/*---------------------------------------------------------------------------*/

/*---------------------------------------------------------------------------*/
static struct etimer et;
/*---------------------------------------------------------------------------*/

/*---------------------------------------------------------------------------*/
PROCESS(test_send_process, "Testing send data");
PROCESS(test_receive_process, "Testing receive data");
AUTOSTART_PROCESSES(&test_send_process,&test_receive_process);
/*---------------------------------------------------------------------------*/

/*---------------------------------------------------------------------------*/
int uart_rx_callback(unsigned char c)
{
 uart0_writeb(c);
 return 1;
}
/*---------------------------------------------------------------------------*/

/*---------------------------------------------------------------------------*/
PROCESS_THREAD(test_send_process, ev, data)
{
  PROCESS_BEGIN();
  while(1) 
  {
    PROCESS_WAIT_EVENT_UNTIL(etimer_expired(&et));
    uart0_writeb(42);
  }
  PROCESS_END();
}
/*---------------------------------------------------------------------------*/

/*---------------------------------------------------------------------------*/

PROCESS_THREAD(test_receive_process, ev, data)
{

  PROCESS_BEGIN();
  
  uart0_set_input(uart_rx_callback);

  while(1) 
  {
   PROCESS_YIELD();
  }

  PROCESS_END();
}
/*---------------------------------------------------------------------------*/

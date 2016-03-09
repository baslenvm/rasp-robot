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
/*---------------------------------------------------------------------------*/
PROCESS(hello_world_process, "Hello world process");
AUTOSTART_PROCESSES(&hello_world_process);
/*---------------------------------------------------------------------------*/
PROCESS_THREAD(hello_world_process, ev, data)
{

  PROCESS_BEGIN();

  printf("Hello World!\n");

  PROCESS_END();
}
/*---------------------------------------------------------------------------*/

//uint16_t dag_id[] = {0x1111, 0x1100, 0, 0, 0, 0, 0, 0x0011};
#include "contiki.h"
#include "contiki-lib.h"
#include "contiki-net.h"
#include "dev/uart0.h"

#include <string.h>

#define DEBUG DEBUG_PRINT
#include "net/uip-debug.h"
#include "dev/watchdog.h"
#include "dev/leds.h"
#include "net/rpl/rpl.h"
#include "dev/button-sensor.h"
#include "debug.h"
#define UIP_IP_BUF   ((struct uip_ip_hdr *)&uip_buf[UIP_LLH_LEN])
#define UIP_UDP_BUF  ((struct uip_udp_hdr *)&uip_buf[uip_l2_l3_hdr_len])

#define MAX_PAYLOAD_LEN 66

static struct uip_udp_conn *server_conn;
static char buf[MAX_PAYLOAD_LEN];
static uint16_t len;

/* Should we act as RPL root? */
#define SERVER_RPL_ROOT       1

#if SERVER_RPL_ROOT
static uip_ipaddr_t ipaddr;
#endif
/*---------------------------------------------------------------------------*/
PROCESS(udp_server_process, "UDP server process");
AUTOSTART_PROCESSES(&udp_server_process);
/*---------------------------------------------------------------------------*/
int uart0_rx_callback(unsigned char words)
{
  leds_on(LEDS_GREEN);
  leds_on(LEDS_RED);
  memset(buf, 0, MAX_PAYLOAD_LEN);
  uip_ip6addr(&server_conn->ripaddr, 0xaaaa, 0, 0, 0 ,0212, 0x4b00, 0x0146, 0xfdf9);
  server_conn->rport = 3001;
  buf[MAX_PAYLOAD_LEN-1]=0;
  buf[MAX_PAYLOAD_LEN-2]='\r';
  buf[0]=0;
  buf[1]=1;
  buf[2]=2;
  /* Restore server connection to allow data from any node */
  switch (words) {
    case 'w':
    PRINTF("Forward\r\n");
    buf[3]=0;
    break;
    case 's':
    PRINTF("Backward\r\n");
    buf[3]=1;
    break;
    case 'a':
    PRINTF("Left\r\n");
    buf[3]=2;
    break;
    case 'd':
    PRINTF("Right\r\n");
    buf[3]=3;
    break;
    default:
  }
  leds_off(LEDS_GREEN);
  uip_udp_packet_send(server_conn, buf, MAX_PAYLOAD_LEN);
  leds_off(LEDS_RED);
  return 1;
}
/*---------------------------------------------------------------------------*/
static void
tcpip_handler(void)
{
  leds_on(LEDS_GREEN);
  memset(buf, 0, MAX_PAYLOAD_LEN);
  if(uip_newdata()) {
    len = uip_datalen();
    memcpy(buf, uip_appdata, len);
    PRINTF("%u bytes from [", len);
    PRINT6ADDR(&UIP_IP_BUF->srcipaddr);
    PRINTF("]:%u\n", UIP_HTONS(UIP_UDP_BUF->srcport));
    PRINTF("Data is [%s]\n\r",buf);
    leds_off(LEDS_GREEN);

//#if SERVER_REPLY
//    leds_on(LEDS_RED);
//    uip_ipaddr_copy(&server_conn->ripaddr, &UIP_IP_BUF->srcipaddr);
//    server_conn->rport = UIP_UDP_BUF->srcport;
//
//    uip_udp_packet_send(server_conn, buf, len);
//    /* Restore server connection to allow data from any node */
//    uip_create_unspecified(&server_conn->ripaddr);
//    server_conn->rport = 0;
//    leds_off(LEDS_RED);
//#endif
  }
  return;
}
/*---------------------------------------------------------------------------*/
static void
print_local_addresses(void)
{
  int i;
  uint8_t state;

  PRINTF("Server IPv6 addresses:\n");
  for(i = 0; i < UIP_DS6_ADDR_NB; i++) {
    state = uip_ds6_if.addr_list[i].state;
    if(uip_ds6_if.addr_list[i].isused && (state == ADDR_TENTATIVE || state
        == ADDR_PREFERRED)) {
      PRINTF("  ");
      PRINT6ADDR(&uip_ds6_if.addr_list[i].ipaddr);
      PRINTF("\n");
      if (state == ADDR_TENTATIVE) {
        uip_ds6_if.addr_list[i].state = ADDR_PREFERRED;
      }
    }
  }
}
/*---------------------------------------------------------------------------*/
#if SERVER_RPL_ROOT
void
create_dag()
{
  rpl_dag_t *dag;
  leds_on(LEDS_YELLOW);

  uip_ip6addr(&ipaddr, 0xaaaa, 0, 0, 0, 0, 0, 0, 0);
  uip_ds6_set_addr_iid(&ipaddr, &uip_lladdr);
  uip_ds6_addr_add(&ipaddr, 0, ADDR_AUTOCONF);

  print_local_addresses();

  dag = rpl_set_root(RPL_DEFAULT_INSTANCE, &uip_ds6_get_global(ADDR_PREFERRED)->ipaddr);
  if(dag != NULL) {
    uip_ip6addr(&ipaddr, 0xaaaa, 0, 0, 0, 0, 0, 0, 0);
    rpl_set_prefix(dag, &ipaddr, 64);
    PRINTF("Created a new RPL dag with ID: ");
    PRINT6ADDR(&dag->dag_id);
    PRINTF("\n");
  } else {
    leds_on(LEDS_RED);
    create_dag();
    leds_off(LEDS_RED);
  }
  leds_off(LEDS_YELLOW);
}
#endif /* SERVER_RPL_ROOT */
/*---------------------------------------------------------------------------*/
PROCESS_THREAD(udp_server_process, ev, data)
{

  PROCESS_BEGIN();
  putstring("Starting UDP server\n");


#if SERVER_RPL_ROOT
  create_dag();
#endif

  server_conn = udp_new(NULL, UIP_HTONS(0), NULL);
  udp_bind(server_conn, UIP_HTONS(3000));

  PRINTF("Listen port: 3000, TTL=%u\n", server_conn->ttl);
  uart0_init();
  uart0_set_input(uart0_rx_callback);
  while(1) {
    PROCESS_YIELD();
    if(ev == tcpip_event) {
      tcpip_handler();
  }
}

  PROCESS_END();
}
/*---------------------------------------------------------------------------*/

#include "contiki.h"
#include "contiki-lib.h"
#include "contiki-net.h"
#include "net/rpl/rpl.h"
#include "dev/uart0.h"
#include "dev/uart1.h"

#define DEBUG DEBUG_PRINT
#include <string.h> /* For printf() */
#include <cc253x.h>
#include "dev/leds.h"
#include "debug.h"
#include "net/uip-debug.h"



#define SEND_INTERVAL (3 * CLOCK_SECOND)//ตั้งค่าหน่วงเวลาส่ง
#define MAX_PAYLOAD_LEN		66

//for print routing
#define UIP_IP_BUF   ((struct uip_ip_hdr *)&uip_buf[UIP_LLH_LEN])
#define UIP_UDP_BUF  ((struct uip_udp_hdr *)&uip_buf[uip_l2_l3_hdr_len])

static struct uip_udp_conn *g_conn;
static struct uip_udp_conn *l_conn;
#define LOCAL_CONN_PORT 3001
#define GLOBAL_CONN_PORT 3002


static uint16_t len;
static uint16_t len_local;

char buf[MAX_PAYLOAD_LEN];
char buf_border[MAX_PAYLOAD_LEN];

/*---------------------------------------------------------------------------*/
PROCESS(send_node_process, "Send node process");
AUTOSTART_PROCESSES(&send_node_process);
/*---------------------------------------------------------------------------*/
static void delay(unsigned char n)          //delay  n  us
{
    unsigned char i;
    for(i = 0; i < n; i++)	  ASM(nop);
}
/*---------------------------------------------------------------------------*/
static void w_uart(unsigned char uart,unsigned char *text, int count)
{
  if(count<MAX_PAYLOAD_LEN)
  {
    if(uart == 0)
    {
      uart0_writeb(text[count]);
    } else if (uart == 1) {
      uart1_writeb(text[count]);
    }
    count++;
    w_uart(uart, text, count);
  }
  return;
}
static void wr_uart(char uart,char* text)
{
  w_uart(uart, text, 0);
  return;
}
/*---------------------------------------------------------------------------*/
static void
tcpip_handler(void)
{
  leds_on(LEDS_GREEN);
  if(uip_newdata()) {
    leds_on(LEDS_RED);
    len = uip_datalen();
    memset(buf, 0, MAX_PAYLOAD_LEN);
    memcpy(buf, uip_appdata, len);
    wr_uart(0,buf);
    leds_off(LEDS_RED);
  }
  leds_off(LEDS_GREEN);
  return;
}
/*---------------------------------------------------------------------------*/
static void
timeout_handler(void)
{
  static int seq_id;
  struct uip_udp_conn *this_conn;

  leds_on(LEDS_RED);
  memset(buf, 0, MAX_PAYLOAD_LEN);
  seq_id++;

  /* evens / odds */
  //if(seq_id & 0x01) {
    this_conn = l_conn;
  //} else {
  //  this_conn = g_conn;
  //  if(uip_ds6_get_global(ADDR_PREFERRED) == NULL) {
  //    return;
  //  }
  //}

    //PRINTF("Client to: ");
    //PRINT6ADDR(&this_conn->ripaddr);

    memcpy(buf, &seq_id, sizeof(seq_id));

    //PRINTF(" Remote Port %u,", UIP_HTONS(this_conn->rport));
    //PRINTF(" (msg=0x%04x), %u bytes\n", *(uint16_t *) buf, sizeof(seq_id));

    uip_udp_packet_send(this_conn, buf, sizeof(seq_id));
    leds_off(LEDS_RED);
}
//---------------------------------------------------------------------------

PROCESS_THREAD(send_node_process, ev, data)
{
static struct etimer et;
  uip_ipaddr_t ipaddr;


    PROCESS_BEGIN();
    PRINTF("UDP client process started\n");

    uip_ip6addr(&ipaddr, 0xaaaa, 0, 0, 0, 0x0212, 0x4b00, 0x0117, 0x962a); //aaaa::0212:4b00:0117:962a
    /* new connection with remote host */
    l_conn = udp_new(&ipaddr, UIP_HTONS(3000), NULL);
    if(!l_conn) {
      PRINTF("udp_new l_conn error.\n");
    }
    udp_bind(l_conn, UIP_HTONS(LOCAL_CONN_PORT));

    PRINTF("Link-Local connection with ");
    PRINT6ADDR(&l_conn->ripaddr);
    PRINTF(" local/remote port %u/%u\n",
           UIP_HTONS(l_conn->lport), UIP_HTONS(l_conn->rport));

    uip_ip6addr(&ipaddr, 0xfe80, 0, 0, 0, 0x0212, 0x4b00, 0x0117, 0x962a);
    g_conn = udp_new(&ipaddr, UIP_HTONS(3000), NULL);
    if(!g_conn) {
      PRINTF("udp_new g_conn error.\n");
    }
    udp_bind(g_conn, UIP_HTONS(GLOBAL_CONN_PORT));

    PRINTF("Global connection with ");
    PRINT6ADDR(&g_conn->ripaddr);
    PRINTF(" local/remote port %u/%u\n",
           UIP_HTONS(g_conn->lport), UIP_HTONS(g_conn->rport));

    etimer_set(&et, random_rand() % SEND_INTERVAL);

  while(1) {
    PROCESS_YIELD();
    if(etimer_expired(&et)) {
      timeout_handler();
	     etimer_restart(&et);
       etimer_set(&et, random_rand() % SEND_INTERVAL);
    }else if(ev == tcpip_event) {
      tcpip_handler();
    }
 }
  PROCESS_END();
}
/*---------------------------------------------------------------------------*/

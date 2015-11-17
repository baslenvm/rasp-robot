;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.5 #9380 (Linux)
; This file was generated Tue Nov 17 16:52:50 2015
;--------------------------------------------------------
	.module nullradio
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _nullradio_driver
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'init'
;------------------------------------------------------------
;	/opt/contiki/core/dev/nullradio.c:6: init(void)
;	-----------------------------------------
;	 function init
;	-----------------------------------------
_init:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	/opt/contiki/core/dev/nullradio.c:8: return 0;
	mov	dptr,#0x0000
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'prepare'
;------------------------------------------------------------
;payload_len               Allocated to stack - sp -3
;payload                   Allocated to registers 
;------------------------------------------------------------
;	/opt/contiki/core/dev/nullradio.c:12: prepare(const void *payload, unsigned short payload_len)
;	-----------------------------------------
;	 function prepare
;	-----------------------------------------
_prepare:
;	/opt/contiki/core/dev/nullradio.c:14: return 1;
	mov	dptr,#0x0001
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'transmit'
;------------------------------------------------------------
;transmit_len              Allocated to registers 
;------------------------------------------------------------
;	/opt/contiki/core/dev/nullradio.c:18: transmit(unsigned short transmit_len)
;	-----------------------------------------
;	 function transmit
;	-----------------------------------------
_transmit:
;	/opt/contiki/core/dev/nullradio.c:20: return RADIO_TX_OK;
	mov	dptr,#0x0000
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'send'
;------------------------------------------------------------
;payload_len               Allocated to stack - sp -3
;payload                   Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	/opt/contiki/core/dev/nullradio.c:24: send(const void *payload, unsigned short payload_len)
;	-----------------------------------------
;	 function send
;	-----------------------------------------
_send:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	/opt/contiki/core/dev/nullradio.c:26: prepare(payload, payload_len);
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_prepare
	dec	sp
	dec	sp
;	/opt/contiki/core/dev/nullradio.c:27: return transmit(payload_len);
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	ljmp	_transmit
;------------------------------------------------------------
;Allocation info for local variables in function 'radio_read'
;------------------------------------------------------------
;buf_len                   Allocated to stack - sp -3
;buf                       Allocated to registers 
;------------------------------------------------------------
;	/opt/contiki/core/dev/nullradio.c:31: radio_read(void *buf, unsigned short buf_len)
;	-----------------------------------------
;	 function radio_read
;	-----------------------------------------
_radio_read:
;	/opt/contiki/core/dev/nullradio.c:33: return 0;
	mov	dptr,#0x0000
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'channel_clear'
;------------------------------------------------------------
;	/opt/contiki/core/dev/nullradio.c:37: channel_clear(void)
;	-----------------------------------------
;	 function channel_clear
;	-----------------------------------------
_channel_clear:
;	/opt/contiki/core/dev/nullradio.c:39: return 1;
	mov	dptr,#0x0001
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'receiving_packet'
;------------------------------------------------------------
;	/opt/contiki/core/dev/nullradio.c:43: receiving_packet(void)
;	-----------------------------------------
;	 function receiving_packet
;	-----------------------------------------
_receiving_packet:
;	/opt/contiki/core/dev/nullradio.c:45: return 0;
	mov	dptr,#0x0000
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'pending_packet'
;------------------------------------------------------------
;	/opt/contiki/core/dev/nullradio.c:49: pending_packet(void)
;	-----------------------------------------
;	 function pending_packet
;	-----------------------------------------
_pending_packet:
;	/opt/contiki/core/dev/nullradio.c:51: return 0;
	mov	dptr,#0x0000
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'on'
;------------------------------------------------------------
;	/opt/contiki/core/dev/nullradio.c:55: on(void)
;	-----------------------------------------
;	 function on
;	-----------------------------------------
_on:
;	/opt/contiki/core/dev/nullradio.c:57: return 0;
	mov	dptr,#0x0000
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'off'
;------------------------------------------------------------
;	/opt/contiki/core/dev/nullradio.c:61: off(void)
;	-----------------------------------------
;	 function off
;	-----------------------------------------
_off:
;	/opt/contiki/core/dev/nullradio.c:63: return 0;
	mov	dptr,#0x0000
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_value'
;------------------------------------------------------------
;value                     Allocated to stack - sp -4
;param                     Allocated to registers 
;------------------------------------------------------------
;	/opt/contiki/core/dev/nullradio.c:67: get_value(radio_param_t param, radio_value_t *value)
;	-----------------------------------------
;	 function get_value
;	-----------------------------------------
_get_value:
;	/opt/contiki/core/dev/nullradio.c:69: return RADIO_RESULT_NOT_SUPPORTED;
	mov	dpl,#0x01
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'set_value'
;------------------------------------------------------------
;value                     Allocated to stack - sp -3
;param                     Allocated to registers 
;------------------------------------------------------------
;	/opt/contiki/core/dev/nullradio.c:73: set_value(radio_param_t param, radio_value_t value)
;	-----------------------------------------
;	 function set_value
;	-----------------------------------------
_set_value:
;	/opt/contiki/core/dev/nullradio.c:75: return RADIO_RESULT_NOT_SUPPORTED;
	mov	dpl,#0x01
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_object'
;------------------------------------------------------------
;dest                      Allocated to stack - sp -4
;size                      Allocated to stack - sp -6
;param                     Allocated to registers 
;------------------------------------------------------------
;	/opt/contiki/core/dev/nullradio.c:79: get_object(radio_param_t param, void *dest, size_t size)
;	-----------------------------------------
;	 function get_object
;	-----------------------------------------
_get_object:
;	/opt/contiki/core/dev/nullradio.c:81: return RADIO_RESULT_NOT_SUPPORTED;
	mov	dpl,#0x01
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'set_object'
;------------------------------------------------------------
;src                       Allocated to stack - sp -4
;size                      Allocated to stack - sp -6
;param                     Allocated to registers 
;------------------------------------------------------------
;	/opt/contiki/core/dev/nullradio.c:85: set_object(radio_param_t param, const void *src, size_t size)
;	-----------------------------------------
;	 function set_object
;	-----------------------------------------
_set_object:
;	/opt/contiki/core/dev/nullradio.c:87: return RADIO_RESULT_NOT_SUPPORTED;
	mov	dpl,#0x01
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_nullradio_driver:
	.byte _init, (_init >> 8)
	.byte _prepare, (_prepare >> 8)
	.byte _transmit, (_transmit >> 8)
	.byte _send, (_send >> 8)
	.byte _radio_read, (_radio_read >> 8)
	.byte _channel_clear, (_channel_clear >> 8)
	.byte _receiving_packet, (_receiving_packet >> 8)
	.byte _pending_packet, (_pending_packet >> 8)
	.byte _on, (_on >> 8)
	.byte _off, (_off >> 8)
	.byte _get_value, (_get_value >> 8)
	.byte _set_value, (_set_value >> 8)
	.byte _get_object, (_get_object >> 8)
	.byte _set_object, (_set_object >> 8)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)

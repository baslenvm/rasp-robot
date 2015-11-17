;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.5 #9380 (Linux)
; This file was generated Wed Nov 18 02:57:30 2015
;--------------------------------------------------------
	.module route
	.optsdcc -mmcs51 --model-huge
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _linkaddr_cmp
	.globl _linkaddr_copy
	.globl _ctimer_set
	.globl _memb_free
	.globl _memb_alloc
	.globl _memb_init
	.globl _list_item_next
	.globl _list_remove
	.globl _list_push
	.globl _list_pop
	.globl _list_head
	.globl _list_init
	.globl _route_init
	.globl _route_add
	.globl _route_lookup
	.globl _route_refresh
	.globl _route_decay
	.globl _route_remove
	.globl _route_flush_all
	.globl _route_set_lifetime
	.globl _route_num
	.globl _route_get
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
_route_mem_memb_count:
	.ds 8
_route_mem_memb_mem:
	.ds 192
_t:
	.ds 22
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_route_table_list:
	.ds 3
_route_table:
	.ds 3
_route_mem:
	.ds 10
_max_time:
	.ds 2
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
	.area BANK1   (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'periodic'
;------------------------------------------------------------
;ptr                       Allocated to registers 
;e                         Allocated to stack - sp -2
;------------------------------------------------------------
;	/opt/contiki/core/net/rime/route.c:92: periodic(void *ptr)
;	-----------------------------------------
;	 function periodic
;	-----------------------------------------
_periodic:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	inc	sp
	inc	sp
	inc	sp
;	/opt/contiki/core/net/rime/route.c:96: for(e = list_head(route_table); e != NULL; e = list_item_next(e)) {
	mov	dptr,#_route_table
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_list_head
	mov	r1,#(_list_head >> 8)
	mov	r2,#(_list_head >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
00105$:
	mov	r0,sp
	dec	r0
	dec	r0
	clr	a
	push	acc
	push	acc
	push	acc
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jnz	00118$
	ljmp	00103$
00118$:
;	/opt/contiki/core/net/rime/route.c:97: e->time++;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x15
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r7,a
	inc	r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r7
	lcall	__gptrput
;	/opt/contiki/core/net/rime/route.c:98: if(e->time >= max_time) {
	mov	dptr,#_max_time
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	r4,#0x00
	clr	c
	mov	a,r7
	subb	a,r5
	mov	a,r4
	xrl	a,#0x80
	mov	b,r6
	xrl	b,#0x80
	subb	a,b
	jc	00106$
;	/opt/contiki/core/net/rime/route.c:103: list_remove(route_table, e);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	dptr,#_route_table
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_list_remove
	mov	r1,#(_list_remove >> 8)
	mov	r2,#(_list_remove >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
;	/opt/contiki/core/net/rime/route.c:104: memb_free(&route_mem, e);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_route_mem
	mov	b,#0x00
	mov	r0,#_memb_free
	mov	r1,#(_memb_free >> 8)
	mov	r2,#(_memb_free >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
00106$:
;	/opt/contiki/core/net/rime/route.c:96: for(e = list_head(route_table); e != NULL; e = list_item_next(e)) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_list_item_next
	mov	r1,#(_list_item_next >> 8)
	mov	r2,#(_list_item_next >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	ljmp	00105$
00103$:
;	/opt/contiki/core/net/rime/route.c:108: ctimer_set(&t, CLOCK_SECOND, periodic, NULL);
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,#_periodic
	push	acc
	mov	a,#(_periodic >> 8)
	push	acc
	mov	a,#(_periodic >> 16)
	push	acc
	mov	a,#0x80
	push	acc
	clr	a
	push	acc
	mov	dptr,#_t
	mov	b,#0x00
	mov	r0,#_ctimer_set
	mov	r1,#(_ctimer_set >> 8)
	mov	r2,#(_ctimer_set >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xf8
	mov	sp,a
	dec	sp
	dec	sp
	dec	sp
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'route_init'
;------------------------------------------------------------
;	/opt/contiki/core/net/rime/route.c:112: route_init(void)
;	-----------------------------------------
;	 function route_init
;	-----------------------------------------
_route_init:
;	/opt/contiki/core/net/rime/route.c:114: list_init(route_table);
	mov	dptr,#_route_table
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_list_init
	mov	r1,#(_list_init >> 8)
	mov	r2,#(_list_init >> 16)
	lcall	__sdcc_banked_call
;	/opt/contiki/core/net/rime/route.c:115: memb_init(&route_mem);
	mov	dptr,#_route_mem
	mov	b,#0x00
	mov	r0,#_memb_init
	mov	r1,#(_memb_init >> 8)
	mov	r2,#(_memb_init >> 16)
	lcall	__sdcc_banked_call
;	/opt/contiki/core/net/rime/route.c:117: ctimer_set(&t, CLOCK_SECOND, periodic, NULL);
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,#_periodic
	push	acc
	mov	a,#(_periodic >> 8)
	push	acc
	mov	a,#(_periodic >> 16)
	push	acc
	mov	a,#0x80
	push	acc
	clr	a
	push	acc
	mov	dptr,#_t
	mov	b,#0x00
	mov	r0,#_ctimer_set
	mov	r1,#(_ctimer_set >> 8)
	mov	r2,#(_ctimer_set >> 16)
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xf8
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'route_add'
;------------------------------------------------------------
;nexthop                   Allocated to stack - sp -14
;cost                      Allocated to stack - sp -15
;seqno                     Allocated to stack - sp -16
;dest                      Allocated to stack - sp -8
;e                         Allocated to stack - sp -2
;oldest                    Allocated to stack - sp -5
;sloc0                     Allocated to stack - sp +1
;------------------------------------------------------------
;	/opt/contiki/core/net/rime/route.c:121: route_add(const linkaddr_t *dest, const linkaddr_t *nexthop,
;	-----------------------------------------
;	 function route_add
;	-----------------------------------------
_route_add:
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x06
;	/opt/contiki/core/net/rime/route.c:124: struct route_entry *e, *oldest = NULL;
	mov	sp,a
	add	a,#0xfb
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,#0x00
;	/opt/contiki/core/net/rime/route.c:127: e = route_lookup(dest);
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_route_lookup
	mov	r1,#(_route_lookup >> 8)
	mov	r2,#(_route_lookup >> 16)
	lcall	__sdcc_banked_call
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar5
;	/opt/contiki/core/net/rime/route.c:128: if(e != NULL && linkaddr_cmp(&e->nexthop, nexthop)) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00108$
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x0B
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_linkaddr_cmp
	mov	r1,#(_linkaddr_cmp >> 8)
	mov	r2,#(_linkaddr_cmp >> 16)
	lcall	__sdcc_banked_call
	mov	r3,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r3
	orl	a,r4
	jz	00108$
;	/opt/contiki/core/net/rime/route.c:129: list_remove(route_table, e);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	ar4,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar2,@r0
	mov	dptr,#_route_table
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	push	ar4
	push	ar3
	push	ar2
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_list_remove
	mov	r1,#(_list_remove >> 8)
	mov	r2,#(_list_remove >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	ljmp	00109$
00108$:
;	/opt/contiki/core/net/rime/route.c:132: e = memb_alloc(&route_mem);
	mov	dptr,#_route_mem
	mov	b,#0x00
	mov	r0,#_memb_alloc
	mov	r1,#(_memb_alloc >> 8)
	mov	r2,#(_memb_alloc >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	/opt/contiki/core/net/rime/route.c:133: if(e == NULL) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00136$
	ljmp	00109$
00136$:
;	/opt/contiki/core/net/rime/route.c:135: for(e = list_head(route_table); e != NULL; e = list_item_next(e)) {
	mov	dptr,#_route_table
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_list_head
	mov	r1,#(_list_head >> 8)
	mov	r2,#(_list_head >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
00112$:
	mov	r0,sp
	dec	r0
	dec	r0
	clr	a
	push	acc
	push	acc
	push	acc
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jnz	00137$
	ljmp	00104$
00137$:
;	/opt/contiki/core/net/rime/route.c:136: if(oldest == NULL || e->time >= oldest->time) {
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00101$
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x15
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x15
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r4
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	clr	c
	mov	a,r5
	subb	a,r4
	jc	00113$
00101$:
;	/opt/contiki/core/net/rime/route.c:137: oldest = e;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,sp
	add	a,#0xfb
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
00113$:
;	/opt/contiki/core/net/rime/route.c:135: for(e = list_head(route_table); e != NULL; e = list_item_next(e)) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_list_item_next
	mov	r1,#(_list_item_next >> 8)
	mov	r2,#(_list_item_next >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	ljmp	00112$
00104$:
;	/opt/contiki/core/net/rime/route.c:140: e = oldest;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	r1,sp
	dec	r1
	dec	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
;	/opt/contiki/core/net/rime/route.c:141: list_remove(route_table, e);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dptr,#_route_table
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_list_remove
	mov	r1,#(_list_remove >> 8)
	mov	r2,#(_list_remove >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
00109$:
;	/opt/contiki/core/net/rime/route.c:149: linkaddr_copy(&e->dest, dest);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x03
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_linkaddr_copy
	mov	r1,#(_linkaddr_copy >> 8)
	mov	r2,#(_linkaddr_copy >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
;	/opt/contiki/core/net/rime/route.c:150: linkaddr_copy(&e->nexthop, nexthop);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x0B
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,sp
	add	a,#0xf2
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_linkaddr_copy
	mov	r1,#(_linkaddr_copy >> 8)
	mov	r2,#(_linkaddr_copy >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
;	/opt/contiki/core/net/rime/route.c:151: e->cost = cost;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x14
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
;	/opt/contiki/core/net/rime/route.c:152: e->seqno = seqno;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x13
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,sp
	add	a,#0xf0
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
;	/opt/contiki/core/net/rime/route.c:153: e->time = 0;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x15
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	/opt/contiki/core/net/rime/route.c:154: e->decay = 0;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x16
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	/opt/contiki/core/net/rime/route.c:157: list_push(route_table, e);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dptr,#_route_table
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_list_push
	mov	r1,#(_list_push >> 8)
	mov	r2,#(_list_push >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
;	/opt/contiki/core/net/rime/route.c:164: return 0;
	mov	dptr,#0x0000
	mov	a,sp
	add	a,#0xF7
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'route_lookup'
;------------------------------------------------------------
;dest                      Allocated to stack - sp -8
;e                         Allocated to stack - sp -5
;lowest_cost               Allocated to registers r4 
;best_entry                Allocated to stack - sp -2
;------------------------------------------------------------
;	/opt/contiki/core/net/rime/route.c:168: route_lookup(const linkaddr_t *dest)
;	-----------------------------------------
;	 function route_lookup
;	-----------------------------------------
_route_lookup:
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x06
	mov	sp,a
;	/opt/contiki/core/net/rime/route.c:174: lowest_cost = -1;
	mov	r4,#0xFF
;	/opt/contiki/core/net/rime/route.c:175: best_entry = NULL;
	mov	r0,sp
	dec	r0
	dec	r0
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,#0x00
;	/opt/contiki/core/net/rime/route.c:178: for(e = list_head(route_table); e != NULL; e = list_item_next(e)) {
	mov	dptr,#_route_table
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	push	ar4
	mov	r0,#_list_head
	mov	r1,#(_list_head >> 8)
	mov	r2,#(_list_head >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	pop	ar4
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
00107$:
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	clr	a
	push	acc
	push	acc
	push	acc
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jnz	00123$
	ljmp	00105$
00123$:
;	/opt/contiki/core/net/rime/route.c:182: if(linkaddr_cmp(dest, &e->dest)) {
	push	ar4
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,#0x03
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	push	ar2
	push	ar3
	push	ar4
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_linkaddr_cmp
	mov	r1,#(_linkaddr_cmp >> 8)
	mov	r2,#(_linkaddr_cmp >> 16)
	lcall	__sdcc_banked_call
	mov	r3,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	dec	sp
	mov	a,r3
	orl	a,r4
	pop	ar4
	jz	00108$
;	/opt/contiki/core/net/rime/route.c:183: if(e->cost < lowest_cost) {
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x14
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	mov	r7,a
	clr	c
	subb	a,r4
	jnc	00108$
;	/opt/contiki/core/net/rime/route.c:184: best_entry = e;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	r1,sp
	dec	r1
	dec	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
;	/opt/contiki/core/net/rime/route.c:185: lowest_cost = e->cost;
	mov	ar4,r7
00108$:
;	/opt/contiki/core/net/rime/route.c:178: for(e = list_head(route_table); e != NULL; e = list_item_next(e)) {
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar4
	mov	r0,#_list_item_next
	mov	r1,#(_list_item_next >> 8)
	mov	r2,#(_list_item_next >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	pop	ar4
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	ljmp	00107$
00105$:
;	/opt/contiki/core/net/rime/route.c:189: return best_entry;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	xch	a,r0
	mov	a,sp
	add	a,#0xF7
	mov	sp,a
	xch	a,r0
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'route_refresh'
;------------------------------------------------------------
;e                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	/opt/contiki/core/net/rime/route.c:193: route_refresh(struct route_entry *e)
;	-----------------------------------------
;	 function route_refresh
;	-----------------------------------------
_route_refresh:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	/opt/contiki/core/net/rime/route.c:195: if(e != NULL) {
	mov	a,r5
	orl	a,r6
	jz	00103$
;	/opt/contiki/core/net/rime/route.c:198: e->time = 0;
	mov	a,#0x15
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
;	/opt/contiki/core/net/rime/route.c:199: e->decay = 0;
	mov	a,#0x16
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
00103$:
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'route_decay'
;------------------------------------------------------------
;e                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	/opt/contiki/core/net/rime/route.c:211: route_decay(struct route_entry *e)
;	-----------------------------------------
;	 function route_decay
;	-----------------------------------------
_route_decay:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	/opt/contiki/core/net/rime/route.c:222: if(e->time != e->time_last_decay) {
	mov	a,#0x15
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r4,a
	mov	a,#0x17
	add	a,r5
	mov	r1,a
	clr	a
	addc	a,r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r0,a
	mov	a,r4
	cjne	a,ar0,00113$
	sjmp	00105$
00113$:
;	/opt/contiki/core/net/rime/route.c:224: e->time_last_decay = e->time;
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	mov	a,r4
	lcall	__gptrput
;	/opt/contiki/core/net/rime/route.c:225: e->decay++;
	mov	a,#0x16
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r1,a
	inc	r1
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r1
	lcall	__gptrput
;	/opt/contiki/core/net/rime/route.c:227: if(e->decay >= DECAY_THRESHOLD) {
	cjne	r1,#0x08,00114$
00114$:
	jc	00105$
;	/opt/contiki/core/net/rime/route.c:232: route_remove(e);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_route_remove
	mov	r1,#(_route_remove >> 8)
	mov	r2,#(_route_remove >> 16)
	lcall	__sdcc_banked_call
00105$:
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'route_remove'
;------------------------------------------------------------
;e                         Allocated to registers r7 r5 r6 
;sloc0                     Allocated to stack - sp -2
;------------------------------------------------------------
;	/opt/contiki/core/net/rime/route.c:238: route_remove(struct route_entry *e)
;	-----------------------------------------
;	 function route_remove
;	-----------------------------------------
_route_remove:
	inc	sp
	inc	sp
	inc	sp
	mov	r7,dpl
	mov	r5,dph
	mov	r6,b
;	/opt/contiki/core/net/rime/route.c:240: list_remove(route_table, e);
	mov	ar2,r7
	mov	ar3,r5
	mov	ar4,r6
	mov	dptr,#_route_table
	mov	r0,sp
	dec	r0
	dec	r0
	movx	a,@dptr
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	push	ar7
	push	ar6
	push	ar5
	push	ar2
	push	ar3
	push	ar4
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r0,#_list_remove
	mov	r1,#(_list_remove >> 8)
	mov	r2,#(_list_remove >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
;	/opt/contiki/core/net/rime/route.c:241: memb_free(&route_mem, e);
	mov	ar4,r7
	push	ar4
	push	ar5
	push	ar6
	mov	dptr,#_route_mem
	mov	b,#0x00
	mov	r0,#_memb_free
	mov	r1,#(_memb_free >> 8)
	mov	r2,#(_memb_free >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	dec	sp
	dec	sp
	dec	sp
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'route_flush_all'
;------------------------------------------------------------
;e                         Allocated to registers r2 r3 r4 
;------------------------------------------------------------
;	/opt/contiki/core/net/rime/route.c:245: route_flush_all(void)
;	-----------------------------------------
;	 function route_flush_all
;	-----------------------------------------
_route_flush_all:
;	/opt/contiki/core/net/rime/route.c:249: while(1) {
00105$:
;	/opt/contiki/core/net/rime/route.c:250: e = list_pop(route_table);
	mov	dptr,#_route_table
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_list_pop
	mov	r1,#(_list_pop >> 8)
	mov	r2,#(_list_pop >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
;	/opt/contiki/core/net/rime/route.c:251: if(e != NULL) {
	mov	a,r5
	orl	a,r6
	jz	00107$
;	/opt/contiki/core/net/rime/route.c:252: memb_free(&route_mem, e);
	push	ar2
	push	ar3
	push	ar4
	mov	dptr,#_route_mem
	mov	b,#0x00
	mov	r0,#_memb_free
	mov	r1,#(_memb_free >> 8)
	mov	r2,#(_memb_free >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
;	/opt/contiki/core/net/rime/route.c:254: break;
	sjmp	00105$
00107$:
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'route_set_lifetime'
;------------------------------------------------------------
;seconds                   Allocated to registers 
;------------------------------------------------------------
;	/opt/contiki/core/net/rime/route.c:260: route_set_lifetime(int seconds)
;	-----------------------------------------
;	 function route_set_lifetime
;	-----------------------------------------
_route_set_lifetime:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_max_time
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	/opt/contiki/core/net/rime/route.c:262: max_time = seconds;
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'route_num'
;------------------------------------------------------------
;e                         Allocated to registers r5 r6 r7 
;i                         Allocated to stack - sp -1
;------------------------------------------------------------
;	/opt/contiki/core/net/rime/route.c:266: route_num(void)
;	-----------------------------------------
;	 function route_num
;	-----------------------------------------
_route_num:
	inc	sp
	inc	sp
;	/opt/contiki/core/net/rime/route.c:271: for(e = list_head(route_table); e != NULL; e = list_item_next(e)) {
	mov	dptr,#_route_table
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_list_head
	mov	r1,#(_list_head >> 8)
	mov	r2,#(_list_head >> 16)
	lcall	__sdcc_banked_call
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	r0,sp
	dec	r0
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
00103$:
	clr	a
	push	acc
	push	acc
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jz	00101$
;	/opt/contiki/core/net/rime/route.c:272: i++;
	mov	r0,sp
	dec	r0
	inc	@r0
	cjne	@r0,#0x00,00115$
	inc	r0
	inc	@r0
00115$:
;	/opt/contiki/core/net/rime/route.c:271: for(e = list_head(route_table); e != NULL; e = list_item_next(e)) {
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,#_list_item_next
	mov	r1,#(_list_item_next >> 8)
	mov	r2,#(_list_item_next >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	ar5,r2
	mov	ar6,r3
	mov	ar7,r4
	sjmp	00103$
00101$:
;	/opt/contiki/core/net/rime/route.c:274: return i;
	mov	r0,sp
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	dec	sp
	dec	sp
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'route_get'
;------------------------------------------------------------
;num                       Allocated to stack - sp -3
;e                         Allocated to registers r3 r4 r5 
;i                         Allocated to stack - sp -1
;------------------------------------------------------------
;	/opt/contiki/core/net/rime/route.c:278: route_get(int num)
;	-----------------------------------------
;	 function route_get
;	-----------------------------------------
_route_get:
	push	dpl
	push	dph
	inc	sp
	inc	sp
;	/opt/contiki/core/net/rime/route.c:283: for(e = list_head(route_table); e != NULL; e = list_item_next(e)) {
	mov	dptr,#_route_table
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	r0,#_list_head
	mov	r1,#(_list_head >> 8)
	mov	r2,#(_list_head >> 16)
	lcall	__sdcc_banked_call
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	r0,sp
	dec	r0
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
00105$:
	clr	a
	push	acc
	push	acc
	push	acc
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jz	00103$
;	/opt/contiki/core/net/rime/route.c:284: if(i == num) {
	mov	r0,sp
	dec	r0
	mov	a,sp
	add	a,#0xfd
	mov	r1,a
	mov	b,@r0
	mov	a,@r1
	cjne	a,b,00119$
	inc	r0
	mov	b,@r0
	inc	r1
	mov	a,@r1
	cjne	a,b,00119$
	sjmp	00120$
00119$:
	sjmp	00102$
00120$:
;	/opt/contiki/core/net/rime/route.c:285: return e;
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	sjmp	00107$
00102$:
;	/opt/contiki/core/net/rime/route.c:287: i++;
	mov	r0,sp
	dec	r0
	inc	@r0
	cjne	@r0,#0x00,00121$
	inc	r0
	inc	@r0
00121$:
;	/opt/contiki/core/net/rime/route.c:283: for(e = list_head(route_table); e != NULL; e = list_item_next(e)) {
	mov	ar2,r3
	mov	ar6,r4
	mov	ar7,r5
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	mov	r0,#_list_item_next
	mov	r1,#(_list_item_next >> 8)
	mov	r2,#(_list_item_next >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r6,dph
	mov	r7,b
	mov	ar3,r2
	mov	ar4,r6
	mov	ar5,r7
	sjmp	00105$
00103$:
;	/opt/contiki/core/net/rime/route.c:289: return NULL;
	mov	dptr,#0x0000
	mov	b,#0x00
00107$:
	xch	a,r0
	mov	a,sp
	add	a,#0xFC
	mov	sp,a
	xch	a,r0
	ljmp	__sdcc_banked_ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
__xinit__route_table_list:
; generic printIvalPtr
	.byte #0x00,#0x00,#0x00
__xinit__route_table:
	.byte _route_table_list, (_route_table_list >> 8),#0x00
__xinit__route_mem:
	.byte #0x18,#0x00	; 24
	.byte #0x08,#0x00	; 8
	.byte _route_mem_memb_count, (_route_mem_memb_count >> 8),#0x00
	.byte _route_mem_memb_mem, (_route_mem_memb_mem >> 8),#0x00
__xinit__max_time:
	.byte #0x3C,#0x00	;  60
	.area CABS    (ABS,CODE)

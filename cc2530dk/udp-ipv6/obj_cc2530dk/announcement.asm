;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.5 #9380 (Linux)
; This file was generated Wed Nov 18 02:57:28 2015
;--------------------------------------------------------
	.module announcement
	.optsdcc -mmcs51 --model-huge
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _list_item_next
	.globl _list_remove
	.globl _list_add
	.globl _list_head
	.globl _list_init
	.globl _announcement_init
	.globl _announcement_register
	.globl _announcement_remove
	.globl _announcement_remove_value
	.globl _announcement_set_value
	.globl _announcement_bump
	.globl _announcement_listen
	.globl _announcement_register_listen_callback
	.globl _announcement_register_observer_callback
	.globl _announcement_list
	.globl _announcement_heard
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
_listen_callback:
	.ds 3
_observer_callback:
	.ds 3
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_announcements_list:
	.ds 3
_announcements:
	.ds 3
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
;Allocation info for local variables in function 'announcement_init'
;------------------------------------------------------------
;	/opt/contiki/core/net/rime/announcement.c:56: announcement_init(void)
;	-----------------------------------------
;	 function announcement_init
;	-----------------------------------------
_announcement_init:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	/opt/contiki/core/net/rime/announcement.c:58: list_init(announcements);
	mov	dptr,#_announcements
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
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'announcement_register'
;------------------------------------------------------------
;id                        Allocated to stack - sp -13
;callback                  Allocated to stack - sp -16
;a                         Allocated to stack - sp -8
;sloc0                     Allocated to stack - sp -2
;sloc1                     Allocated to stack - sp -5
;------------------------------------------------------------
;	/opt/contiki/core/net/rime/announcement.c:62: announcement_register(struct announcement *a, uint16_t id,
;	-----------------------------------------
;	 function announcement_register
;	-----------------------------------------
_announcement_register:
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x06
;	/opt/contiki/core/net/rime/announcement.c:65: a->id = id;
	mov	sp,a
	add	a,#0xf8
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
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
;	/opt/contiki/core/net/rime/announcement.c:66: a->has_value = 0;
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	r1,sp
	dec	r1
	dec	r1
	mov	a,#0x0A
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	clr	a
	lcall	__gptrput
;	/opt/contiki/core/net/rime/announcement.c:67: a->callback = callback;
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0x07
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
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
;	/opt/contiki/core/net/rime/announcement.c:68: list_add(announcements, a);
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
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
	mov	dptr,#_announcements
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
	mov	r0,#_list_add
	mov	r1,#(_list_add >> 8)
	mov	r2,#(_list_add >> 16)
	lcall	__sdcc_banked_call
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
;	/opt/contiki/core/net/rime/announcement.c:69: if(observer_callback) {
	mov	dptr,#_observer_callback
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jz	00103$
;	/opt/contiki/core/net/rime/announcement.c:71: a->value, 0, ANNOUNCEMENT_BUMP);
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0x05
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
	inc	dptr
	lcall	__gptrget
	mov	r6,a
;	/opt/contiki/core/net/rime/announcement.c:70: observer_callback(a->id, a->has_value,
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r7,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	push	acc
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_observer_callback
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dpl,r2
	mov	dph,r3
	pop	ar2
	pop	ar1
	pop	ar0
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
00103$:
	mov	a,sp
	add	a,#0xF7
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'announcement_remove'
;------------------------------------------------------------
;a                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	/opt/contiki/core/net/rime/announcement.c:76: announcement_remove(struct announcement *a)
;	-----------------------------------------
;	 function announcement_remove
;	-----------------------------------------
_announcement_remove:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	/opt/contiki/core/net/rime/announcement.c:78: list_remove(announcements, a);
	mov	dptr,#_announcements
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
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'announcement_remove_value'
;------------------------------------------------------------
;a                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	/opt/contiki/core/net/rime/announcement.c:82: announcement_remove_value(struct announcement *a)
;	-----------------------------------------
;	 function announcement_remove_value
;	-----------------------------------------
_announcement_remove_value:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	/opt/contiki/core/net/rime/announcement.c:84: a->has_value = 0;
	mov	a,#0x0A
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
;	/opt/contiki/core/net/rime/announcement.c:85: if(observer_callback) {
	mov	dptr,#_observer_callback
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jz	00103$
;	/opt/contiki/core/net/rime/announcement.c:86: observer_callback(a->id, 0, 0, 0, ANNOUNCEMENT_NOBUMP);
	mov	a,#0x03
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
	push	acc
	push	acc
	mov	dptr,#_observer_callback
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dpl,r5
	mov	dph,r6
	pop	ar2
	pop	ar1
	pop	ar0
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
00103$:
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'announcement_set_value'
;------------------------------------------------------------
;value                     Allocated to stack - sp -9
;a                         Allocated to registers r5 r6 r7 
;oldvalue                  Allocated to stack - sp -1
;sloc0                     Allocated to stack - sp -4
;------------------------------------------------------------
;	/opt/contiki/core/net/rime/announcement.c:92: announcement_set_value(struct announcement *a, uint16_t value)
;	-----------------------------------------
;	 function announcement_set_value
;	-----------------------------------------
_announcement_set_value:
	mov	a,sp
	add	a,#0x05
	mov	sp,a
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	/opt/contiki/core/net/rime/announcement.c:94: uint16_t oldvalue = a->value;
	mov	a,#0x05
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,sp
	dec	r0
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
;	/opt/contiki/core/net/rime/announcement.c:96: a->has_value = 1;
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,#0x0A
	add	a,r5
	mov	@r0,a
	clr	a
	addc	a,r6
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,#0x01
	lcall	__gptrput
;	/opt/contiki/core/net/rime/announcement.c:97: a->value = value;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
;	/opt/contiki/core/net/rime/announcement.c:98: if(observer_callback) {
	mov	dptr,#_observer_callback
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jz	00103$
;	/opt/contiki/core/net/rime/announcement.c:99: observer_callback(a->id, a->has_value,
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	mov	a,#0x03
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	clr	a
	push	acc
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xf4
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar4
	mov	dptr,#_observer_callback
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dpl,r5
	mov	dph,r6
	pop	ar2
	pop	ar1
	pop	ar0
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
00103$:
	mov	a,sp
	add	a,#0xFB
	mov	sp,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'announcement_bump'
;------------------------------------------------------------
;a                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	/opt/contiki/core/net/rime/announcement.c:105: announcement_bump(struct announcement *a)
;	-----------------------------------------
;	 function announcement_bump
;	-----------------------------------------
_announcement_bump:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	/opt/contiki/core/net/rime/announcement.c:107: if(observer_callback) {
	mov	dptr,#_observer_callback
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jz	00103$
;	/opt/contiki/core/net/rime/announcement.c:109: a->value, a->value, ANNOUNCEMENT_BUMP);
	mov	a,#0x05
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
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
;	/opt/contiki/core/net/rime/announcement.c:108: observer_callback(a->id, a->has_value,
	mov	a,#0x0A
	add	a,r5
	mov	r0,a
	clr	a
	addc	a,r6
	mov	r1,a
	mov	ar4,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	mov	a,#0x03
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	a,#0x01
	push	acc
	push	ar2
	push	ar3
	push	ar2
	push	ar3
	push	ar0
	mov	dptr,#_observer_callback
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dpl,r5
	mov	dph,r6
	pop	ar2
	pop	ar1
	pop	ar0
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
00103$:
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'announcement_listen'
;------------------------------------------------------------
;time                      Allocated to registers r6 r7 
;------------------------------------------------------------
;	/opt/contiki/core/net/rime/announcement.c:114: announcement_listen(int time)
;	-----------------------------------------
;	 function announcement_listen
;	-----------------------------------------
_announcement_listen:
	mov	r6,dpl
	mov	r7,dph
;	/opt/contiki/core/net/rime/announcement.c:116: if(listen_callback) {
	mov	dptr,#_listen_callback
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r3
	orl	a,r4
	jz	00103$
;	/opt/contiki/core/net/rime/announcement.c:117: listen_callback(time);
	mov	dptr,#_listen_callback
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dpl,r6
	mov	dph,r7
	pop	ar2
	pop	ar1
	pop	ar0
	lcall	__sdcc_banked_call
00103$:
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'announcement_register_listen_callback'
;------------------------------------------------------------
;callback                  Allocated to registers 
;------------------------------------------------------------
;	/opt/contiki/core/net/rime/announcement.c:122: announcement_register_listen_callback(void (*callback)(int time))
;	-----------------------------------------
;	 function announcement_register_listen_callback
;	-----------------------------------------
_announcement_register_listen_callback:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_listen_callback
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	/opt/contiki/core/net/rime/announcement.c:124: listen_callback = callback;
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'announcement_register_observer_callback'
;------------------------------------------------------------
;callback                  Allocated to registers 
;------------------------------------------------------------
;	/opt/contiki/core/net/rime/announcement.c:128: announcement_register_observer_callback(announcement_observer callback)
;	-----------------------------------------
;	 function announcement_register_observer_callback
;	-----------------------------------------
_announcement_register_observer_callback:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_observer_callback
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	/opt/contiki/core/net/rime/announcement.c:130: observer_callback = callback;
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'announcement_list'
;------------------------------------------------------------
;	/opt/contiki/core/net/rime/announcement.c:134: announcement_list(void)
;	-----------------------------------------
;	 function announcement_list
;	-----------------------------------------
_announcement_list:
;	/opt/contiki/core/net/rime/announcement.c:136: return list_head(announcements);
	mov	dptr,#_announcements
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
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'announcement_heard'
;------------------------------------------------------------
;id                        Allocated to stack - sp -7
;value                     Allocated to stack - sp -9
;from                      Allocated to registers r5 r6 r7 
;a                         Allocated to registers r2 r3 r4 
;sloc0                     Allocated to stack - sp -2
;------------------------------------------------------------
;	/opt/contiki/core/net/rime/announcement.c:140: announcement_heard(const linkaddr_t *from, uint16_t id, uint16_t value)
;	-----------------------------------------
;	 function announcement_heard
;	-----------------------------------------
_announcement_heard:
	inc	sp
	inc	sp
	inc	sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	/opt/contiki/core/net/rime/announcement.c:143: for(a = list_head(announcements); a != NULL; a = list_item_next(a)) {
	mov	dptr,#_announcements
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar7
	push	ar6
	push	ar5
	mov	r0,#_list_head
	mov	r1,#(_list_head >> 8)
	mov	r2,#(_list_head >> 16)
	lcall	__sdcc_banked_call
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	pop	ar5
	pop	ar6
	pop	ar7
00107$:
	clr	a
	push	acc
	push	acc
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jnz	00123$
	ljmp	00109$
00123$:
;	/opt/contiki/core/net/rime/announcement.c:144: if(a->id == id) {
	push	ar5
	push	ar6
	push	ar7
	mov	a,#0x03
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	a,@r0
	cjne	a,ar5,00124$
	inc	r0
	mov	a,@r0
	cjne	a,ar6,00124$
	sjmp	00125$
00124$:
	pop	ar7
	pop	ar6
	pop	ar5
	sjmp	00108$
00125$:
;	/opt/contiki/core/net/rime/announcement.c:145: if(a->callback != NULL) {
	mov	a,#0x07
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	pop	ar7
	pop	ar6
	pop	ar5
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00102$
;	/opt/contiki/core/net/rime/announcement.c:146: a->callback(a, from, id, value);
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar5
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xf7
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
	pop	ar2
	pop	ar1
	pop	ar0
	lcall	__sdcc_banked_call
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
00102$:
;	/opt/contiki/core/net/rime/announcement.c:148: return;
	sjmp	00109$
00108$:
;	/opt/contiki/core/net/rime/announcement.c:143: for(a = list_head(announcements); a != NULL; a = list_item_next(a)) {
	push	ar5
	push	ar6
	push	ar7
	mov	ar5,r2
	mov	ar6,r3
	mov	ar7,r4
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
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
	pop	ar7
	pop	ar6
	pop	ar5
	ljmp	00107$
00109$:
	dec	sp
	dec	sp
	dec	sp
	ljmp	__sdcc_banked_ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
__xinit__announcements_list:
; generic printIvalPtr
	.byte #0x00,#0x00,#0x00
__xinit__announcements:
	.byte _announcements_list, (_announcements_list >> 8),#0x00
	.area CABS    (ABS,CODE)

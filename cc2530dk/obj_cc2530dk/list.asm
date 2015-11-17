;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.5 #9380 (Linux)
; This file was generated Tue Nov 17 16:52:50 2015
;--------------------------------------------------------
	.module list
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _list_init
	.globl _list_head
	.globl _list_copy
	.globl _list_tail
	.globl _list_add
	.globl _list_push
	.globl _list_chop
	.globl _list_pop
	.globl _list_remove
	.globl _list_length
	.globl _list_insert
	.globl _list_item_next
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
;Allocation info for local variables in function 'list_init'
;------------------------------------------------------------
;list                      Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	/opt/contiki/core/lib/list.c:66: list_init(list_t list)
;	-----------------------------------------
;	 function list_init
;	-----------------------------------------
_list_init:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	/opt/contiki/core/lib/list.c:68: *list = NULL;
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function 'list_head'
;------------------------------------------------------------
;list                      Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	/opt/contiki/core/lib/list.c:83: list_head(list_t list)
;	-----------------------------------------
;	 function list_head
;	-----------------------------------------
_list_head:
;	/opt/contiki/core/lib/list.c:85: return *list;
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'list_copy'
;------------------------------------------------------------
;src                       Allocated to stack - sp -4
;dest                      Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	/opt/contiki/core/lib/list.c:101: list_copy(list_t dest, list_t src)
;	-----------------------------------------
;	 function list_copy
;	-----------------------------------------
_list_copy:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	/opt/contiki/core/lib/list.c:103: *dest = *src;
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function 'list_tail'
;------------------------------------------------------------
;list                      Allocated to registers r5 r6 r7 
;l                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	/opt/contiki/core/lib/list.c:118: list_tail(list_t list)
;	-----------------------------------------
;	 function list_tail
;	-----------------------------------------
_list_tail:
;	/opt/contiki/core/lib/list.c:122: if(*list == NULL) {
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,r5
	orl	a,r6
;	/opt/contiki/core/lib/list.c:123: return NULL;
	jnz	00102$
	mov	dptr,#0x0000
	mov	b,a
	ret
00102$:
;	/opt/contiki/core/lib/list.c:126: for(l = *list; l->next != NULL; l = l->next);
00105$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
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
	jz	00103$
	mov	ar5,r2
	mov	ar6,r3
	mov	ar7,r4
	sjmp	00105$
00103$:
;	/opt/contiki/core/lib/list.c:128: return l;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'list_add'
;------------------------------------------------------------
;item                      Allocated to stack - sp -7
;list                      Allocated to registers r5 r6 r7 
;l                         Allocated to stack - sp -2
;------------------------------------------------------------
;	/opt/contiki/core/lib/list.c:143: list_add(list_t list, void *item)
;	-----------------------------------------
;	 function list_add
;	-----------------------------------------
_list_add:
	inc	sp
	inc	sp
	inc	sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	/opt/contiki/core/lib/list.c:148: list_remove(list, item);
	push	ar7
	push	ar6
	push	ar5
	mov	a,sp
	add	a,#0xf6
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
	lcall	_list_remove
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
;	/opt/contiki/core/lib/list.c:150: ((struct list *)item)->next = NULL;
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	/opt/contiki/core/lib/list.c:152: l = list_tail(list);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar7
	push	ar6
	push	ar5
	lcall	_list_tail
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	pop	ar5
	pop	ar6
	pop	ar7
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	mov	r0,sp
	dec	r0
	dec	r0
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
;	/opt/contiki/core/lib/list.c:154: if(l == NULL) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00102$
;	/opt/contiki/core/lib/list.c:155: *list = item;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,sp
	add	a,#0xf9
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
	sjmp	00104$
00102$:
;	/opt/contiki/core/lib/list.c:157: l->next = item;
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
00104$:
	dec	sp
	dec	sp
	dec	sp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'list_push'
;------------------------------------------------------------
;item                      Allocated to stack - sp -7
;list                      Allocated to stack - sp -2
;------------------------------------------------------------
;	/opt/contiki/core/lib/list.c:165: list_push(list_t list, void *item)
;	-----------------------------------------
;	 function list_push
;	-----------------------------------------
_list_push:
	push	dpl
	push	dph
	push	b
;	/opt/contiki/core/lib/list.c:170: list_remove(list, item);
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_list_remove
	dec	sp
	dec	sp
	dec	sp
;	/opt/contiki/core/lib/list.c:172: ((struct list *)item)->next = *list;
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	/opt/contiki/core/lib/list.c:173: *list = item;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,sp
	add	a,#0xf9
	mov	r1,a
	mov	a,@r1
	lcall	__gptrput
	inc	dptr
	inc	r1
	mov	a,@r1
	lcall	__gptrput
	inc	dptr
	inc	r1
	mov	a,@r1
	lcall	__gptrput
	dec	sp
	dec	sp
	dec	sp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'list_chop'
;------------------------------------------------------------
;list                      Allocated to stack - sp -5
;l                         Allocated to stack - sp -2
;r                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	/opt/contiki/core/lib/list.c:186: list_chop(list_t list)
;	-----------------------------------------
;	 function list_chop
;	-----------------------------------------
_list_chop:
	push	dpl
	push	dph
	push	b
	inc	sp
	inc	sp
	inc	sp
;	/opt/contiki/core/lib/list.c:190: if(*list == NULL) {
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,r2
	orl	a,r3
;	/opt/contiki/core/lib/list.c:191: return NULL;
	jnz	00102$
	mov	dptr,#0x0000
	mov	b,a
	ljmp	00109$
00102$:
;	/opt/contiki/core/lib/list.c:193: if(((struct list *)*list)->next == NULL) {
	mov	ar5,r2
	mov	ar6,r3
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,r5
	orl	a,r6
	jnz	00104$
;	/opt/contiki/core/lib/list.c:194: l = *list;
	mov	ar5,r2
	mov	ar6,r3
	mov	ar7,r4
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	/opt/contiki/core/lib/list.c:195: *list = NULL;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	/opt/contiki/core/lib/list.c:196: return l;
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
	ljmp	00109$
00104$:
;	/opt/contiki/core/lib/list.c:199: for(l = *list; l->next->next != NULL; l = l->next);
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
00107$:
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
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
	jz	00105$
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	dec	r0
	dec	r0
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	sjmp	00107$
00105$:
;	/opt/contiki/core/lib/list.c:201: r = l->next;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
;	/opt/contiki/core/lib/list.c:202: l->next = NULL;
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
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	/opt/contiki/core/lib/list.c:204: return r;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
00109$:
	mov	a,sp
	add	a,#0xFA
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'list_pop'
;------------------------------------------------------------
;list                      Allocated to registers r5 r6 r7 
;l                         Allocated to stack - sp -2
;------------------------------------------------------------
;	/opt/contiki/core/lib/list.c:218: list_pop(list_t list)
;	-----------------------------------------
;	 function list_pop
;	-----------------------------------------
_list_pop:
	inc	sp
	inc	sp
	inc	sp
;	/opt/contiki/core/lib/list.c:221: l = *list;
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	/opt/contiki/core/lib/list.c:222: if(*list != NULL) {
	mov	a,r2
	orl	a,r3
	jz	00102$
;	/opt/contiki/core/lib/list.c:223: *list = ((struct list *)*list)->next;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
00102$:
;	/opt/contiki/core/lib/list.c:226: return l;
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
	dec	sp
	dec	sp
	dec	sp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'list_remove'
;------------------------------------------------------------
;item                      Allocated to stack - sp -10
;list                      Allocated to stack - sp -5
;l                         Allocated to stack - sp -2
;r                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	/opt/contiki/core/lib/list.c:240: list_remove(list_t list, void *item)
;	-----------------------------------------
;	 function list_remove
;	-----------------------------------------
_list_remove:
	push	dpl
	push	dph
	push	b
	inc	sp
	inc	sp
	inc	sp
;	/opt/contiki/core/lib/list.c:244: if(*list == NULL) {
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,r2
	orl	a,r3
	jnz	00102$
;	/opt/contiki/core/lib/list.c:245: return;
	ljmp	00112$
00102$:
;	/opt/contiki/core/lib/list.c:248: r = NULL;
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
;	/opt/contiki/core/lib/list.c:249: for(l = *list; l != NULL; l = l->next) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
00110$:
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
	jnz	00130$
	ljmp	00112$
00130$:
;	/opt/contiki/core/lib/list.c:250: if(l == item) {
	push	ar5
	push	ar6
	push	ar7
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jz	00132$
	pop	ar7
	pop	ar6
	pop	ar5
	ljmp	00107$
00132$:
	pop	ar7
	pop	ar6
	pop	ar5
;	/opt/contiki/core/lib/list.c:251: if(r == NULL) {
	mov	a,r5
	orl	a,r6
	jnz	00104$
;	/opt/contiki/core/lib/list.c:253: *list = l->next;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	sjmp	00105$
00104$:
;	/opt/contiki/core/lib/list.c:256: r->next = l->next;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
00105$:
;	/opt/contiki/core/lib/list.c:258: l->next = NULL;
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
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	/opt/contiki/core/lib/list.c:259: return;
	sjmp	00112$
00107$:
;	/opt/contiki/core/lib/list.c:261: r = l;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
;	/opt/contiki/core/lib/list.c:249: for(l = *list; l != NULL; l = l->next) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	dec	r0
	dec	r0
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	ljmp	00110$
00112$:
	mov	a,sp
	add	a,#0xFA
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'list_length'
;------------------------------------------------------------
;list                      Allocated to registers r5 r6 r7 
;l                         Allocated to registers r5 r6 r7 
;n                         Allocated to registers r3 r4 
;------------------------------------------------------------
;	/opt/contiki/core/lib/list.c:275: list_length(list_t list)
;	-----------------------------------------
;	 function list_length
;	-----------------------------------------
_list_length:
;	/opt/contiki/core/lib/list.c:280: for(l = *list; l != NULL; l = l->next) {
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	r3,#0x00
	mov	r4,#0x00
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
;	/opt/contiki/core/lib/list.c:281: ++n;
	inc	r3
	cjne	r3,#0x00,00115$
	inc	r4
00115$:
;	/opt/contiki/core/lib/list.c:280: for(l = *list; l != NULL; l = l->next) {
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	sjmp	00103$
00101$:
;	/opt/contiki/core/lib/list.c:284: return n;
	mov	dpl,r3
	mov	dph,r4
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'list_insert'
;------------------------------------------------------------
;previtem                  Allocated to stack - sp -7
;newitem                   Allocated to stack - sp -10
;list                      Allocated to registers r5 r6 r7 
;sloc0                     Allocated to stack - sp -2
;------------------------------------------------------------
;	/opt/contiki/core/lib/list.c:303: list_insert(list_t list, void *previtem, void *newitem)
;	-----------------------------------------
;	 function list_insert
;	-----------------------------------------
_list_insert:
	inc	sp
	inc	sp
	inc	sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	/opt/contiki/core/lib/list.c:305: if(previtem == NULL) {
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00102$
;	/opt/contiki/core/lib/list.c:306: list_push(list, newitem);
	mov	a,sp
	add	a,#0xf6
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
	lcall	_list_push
	dec	sp
	dec	sp
	dec	sp
	sjmp	00104$
00102$:
;	/opt/contiki/core/lib/list.c:309: ((struct list *)newitem)->next = ((struct list *)previtem)->next;
	mov	a,sp
	add	a,#0xf6
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
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	/opt/contiki/core/lib/list.c:310: ((struct list *)previtem)->next = newitem;
	mov	a,sp
	add	a,#0xf6
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
00104$:
	dec	sp
	dec	sp
	dec	sp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'list_item_next'
;------------------------------------------------------------
;item                      Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	/opt/contiki/core/lib/list.c:325: list_item_next(void *item)
;	-----------------------------------------
;	 function list_item_next
;	-----------------------------------------
_list_item_next:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	/opt/contiki/core/lib/list.c:327: return item == NULL? NULL: ((struct list *)item)->next;
	mov	a,r5
	orl	a,r6
	jnz	00103$
	mov	r2,a
	mov	r3,a
	mov	r4,a
	sjmp	00104$
00103$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
00104$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)

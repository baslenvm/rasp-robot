;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.5 #9380 (Linux)
; This file was generated Tue Nov 17 16:52:53 2015
;--------------------------------------------------------
	.module linkaddr
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _linkaddr_null
	.globl _memcmp
	.globl _memcpy
	.globl _linkaddr_node_addr
	.globl _linkaddr_copy
	.globl _linkaddr_cmp
	.globl _linkaddr_set_node_addr
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
_linkaddr_node_addr::
	.ds 2
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
;Allocation info for local variables in function 'linkaddr_copy'
;------------------------------------------------------------
;src                       Allocated to stack - sp -4
;dest                      Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	/opt/contiki/core/net/linkaddr.c:60: linkaddr_copy(linkaddr_t *dest, const linkaddr_t *src)
;	-----------------------------------------
;	 function linkaddr_copy
;	-----------------------------------------
_linkaddr_copy:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	/opt/contiki/core/net/linkaddr.c:62: memcpy(dest, src, LINKADDR_SIZE);
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	a,#0x02
	push	acc
	clr	a
	push	acc
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'linkaddr_cmp'
;------------------------------------------------------------
;addr2                     Allocated to stack - sp -4
;addr1                     Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	/opt/contiki/core/net/linkaddr.c:66: linkaddr_cmp(const linkaddr_t *addr1, const linkaddr_t *addr2)
;	-----------------------------------------
;	 function linkaddr_cmp
;	-----------------------------------------
_linkaddr_cmp:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	/opt/contiki/core/net/linkaddr.c:68: return (memcmp(addr1, addr2, LINKADDR_SIZE) == 0);
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	a,#0x02
	push	acc
	clr	a
	push	acc
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_memcmp
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	clr	a
	cjne	r6,#0x00,00103$
	cjne	r7,#0x00,00103$
	inc	a
00103$:
	mov	r6,a
	rlc	a
	subb	a,acc
	mov	dpl,r6
	mov	dph,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'linkaddr_set_node_addr'
;------------------------------------------------------------
;t                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	/opt/contiki/core/net/linkaddr.c:72: linkaddr_set_node_addr(linkaddr_t *t)
;	-----------------------------------------
;	 function linkaddr_set_node_addr
;	-----------------------------------------
_linkaddr_set_node_addr:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	/opt/contiki/core/net/linkaddr.c:74: linkaddr_copy(&linkaddr_node_addr, t);
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_linkaddr_node_addr
	mov	b,#0x00
	lcall	_linkaddr_copy
	dec	sp
	dec	sp
	dec	sp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_linkaddr_null:
	.db #0x00	; 0
	.db #0x00	; 0
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)

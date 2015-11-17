;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.5 #9380 (Linux)
; This file was generated Wed Nov 18 01:47:31 2015
;--------------------------------------------------------
	.module me
	.optsdcc -mmcs51 --model-huge
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _me_valid
	.globl _me_decode8
	.globl _me_decode16
	.globl _me_encode
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
	.area BANK1   (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'me_encode'
;------------------------------------------------------------
;c                         Allocated to registers r7 
;------------------------------------------------------------
;	/opt/contiki/core/lib/me.c:58: me_encode(unsigned char c)
;	-----------------------------------------
;	 function me_encode
;	-----------------------------------------
_me_encode:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	/opt/contiki/core/lib/me.c:60: return me_encode_tab[c];
	mov	a,dpl
	mov	b,#0x02
	mul	ab
	add	a,#_me_encode_tab
	mov	dpl,a
	mov	a,#(_me_encode_tab >> 8)
	addc	a,b
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'me_decode16'
;------------------------------------------------------------
;m                         Allocated to registers r6 r7 
;m1                        Allocated to registers r5 
;m2                        Allocated to registers r6 
;c                         Allocated to registers r7 
;------------------------------------------------------------
;	/opt/contiki/core/lib/me.c:75: me_decode16(unsigned short m)
;	-----------------------------------------
;	 function me_decode16
;	-----------------------------------------
_me_decode16:
	mov	r6,dpl
;	/opt/contiki/core/lib/me.c:79: m1 = m >> 8;
;	/opt/contiki/core/lib/me.c:80: m2 = m & 0xff;
	mov	r5,dph
;	/opt/contiki/core/lib/me.c:82: c = (me_decode_tab[m1] << 4) |
	mov	a,r5
	mov	dptr,#_me_decode_tab
	movc	a,@a+dptr
	swap	a
	anl	a,#0xF0
	mov	r7,a
;	/opt/contiki/core/lib/me.c:83: me_decode_tab[m2];
	mov	a,r6
	mov	dptr,#_me_decode_tab
	movc	a,@a+dptr
	mov	r6,a
	orl	ar7,a
;	/opt/contiki/core/lib/me.c:84: return c;
	mov	dpl,r7
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'me_decode8'
;------------------------------------------------------------
;m                         Allocated to registers r7 
;------------------------------------------------------------
;	/opt/contiki/core/lib/me.c:99: me_decode8(unsigned char m)
;	-----------------------------------------
;	 function me_decode8
;	-----------------------------------------
_me_decode8:
;	/opt/contiki/core/lib/me.c:101: return  me_decode_tab[m];
	mov	a,dpl
	mov	dptr,#_me_decode_tab
	movc	a,@a+dptr
	mov	r7,a
	mov	dpl,a
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'me_valid'
;------------------------------------------------------------
;m                         Allocated to registers r7 
;------------------------------------------------------------
;	/opt/contiki/core/lib/me.c:109: me_valid(unsigned char m)
;	-----------------------------------------
;	 function me_valid
;	-----------------------------------------
_me_valid:
;	/opt/contiki/core/lib/me.c:111: return me_valid_tab[m];
	mov	a,dpl
	mov	dptr,#_me_valid_tab
	movc	a,@a+dptr
	mov	r7,a
	mov	dpl,a
	ljmp	__sdcc_banked_ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)

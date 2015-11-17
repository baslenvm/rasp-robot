;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.5 #9380 (Linux)
; This file was generated Wed Nov 18 01:47:31 2015
;--------------------------------------------------------
	.module petsciiconv
	.optsdcc -mmcs51 --model-huge
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _petsciiconv_topetscii
	.globl _petsciiconv_toascii
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
_ascii2petscii:
	.ds 128
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
;Allocation info for local variables in function 'petsciiconv_toascii'
;------------------------------------------------------------
;len                       Allocated to stack - sp -5
;buf                       Allocated to registers 
;i                         Allocated to registers 
;ptr                       Allocated to registers r5 r6 r7 
;c                         Allocated to registers r2 
;sloc0                     Allocated to stack - sp +0
;------------------------------------------------------------
;	/opt/contiki/core/lib/petsciiconv.c:77: petsciiconv_toascii(char *buf, unsigned int len)
;	-----------------------------------------
;	 function petsciiconv_toascii
;	-----------------------------------------
_petsciiconv_toascii:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	inc	sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	/opt/contiki/core/lib/petsciiconv.c:84: for(i = len; i > 0; --i) {
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
00114$:
	mov	a,r3
	orl	a,r4
	jnz	00145$
	ljmp	00116$
00145$:
;	/opt/contiki/core/lib/petsciiconv.c:85: c = *ptr;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
;	/opt/contiki/core/lib/petsciiconv.c:86: if(c == 0x0a) {
	cjne	r2,#0x0A,00104$
;	/opt/contiki/core/lib/petsciiconv.c:87: c = 0x0d;
	mov	r2,#0x0D
	sjmp	00105$
00104$:
;	/opt/contiki/core/lib/petsciiconv.c:88: } else if(c == 0x0d) {
	cjne	r2,#0x0D,00105$
;	/opt/contiki/core/lib/petsciiconv.c:89: c = 0x0a;
	mov	r2,#0x0A
00105$:
;	/opt/contiki/core/lib/petsciiconv.c:91: if(c != 0x40) {
	cjne	r2,#0x40,00150$
	sjmp	00111$
00150$:
;	/opt/contiki/core/lib/petsciiconv.c:92: switch (c & 0xe0) {
	push	ar3
	push	ar4
	mov	ar4,r2
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0xE0
	anl	a,r4
	mov	@r0,a
	mov	r0,sp
	dec	r0
	dec	r0
	cjne	@r0,#0x40,00151$
	pop	ar4
	pop	ar3
	sjmp	00107$
00151$:
	pop	ar4
	pop	ar3
	mov	r0,sp
	cjne	@r0,#0x60,00152$
	sjmp	00107$
00152$:
	mov	r0,sp
;	/opt/contiki/core/lib/petsciiconv.c:94: case 0x60:
	cjne	@r0,#0xC0,00111$
	sjmp	00108$
00107$:
;	/opt/contiki/core/lib/petsciiconv.c:95: c ^= 0x20;
	xrl	ar2,#0x20
;	/opt/contiki/core/lib/petsciiconv.c:96: break;
;	/opt/contiki/core/lib/petsciiconv.c:97: case 0xc0:               
	sjmp	00111$
00108$:
;	/opt/contiki/core/lib/petsciiconv.c:98: c ^= 0x80;
	xrl	ar2,#0x80
;	/opt/contiki/core/lib/petsciiconv.c:100: }
00111$:
;	/opt/contiki/core/lib/petsciiconv.c:102: *ptr = c & 0x7f;
	anl	ar2,#0x7F
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
;	/opt/contiki/core/lib/petsciiconv.c:103: ++ptr;
;	/opt/contiki/core/lib/petsciiconv.c:84: for(i = len; i > 0; --i) {
	dec	r3
	cjne	r3,#0xFF,00154$
	dec	r4
00154$:
	sjmp	00114$
00116$:
	dec	sp
	ljmp	__sdcc_banked_ret
;------------------------------------------------------------
;Allocation info for local variables in function 'petsciiconv_topetscii'
;------------------------------------------------------------
;len                       Allocated to stack - sp -4
;buf                       Allocated to registers 
;i                         Allocated to registers 
;ptr                       Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	/opt/contiki/core/lib/petsciiconv.c:108: petsciiconv_topetscii(char *buf, unsigned int len)
;	-----------------------------------------
;	 function petsciiconv_topetscii
;	-----------------------------------------
_petsciiconv_topetscii:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	/opt/contiki/core/lib/petsciiconv.c:114: for(i = len; i > 0; --i) {
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
00103$:
	mov	a,r3
	orl	a,r4
	jz	00105$
;	/opt/contiki/core/lib/petsciiconv.c:115: *ptr = ascii2petscii[*ptr & 0x7f];
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	mov	a,#0x7F
	anl	a,r2
	add	a,#_ascii2petscii
	mov	dpl,a
	clr	a
	addc	a,#(_ascii2petscii >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
;	/opt/contiki/core/lib/petsciiconv.c:116: ++ptr;
;	/opt/contiki/core/lib/petsciiconv.c:114: for(i = len; i > 0; --i) {
	dec	r3
	cjne	r3,#0xFF,00117$
	dec	r4
00117$:
	sjmp	00103$
00105$:
	ljmp	__sdcc_banked_ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
__xinit__ascii2petscii:
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0x07	; 7
	.db #0x14	; 20
	.db #0x09	; 9
	.db #0x0D	; 13
	.db #0x11	; 17
	.db #0x93	; 147
	.db #0x0A	; 10
	.db #0x0E	; 14
	.db #0x0F	; 15
	.db #0x10	; 16
	.db #0x0B	; 11
	.db #0x12	; 18
	.db #0x13	; 19
	.db #0x08	; 8
	.db #0x15	; 21
	.db #0x16	; 22
	.db #0x17	; 23
	.db #0x18	; 24
	.db #0x19	; 25
	.db #0x1A	; 26
	.db #0x1B	; 27
	.db #0x1C	; 28
	.db #0x1D	; 29
	.db #0x1E	; 30
	.db #0x1F	; 31
	.db #0x20	; 32
	.db #0x21	; 33
	.db #0x22	; 34
	.db #0x23	; 35
	.db #0x24	; 36
	.db #0x25	; 37
	.db #0x26	; 38
	.db #0x27	; 39
	.db #0x28	; 40
	.db #0x29	; 41
	.db #0x2A	; 42
	.db #0x2B	; 43
	.db #0x2C	; 44
	.db #0x2D	; 45
	.db #0x2E	; 46
	.db #0x2F	; 47
	.db #0x30	; 48	'0'
	.db #0x31	; 49	'1'
	.db #0x32	; 50	'2'
	.db #0x33	; 51	'3'
	.db #0x34	; 52	'4'
	.db #0x35	; 53	'5'
	.db #0x36	; 54	'6'
	.db #0x37	; 55	'7'
	.db #0x38	; 56	'8'
	.db #0x39	; 57	'9'
	.db #0x3A	; 58
	.db #0x3B	; 59
	.db #0x3C	; 60
	.db #0x3D	; 61
	.db #0x3E	; 62
	.db #0x3F	; 63
	.db #0x40	; 64
	.db #0xC1	; 193
	.db #0xC2	; 194
	.db #0xC3	; 195
	.db #0xC4	; 196
	.db #0xC5	; 197
	.db #0xC6	; 198
	.db #0xC7	; 199
	.db #0xC8	; 200
	.db #0xC9	; 201
	.db #0xCA	; 202
	.db #0xCB	; 203
	.db #0xCC	; 204
	.db #0xCD	; 205
	.db #0xCE	; 206
	.db #0xCF	; 207
	.db #0xD0	; 208
	.db #0xD1	; 209
	.db #0xD2	; 210
	.db #0xD3	; 211
	.db #0xD4	; 212
	.db #0xD5	; 213
	.db #0xD6	; 214
	.db #0xD7	; 215
	.db #0xD8	; 216
	.db #0xD9	; 217
	.db #0xDA	; 218
	.db #0x5B	; 91
	.db #0x5C	; 92
	.db #0x5D	; 93
	.db #0x5E	; 94
	.db #0x5F	; 95
	.db #0xC0	; 192
	.db #0x41	; 65	'A'
	.db #0x42	; 66	'B'
	.db #0x43	; 67	'C'
	.db #0x44	; 68	'D'
	.db #0x45	; 69	'E'
	.db #0x46	; 70	'F'
	.db #0x47	; 71	'G'
	.db #0x48	; 72	'H'
	.db #0x49	; 73	'I'
	.db #0x4A	; 74	'J'
	.db #0x4B	; 75	'K'
	.db #0x4C	; 76	'L'
	.db #0x4D	; 77	'M'
	.db #0x4E	; 78	'N'
	.db #0x4F	; 79	'O'
	.db #0x50	; 80	'P'
	.db #0x51	; 81	'Q'
	.db #0x52	; 82	'R'
	.db #0x53	; 83	'S'
	.db #0x54	; 84	'T'
	.db #0x55	; 85	'U'
	.db #0x56	; 86	'V'
	.db #0x57	; 87	'W'
	.db #0x58	; 88	'X'
	.db #0x59	; 89	'Y'
	.db #0x5A	; 90	'Z'
	.db #0xDB	; 219
	.db #0xDD	; 221
	.db #0xDD	; 221
	.db #0x5E	; 94
	.db #0xDF	; 223
	.area CABS    (ABS,CODE)

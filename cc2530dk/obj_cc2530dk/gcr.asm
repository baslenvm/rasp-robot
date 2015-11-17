;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.5 #9380 (Linux)
; This file was generated Tue Nov 17 16:52:51 2015
;--------------------------------------------------------
	.module gcr
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _gcr_get_decoded
	.globl _gcr_valid
	.globl _gcr_decode
	.globl _gcr_get_encoded
	.globl _gcr_encode
	.globl _gcr_finished
	.globl _gcr_init
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
_gcr_bits:
	.ds 1
_gcr_val:
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
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'gcr_init'
;------------------------------------------------------------
;	/opt/contiki/core/lib/gcr.c:67: void gcr_init() {
;	-----------------------------------------
;	 function gcr_init
;	-----------------------------------------
_gcr_init:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	/opt/contiki/core/lib/gcr.c:68: gcr_val = 0;
	mov	dptr,#_gcr_val
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	/opt/contiki/core/lib/gcr.c:69: gcr_bits = 0;
	mov	dptr,#_gcr_bits
	movx	@dptr,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'gcr_finished'
;------------------------------------------------------------
;	/opt/contiki/core/lib/gcr.c:73: unsigned char gcr_finished() {
;	-----------------------------------------
;	 function gcr_finished
;	-----------------------------------------
_gcr_finished:
;	/opt/contiki/core/lib/gcr.c:74: return gcr_bits == 0;
	mov	dptr,#_gcr_bits
	movx	a,@dptr
	mov	r7,a
	clr	a
	cjne	r7,#0x00,00103$
	inc	a
00103$:
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'gcr_encode'
;------------------------------------------------------------
;raw_data                  Allocated to registers r7 
;------------------------------------------------------------
;	/opt/contiki/core/lib/gcr.c:78: void gcr_encode(unsigned char raw_data) {
;	-----------------------------------------
;	 function gcr_encode
;	-----------------------------------------
_gcr_encode:
;	/opt/contiki/core/lib/gcr.c:80: ((GCR_encode[raw_data >> 4u] << 5u ) |
	mov	a,dpl
	mov	r7,a
	swap	a
	anl	a,#0x0F
	mov	dptr,#_GCR_encode
	movc	a,@a+dptr
	mov	r6,a
	clr	a
	rl	a
	anl	a,#0xE0
	xch	a,r6
	swap	a
	rl	a
	xch	a,r6
	xrl	a,r6
	xch	a,r6
	anl	a,#0xE0
	xch	a,r6
	xrl	a,r6
	mov	r5,a
;	/opt/contiki/core/lib/gcr.c:81: GCR_encode[raw_data & 0xf]) << gcr_bits;
	mov	a,#0x0F
	anl	a,r7
	mov	dptr,#_GCR_encode
	movc	a,@a+dptr
	mov	r4,#0x00
	orl	ar6,a
	mov	a,r4
	orl	ar5,a
	mov	dptr,#_gcr_bits
	movx	a,@dptr
	mov	r7,a
	mov	b,r7
	inc	b
	sjmp	00104$
00103$:
	mov	a,r6
	add	a,r6
	mov	r6,a
	mov	a,r5
	rlc	a
	mov	r5,a
00104$:
	djnz	b,00103$
	mov	dptr,#_gcr_val
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_gcr_val
	mov	a,r6
	orl	a,r3
	movx	@dptr,a
	mov	a,r5
	orl	a,r4
	inc	dptr
	movx	@dptr,a
;	/opt/contiki/core/lib/gcr.c:82: gcr_bits += 10;
	mov	dptr,#_gcr_bits
	mov	a,#0x0A
	add	a,r7
	movx	@dptr,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'gcr_get_encoded'
;------------------------------------------------------------
;raw_data                  Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	/opt/contiki/core/lib/gcr.c:86: unsigned char gcr_get_encoded(unsigned char *raw_data) {
;	-----------------------------------------
;	 function gcr_get_encoded
;	-----------------------------------------
_gcr_get_encoded:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	/opt/contiki/core/lib/gcr.c:87: if (gcr_bits >= 8) {
	mov	dptr,#_gcr_bits
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x08,00108$
00108$:
	jc	00102$
;	/opt/contiki/core/lib/gcr.c:88: *raw_data = (unsigned char) (gcr_val & 0xff);
	mov	dptr,#_gcr_val
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
;	/opt/contiki/core/lib/gcr.c:89: gcr_val = gcr_val >> 8u;
	mov	dptr,#_gcr_val
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	r7,#0x00
	mov	dptr,#_gcr_val
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	/opt/contiki/core/lib/gcr.c:90: gcr_bits = gcr_bits - 8;
	mov	dptr,#_gcr_bits
	movx	a,@dptr
	add	a,#0xF8
	movx	@dptr,a
;	/opt/contiki/core/lib/gcr.c:91: return 1;
	mov	dpl,#0x01
	ret
00102$:
;	/opt/contiki/core/lib/gcr.c:93: return 0;
	mov	dpl,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'gcr_decode'
;------------------------------------------------------------
;gcr_data                  Allocated to registers r7 
;------------------------------------------------------------
;	/opt/contiki/core/lib/gcr.c:97: void gcr_decode(unsigned char gcr_data) {
;	-----------------------------------------
;	 function gcr_decode
;	-----------------------------------------
_gcr_decode:
	mov	r7,dpl
;	/opt/contiki/core/lib/gcr.c:98: gcr_val |= gcr_data << gcr_bits;
	mov	r6,#0x00
	mov	dptr,#_gcr_bits
	movx	a,@dptr
	mov	r5,a
	mov	b,r5
	inc	b
	sjmp	00104$
00103$:
	mov	a,r7
	add	a,r7
	mov	r7,a
	mov	a,r6
	rlc	a
	mov	r6,a
00104$:
	djnz	b,00103$
	mov	dptr,#_gcr_val
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_gcr_val
	mov	a,r7
	orl	a,r3
	movx	@dptr,a
	mov	a,r6
	orl	a,r4
	inc	dptr
	movx	@dptr,a
;	/opt/contiki/core/lib/gcr.c:99: gcr_bits += 8;
	mov	dptr,#_gcr_bits
	mov	a,#0x08
	add	a,r5
	movx	@dptr,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'gcr_valid'
;------------------------------------------------------------
;val                       Allocated to registers r6 r7 
;------------------------------------------------------------
;	/opt/contiki/core/lib/gcr.c:103: unsigned char gcr_valid() {
;	-----------------------------------------
;	 function gcr_valid
;	-----------------------------------------
_gcr_valid:
;	/opt/contiki/core/lib/gcr.c:104: if (gcr_bits >= 10) {
	mov	dptr,#_gcr_bits
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x0A,00114$
00114$:
	jc	00105$
;	/opt/contiki/core/lib/gcr.c:105: unsigned short val = gcr_val & 0x3ff;
	mov	dptr,#_gcr_val
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	anl	ar7,#0x03
;	/opt/contiki/core/lib/gcr.c:106: if ((GCR_decode[val >> 5u] << 4u) == 0xff ||
	mov	ar4,r6
	mov	a,r7
	swap	a
	rr	a
	xch	a,r4
	swap	a
	rr	a
	anl	a,#0x07
	xrl	a,r4
	xch	a,r4
	anl	a,#0x07
	xch	a,r4
	xrl	a,r4
	xch	a,r4
	mov	r5,a
	mov	a,r4
	add	a,#_GCR_decode
	mov	dpl,a
	mov	a,r5
	addc	a,#(_GCR_decode >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	clr	a
	swap	a
	anl	a,#0xF0
	xch	a,r5
	swap	a
	xch	a,r5
	xrl	a,r5
	xch	a,r5
	anl	a,#0xF0
	xch	a,r5
	xrl	a,r5
	mov	r4,a
	cjne	r5,#0xFF,00116$
	cjne	r4,#0x00,00116$
	sjmp	00101$
00116$:
;	/opt/contiki/core/lib/gcr.c:107: (GCR_decode[val & 0x1f]) == 0xff) {
	anl	ar6,#0x1F
	mov	r7,#0x00
	mov	a,r6
	add	a,#_GCR_decode
	mov	dpl,a
	mov	a,r7
	addc	a,#(_GCR_decode >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	cjne	r7,#0xFF,00105$
00101$:
;	/opt/contiki/core/lib/gcr.c:108: return 0;
	mov	dpl,#0x00
	ret
00105$:
;	/opt/contiki/core/lib/gcr.c:111: return 1;
	mov	dpl,#0x01
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'gcr_get_decoded'
;------------------------------------------------------------
;raw_data                  Allocated to registers r5 r6 r7 
;val                       Allocated to stack - sp -1
;------------------------------------------------------------
;	/opt/contiki/core/lib/gcr.c:115: unsigned char gcr_get_decoded(unsigned char *raw_data) {
;	-----------------------------------------
;	 function gcr_get_decoded
;	-----------------------------------------
_gcr_get_decoded:
	inc	sp
	inc	sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	/opt/contiki/core/lib/gcr.c:116: if (gcr_bits >= 10) {
	mov	dptr,#_gcr_bits
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x0A,00108$
00108$:
	jc	00102$
;	/opt/contiki/core/lib/gcr.c:117: unsigned short val = gcr_val & 0x3ff;
	mov	dptr,#_gcr_val
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	r0,sp
	dec	r0
	mov	@r0,ar3
	mov	a,#0x03
	anl	a,r4
	inc	r0
	mov	@r0,a
;	/opt/contiki/core/lib/gcr.c:118: *raw_data = (unsigned char) ((GCR_decode[val >> 5] << 4) |
	mov	r0,sp
	dec	r0
	mov	ar2,@r0
	inc	r0
	mov	a,@r0
	swap	a
	rr	a
	xch	a,r2
	swap	a
	rr	a
	anl	a,#0x07
	xrl	a,r2
	xch	a,r2
	anl	a,#0x07
	xch	a,r2
	xrl	a,r2
	xch	a,r2
	mov	r4,a
	mov	a,r2
	add	a,#_GCR_decode
	mov	dpl,a
	mov	a,r4
	addc	a,#(_GCR_decode >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	swap	a
	anl	a,#0xF0
	mov	r4,a
;	/opt/contiki/core/lib/gcr.c:119: (GCR_decode[val & 0x1f]));
	mov	r0,sp
	dec	r0
	mov	a,#0x1F
	anl	a,@r0
	mov	r2,a
	mov	r3,#0x00
	add	a,#_GCR_decode
	mov	dpl,a
	mov	a,r3
	addc	a,#(_GCR_decode >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	orl	ar4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
;	/opt/contiki/core/lib/gcr.c:120: gcr_val = gcr_val >> 10;
	mov	dptr,#_gcr_val
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	rr	a
	rr	a
	anl	a,#0x3F
	mov	r6,a
	mov	r7,#0x00
	mov	dptr,#_gcr_val
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	/opt/contiki/core/lib/gcr.c:121: gcr_bits = gcr_bits - 10;
	mov	dptr,#_gcr_bits
	movx	a,@dptr
	mov	r7,a
	add	a,#0xF6
	movx	@dptr,a
;	/opt/contiki/core/lib/gcr.c:122: return 1;
	mov	dpl,#0x01
	sjmp	00103$
00102$:
;	/opt/contiki/core/lib/gcr.c:124: return 0;
	mov	dpl,#0x00
00103$:
	dec	sp
	dec	sp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_GCR_encode:
	.db #0x0A	; 10
	.db #0x0B	; 11
	.db #0x12	; 18
	.db #0x13	; 19
	.db #0x0E	; 14
	.db #0x0F	; 15
	.db #0x16	; 22
	.db #0x17	; 23
	.db #0x09	; 9
	.db #0x19	; 25
	.db #0x1A	; 26
	.db #0x1B	; 27
	.db #0x0D	; 13
	.db #0x1D	; 29
	.db #0x1E	; 30
	.db #0x15	; 21
_GCR_decode:
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0xFF	; 255
	.db #0x0C	; 12
	.db #0x04	; 4
	.db #0x05	; 5
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0xFF	; 255
	.db #0x0F	; 15
	.db #0x06	; 6
	.db #0x07	; 7
	.db #0xFF	; 255
	.db #0x09	; 9
	.db #0x0A	; 10
	.db #0x0B	; 11
	.db #0xFF	; 255
	.db #0x0D	; 13
	.db #0x0E	; 14
	.db #0xFF	; 255
	.area XINIT   (CODE)
__xinit__gcr_bits:
	.db #0x00	; 0
__xinit__gcr_val:
	.byte #0x00,#0x00	; 0
	.area CABS    (ABS,CODE)

;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.5 #9380 (Linux)
; This file was generated Tue Nov 17 16:52:50 2015
;--------------------------------------------------------
	.module trickle_timer
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _random_rand
	.globl _ctimer_set
	.globl _clock_time
	.globl _trickle_timer_consistency
	.globl _trickle_timer_inconsistency
	.globl _trickle_timer_config
	.globl _trickle_timer_set
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
_loctt:
	.ds 3
_loc_clock:
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
;Allocation info for local variables in function 'wide_rand'
;------------------------------------------------------------
;	/opt/contiki/core/lib/trickle-timer.c:82: wide_rand()
;	-----------------------------------------
;	 function wide_rand
;	-----------------------------------------
_wide_rand:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	/opt/contiki/core/lib/trickle-timer.c:84: return ((uint32_t)random_rand() << 16 | random_rand());
	lcall	_random_rand
	mov	r6,dpl
	mov	r7,dph
	mov	ar4,r7
	mov	ar5,r6
	mov	r7,#0x00
	mov	r6,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_random_rand
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	ar0,r2
	mov	ar1,r3
	clr	a
	mov	r2,a
	mov	r3,a
	mov	a,r0
	orl	ar6,a
	mov	a,r1
	orl	ar7,a
	mov	a,r2
	orl	ar5,a
	mov	a,r3
	orl	ar4,a
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	mov	a,r4
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'max_imax'
;------------------------------------------------------------
;value                     Allocated to registers r6 r7 
;zeros                     Allocated to registers r5 
;i                         Allocated to registers r2 
;mask                      Allocated to stack - sp -1
;------------------------------------------------------------
;	/opt/contiki/core/lib/trickle-timer.c:98: max_imax(clock_time_t value)
;	-----------------------------------------
;	 function max_imax
;	-----------------------------------------
_max_imax:
	inc	sp
	inc	sp
	mov	r6,dpl
	mov	r7,dph
;	/opt/contiki/core/lib/trickle-timer.c:100: uint8_t zeros = 0;
	mov	r5,#0x00
;	/opt/contiki/core/lib/trickle-timer.c:103: clock_time_t mask = 0xFFFF;
	mov	r0,sp
	dec	r0
	mov	@r0,#0xFF
	inc	r0
	mov	@r0,#0xFF
;	/opt/contiki/core/lib/trickle-timer.c:105: value--;
	dec	r6
	cjne	r6,#0xFF,00119$
	dec	r7
00119$:
;	/opt/contiki/core/lib/trickle-timer.c:107: for(i = sizeof(clock_time_t) << 2; i > 0; i >>= 1) {
	mov	r2,#0x08
00104$:
;	/opt/contiki/core/lib/trickle-timer.c:108: if((value & (mask <<= i)) == 0) {
	push	ar5
	mov	b,r2
	inc	b
	mov	r0,sp
	dec	r0
	dec	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	sjmp	00121$
00120$:
	mov	a,r4
	add	a,r4
	mov	r4,a
	mov	a,r5
	rlc	a
	mov	r5,a
00121$:
	djnz	b,00120$
	mov	r0,sp
	dec	r0
	dec	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	mov	a,r6
	anl	ar4,a
	mov	a,r7
	anl	ar5,a
	mov	a,r4
	orl	a,r5
	pop	ar5
	jnz	00105$
;	/opt/contiki/core/lib/trickle-timer.c:109: zeros += i;
	mov	a,r2
	add	a,r5
	mov	r5,a
;	/opt/contiki/core/lib/trickle-timer.c:110: value <<= i;
	mov	b,r2
	inc	b
	sjmp	00124$
00123$:
	mov	a,r6
	add	a,r6
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
00124$:
	djnz	b,00123$
00105$:
;	/opt/contiki/core/lib/trickle-timer.c:107: for(i = sizeof(clock_time_t) << 2; i > 0; i >>= 1) {
	mov	a,r2
	clr	c
	rrc	a
	mov	r2,a
	jnz	00104$
;	/opt/contiki/core/lib/trickle-timer.c:152: return zeros - 1; /* Always non-negative due to the range of 'value' */
	dec	r5
	mov	dpl,r5
	dec	sp
	dec	sp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_t'
;------------------------------------------------------------
;i_cur                     Allocated to registers r6 r7 
;------------------------------------------------------------
;	/opt/contiki/core/lib/trickle-timer.c:158: get_t(clock_time_t i_cur)
;	-----------------------------------------
;	 function get_t
;	-----------------------------------------
_get_t:
	mov	r6,dpl
;	/opt/contiki/core/lib/trickle-timer.c:160: i_cur >>= 1;
	mov	a,dph
	clr	c
	rrc	a
	xch	a,r6
	rrc	a
	xch	a,r6
	mov	r7,a
;	/opt/contiki/core/lib/trickle-timer.c:165: return i_cur + (tt_rand() % i_cur);
	push	ar7
	push	ar6
	lcall	_wide_rand
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	pop	ar6
	pop	ar7
	mov	ar0,r6
	mov	ar1,r7
	mov	r6,#0x00
	mov	r7,#0x00
	push	ar7
	push	ar6
	push	ar1
	push	ar0
	push	ar0
	push	ar1
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__modulong
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar0
	pop	ar1
	pop	ar6
	pop	ar7
	mov	a,r2
	add	a,r0
	mov	r0,a
	mov	a,r3
	addc	a,r1
	mov	r1,a
	mov	a,r4
	addc	a,r6
	mov	a,r5
	addc	a,r7
	mov	dpl,r0
	mov	dph,r1
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'schedule_for_end'
;------------------------------------------------------------
;tt                        Allocated to stack - sp -4
;now                       Allocated to stack - sp -1
;------------------------------------------------------------
;	/opt/contiki/core/lib/trickle-timer.c:169: schedule_for_end(struct trickle_timer *tt)
;	-----------------------------------------
;	 function schedule_for_end
;	-----------------------------------------
_schedule_for_end:
	push	dpl
	push	dph
	push	b
	inc	sp
	inc	sp
;	/opt/contiki/core/lib/trickle-timer.c:172: clock_time_t now = clock_time();
	lcall	_clock_time
	mov	r0,sp
	dec	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
;	/opt/contiki/core/lib/trickle-timer.c:174: loc_clock = TRICKLE_TIMER_INTERVAL_END(tt) - now;
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,#0x04
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
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,#0x02
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
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	a,r4
	add	a,r2
	mov	r2,a
	mov	a,r6
	addc	a,r3
	mov	r3,a
	mov	r0,sp
	dec	r0
	mov	a,r2
	clr	c
	subb	a,@r0
	mov	r2,a
	mov	a,r3
	inc	r0
	subb	a,@r0
	mov	r3,a
	mov	dptr,#_loc_clock
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	/opt/contiki/core/lib/trickle-timer.c:181: if(loc_clock > (TRICKLE_TIMER_CLOCK_MAX >> 1)) {
	clr	c
	mov	a,#0xFF
	subb	a,r2
	mov	a,#0x7F
	subb	a,r3
	jnc	00102$
;	/opt/contiki/core/lib/trickle-timer.c:182: loc_clock = 0; /* Interval ended in the past, schedule for in 0 */
	mov	dptr,#_loc_clock
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00102$:
;	/opt/contiki/core/lib/trickle-timer.c:186: ctimer_set(&tt->ct, loc_clock, double_interval, tt);
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,sp
	add	a,#0xfc
	mov	r0,a
	mov	a,#0x08
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	push	ar5
	push	ar6
	push	ar7
	mov	a,#_double_interval
	push	acc
	mov	a,#(_double_interval >> 8)
	push	acc
	mov	dptr,#_loc_clock
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_ctimer_set
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	mov	a,sp
	add	a,#0xFB
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'double_interval'
;------------------------------------------------------------
;ptr                       Allocated to registers r5 r6 r7 
;last_end                  Allocated to stack - sp -1
;sloc0                     Allocated to stack - sp -6
;sloc1                     Allocated to stack - sp -3
;------------------------------------------------------------
;	/opt/contiki/core/lib/trickle-timer.c:192: double_interval(void *ptr)
;	-----------------------------------------
;	 function double_interval
;	-----------------------------------------
_double_interval:
	mov	a,sp
	add	a,#0x07
	mov	sp,a
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	/opt/contiki/core/lib/trickle-timer.c:197: loctt = (struct trickle_timer *)ptr;
	mov	dptr,#_loctt
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	/opt/contiki/core/lib/trickle-timer.c:199: loctt->c = 0;
	mov	a,#0x24
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
;	/opt/contiki/core/lib/trickle-timer.c:206: last_end = TRICKLE_TIMER_INTERVAL_END(loctt);
	mov	a,#0x04
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
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,#0x02
	add	a,r5
	mov	@r0,a
	clr	a
	addc	a,r6
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,sp
	add	a,#0xfd
	mov	r1,a
	lcall	__gptrget
	mov	@r1,a
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	add	a,r2
	mov	r2,a
	inc	r0
	mov	a,@r0
	addc	a,r3
	mov	r3,a
	mov	r0,sp
	dec	r0
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
;	/opt/contiki/core/lib/trickle-timer.c:209: if(loctt->i_cur <= TRICKLE_TIMER_INTERVAL_MAX(loctt) >> 1) {
	mov	a,#0x06
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	ar2,r6
	clr	c
	rrc	a
	xch	a,r2
	rrc	a
	xch	a,r2
	mov	r5,a
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	clr	c
	mov	a,r2
	subb	a,@r0
	mov	a,r5
	inc	r0
	subb	a,@r0
	jc	00102$
;	/opt/contiki/core/lib/trickle-timer.c:211: loctt->i_cur <<= 1;
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	a,@r0
	xch	a,r2
	add	a,acc
	xch	a,r2
	rlc	a
	mov	r5,a
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
	sjmp	00103$
00102$:
;	/opt/contiki/core/lib/trickle-timer.c:216: loctt->i_cur = TRICKLE_TIMER_INTERVAL_MAX(loctt);
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
00103$:
;	/opt/contiki/core/lib/trickle-timer.c:221: loc_clock = get_t(loctt->i_cur);
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	lcall	_get_t
	mov	r6,dpl
	mov	r7,dph
	mov	dptr,#_loc_clock
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	/opt/contiki/core/lib/trickle-timer.c:228: loc_clock = (last_end + loc_clock) - clock_time();
	mov	r0,sp
	dec	r0
	mov	a,r6
	add	a,@r0
	mov	r6,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	r7,a
	push	ar7
	push	ar6
	lcall	_clock_time
	mov	r2,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
	mov	a,r6
	clr	c
	subb	a,r2
	mov	r6,a
	mov	a,r7
	subb	a,r5
	mov	r7,a
	mov	dptr,#_loc_clock
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	/opt/contiki/core/lib/trickle-timer.c:231: if(loc_clock > (TRICKLE_TIMER_CLOCK_MAX >> 1)) {
	clr	c
	mov	a,#0xFF
	subb	a,r6
	mov	a,#0x7F
	subb	a,r7
	jnc	00105$
;	/opt/contiki/core/lib/trickle-timer.c:233: loc_clock = 0;
	mov	dptr,#_loc_clock
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00105$:
;	/opt/contiki/core/lib/trickle-timer.c:236: ctimer_set(&loctt->ct, loc_clock, fire, loctt);
	mov	dptr,#_loctt
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
	mov	a,#0x08
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	push	ar2
	push	ar3
	push	ar4
	mov	a,#_fire
	push	acc
	mov	a,#(_fire >> 8)
	push	acc
	mov	dptr,#_loc_clock
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_ctimer_set
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	/opt/contiki/core/lib/trickle-timer.c:240: loctt->i_start = last_end;
	mov	dptr,#_loctt
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x04
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,sp
	dec	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	mov	a,sp
	add	a,#0xF9
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'fire'
;------------------------------------------------------------
;ptr                       Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	/opt/contiki/core/lib/trickle-timer.c:260: fire(void *ptr)
;	-----------------------------------------
;	 function fire
;	-----------------------------------------
_fire:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	/opt/contiki/core/lib/trickle-timer.c:263: loctt = (struct trickle_timer *)ptr;
	mov	dptr,#_loctt
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	/opt/contiki/core/lib/trickle-timer.c:270: if(loctt->cb) {
	mov	a,#0x1D
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
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	orl	a,r3
	jnz	00122$
	ljmp	00102$
00122$:
;	/opt/contiki/core/lib/trickle-timer.c:277: loctt->cb(loctt->cb_arg, TRICKLE_TIMER_PROTO_TX_ALLOW(loctt));
	mov	a,#0x23
	add	a,r5
	mov	r0,a
	clr	a
	addc	a,r6
	mov	r1,a
	mov	ar2,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	r2,a
	jz	00108$
	push	ar3
	push	ar4
	mov	a,#0x24
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
	clr	c
	subb	a,r2
	pop	ar4
	pop	ar3
	jc	00108$
	mov	r2,#0x00
	sjmp	00109$
00108$:
	mov	r2,#0x01
00109$:
	mov	a,#0x1F
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
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	push	ar4
	push	ar3
	push	ar2
	lcall	00125$
	sjmp	00126$
00125$:
	push	ar3
	push	ar4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ret
00126$:
	dec	sp
	pop	ar3
	pop	ar4
00102$:
;	/opt/contiki/core/lib/trickle-timer.c:280: if(trickle_timer_is_running(loctt)) {
	mov	dptr,#_loctt
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x02
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
	orl	a,r2
	jz	00105$
;	/opt/contiki/core/lib/trickle-timer.c:281: schedule_for_end(loctt);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	ljmp	_schedule_for_end
00105$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'new_interval'
;------------------------------------------------------------
;tt                        Allocated to stack - sp -5
;sloc0                     Allocated to stack - sp -2
;------------------------------------------------------------
;	/opt/contiki/core/lib/trickle-timer.c:288: new_interval(struct trickle_timer *tt)
;	-----------------------------------------
;	 function new_interval
;	-----------------------------------------
_new_interval:
	push	dpl
	push	dph
	push	b
	inc	sp
	inc	sp
	inc	sp
;	/opt/contiki/core/lib/trickle-timer.c:290: tt->c = 0;
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x24
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
	clr	a
	lcall	__gptrput
;	/opt/contiki/core/lib/trickle-timer.c:293: loc_clock = get_t(tt->i_cur);
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x02
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
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	lcall	_get_t
	mov	r3,dpl
	mov	r4,dph
	mov	dptr,#_loc_clock
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	/opt/contiki/core/lib/trickle-timer.c:295: ctimer_set(&tt->ct, loc_clock, fire, tt);
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
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x08
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,#_fire
	push	acc
	mov	a,#(_fire >> 8)
	push	acc
	push	ar3
	push	ar4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_ctimer_set
	mov	a,sp
	add	a,#0xf9
;	/opt/contiki/core/lib/trickle-timer.c:298: tt->i_start = tt->ct.etimer.timer.start;
	mov	sp,a
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x04
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x08
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	a,#0x03
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	mov	a,sp
	add	a,#0xFA
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'trickle_timer_consistency'
;------------------------------------------------------------
;tt                        Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	/opt/contiki/core/lib/trickle-timer.c:308: trickle_timer_consistency(struct trickle_timer *tt)
;	-----------------------------------------
;	 function trickle_timer_consistency
;	-----------------------------------------
_trickle_timer_consistency:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	/opt/contiki/core/lib/trickle-timer.c:310: if(tt->c < 0xFF) {
	mov	a,#0x24
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	cjne	r4,#0xFF,00108$
00108$:
	jnc	00103$
;	/opt/contiki/core/lib/trickle-timer.c:311: tt->c++;
	inc	r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	ljmp	__gptrput
00103$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'trickle_timer_inconsistency'
;------------------------------------------------------------
;tt                        Allocated to registers r5 r6 r7 
;sloc0                     Allocated to stack - sp -3
;sloc1                     Allocated to stack - sp -1
;------------------------------------------------------------
;	/opt/contiki/core/lib/trickle-timer.c:317: trickle_timer_inconsistency(struct trickle_timer *tt)
;	-----------------------------------------
;	 function trickle_timer_inconsistency
;	-----------------------------------------
_trickle_timer_inconsistency:
	mov	a,sp
	add	a,#0x04
	mov	sp,a
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	/opt/contiki/core/lib/trickle-timer.c:321: if(tt->i_cur != tt->i_min) {
	mov	a,#0x02
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
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	mov	r0,sp
	dec	r0
	mov	a,sp
	add	a,#0xfd
	mov	r1,a
	mov	b,@r0
	mov	a,@r1
	cjne	a,b,00108$
	inc	r0
	mov	b,@r0
	inc	r1
	mov	a,@r1
	cjne	a,b,00108$
	sjmp	00103$
00108$:
;	/opt/contiki/core/lib/trickle-timer.c:323: tt->i_cur = tt->i_min;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
;	/opt/contiki/core/lib/trickle-timer.c:325: new_interval(tt);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_new_interval
00103$:
	mov	a,sp
	add	a,#0xFC
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'trickle_timer_config'
;------------------------------------------------------------
;i_min                     Allocated to stack - sp -6
;i_max                     Allocated to stack - sp -7
;k                         Allocated to stack - sp -8
;tt                        Allocated to stack - sp -2
;------------------------------------------------------------
;	/opt/contiki/core/lib/trickle-timer.c:330: trickle_timer_config(struct trickle_timer *tt, clock_time_t i_min,
;	-----------------------------------------
;	 function trickle_timer_config
;	-----------------------------------------
_trickle_timer_config:
	push	dpl
	push	dph
	push	b
;	/opt/contiki/core/lib/trickle-timer.c:339: if(TRICKLE_TIMER_IMIN_IS_BAD(i_min)) {
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,#0x02
	inc	r0
	mov	a,@r0
	subb	a,#0x00
	jc	00101$
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	clr	c
	mov	a,#0xFF
	subb	a,@r0
	mov	a,#0x7F
	inc	r0
	subb	a,@r0
	jnc	00102$
00101$:
;	/opt/contiki/core/lib/trickle-timer.c:341: return TRICKLE_TIMER_ERROR;
	mov	dpl,#0x00
	ljmp	00110$
00102$:
;	/opt/contiki/core/lib/trickle-timer.c:344: if(tt == NULL || i_max == 0 || k == 0) {
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00104$
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	jz	00104$
	mov	a,sp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	jnz	00105$
00104$:
;	/opt/contiki/core/lib/trickle-timer.c:346: return TRICKLE_TIMER_ERROR;
	mov	dpl,#0x00
	ljmp	00110$
00105$:
;	/opt/contiki/core/lib/trickle-timer.c:355: if(TRICKLE_TIMER_IPAIR_IS_BAD(i_min, i_max)) {
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	ar3,@r0
	mov	r4,#0x00
	inc	r3
	cjne	r3,#0x00,00129$
	inc	r4
00129$:
	mov	b,r3
	inc	b
	mov	r3,#0xFF
	mov	r4,#0xFF
	sjmp	00131$
00130$:
	clr	c
	mov	a,r4
	rrc	a
	mov	r4,a
	mov	a,r3
	rrc	a
	mov	r3,a
00131$:
	djnz	b,00130$
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	add	a,#0xFF
	mov	r2,a
	inc	r0
	mov	a,@r0
	addc	a,#0xFF
	mov	r7,a
	clr	c
	mov	a,r3
	subb	a,r2
	mov	a,r4
	subb	a,r7
	jnc	00109$
;	/opt/contiki/core/lib/trickle-timer.c:360: i_max = max_imax(i_min);
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_max_imax
	mov	r4,dpl
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	@r0,ar4
00109$:
;	/opt/contiki/core/lib/trickle-timer.c:365: tt->i_min = i_min;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,sp
	add	a,#0xfa
	mov	r1,a
	mov	a,@r1
	lcall	__gptrput
	inc	dptr
	inc	r1
	mov	a,@r1
	lcall	__gptrput
;	/opt/contiki/core/lib/trickle-timer.c:366: tt->i_max = i_max;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x22
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
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
;	/opt/contiki/core/lib/trickle-timer.c:367: tt->i_max_abs = i_min << i_max;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x06
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	a,sp
	add	a,#0xf9
	mov	r0,a
	mov	b,@r0
	inc	b
	mov	a,sp
	add	a,#0xfa
	mov	r0,a
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	sjmp	00134$
00133$:
	mov	a,r6
	add	a,r6
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
00134$:
	djnz	b,00133$
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	/opt/contiki/core/lib/trickle-timer.c:368: tt->k = k;
	mov	r0,sp
	dec	r0
	dec	r0
	mov	a,#0x23
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
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
;	/opt/contiki/core/lib/trickle-timer.c:373: return TRICKLE_TIMER_SUCCESS;
	mov	dpl,#0x01
00110$:
	dec	sp
	dec	sp
	dec	sp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'trickle_timer_set'
;------------------------------------------------------------
;proto_cb                  Allocated to stack - sp -13
;ptr                       Allocated to stack - sp -16
;tt                        Allocated to stack - sp -9
;sloc0                     Allocated to stack - sp -6
;sloc1                     Allocated to stack - sp -6
;sloc2                     Allocated to stack - sp -3
;------------------------------------------------------------
;	/opt/contiki/core/lib/trickle-timer.c:377: trickle_timer_set(struct trickle_timer *tt, trickle_timer_cb_t proto_cb,
;	-----------------------------------------
;	 function trickle_timer_set
;	-----------------------------------------
_trickle_timer_set:
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x07
;	/opt/contiki/core/lib/trickle-timer.c:382: if(tt == NULL || proto_cb == NULL) {
	mov	sp,a
	add	a,#0xf7
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00101$
	mov	a,sp
	add	a,#0xf3
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00102$
00101$:
;	/opt/contiki/core/lib/trickle-timer.c:384: return TRICKLE_TIMER_ERROR;
	mov	dpl,#0x00
	ljmp	00104$
00102$:
;	/opt/contiki/core/lib/trickle-timer.c:388: tt->cb = proto_cb;
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,#0x1D
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
;	/opt/contiki/core/lib/trickle-timer.c:389: tt->cb_arg = ptr;
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,#0x1F
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
;	/opt/contiki/core/lib/trickle-timer.c:392: tt->i_cur = tt->i_min +
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,sp
	add	a,#0xfa
	mov	r1,a
	mov	a,#0x02
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
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
;	/opt/contiki/core/lib/trickle-timer.c:393: (tt_rand() % (TRICKLE_TIMER_INTERVAL_MAX(tt) - tt->i_min + 1));
	push	ar5
	push	ar4
	lcall	_wide_rand
	xch	a,r0
	mov	a,sp
	add	a,#0xfb
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	inc	r0
	mov	@r0,b
	inc	r0
	mov	@r0,a
	pop	ar4
	pop	ar5
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	a,#0x06
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
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,r2
	clr	c
	subb	a,r6
	mov	r2,a
	mov	a,r3
	subb	a,r7
	mov	r3,a
	inc	r2
	cjne	r2,#0x00,00111$
	inc	r3
00111$:
	mov	r7,#0x00
	mov	r6,#0x00
	push	ar5
	push	ar4
	push	ar2
	push	ar3
	push	ar7
	push	ar6
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	__modulong
	xch	a,r0
	mov	a,sp
	add	a,#0xf7
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	inc	r0
	mov	@r0,b
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar4
	pop	ar5
	mov	ar2,r5
	mov	ar3,r4
	clr	a
	mov	r6,a
	mov	r7,a
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	add	a,r2
	mov	r2,a
	inc	r0
	mov	a,@r0
	addc	a,r3
	mov	r3,a
	inc	r0
	mov	a,@r0
	addc	a,r6
	inc	r0
	mov	a,@r0
	addc	a,r7
	mov	a,sp
	add	a,#0xfa
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
;	/opt/contiki/core/lib/trickle-timer.c:399: new_interval(tt);
	mov	a,sp
	add	a,#0xf7
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_new_interval
;	/opt/contiki/core/lib/trickle-timer.c:407: return TRICKLE_TIMER_SUCCESS;
	mov	dpl,#0x01
00104$:
	mov	a,sp
	add	a,#0xF6
	mov	sp,a
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)

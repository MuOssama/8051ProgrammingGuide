;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (MINGW32)
;--------------------------------------------------------
	.module project
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _pinLED
	.globl _pinButton
	.globl _pinDigit2
	.globl _pinDigit1
	.globl _pinSegments
	.globl _numbers
	.globl _main
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _itr
	.globl _count
	.globl _displayNumber
	.globl _showNumber
	.globl _delay
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_count::
	.ds 2
_itr::
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram
;--------------------------------------------------------
	.area SSEG
__start__stack:
	.ds	1

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
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; initialized external ram data
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
; interrupt vector
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;	project.c:17: int count = 0;
	clr	a
	mov	_count,a
	mov	(_count + 1),a
;	project.c:18: bool itr = 0;
	mov	_itr,a
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	project.c:26: void main() {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	project.c:27: while(1){
00110$:
;	project.c:28: itr=itr+1;
	mov	a,_itr
	inc	a
	mov	_itr,a
;	project.c:29: while( (P1 & (1 << pinButton)) ){  
00101$:
	mov	a,_P1
	jnb	acc.2,00103$
;	project.c:30: displayNumber(count);
	mov	dpl, _count
	mov	dph, (_count + 1)
	lcall	_displayNumber
	sjmp	00101$
00103$:
;	project.c:33: if(itr%2==0) {
	mov	a,_itr
	jb	acc.0,00105$
;	project.c:34: P1 |= (1 << pinLED);
	orl	_P1,#0x08
	sjmp	00106$
00105$:
;	project.c:37: P1 &= ~(1 << pinLED);
	mov	a,#0x08
	cpl	a
	anl	_P1,a
00106$:
;	project.c:39: count=count+1;
	inc	_count
	clr	a
	cjne	a,_count,00146$
	inc	(_count + 1)
00146$:
;	project.c:40: delay(500);
	mov	dptr,#0x01f4
	lcall	_delay
;	project.c:42: if (count == 100) {
	mov	a,#0x64
	cjne	a,_count,00147$
	clr	a
	cjne	a,(_count + 1),00147$
	sjmp	00148$
00147$:
	sjmp	00110$
00148$:
;	project.c:43: count = 0;
	clr	a
	mov	_count,a
	mov	(_count + 1),a
;	project.c:47: }
	sjmp	00110$
;------------------------------------------------------------
;Allocation info for local variables in function 'displayNumber'
;------------------------------------------------------------
;num                       Allocated to registers r6 r7 
;units                     Allocated to registers r6 r7 
;tens                      Allocated to registers r4 r5 
;------------------------------------------------------------
;	project.c:48: void displayNumber(int num) {
;	-----------------------------------------
;	 function displayNumber
;	-----------------------------------------
_displayNumber:
;	project.c:50: tens =  (num / 10);
;	project.c:51: units =  (num % 10);
	mov	r6,dpl
	mov	r7,dph
	mov	__divsint_PARM_2,#0x0a
	mov	(__divsint_PARM_2 + 1),#0x00
	push	ar7
	push	ar6
	lcall	__divsint
	mov	r4, dpl
	mov	r5, dph
	pop	ar6
	pop	ar7
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
;	project.c:53: showNumber(tens);
	mov	dpl, r6
	mov	dph, r7
	push	ar5
	push	ar4
	lcall	__modsint
	mov	r6, dpl
	mov	r7, dph
	pop	ar4
	pop	ar5
	mov	dpl, r4
	mov	dph, r5
	push	ar7
	push	ar6
	lcall	_showNumber
;	project.c:54: P1 &= ~(1 << pinDigit1);
	mov	a,#0x01
	cpl	a
	anl	_P1,a
;	project.c:55: P1 |= (1 << pinDigit2);
	orl	_P1,#0x02
;	project.c:56: delay(50);
	mov	dptr,#0x0032
	lcall	_delay
	pop	ar6
	pop	ar7
;	project.c:57: showNumber(units);
	mov	dpl, r6
	mov	dph, r7
	lcall	_showNumber
;	project.c:58: P1 |= (1 << pinDigit1);
	orl	_P1,#0x01
;	project.c:59: P1 &= ~(1 << pinDigit2);
	mov	a,#0x02
	cpl	a
	anl	_P1,a
;	project.c:60: delay(100);
	mov	dptr,#0x0064
;	project.c:61: }
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'showNumber'
;------------------------------------------------------------
;num                       Allocated to registers r6 r7 
;------------------------------------------------------------
;	project.c:63: void showNumber(int num) {
;	-----------------------------------------
;	 function showNumber
;	-----------------------------------------
_showNumber:
	mov	r6, dpl
	mov	r7, dph
;	project.c:64: P2 = numbers[num];
	mov	a,r6
	add	a, #_numbers
	mov	dpl,a
	mov	a,r7
	addc	a, #(_numbers >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	_P2,a
;	project.c:66: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;ms                        Allocated to registers r6 r7 
;i                         Allocated to registers r4 r5 
;j                         Allocated to registers r2 r3 
;------------------------------------------------------------
;	project.c:68: void delay(unsigned int ms) {
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
	mov	r6, dpl
	mov	r7, dph
;	project.c:70: for (i = 0; i < ms; i++) {
	mov	r4,#0x00
	mov	r5,#0x00
00107$:
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	subb	a,r7
	jnc	00109$
;	project.c:71: for (j = 0; j < 250; j++) {
	mov	r2,#0xfa
	mov	r3,#0x00
00105$:
	dec	r2
	cjne	r2,#0xff,00138$
	dec	r3
00138$:
	mov	a,r2
	orl	a,r3
	jnz	00105$
;	project.c:70: for (i = 0; i < ms; i++) {
	inc	r4
	cjne	r4,#0x00,00107$
	inc	r5
	sjmp	00107$
00109$:
;	project.c:75: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_numbers:
	.db #0x3f	; 63
	.db #0x06	; 6
	.db #0x5b	; 91
	.db #0x4f	; 79	'O'
	.db #0x66	; 102	'f'
	.db #0x6d	; 109	'm'
	.db #0x7d	; 125
	.db #0x07	; 7
	.db #0x7f	; 127
	.db #0x6f	; 111	'o'
_pinSegments:
	.byte #0x00, #0x00	;  0
	.byte #0x01, #0x00	;  1
	.byte #0x02, #0x00	;  2
	.byte #0x03, #0x00	;  3
	.byte #0x04, #0x00	;  4
	.byte #0x05, #0x00	;  5
	.byte #0x06, #0x00	;  6
	.byte #0x07, #0x00	;  7
_pinDigit1:
	.byte #0x00, #0x00	;  0
_pinDigit2:
	.byte #0x01, #0x00	;  1
_pinButton:
	.byte #0x02, #0x00	;  2
_pinLED:
	.byte #0x03, #0x00	;  3
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)

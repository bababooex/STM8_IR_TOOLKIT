   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.13.3 - 22 May 2025
   3                     ; Generator (Limited) V4.6.6 - 07 Jan 2026
  44                     ; 48 void BEEP_DeInit(void)
  44                     ; 49 {
  46                     .text:	section	.text,new
  47  0000               _BEEP_DeInit:
  51                     ; 50     BEEP->CSR = BEEP_CSR_RESET_VALUE;
  53  0000 351f50f3      	mov	20723,#31
  54                     ; 51 }
  57  0004 81            	ret
 123                     ; 61 void BEEP_Init(BEEP_Frequency_TypeDef BEEP_Frequency)
 123                     ; 62 {
 124                     .text:	section	.text,new
 125  0000               _BEEP_Init:
 127  0000 88            	push	a
 128       00000000      OFST:	set	0
 131                     ; 65     assert_param(IS_BEEP_FREQUENCY_OK(BEEP_Frequency));
 133  0001 4d            	tnz	a
 134  0002 2708          	jreq	L21
 135  0004 a140          	cp	a,#64
 136  0006 2704          	jreq	L21
 137  0008 a180          	cp	a,#128
 138  000a 2603          	jrne	L01
 139  000c               L21:
 140  000c 4f            	clr	a
 141  000d 2010          	jra	L41
 142  000f               L01:
 143  000f ae0041        	ldw	x,#65
 144  0012 89            	pushw	x
 145  0013 ae0000        	ldw	x,#0
 146  0016 89            	pushw	x
 147  0017 ae000c        	ldw	x,#L15
 148  001a cd0000        	call	_assert_failed
 150  001d 5b04          	addw	sp,#4
 151  001f               L41:
 152                     ; 68     if ((BEEP->CSR & BEEP_CSR_BEEPDIV) == BEEP_CSR_BEEPDIV)
 154  001f c650f3        	ld	a,20723
 155  0022 a41f          	and	a,#31
 156  0024 a11f          	cp	a,#31
 157  0026 2610          	jrne	L35
 158                     ; 70         BEEP->CSR &= (uint8_t)(~BEEP_CSR_BEEPDIV); /* Clear bits */
 160  0028 c650f3        	ld	a,20723
 161  002b a4e0          	and	a,#224
 162  002d c750f3        	ld	20723,a
 163                     ; 71         BEEP->CSR |= BEEP_CALIBRATION_DEFAULT;
 165  0030 c650f3        	ld	a,20723
 166  0033 aa0b          	or	a,#11
 167  0035 c750f3        	ld	20723,a
 168  0038               L35:
 169                     ; 75     BEEP->CSR &= (uint8_t)(~BEEP_CSR_BEEPSEL);
 171  0038 c650f3        	ld	a,20723
 172  003b a43f          	and	a,#63
 173  003d c750f3        	ld	20723,a
 174                     ; 76     BEEP->CSR |= (uint8_t)(BEEP_Frequency);
 176  0040 c650f3        	ld	a,20723
 177  0043 1a01          	or	a,(OFST+1,sp)
 178  0045 c750f3        	ld	20723,a
 179                     ; 78 }
 182  0048 84            	pop	a
 183  0049 81            	ret
 238                     ; 87 void BEEP_Cmd(FunctionalState NewState)
 238                     ; 88 {
 239                     .text:	section	.text,new
 240  0000               _BEEP_Cmd:
 244                     ; 89     if (NewState != DISABLE)
 246  0000 4d            	tnz	a
 247  0001 2706          	jreq	L301
 248                     ; 92         BEEP->CSR |= BEEP_CSR_BEEPEN;
 250  0003 721a50f3      	bset	20723,#5
 252  0007 2004          	jra	L501
 253  0009               L301:
 254                     ; 97         BEEP->CSR &= (uint8_t)(~BEEP_CSR_BEEPEN);
 256  0009 721b50f3      	bres	20723,#5
 257  000d               L501:
 258                     ; 99 }
 261  000d 81            	ret
 309                     .const:	section	.text
 310  0000               L42:
 311  0000 0001adb0      	dc.l	110000
 312  0004               L62:
 313  0004 000249f1      	dc.l	150001
 314  0008               L23:
 315  0008 000003e8      	dc.l	1000
 316                     ; 114 void BEEP_LSICalibrationConfig(uint32_t LSIFreqHz)
 316                     ; 115 {
 317                     .text:	section	.text,new
 318  0000               _BEEP_LSICalibrationConfig:
 320  0000 5206          	subw	sp,#6
 321       00000006      OFST:	set	6
 324                     ; 121     assert_param(IS_LSI_FREQUENCY_OK(LSIFreqHz));
 326  0002 96            	ldw	x,sp
 327  0003 1c0009        	addw	x,#OFST+3
 328  0006 cd0000        	call	c_ltor
 330  0009 ae0000        	ldw	x,#L42
 331  000c cd0000        	call	c_lcmp
 333  000f 2512          	jrult	L22
 334  0011 96            	ldw	x,sp
 335  0012 1c0009        	addw	x,#OFST+3
 336  0015 cd0000        	call	c_ltor
 338  0018 ae0004        	ldw	x,#L62
 339  001b cd0000        	call	c_lcmp
 341  001e 2403          	jruge	L22
 342  0020 4f            	clr	a
 343  0021 2010          	jra	L03
 344  0023               L22:
 345  0023 ae0079        	ldw	x,#121
 346  0026 89            	pushw	x
 347  0027 ae0000        	ldw	x,#0
 348  002a 89            	pushw	x
 349  002b ae000c        	ldw	x,#L15
 350  002e cd0000        	call	_assert_failed
 352  0031 5b04          	addw	sp,#4
 353  0033               L03:
 354                     ; 123     lsifreqkhz = (uint16_t)(LSIFreqHz / 1000); /* Converts value in kHz */
 356  0033 96            	ldw	x,sp
 357  0034 1c0009        	addw	x,#OFST+3
 358  0037 cd0000        	call	c_ltor
 360  003a ae0008        	ldw	x,#L23
 361  003d cd0000        	call	c_ludv
 363  0040 be02          	ldw	x,c_lreg+2
 364  0042 1f03          	ldw	(OFST-3,sp),x
 366                     ; 127     BEEP->CSR &= (uint8_t)(~BEEP_CSR_BEEPDIV); /* Clear bits */
 368  0044 c650f3        	ld	a,20723
 369  0047 a4e0          	and	a,#224
 370  0049 c750f3        	ld	20723,a
 371                     ; 129     A = (uint16_t)(lsifreqkhz >> 3U); /* Division by 8, keep integer part only */
 373  004c 1e03          	ldw	x,(OFST-3,sp)
 374  004e 54            	srlw	x
 375  004f 54            	srlw	x
 376  0050 54            	srlw	x
 377  0051 1f05          	ldw	(OFST-1,sp),x
 379                     ; 131     if ((8U * A) >= ((lsifreqkhz - (8U * A)) * (1U + (2U * A))))
 381  0053 1e05          	ldw	x,(OFST-1,sp)
 382  0055 58            	sllw	x
 383  0056 58            	sllw	x
 384  0057 58            	sllw	x
 385  0058 1f01          	ldw	(OFST-5,sp),x
 387  005a 1e03          	ldw	x,(OFST-3,sp)
 388  005c 72f001        	subw	x,(OFST-5,sp)
 389  005f 1605          	ldw	y,(OFST-1,sp)
 390  0061 9058          	sllw	y
 391  0063 905c          	incw	y
 392  0065 cd0000        	call	c_imul
 394  0068 1605          	ldw	y,(OFST-1,sp)
 395  006a 9058          	sllw	y
 396  006c 9058          	sllw	y
 397  006e 9058          	sllw	y
 398  0070 bf00          	ldw	c_x,x
 399  0072 90b300        	cpw	y,c_x
 400  0075 250c          	jrult	L721
 401                     ; 133         BEEP->CSR |= (uint8_t)(A - 2U);
 403  0077 7b06          	ld	a,(OFST+0,sp)
 404  0079 a002          	sub	a,#2
 405  007b ca50f3        	or	a,20723
 406  007e c750f3        	ld	20723,a
 408  0081 2009          	jra	L131
 409  0083               L721:
 410                     ; 137         BEEP->CSR |= (uint8_t)(A - 1U);
 412  0083 7b06          	ld	a,(OFST+0,sp)
 413  0085 4a            	dec	a
 414  0086 ca50f3        	or	a,20723
 415  0089 c750f3        	ld	20723,a
 416  008c               L131:
 417                     ; 139 }
 420  008c 5b06          	addw	sp,#6
 421  008e 81            	ret
 434                     	xdef	_BEEP_LSICalibrationConfig
 435                     	xdef	_BEEP_Cmd
 436                     	xdef	_BEEP_Init
 437                     	xdef	_BEEP_DeInit
 438                     	xref	_assert_failed
 439                     	switch	.const
 440  000c               L15:
 441  000c 7372635c7374  	dc.b	"src\stm8s_beep.c",0
 442                     	xref.b	c_lreg
 443                     	xref.b	c_x
 463                     	xref	c_imul
 464                     	xref	c_ludv
 465                     	xref	c_lcmp
 466                     	xref	c_ltor
 467                     	end

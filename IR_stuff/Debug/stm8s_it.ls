   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.13.3 - 22 May 2025
   3                     ; Generator (Limited) V4.6.6 - 07 Jan 2026
  44                     ; 64 INTERRUPT_HANDLER_TRAP(TRAP_IRQHandler)
  44                     ; 65 {
  45                     .text:	section	.text,new
  46  0000               f_TRAP_IRQHandler:
  50                     ; 69 }
  53  0000 80            	iret
  75                     ; 76 INTERRUPT_HANDLER(TLI_IRQHandler, 0)
  75                     ; 77 
  75                     ; 78 {
  76                     .text:	section	.text,new
  77  0000               f_TLI_IRQHandler:
  81                     ; 82 }
  84  0000 80            	iret
 106                     ; 89 INTERRUPT_HANDLER(AWU_IRQHandler, 1)
 106                     ; 90 {
 107                     .text:	section	.text,new
 108  0000               f_AWU_IRQHandler:
 112                     ; 94 }
 115  0000 80            	iret
 137                     ; 101 INTERRUPT_HANDLER(CLK_IRQHandler, 2)
 137                     ; 102 {
 138                     .text:	section	.text,new
 139  0000               f_CLK_IRQHandler:
 143                     ; 106 }
 146  0000 80            	iret
 169                     ; 113 INTERRUPT_HANDLER(EXTI_PORTA_IRQHandler, 3)
 169                     ; 114 {
 170                     .text:	section	.text,new
 171  0000               f_EXTI_PORTA_IRQHandler:
 175                     ; 118 }
 178  0000 80            	iret
 201                     ; 125 INTERRUPT_HANDLER(EXTI_PORTB_IRQHandler, 4)
 201                     ; 126 {
 202                     .text:	section	.text,new
 203  0000               f_EXTI_PORTB_IRQHandler:
 207                     ; 130 }
 210  0000 80            	iret
 233                     ; 137 INTERRUPT_HANDLER(EXTI_PORTC_IRQHandler, 5)
 233                     ; 138 {
 234                     .text:	section	.text,new
 235  0000               f_EXTI_PORTC_IRQHandler:
 239                     ; 142 }
 242  0000 80            	iret
 244                     	switch	.data
 245  0000               _last_edge:
 246  0000 0000          	dc.w	0
 292                     ; 150 INTERRUPT_HANDLER(EXTI_PORTD_IRQHandler, 6)
 292                     ; 151 {
 293                     .text:	section	.text,new
 294  0000               f_EXTI_PORTD_IRQHandler:
 296  0000 8a            	push	cc
 297  0001 84            	pop	a
 298  0002 a4bf          	and	a,#191
 299  0004 88            	push	a
 300  0005 86            	pop	cc
 301       00000004      OFST:	set	4
 302  0006 3b0002        	push	c_x+2
 303  0009 be00          	ldw	x,c_x
 304  000b 89            	pushw	x
 305  000c 3b0002        	push	c_y+2
 306  000f be00          	ldw	x,c_y
 307  0011 89            	pushw	x
 308  0012 5204          	subw	sp,#4
 311                     ; 152 	  uint16_t now=TIM5_GetCounter();
 313  0014 cd0000        	call	_TIM5_GetCounter
 315  0017 1f03          	ldw	(OFST-1,sp),x
 317                     ; 153     if (first_edge) {
 319  0019 725d0000      	tnz	_first_edge
 320  001d 270f          	jreq	L711
 321                     ; 154         last_edge = now;
 323  001f 1e03          	ldw	x,(OFST-1,sp)
 324  0021 cf0000        	ldw	_last_edge,x
 325                     ; 155         first_edge = 0;
 327  0024 725f0000      	clr	_first_edge
 328                     ; 156         pulse_count = 1;
 330  0028 35010000      	mov	_pulse_count,#1
 332  002c 202f          	jra	L121
 333  002e               L711:
 334                     ; 158 			  col=1;
 336  002e 35010000      	mov	_col,#1
 337                     ; 159 				uint16_t duration = now - last_edge;
 339  0032 1e03          	ldw	x,(OFST-1,sp)
 340  0034 72b00000      	subw	x,_last_edge
 341  0038 1f01          	ldw	(OFST-3,sp),x
 343                     ; 160         last_edge = now;
 345  003a 1e03          	ldw	x,(OFST-1,sp)
 346  003c cf0000        	ldw	_last_edge,x
 347                     ; 161         if (pulse_count <= MAX_PULSES-1) {//handle buffer overflow here
 349  003f c60000        	ld	a,_pulse_count
 350  0042 a16e          	cp	a,#110
 351  0044 2413          	jruge	L321
 352                     ; 162             pulses[pulse_count - 1] = duration;
 354  0046 c60000        	ld	a,_pulse_count
 355  0049 5f            	clrw	x
 356  004a 97            	ld	xl,a
 357  004b 58            	sllw	x
 358  004c 5a            	decw	x
 359  004d 5a            	decw	x
 360  004e 1601          	ldw	y,(OFST-3,sp)
 361  0050 df0000        	ldw	(_pulses,x),y
 362                     ; 163 						pulse_count++;
 364  0053 725c0000      	inc	_pulse_count
 366  0057 2004          	jra	L121
 367  0059               L321:
 368                     ; 165             capture_done = 1;//full buffer
 370  0059 35010000      	mov	_capture_done,#1
 371  005d               L121:
 372                     ; 168 		dly_count=0;
 374  005d 725f0000      	clr	_dly_count
 375                     ; 169 }
 378  0061 5b04          	addw	sp,#4
 379  0063 85            	popw	x
 380  0064 bf00          	ldw	c_y,x
 381  0066 320002        	pop	c_y+2
 382  0069 85            	popw	x
 383  006a bf00          	ldw	c_x,x
 384  006c 320002        	pop	c_x+2
 385  006f 80            	iret
 408                     ; 176 INTERRUPT_HANDLER(EXTI_PORTE_IRQHandler, 7)
 408                     ; 177 {
 409                     .text:	section	.text,new
 410  0000               f_EXTI_PORTE_IRQHandler:
 414                     ; 181 }
 417  0000 80            	iret
 440                     ; 189  INTERRUPT_HANDLER(EXTI_PORTF_IRQHandler, 8)
 440                     ; 190  {
 441                     .text:	section	.text,new
 442  0000               f_EXTI_PORTF_IRQHandler:
 446                     ; 194  }
 449  0000 80            	iret
 471                     ; 228 INTERRUPT_HANDLER(SPI_IRQHandler, 10)
 471                     ; 229 {
 472                     .text:	section	.text,new
 473  0000               f_SPI_IRQHandler:
 477                     ; 233 }
 480  0000 80            	iret
 503                     ; 240 INTERRUPT_HANDLER(TIM1_UPD_OVF_TRG_BRK_IRQHandler, 11)
 503                     ; 241 {
 504                     .text:	section	.text,new
 505  0000               f_TIM1_UPD_OVF_TRG_BRK_IRQHandler:
 509                     ; 245 }
 512  0000 80            	iret
 535                     ; 252 INTERRUPT_HANDLER(TIM1_CAP_COM_IRQHandler, 12)
 535                     ; 253 {
 536                     .text:	section	.text,new
 537  0000               f_TIM1_CAP_COM_IRQHandler:
 541                     ; 257 }
 544  0000 80            	iret
 569                     ; 266 INTERRUPT_HANDLER(TIM5_UPD_OVF_BRK_TRG_IRQHandler, 13)
 569                     ; 267 {
 570                     .text:	section	.text,new
 571  0000               f_TIM5_UPD_OVF_BRK_TRG_IRQHandler:
 573  0000 8a            	push	cc
 574  0001 84            	pop	a
 575  0002 a4bf          	and	a,#191
 576  0004 88            	push	a
 577  0005 86            	pop	cc
 578  0006 3b0002        	push	c_x+2
 579  0009 be00          	ldw	x,c_x
 580  000b 89            	pushw	x
 581  000c 3b0002        	push	c_y+2
 582  000f be00          	ldw	x,c_y
 583  0011 89            	pushw	x
 586                     ; 268 		TIM5_ClearFlag(TIM5_FLAG_UPDATE);
 588  0012 ae0001        	ldw	x,#1
 589  0015 cd0000        	call	_TIM5_ClearFlag
 591                     ; 269 		dly_count++;
 593  0018 725c0000      	inc	_dly_count
 594                     ; 270 }
 597  001c 85            	popw	x
 598  001d bf00          	ldw	c_y,x
 599  001f 320002        	pop	c_y+2
 600  0022 85            	popw	x
 601  0023 bf00          	ldw	c_x,x
 602  0025 320002        	pop	c_x+2
 603  0028 80            	iret
 626                     ; 277  INTERRUPT_HANDLER(TIM5_CAP_COM_IRQHandler, 14)
 626                     ; 278  {
 627                     .text:	section	.text,new
 628  0000               f_TIM5_CAP_COM_IRQHandler:
 632                     ; 282  }
 635  0000 80            	iret
 658                     ; 344  INTERRUPT_HANDLER(UART1_TX_IRQHandler, 17)
 658                     ; 345  {
 659                     .text:	section	.text,new
 660  0000               f_UART1_TX_IRQHandler:
 664                     ; 349  }
 667  0000 80            	iret
 690                     ; 356  INTERRUPT_HANDLER(UART1_RX_IRQHandler, 18)
 690                     ; 357  {
 691                     .text:	section	.text,new
 692  0000               f_UART1_RX_IRQHandler:
 696                     ; 361  }
 699  0000 80            	iret
 721                     ; 369 INTERRUPT_HANDLER(I2C_IRQHandler, 19)
 721                     ; 370 {
 722                     .text:	section	.text,new
 723  0000               f_I2C_IRQHandler:
 727                     ; 374 }
 730  0000 80            	iret
 752                     ; 448  INTERRUPT_HANDLER(ADC1_IRQHandler, 22)
 752                     ; 449  {
 753                     .text:	section	.text,new
 754  0000               f_ADC1_IRQHandler:
 758                     ; 450  }
 761  0000 80            	iret
 784                     ; 460 INTERRUPT_HANDLER(TIM6_UPD_OVF_TRG_IRQHandler, 23)
 784                     ; 461  {
 785                     .text:	section	.text,new
 786  0000               f_TIM6_UPD_OVF_TRG_IRQHandler:
 790                     ; 466  }
 793  0000 80            	iret
 816                     ; 487 INTERRUPT_HANDLER(EEPROM_EEC_IRQHandler, 24)
 816                     ; 488 {
 817                     .text:	section	.text,new
 818  0000               f_EEPROM_EEC_IRQHandler:
 822                     ; 492 }
 825  0000 80            	iret
 848                     	xdef	f_EEPROM_EEC_IRQHandler
 849                     	xdef	f_TIM6_UPD_OVF_TRG_IRQHandler
 850                     	xdef	f_ADC1_IRQHandler
 851                     	xdef	f_I2C_IRQHandler
 852                     	xdef	f_UART1_RX_IRQHandler
 853                     	xdef	f_UART1_TX_IRQHandler
 854                     	xdef	f_TIM5_CAP_COM_IRQHandler
 855                     	xdef	f_TIM5_UPD_OVF_BRK_TRG_IRQHandler
 856                     	xdef	f_TIM1_UPD_OVF_TRG_BRK_IRQHandler
 857                     	xdef	f_TIM1_CAP_COM_IRQHandler
 858                     	xdef	f_SPI_IRQHandler
 859                     	xdef	f_EXTI_PORTF_IRQHandler
 860                     	xdef	f_EXTI_PORTE_IRQHandler
 861                     	xdef	f_EXTI_PORTD_IRQHandler
 862                     	xdef	f_EXTI_PORTC_IRQHandler
 863                     	xdef	f_EXTI_PORTB_IRQHandler
 864                     	xdef	f_EXTI_PORTA_IRQHandler
 865                     	xdef	f_CLK_IRQHandler
 866                     	xdef	f_AWU_IRQHandler
 867                     	xdef	f_TLI_IRQHandler
 868                     	xdef	f_TRAP_IRQHandler
 869                     	xref	_dly_count
 870                     	xref	_pulses
 871                     	xdef	_last_edge
 872                     	xref	_first_edge
 873                     	xref	_capture_done
 874                     	xref	_col
 875                     	xref	_pulse_count
 876                     	xref	_TIM5_ClearFlag
 877                     	xref	_TIM5_GetCounter
 878                     	xref.b	c_x
 879                     	xref.b	c_y
 898                     	end

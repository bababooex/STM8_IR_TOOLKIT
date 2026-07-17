   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.13.3 - 22 May 2025
   3                     ; Generator (Limited) V4.6.6 - 07 Jan 2026
  60                     ; 47 void WWDG_Init(uint8_t Counter, uint8_t WindowValue)
  60                     ; 48 {
  62                     .text:	section	.text,new
  63  0000               _WWDG_Init:
  65  0000 89            	pushw	x
  66       00000000      OFST:	set	0
  69                     ; 50     assert_param(IS_WWDG_WINDOWLIMITVALUE_OK(WindowValue));
  71  0001 9f            	ld	a,xl
  72  0002 a180          	cp	a,#128
  73  0004 2403          	jruge	L6
  74  0006 4f            	clr	a
  75  0007 2010          	jra	L01
  76  0009               L6:
  77  0009 ae0032        	ldw	x,#50
  78  000c 89            	pushw	x
  79  000d ae0000        	ldw	x,#0
  80  0010 89            	pushw	x
  81  0011 ae0000        	ldw	x,#L72
  82  0014 cd0000        	call	_assert_failed
  84  0017 5b04          	addw	sp,#4
  85  0019               L01:
  86                     ; 52     WWDG->WR = WWDG_WR_RESET_VALUE;
  88  0019 357f50d2      	mov	20690,#127
  89                     ; 53     WWDG->CR = (uint8_t)((uint8_t)(WWDG_CR_WDGA | WWDG_CR_T6) | (uint8_t)Counter);
  91  001d 7b01          	ld	a,(OFST+1,sp)
  92  001f aac0          	or	a,#192
  93  0021 c750d1        	ld	20689,a
  94                     ; 54     WWDG->WR = (uint8_t)((uint8_t)(~WWDG_CR_WDGA) & (uint8_t)(WWDG_CR_T6 | WindowValue));
  96  0024 7b02          	ld	a,(OFST+2,sp)
  97  0026 aa40          	or	a,#64
  98  0028 a47f          	and	a,#127
  99  002a c750d2        	ld	20690,a
 100                     ; 55 }
 103  002d 85            	popw	x
 104  002e 81            	ret
 137                     ; 63 void WWDG_SetCounter(uint8_t Counter)
 137                     ; 64 {
 138                     .text:	section	.text,new
 139  0000               _WWDG_SetCounter:
 141  0000 88            	push	a
 142       00000000      OFST:	set	0
 145                     ; 67     assert_param(IS_WWDG_COUNTERVALUE_OK(Counter));
 147  0001 a180          	cp	a,#128
 148  0003 2403          	jruge	L41
 149  0005 4f            	clr	a
 150  0006 2010          	jra	L61
 151  0008               L41:
 152  0008 ae0043        	ldw	x,#67
 153  000b 89            	pushw	x
 154  000c ae0000        	ldw	x,#0
 155  000f 89            	pushw	x
 156  0010 ae0000        	ldw	x,#L72
 157  0013 cd0000        	call	_assert_failed
 159  0016 5b04          	addw	sp,#4
 160  0018               L61:
 161                     ; 71   WWDG->CR = (uint8_t)(Counter & (uint8_t)BIT_MASK);
 163  0018 7b01          	ld	a,(OFST+1,sp)
 164  001a a47f          	and	a,#127
 165  001c c750d1        	ld	20689,a
 166                     ; 73 }
 169  001f 84            	pop	a
 170  0020 81            	ret
 193                     ; 82 uint8_t WWDG_GetCounter(void)
 193                     ; 83 {
 194                     .text:	section	.text,new
 195  0000               _WWDG_GetCounter:
 199                     ; 84     return(WWDG->CR);
 201  0000 c650d1        	ld	a,20689
 204  0003 81            	ret
 227                     ; 92 void WWDG_SWReset(void)
 227                     ; 93 {
 228                     .text:	section	.text,new
 229  0000               _WWDG_SWReset:
 233                     ; 94     WWDG->CR = WWDG_CR_WDGA; /* Activate WWDG, with clearing T6 */
 235  0000 358050d1      	mov	20689,#128
 236                     ; 95 }
 239  0004 81            	ret
 273                     ; 104 void WWDG_SetWindowValue(uint8_t WindowValue)
 273                     ; 105 {
 274                     .text:	section	.text,new
 275  0000               _WWDG_SetWindowValue:
 277  0000 88            	push	a
 278       00000000      OFST:	set	0
 281                     ; 107     assert_param(IS_WWDG_WINDOWLIMITVALUE_OK(WindowValue));
 283  0001 a180          	cp	a,#128
 284  0003 2403          	jruge	L62
 285  0005 4f            	clr	a
 286  0006 2010          	jra	L03
 287  0008               L62:
 288  0008 ae006b        	ldw	x,#107
 289  000b 89            	pushw	x
 290  000c ae0000        	ldw	x,#0
 291  000f 89            	pushw	x
 292  0010 ae0000        	ldw	x,#L72
 293  0013 cd0000        	call	_assert_failed
 295  0016 5b04          	addw	sp,#4
 296  0018               L03:
 297                     ; 109     WWDG->WR = (uint8_t)((uint8_t)(~WWDG_CR_WDGA) & (uint8_t)(WWDG_CR_T6 | WindowValue));
 299  0018 7b01          	ld	a,(OFST+1,sp)
 300  001a aa40          	or	a,#64
 301  001c a47f          	and	a,#127
 302  001e c750d2        	ld	20690,a
 303                     ; 110 }
 306  0021 84            	pop	a
 307  0022 81            	ret
 320                     	xdef	_WWDG_SetWindowValue
 321                     	xdef	_WWDG_SWReset
 322                     	xdef	_WWDG_GetCounter
 323                     	xdef	_WWDG_SetCounter
 324                     	xdef	_WWDG_Init
 325                     	xref	_assert_failed
 326                     .const:	section	.text
 327  0000               L72:
 328  0000 7372635c7374  	dc.b	"src\stm8s_wwdg.c",0
 348                     	end

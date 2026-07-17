   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.13.3 - 22 May 2025
   3                     ; Generator (Limited) V4.6.6 - 07 Jan 2026
  44                     ; 47 void EXTI_DeInit(void)
  44                     ; 48 {
  46                     .text:	section	.text,new
  47  0000               _EXTI_DeInit:
  51                     ; 49     EXTI->CR1 = EXTI_CR1_RESET_VALUE;
  53  0000 725f50a0      	clr	20640
  54                     ; 50     EXTI->CR2 = EXTI_CR2_RESET_VALUE;
  56  0004 725f50a1      	clr	20641
  57                     ; 51 }
  60  0008 81            	ret
 186                     ; 64 void EXTI_SetExtIntSensitivity(EXTI_Port_TypeDef Port, EXTI_Sensitivity_TypeDef SensitivityValue)
 186                     ; 65 {
 187                     .text:	section	.text,new
 188  0000               _EXTI_SetExtIntSensitivity:
 190  0000 89            	pushw	x
 191       00000000      OFST:	set	0
 194                     ; 68     assert_param(IS_EXTI_PORT_OK(Port));
 196  0001 9e            	ld	a,xh
 197  0002 4d            	tnz	a
 198  0003 2714          	jreq	L21
 199  0005 9e            	ld	a,xh
 200  0006 a101          	cp	a,#1
 201  0008 270f          	jreq	L21
 202  000a 9e            	ld	a,xh
 203  000b a102          	cp	a,#2
 204  000d 270a          	jreq	L21
 205  000f 9e            	ld	a,xh
 206  0010 a103          	cp	a,#3
 207  0012 2705          	jreq	L21
 208  0014 9e            	ld	a,xh
 209  0015 a104          	cp	a,#4
 210  0017 2603          	jrne	L01
 211  0019               L21:
 212  0019 4f            	clr	a
 213  001a 2010          	jra	L41
 214  001c               L01:
 215  001c ae0044        	ldw	x,#68
 216  001f 89            	pushw	x
 217  0020 ae0000        	ldw	x,#0
 218  0023 89            	pushw	x
 219  0024 ae0000        	ldw	x,#L111
 220  0027 cd0000        	call	_assert_failed
 222  002a 5b04          	addw	sp,#4
 223  002c               L41:
 224                     ; 69     assert_param(IS_EXTI_SENSITIVITY_OK(SensitivityValue));
 226  002c 0d02          	tnz	(OFST+2,sp)
 227  002e 2712          	jreq	L02
 228  0030 7b02          	ld	a,(OFST+2,sp)
 229  0032 a101          	cp	a,#1
 230  0034 270c          	jreq	L02
 231  0036 7b02          	ld	a,(OFST+2,sp)
 232  0038 a102          	cp	a,#2
 233  003a 2706          	jreq	L02
 234  003c 7b02          	ld	a,(OFST+2,sp)
 235  003e a103          	cp	a,#3
 236  0040 2603          	jrne	L61
 237  0042               L02:
 238  0042 4f            	clr	a
 239  0043 2010          	jra	L22
 240  0045               L61:
 241  0045 ae0045        	ldw	x,#69
 242  0048 89            	pushw	x
 243  0049 ae0000        	ldw	x,#0
 244  004c 89            	pushw	x
 245  004d ae0000        	ldw	x,#L111
 246  0050 cd0000        	call	_assert_failed
 248  0053 5b04          	addw	sp,#4
 249  0055               L22:
 250                     ; 72     switch (Port)
 252  0055 7b01          	ld	a,(OFST+1,sp)
 254                     ; 94     default:
 254                     ; 95         break;
 255  0057 4d            	tnz	a
 256  0058 270e          	jreq	L12
 257  005a 4a            	dec	a
 258  005b 271d          	jreq	L32
 259  005d 4a            	dec	a
 260  005e 272e          	jreq	L52
 261  0060 4a            	dec	a
 262  0061 2742          	jreq	L72
 263  0063 4a            	dec	a
 264  0064 2756          	jreq	L13
 265  0066 2064          	jra	L511
 266  0068               L12:
 267                     ; 74     case EXTI_PORT_GPIOA:
 267                     ; 75         EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PAIS);
 269  0068 c650a0        	ld	a,20640
 270  006b a4fc          	and	a,#252
 271  006d c750a0        	ld	20640,a
 272                     ; 76         EXTI->CR1 |= (uint8_t)(SensitivityValue);
 274  0070 c650a0        	ld	a,20640
 275  0073 1a02          	or	a,(OFST+2,sp)
 276  0075 c750a0        	ld	20640,a
 277                     ; 77         break;
 279  0078 2052          	jra	L511
 280  007a               L32:
 281                     ; 78     case EXTI_PORT_GPIOB:
 281                     ; 79         EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PBIS);
 283  007a c650a0        	ld	a,20640
 284  007d a4f3          	and	a,#243
 285  007f c750a0        	ld	20640,a
 286                     ; 80         EXTI->CR1 |= (uint8_t)((uint8_t)(SensitivityValue) << 2);
 288  0082 7b02          	ld	a,(OFST+2,sp)
 289  0084 48            	sll	a
 290  0085 48            	sll	a
 291  0086 ca50a0        	or	a,20640
 292  0089 c750a0        	ld	20640,a
 293                     ; 81         break;
 295  008c 203e          	jra	L511
 296  008e               L52:
 297                     ; 82     case EXTI_PORT_GPIOC:
 297                     ; 83         EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PCIS);
 299  008e c650a0        	ld	a,20640
 300  0091 a4cf          	and	a,#207
 301  0093 c750a0        	ld	20640,a
 302                     ; 84         EXTI->CR1 |= (uint8_t)((uint8_t)(SensitivityValue) << 4);
 304  0096 7b02          	ld	a,(OFST+2,sp)
 305  0098 97            	ld	xl,a
 306  0099 a610          	ld	a,#16
 307  009b 42            	mul	x,a
 308  009c 9f            	ld	a,xl
 309  009d ca50a0        	or	a,20640
 310  00a0 c750a0        	ld	20640,a
 311                     ; 85         break;
 313  00a3 2027          	jra	L511
 314  00a5               L72:
 315                     ; 86     case EXTI_PORT_GPIOD:
 315                     ; 87         EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PDIS);
 317  00a5 c650a0        	ld	a,20640
 318  00a8 a43f          	and	a,#63
 319  00aa c750a0        	ld	20640,a
 320                     ; 88         EXTI->CR1 |= (uint8_t)((uint8_t)(SensitivityValue) << 6);
 322  00ad 7b02          	ld	a,(OFST+2,sp)
 323  00af 97            	ld	xl,a
 324  00b0 a640          	ld	a,#64
 325  00b2 42            	mul	x,a
 326  00b3 9f            	ld	a,xl
 327  00b4 ca50a0        	or	a,20640
 328  00b7 c750a0        	ld	20640,a
 329                     ; 89         break;
 331  00ba 2010          	jra	L511
 332  00bc               L13:
 333                     ; 90     case EXTI_PORT_GPIOE:
 333                     ; 91         EXTI->CR2 &= (uint8_t)(~EXTI_CR2_PEIS);
 335  00bc c650a1        	ld	a,20641
 336  00bf a4fc          	and	a,#252
 337  00c1 c750a1        	ld	20641,a
 338                     ; 92         EXTI->CR2 |= (uint8_t)(SensitivityValue);
 340  00c4 c650a1        	ld	a,20641
 341  00c7 1a02          	or	a,(OFST+2,sp)
 342  00c9 c750a1        	ld	20641,a
 343                     ; 93         break;
 345  00cc               L33:
 346                     ; 94     default:
 346                     ; 95         break;
 348  00cc               L511:
 349                     ; 97 }
 352  00cc 85            	popw	x
 353  00cd 81            	ret
 412                     ; 106 void EXTI_SetTLISensitivity(EXTI_TLISensitivity_TypeDef SensitivityValue)
 412                     ; 107 {
 413                     .text:	section	.text,new
 414  0000               _EXTI_SetTLISensitivity:
 416  0000 88            	push	a
 417       00000000      OFST:	set	0
 420                     ; 109     assert_param(IS_EXTI_TLISENSITIVITY_OK(SensitivityValue));
 422  0001 4d            	tnz	a
 423  0002 2704          	jreq	L03
 424  0004 a104          	cp	a,#4
 425  0006 2603          	jrne	L62
 426  0008               L03:
 427  0008 4f            	clr	a
 428  0009 2010          	jra	L23
 429  000b               L62:
 430  000b ae006d        	ldw	x,#109
 431  000e 89            	pushw	x
 432  000f ae0000        	ldw	x,#0
 433  0012 89            	pushw	x
 434  0013 ae0000        	ldw	x,#L111
 435  0016 cd0000        	call	_assert_failed
 437  0019 5b04          	addw	sp,#4
 438  001b               L23:
 439                     ; 112     EXTI->CR2 &= (uint8_t)(~EXTI_CR2_TLIS);
 441  001b 721550a1      	bres	20641,#2
 442                     ; 113     EXTI->CR2 |= (uint8_t)(SensitivityValue);
 444  001f c650a1        	ld	a,20641
 445  0022 1a01          	or	a,(OFST+1,sp)
 446  0024 c750a1        	ld	20641,a
 447                     ; 114 }
 450  0027 84            	pop	a
 451  0028 81            	ret
 496                     ; 121 EXTI_Sensitivity_TypeDef EXTI_GetExtIntSensitivity(EXTI_Port_TypeDef Port)
 496                     ; 122 {
 497                     .text:	section	.text,new
 498  0000               _EXTI_GetExtIntSensitivity:
 500  0000 88            	push	a
 501  0001 88            	push	a
 502       00000001      OFST:	set	1
 505                     ; 123     uint8_t value = 0;
 507  0002 0f01          	clr	(OFST+0,sp)
 509                     ; 126     assert_param(IS_EXTI_PORT_OK(Port));
 511  0004 4d            	tnz	a
 512  0005 2710          	jreq	L04
 513  0007 a101          	cp	a,#1
 514  0009 270c          	jreq	L04
 515  000b a102          	cp	a,#2
 516  000d 2708          	jreq	L04
 517  000f a103          	cp	a,#3
 518  0011 2704          	jreq	L04
 519  0013 a104          	cp	a,#4
 520  0015 2603          	jrne	L63
 521  0017               L04:
 522  0017 4f            	clr	a
 523  0018 2010          	jra	L24
 524  001a               L63:
 525  001a ae007e        	ldw	x,#126
 526  001d 89            	pushw	x
 527  001e ae0000        	ldw	x,#0
 528  0021 89            	pushw	x
 529  0022 ae0000        	ldw	x,#L111
 530  0025 cd0000        	call	_assert_failed
 532  0028 5b04          	addw	sp,#4
 533  002a               L24:
 534                     ; 128     switch (Port)
 536  002a 7b02          	ld	a,(OFST+1,sp)
 538                     ; 145     default:
 538                     ; 146         break;
 539  002c 4d            	tnz	a
 540  002d 270e          	jreq	L541
 541  002f 4a            	dec	a
 542  0030 2714          	jreq	L741
 543  0032 4a            	dec	a
 544  0033 271c          	jreq	L151
 545  0035 4a            	dec	a
 546  0036 2725          	jreq	L351
 547  0038 4a            	dec	a
 548  0039 2730          	jreq	L551
 549  003b 2035          	jra	L302
 550  003d               L541:
 551                     ; 130     case EXTI_PORT_GPIOA:
 551                     ; 131         value = (uint8_t)(EXTI->CR1 & EXTI_CR1_PAIS);
 553  003d c650a0        	ld	a,20640
 554  0040 a403          	and	a,#3
 555  0042 6b01          	ld	(OFST+0,sp),a
 557                     ; 132         break;
 559  0044 202c          	jra	L302
 560  0046               L741:
 561                     ; 133     case EXTI_PORT_GPIOB:
 561                     ; 134         value = (uint8_t)((uint8_t)(EXTI->CR1 & EXTI_CR1_PBIS) >> 2);
 563  0046 c650a0        	ld	a,20640
 564  0049 a40c          	and	a,#12
 565  004b 44            	srl	a
 566  004c 44            	srl	a
 567  004d 6b01          	ld	(OFST+0,sp),a
 569                     ; 135         break;
 571  004f 2021          	jra	L302
 572  0051               L151:
 573                     ; 136     case EXTI_PORT_GPIOC:
 573                     ; 137         value = (uint8_t)((uint8_t)(EXTI->CR1 & EXTI_CR1_PCIS) >> 4);
 575  0051 c650a0        	ld	a,20640
 576  0054 a430          	and	a,#48
 577  0056 4e            	swap	a
 578  0057 a40f          	and	a,#15
 579  0059 6b01          	ld	(OFST+0,sp),a
 581                     ; 138         break;
 583  005b 2015          	jra	L302
 584  005d               L351:
 585                     ; 139     case EXTI_PORT_GPIOD:
 585                     ; 140         value = (uint8_t)((uint8_t)(EXTI->CR1 & EXTI_CR1_PDIS) >> 6);
 587  005d c650a0        	ld	a,20640
 588  0060 a4c0          	and	a,#192
 589  0062 4e            	swap	a
 590  0063 44            	srl	a
 591  0064 44            	srl	a
 592  0065 a403          	and	a,#3
 593  0067 6b01          	ld	(OFST+0,sp),a
 595                     ; 141         break;
 597  0069 2007          	jra	L302
 598  006b               L551:
 599                     ; 142     case EXTI_PORT_GPIOE:
 599                     ; 143         value = (uint8_t)(EXTI->CR2 & EXTI_CR2_PEIS);
 601  006b c650a1        	ld	a,20641
 602  006e a403          	and	a,#3
 603  0070 6b01          	ld	(OFST+0,sp),a
 605                     ; 144         break;
 607  0072               L751:
 608                     ; 145     default:
 608                     ; 146         break;
 610  0072               L302:
 611                     ; 149     return((EXTI_Sensitivity_TypeDef)value);
 613  0072 7b01          	ld	a,(OFST+0,sp)
 616  0074 85            	popw	x
 617  0075 81            	ret
 651                     ; 157 EXTI_TLISensitivity_TypeDef EXTI_GetTLISensitivity(void)
 651                     ; 158 {
 652                     .text:	section	.text,new
 653  0000               _EXTI_GetTLISensitivity:
 655  0000 88            	push	a
 656       00000001      OFST:	set	1
 659                     ; 160     uint8_t value = 0;
 661                     ; 163     value = (uint8_t)(EXTI->CR2 & EXTI_CR2_TLIS);
 663  0001 c650a1        	ld	a,20641
 664  0004 a404          	and	a,#4
 665  0006 6b01          	ld	(OFST+0,sp),a
 667                     ; 165     return((EXTI_TLISensitivity_TypeDef)value);
 669  0008 7b01          	ld	a,(OFST+0,sp)
 672  000a 5b01          	addw	sp,#1
 673  000c 81            	ret
 686                     	xdef	_EXTI_GetTLISensitivity
 687                     	xdef	_EXTI_GetExtIntSensitivity
 688                     	xdef	_EXTI_SetTLISensitivity
 689                     	xdef	_EXTI_SetExtIntSensitivity
 690                     	xdef	_EXTI_DeInit
 691                     	xref	_assert_failed
 692                     .const:	section	.text
 693  0000               L111:
 694  0000 7372635c7374  	dc.b	"src\stm8s_exti.c",0
 714                     	end

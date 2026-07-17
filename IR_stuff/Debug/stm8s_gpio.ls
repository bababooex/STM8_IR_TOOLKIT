   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.13.3 - 22 May 2025
   3                     ; Generator (Limited) V4.6.6 - 07 Jan 2026
 110                     ; 47 void GPIO_DeInit(GPIO_TypeDef* GPIOx)
 110                     ; 48 {
 112                     .text:	section	.text,new
 113  0000               _GPIO_DeInit:
 117                     ; 49     GPIOx->ODR = GPIO_ODR_RESET_VALUE; /* Reset Output Data Register */
 119  0000 7f            	clr	(x)
 120                     ; 50     GPIOx->DDR = GPIO_DDR_RESET_VALUE; /* Reset Data Direction Register */
 122  0001 6f02          	clr	(2,x)
 123                     ; 51     GPIOx->CR1 = GPIO_CR1_RESET_VALUE; /* Reset Control Register 1 */
 125  0003 6f03          	clr	(3,x)
 126                     ; 52     GPIOx->CR2 = GPIO_CR2_RESET_VALUE; /* Reset Control Register 2 */
 128  0005 6f04          	clr	(4,x)
 129                     ; 53 }
 132  0007 81            	ret
 373                     ; 65 void GPIO_Init(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, GPIO_Mode_TypeDef GPIO_Mode)
 373                     ; 66 {
 374                     .text:	section	.text,new
 375  0000               _GPIO_Init:
 377  0000 89            	pushw	x
 378       00000000      OFST:	set	0
 381                     ; 71     assert_param(IS_GPIO_MODE_OK(GPIO_Mode));
 383  0001 0d06          	tnz	(OFST+6,sp)
 384  0003 2742          	jreq	L21
 385  0005 7b06          	ld	a,(OFST+6,sp)
 386  0007 a140          	cp	a,#64
 387  0009 273c          	jreq	L21
 388  000b 7b06          	ld	a,(OFST+6,sp)
 389  000d a120          	cp	a,#32
 390  000f 2736          	jreq	L21
 391  0011 7b06          	ld	a,(OFST+6,sp)
 392  0013 a160          	cp	a,#96
 393  0015 2730          	jreq	L21
 394  0017 7b06          	ld	a,(OFST+6,sp)
 395  0019 a1a0          	cp	a,#160
 396  001b 272a          	jreq	L21
 397  001d 7b06          	ld	a,(OFST+6,sp)
 398  001f a1e0          	cp	a,#224
 399  0021 2724          	jreq	L21
 400  0023 7b06          	ld	a,(OFST+6,sp)
 401  0025 a180          	cp	a,#128
 402  0027 271e          	jreq	L21
 403  0029 7b06          	ld	a,(OFST+6,sp)
 404  002b a1c0          	cp	a,#192
 405  002d 2718          	jreq	L21
 406  002f 7b06          	ld	a,(OFST+6,sp)
 407  0031 a1b0          	cp	a,#176
 408  0033 2712          	jreq	L21
 409  0035 7b06          	ld	a,(OFST+6,sp)
 410  0037 a1f0          	cp	a,#240
 411  0039 270c          	jreq	L21
 412  003b 7b06          	ld	a,(OFST+6,sp)
 413  003d a190          	cp	a,#144
 414  003f 2706          	jreq	L21
 415  0041 7b06          	ld	a,(OFST+6,sp)
 416  0043 a1d0          	cp	a,#208
 417  0045 2603          	jrne	L01
 418  0047               L21:
 419  0047 4f            	clr	a
 420  0048 2010          	jra	L41
 421  004a               L01:
 422  004a ae0047        	ldw	x,#71
 423  004d 89            	pushw	x
 424  004e ae0000        	ldw	x,#0
 425  0051 89            	pushw	x
 426  0052 ae0000        	ldw	x,#L771
 427  0055 cd0000        	call	_assert_failed
 429  0058 5b04          	addw	sp,#4
 430  005a               L41:
 431                     ; 72     assert_param(IS_GPIO_PIN_OK(GPIO_Pin));
 433  005a 0d05          	tnz	(OFST+5,sp)
 434  005c 2703          	jreq	L61
 435  005e 4f            	clr	a
 436  005f 2010          	jra	L02
 437  0061               L61:
 438  0061 ae0048        	ldw	x,#72
 439  0064 89            	pushw	x
 440  0065 ae0000        	ldw	x,#0
 441  0068 89            	pushw	x
 442  0069 ae0000        	ldw	x,#L771
 443  006c cd0000        	call	_assert_failed
 445  006f 5b04          	addw	sp,#4
 446  0071               L02:
 447                     ; 75   GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
 449  0071 1e01          	ldw	x,(OFST+1,sp)
 450  0073 7b05          	ld	a,(OFST+5,sp)
 451  0075 43            	cpl	a
 452  0076 e404          	and	a,(4,x)
 453  0078 e704          	ld	(4,x),a
 454                     ; 81     if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x80) != (uint8_t)0x00) /* Output mode */
 456  007a 7b06          	ld	a,(OFST+6,sp)
 457  007c a580          	bcp	a,#128
 458  007e 271f          	jreq	L102
 459                     ; 83         if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x10) != (uint8_t)0x00) /* High level */
 461  0080 7b06          	ld	a,(OFST+6,sp)
 462  0082 a510          	bcp	a,#16
 463  0084 2708          	jreq	L302
 464                     ; 85             GPIOx->ODR |= (uint8_t)GPIO_Pin;
 466  0086 1e01          	ldw	x,(OFST+1,sp)
 467  0088 f6            	ld	a,(x)
 468  0089 1a05          	or	a,(OFST+5,sp)
 469  008b f7            	ld	(x),a
 471  008c 2007          	jra	L502
 472  008e               L302:
 473                     ; 89             GPIOx->ODR &= (uint8_t)(~(GPIO_Pin));
 475  008e 1e01          	ldw	x,(OFST+1,sp)
 476  0090 7b05          	ld	a,(OFST+5,sp)
 477  0092 43            	cpl	a
 478  0093 f4            	and	a,(x)
 479  0094 f7            	ld	(x),a
 480  0095               L502:
 481                     ; 92         GPIOx->DDR |= (uint8_t)GPIO_Pin;
 483  0095 1e01          	ldw	x,(OFST+1,sp)
 484  0097 e602          	ld	a,(2,x)
 485  0099 1a05          	or	a,(OFST+5,sp)
 486  009b e702          	ld	(2,x),a
 488  009d 2009          	jra	L702
 489  009f               L102:
 490                     ; 97         GPIOx->DDR &= (uint8_t)(~(GPIO_Pin));
 492  009f 1e01          	ldw	x,(OFST+1,sp)
 493  00a1 7b05          	ld	a,(OFST+5,sp)
 494  00a3 43            	cpl	a
 495  00a4 e402          	and	a,(2,x)
 496  00a6 e702          	ld	(2,x),a
 497  00a8               L702:
 498                     ; 104     if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x40) != (uint8_t)0x00) /* Pull-Up or Push-Pull */
 500  00a8 7b06          	ld	a,(OFST+6,sp)
 501  00aa a540          	bcp	a,#64
 502  00ac 270a          	jreq	L112
 503                     ; 106         GPIOx->CR1 |= (uint8_t)GPIO_Pin;
 505  00ae 1e01          	ldw	x,(OFST+1,sp)
 506  00b0 e603          	ld	a,(3,x)
 507  00b2 1a05          	or	a,(OFST+5,sp)
 508  00b4 e703          	ld	(3,x),a
 510  00b6 2009          	jra	L312
 511  00b8               L112:
 512                     ; 110         GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
 514  00b8 1e01          	ldw	x,(OFST+1,sp)
 515  00ba 7b05          	ld	a,(OFST+5,sp)
 516  00bc 43            	cpl	a
 517  00bd e403          	and	a,(3,x)
 518  00bf e703          	ld	(3,x),a
 519  00c1               L312:
 520                     ; 117     if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x20) != (uint8_t)0x00) /* Interrupt or Slow slope */
 522  00c1 7b06          	ld	a,(OFST+6,sp)
 523  00c3 a520          	bcp	a,#32
 524  00c5 270a          	jreq	L512
 525                     ; 119         GPIOx->CR2 |= (uint8_t)GPIO_Pin;
 527  00c7 1e01          	ldw	x,(OFST+1,sp)
 528  00c9 e604          	ld	a,(4,x)
 529  00cb 1a05          	or	a,(OFST+5,sp)
 530  00cd e704          	ld	(4,x),a
 532  00cf 2009          	jra	L712
 533  00d1               L512:
 534                     ; 123         GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
 536  00d1 1e01          	ldw	x,(OFST+1,sp)
 537  00d3 7b05          	ld	a,(OFST+5,sp)
 538  00d5 43            	cpl	a
 539  00d6 e404          	and	a,(4,x)
 540  00d8 e704          	ld	(4,x),a
 541  00da               L712:
 542                     ; 125 }
 545  00da 85            	popw	x
 546  00db 81            	ret
 590                     ; 135 void GPIO_Write(GPIO_TypeDef* GPIOx, uint8_t PortVal)
 590                     ; 136 {
 591                     .text:	section	.text,new
 592  0000               _GPIO_Write:
 594  0000 89            	pushw	x
 595       00000000      OFST:	set	0
 598                     ; 137     GPIOx->ODR = PortVal;
 600  0001 7b05          	ld	a,(OFST+5,sp)
 601  0003 1e01          	ldw	x,(OFST+1,sp)
 602  0005 f7            	ld	(x),a
 603                     ; 138 }
 606  0006 85            	popw	x
 607  0007 81            	ret
 654                     ; 148 void GPIO_WriteHigh(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
 654                     ; 149 {
 655                     .text:	section	.text,new
 656  0000               _GPIO_WriteHigh:
 658  0000 89            	pushw	x
 659       00000000      OFST:	set	0
 662                     ; 150     GPIOx->ODR |= (uint8_t)PortPins;
 664  0001 f6            	ld	a,(x)
 665  0002 1a05          	or	a,(OFST+5,sp)
 666  0004 f7            	ld	(x),a
 667                     ; 151 }
 670  0005 85            	popw	x
 671  0006 81            	ret
 718                     ; 161 void GPIO_WriteLow(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
 718                     ; 162 {
 719                     .text:	section	.text,new
 720  0000               _GPIO_WriteLow:
 722  0000 89            	pushw	x
 723       00000000      OFST:	set	0
 726                     ; 163     GPIOx->ODR &= (uint8_t)(~PortPins);
 728  0001 7b05          	ld	a,(OFST+5,sp)
 729  0003 43            	cpl	a
 730  0004 f4            	and	a,(x)
 731  0005 f7            	ld	(x),a
 732                     ; 164 }
 735  0006 85            	popw	x
 736  0007 81            	ret
 783                     ; 174 void GPIO_WriteReverse(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
 783                     ; 175 {
 784                     .text:	section	.text,new
 785  0000               _GPIO_WriteReverse:
 787  0000 89            	pushw	x
 788       00000000      OFST:	set	0
 791                     ; 176     GPIOx->ODR ^= (uint8_t)PortPins;
 793  0001 f6            	ld	a,(x)
 794  0002 1805          	xor	a,(OFST+5,sp)
 795  0004 f7            	ld	(x),a
 796                     ; 177 }
 799  0005 85            	popw	x
 800  0006 81            	ret
 838                     ; 185 uint8_t GPIO_ReadOutputData(GPIO_TypeDef* GPIOx)
 838                     ; 186 {
 839                     .text:	section	.text,new
 840  0000               _GPIO_ReadOutputData:
 844                     ; 187     return ((uint8_t)GPIOx->ODR);
 846  0000 f6            	ld	a,(x)
 849  0001 81            	ret
 886                     ; 196 uint8_t GPIO_ReadInputData(GPIO_TypeDef* GPIOx)
 886                     ; 197 {
 887                     .text:	section	.text,new
 888  0000               _GPIO_ReadInputData:
 892                     ; 198     return ((uint8_t)GPIOx->IDR);
 894  0000 e601          	ld	a,(1,x)
 897  0002 81            	ret
 965                     ; 207 BitStatus GPIO_ReadInputPin(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin)
 965                     ; 208 {
 966                     .text:	section	.text,new
 967  0000               _GPIO_ReadInputPin:
 969  0000 89            	pushw	x
 970       00000000      OFST:	set	0
 973                     ; 209     return ((BitStatus)(GPIOx->IDR & (uint8_t)GPIO_Pin));
 975  0001 e601          	ld	a,(1,x)
 976  0003 1405          	and	a,(OFST+5,sp)
 979  0005 85            	popw	x
 980  0006 81            	ret
1059                     ; 219 void GPIO_ExternalPullUpConfig(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, FunctionalState NewState)
1059                     ; 220 {
1060                     .text:	section	.text,new
1061  0000               _GPIO_ExternalPullUpConfig:
1063  0000 89            	pushw	x
1064       00000000      OFST:	set	0
1067                     ; 222     assert_param(IS_GPIO_PIN_OK(GPIO_Pin));
1069  0001 0d05          	tnz	(OFST+5,sp)
1070  0003 2703          	jreq	L24
1071  0005 4f            	clr	a
1072  0006 2010          	jra	L44
1073  0008               L24:
1074  0008 ae00de        	ldw	x,#222
1075  000b 89            	pushw	x
1076  000c ae0000        	ldw	x,#0
1077  000f 89            	pushw	x
1078  0010 ae0000        	ldw	x,#L771
1079  0013 cd0000        	call	_assert_failed
1081  0016 5b04          	addw	sp,#4
1082  0018               L44:
1083                     ; 223     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1085  0018 0d06          	tnz	(OFST+6,sp)
1086  001a 2706          	jreq	L05
1087  001c 7b06          	ld	a,(OFST+6,sp)
1088  001e a101          	cp	a,#1
1089  0020 2603          	jrne	L64
1090  0022               L05:
1091  0022 4f            	clr	a
1092  0023 2010          	jra	L25
1093  0025               L64:
1094  0025 ae00df        	ldw	x,#223
1095  0028 89            	pushw	x
1096  0029 ae0000        	ldw	x,#0
1097  002c 89            	pushw	x
1098  002d ae0000        	ldw	x,#L771
1099  0030 cd0000        	call	_assert_failed
1101  0033 5b04          	addw	sp,#4
1102  0035               L25:
1103                     ; 225     if (NewState != DISABLE) /* External Pull-Up Set*/
1105  0035 0d06          	tnz	(OFST+6,sp)
1106  0037 270a          	jreq	L374
1107                     ; 227         GPIOx->CR1 |= (uint8_t)GPIO_Pin;
1109  0039 1e01          	ldw	x,(OFST+1,sp)
1110  003b e603          	ld	a,(3,x)
1111  003d 1a05          	or	a,(OFST+5,sp)
1112  003f e703          	ld	(3,x),a
1114  0041 2009          	jra	L574
1115  0043               L374:
1116                     ; 230         GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
1118  0043 1e01          	ldw	x,(OFST+1,sp)
1119  0045 7b05          	ld	a,(OFST+5,sp)
1120  0047 43            	cpl	a
1121  0048 e403          	and	a,(3,x)
1122  004a e703          	ld	(3,x),a
1123  004c               L574:
1124                     ; 232 }
1127  004c 85            	popw	x
1128  004d 81            	ret
1141                     	xdef	_GPIO_ExternalPullUpConfig
1142                     	xdef	_GPIO_ReadInputPin
1143                     	xdef	_GPIO_ReadOutputData
1144                     	xdef	_GPIO_ReadInputData
1145                     	xdef	_GPIO_WriteReverse
1146                     	xdef	_GPIO_WriteLow
1147                     	xdef	_GPIO_WriteHigh
1148                     	xdef	_GPIO_Write
1149                     	xdef	_GPIO_Init
1150                     	xdef	_GPIO_DeInit
1151                     	xref	_assert_failed
1152                     .const:	section	.text
1153  0000               L771:
1154  0000 7372635c7374  	dc.b	"src\stm8s_gpio.c",0
1174                     	end

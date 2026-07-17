   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.13.3 - 22 May 2025
   3                     ; Generator (Limited) V4.6.6 - 07 Jan 2026
  16                     .const:	section	.text
  17  0000               _HSIDivFactor:
  18  0000 01            	dc.b	1
  19  0001 02            	dc.b	2
  20  0002 04            	dc.b	4
  21  0003 08            	dc.b	8
  22  0004               _CLKPrescTable:
  23  0004 01            	dc.b	1
  24  0005 02            	dc.b	2
  25  0006 04            	dc.b	4
  26  0007 08            	dc.b	8
  27  0008 0a            	dc.b	10
  28  0009 10            	dc.b	16
  29  000a 14            	dc.b	20
  30  000b 28            	dc.b	40
  59                     ; 66 void CLK_DeInit(void)
  59                     ; 67 {
  61                     .text:	section	.text,new
  62  0000               _CLK_DeInit:
  66                     ; 69     CLK->ICKR = CLK_ICKR_RESET_VALUE;
  68  0000 350150c0      	mov	20672,#1
  69                     ; 70     CLK->ECKR = CLK_ECKR_RESET_VALUE;
  71  0004 725f50c1      	clr	20673
  72                     ; 71     CLK->SWR  = CLK_SWR_RESET_VALUE;
  74  0008 35e150c4      	mov	20676,#225
  75                     ; 72     CLK->SWCR = CLK_SWCR_RESET_VALUE;
  77  000c 725f50c5      	clr	20677
  78                     ; 73     CLK->CKDIVR = CLK_CKDIVR_RESET_VALUE;
  80  0010 351850c6      	mov	20678,#24
  81                     ; 74     CLK->PCKENR1 = CLK_PCKENR1_RESET_VALUE;
  83  0014 35ff50c7      	mov	20679,#255
  84                     ; 75     CLK->PCKENR2 = CLK_PCKENR2_RESET_VALUE;
  86  0018 35ff50ca      	mov	20682,#255
  87                     ; 76     CLK->CSSR = CLK_CSSR_RESET_VALUE;
  89  001c 725f50c8      	clr	20680
  90                     ; 77     CLK->CCOR = CLK_CCOR_RESET_VALUE;
  92  0020 725f50c9      	clr	20681
  94  0024               L52:
  95                     ; 78     while ((CLK->CCOR & CLK_CCOR_CCOEN)!= 0)
  97  0024 c650c9        	ld	a,20681
  98  0027 a501          	bcp	a,#1
  99  0029 26f9          	jrne	L52
 100                     ; 80     CLK->CCOR = CLK_CCOR_RESET_VALUE;
 102  002b 725f50c9      	clr	20681
 103                     ; 81     CLK->HSITRIMR = CLK_HSITRIMR_RESET_VALUE;
 105  002f 725f50cc      	clr	20684
 106                     ; 82     CLK->SWIMCCR = CLK_SWIMCCR_RESET_VALUE;
 108  0033 725f50cd      	clr	20685
 109                     ; 84 }
 112  0037 81            	ret
 169                     ; 95 void CLK_FastHaltWakeUpCmd(FunctionalState NewState)
 169                     ; 96 {
 170                     .text:	section	.text,new
 171  0000               _CLK_FastHaltWakeUpCmd:
 173  0000 88            	push	a
 174       00000000      OFST:	set	0
 177                     ; 99     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 179  0001 4d            	tnz	a
 180  0002 2704          	jreq	L21
 181  0004 a101          	cp	a,#1
 182  0006 2603          	jrne	L01
 183  0008               L21:
 184  0008 4f            	clr	a
 185  0009 2010          	jra	L41
 186  000b               L01:
 187  000b ae0063        	ldw	x,#99
 188  000e 89            	pushw	x
 189  000f ae0000        	ldw	x,#0
 190  0012 89            	pushw	x
 191  0013 ae000c        	ldw	x,#L75
 192  0016 cd0000        	call	_assert_failed
 194  0019 5b04          	addw	sp,#4
 195  001b               L41:
 196                     ; 101     if (NewState != DISABLE)
 198  001b 0d01          	tnz	(OFST+1,sp)
 199  001d 2706          	jreq	L16
 200                     ; 104         CLK->ICKR |= CLK_ICKR_FHWU;
 202  001f 721450c0      	bset	20672,#2
 204  0023 2004          	jra	L36
 205  0025               L16:
 206                     ; 109         CLK->ICKR &= (uint8_t)(~CLK_ICKR_FHWU);
 208  0025 721550c0      	bres	20672,#2
 209  0029               L36:
 210                     ; 112 }
 213  0029 84            	pop	a
 214  002a 81            	ret
 250                     ; 119 void CLK_HSECmd(FunctionalState NewState)
 250                     ; 120 {
 251                     .text:	section	.text,new
 252  0000               _CLK_HSECmd:
 254  0000 88            	push	a
 255       00000000      OFST:	set	0
 258                     ; 123     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 260  0001 4d            	tnz	a
 261  0002 2704          	jreq	L22
 262  0004 a101          	cp	a,#1
 263  0006 2603          	jrne	L02
 264  0008               L22:
 265  0008 4f            	clr	a
 266  0009 2010          	jra	L42
 267  000b               L02:
 268  000b ae007b        	ldw	x,#123
 269  000e 89            	pushw	x
 270  000f ae0000        	ldw	x,#0
 271  0012 89            	pushw	x
 272  0013 ae000c        	ldw	x,#L75
 273  0016 cd0000        	call	_assert_failed
 275  0019 5b04          	addw	sp,#4
 276  001b               L42:
 277                     ; 125     if (NewState != DISABLE)
 279  001b 0d01          	tnz	(OFST+1,sp)
 280  001d 2706          	jreq	L301
 281                     ; 128         CLK->ECKR |= CLK_ECKR_HSEEN;
 283  001f 721050c1      	bset	20673,#0
 285  0023 2004          	jra	L501
 286  0025               L301:
 287                     ; 133         CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
 289  0025 721150c1      	bres	20673,#0
 290  0029               L501:
 291                     ; 136 }
 294  0029 84            	pop	a
 295  002a 81            	ret
 331                     ; 143 void CLK_HSICmd(FunctionalState NewState)
 331                     ; 144 {
 332                     .text:	section	.text,new
 333  0000               _CLK_HSICmd:
 335  0000 88            	push	a
 336       00000000      OFST:	set	0
 339                     ; 147     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 341  0001 4d            	tnz	a
 342  0002 2704          	jreq	L23
 343  0004 a101          	cp	a,#1
 344  0006 2603          	jrne	L03
 345  0008               L23:
 346  0008 4f            	clr	a
 347  0009 2010          	jra	L43
 348  000b               L03:
 349  000b ae0093        	ldw	x,#147
 350  000e 89            	pushw	x
 351  000f ae0000        	ldw	x,#0
 352  0012 89            	pushw	x
 353  0013 ae000c        	ldw	x,#L75
 354  0016 cd0000        	call	_assert_failed
 356  0019 5b04          	addw	sp,#4
 357  001b               L43:
 358                     ; 149     if (NewState != DISABLE)
 360  001b 0d01          	tnz	(OFST+1,sp)
 361  001d 2706          	jreq	L521
 362                     ; 152         CLK->ICKR |= CLK_ICKR_HSIEN;
 364  001f 721050c0      	bset	20672,#0
 366  0023 2004          	jra	L721
 367  0025               L521:
 368                     ; 157         CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
 370  0025 721150c0      	bres	20672,#0
 371  0029               L721:
 372                     ; 160 }
 375  0029 84            	pop	a
 376  002a 81            	ret
 412                     ; 167 void CLK_LSICmd(FunctionalState NewState)
 412                     ; 168 {
 413                     .text:	section	.text,new
 414  0000               _CLK_LSICmd:
 416  0000 88            	push	a
 417       00000000      OFST:	set	0
 420                     ; 171     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 422  0001 4d            	tnz	a
 423  0002 2704          	jreq	L24
 424  0004 a101          	cp	a,#1
 425  0006 2603          	jrne	L04
 426  0008               L24:
 427  0008 4f            	clr	a
 428  0009 2010          	jra	L44
 429  000b               L04:
 430  000b ae00ab        	ldw	x,#171
 431  000e 89            	pushw	x
 432  000f ae0000        	ldw	x,#0
 433  0012 89            	pushw	x
 434  0013 ae000c        	ldw	x,#L75
 435  0016 cd0000        	call	_assert_failed
 437  0019 5b04          	addw	sp,#4
 438  001b               L44:
 439                     ; 173     if (NewState != DISABLE)
 441  001b 0d01          	tnz	(OFST+1,sp)
 442  001d 2706          	jreq	L741
 443                     ; 176         CLK->ICKR |= CLK_ICKR_LSIEN;
 445  001f 721650c0      	bset	20672,#3
 447  0023 2004          	jra	L151
 448  0025               L741:
 449                     ; 181         CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
 451  0025 721750c0      	bres	20672,#3
 452  0029               L151:
 453                     ; 184 }
 456  0029 84            	pop	a
 457  002a 81            	ret
 493                     ; 192 void CLK_CCOCmd(FunctionalState NewState)
 493                     ; 193 {
 494                     .text:	section	.text,new
 495  0000               _CLK_CCOCmd:
 497  0000 88            	push	a
 498       00000000      OFST:	set	0
 501                     ; 196     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 503  0001 4d            	tnz	a
 504  0002 2704          	jreq	L25
 505  0004 a101          	cp	a,#1
 506  0006 2603          	jrne	L05
 507  0008               L25:
 508  0008 4f            	clr	a
 509  0009 2010          	jra	L45
 510  000b               L05:
 511  000b ae00c4        	ldw	x,#196
 512  000e 89            	pushw	x
 513  000f ae0000        	ldw	x,#0
 514  0012 89            	pushw	x
 515  0013 ae000c        	ldw	x,#L75
 516  0016 cd0000        	call	_assert_failed
 518  0019 5b04          	addw	sp,#4
 519  001b               L45:
 520                     ; 198     if (NewState != DISABLE)
 522  001b 0d01          	tnz	(OFST+1,sp)
 523  001d 2706          	jreq	L171
 524                     ; 201         CLK->CCOR |= CLK_CCOR_CCOEN;
 526  001f 721050c9      	bset	20681,#0
 528  0023 2004          	jra	L371
 529  0025               L171:
 530                     ; 206         CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOEN);
 532  0025 721150c9      	bres	20681,#0
 533  0029               L371:
 534                     ; 209 }
 537  0029 84            	pop	a
 538  002a 81            	ret
 574                     ; 218 void CLK_ClockSwitchCmd(FunctionalState NewState)
 574                     ; 219 {
 575                     .text:	section	.text,new
 576  0000               _CLK_ClockSwitchCmd:
 578  0000 88            	push	a
 579       00000000      OFST:	set	0
 582                     ; 222     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 584  0001 4d            	tnz	a
 585  0002 2704          	jreq	L26
 586  0004 a101          	cp	a,#1
 587  0006 2603          	jrne	L06
 588  0008               L26:
 589  0008 4f            	clr	a
 590  0009 2010          	jra	L46
 591  000b               L06:
 592  000b ae00de        	ldw	x,#222
 593  000e 89            	pushw	x
 594  000f ae0000        	ldw	x,#0
 595  0012 89            	pushw	x
 596  0013 ae000c        	ldw	x,#L75
 597  0016 cd0000        	call	_assert_failed
 599  0019 5b04          	addw	sp,#4
 600  001b               L46:
 601                     ; 224     if (NewState != DISABLE )
 603  001b 0d01          	tnz	(OFST+1,sp)
 604  001d 2706          	jreq	L312
 605                     ; 227         CLK->SWCR |= CLK_SWCR_SWEN;
 607  001f 721250c5      	bset	20677,#1
 609  0023 2004          	jra	L512
 610  0025               L312:
 611                     ; 232         CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWEN);
 613  0025 721350c5      	bres	20677,#1
 614  0029               L512:
 615                     ; 235 }
 618  0029 84            	pop	a
 619  002a 81            	ret
 656                     ; 245 void CLK_SlowActiveHaltWakeUpCmd(FunctionalState NewState)
 656                     ; 246 {
 657                     .text:	section	.text,new
 658  0000               _CLK_SlowActiveHaltWakeUpCmd:
 660  0000 88            	push	a
 661       00000000      OFST:	set	0
 664                     ; 249     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 666  0001 4d            	tnz	a
 667  0002 2704          	jreq	L27
 668  0004 a101          	cp	a,#1
 669  0006 2603          	jrne	L07
 670  0008               L27:
 671  0008 4f            	clr	a
 672  0009 2010          	jra	L47
 673  000b               L07:
 674  000b ae00f9        	ldw	x,#249
 675  000e 89            	pushw	x
 676  000f ae0000        	ldw	x,#0
 677  0012 89            	pushw	x
 678  0013 ae000c        	ldw	x,#L75
 679  0016 cd0000        	call	_assert_failed
 681  0019 5b04          	addw	sp,#4
 682  001b               L47:
 683                     ; 251     if (NewState != DISABLE)
 685  001b 0d01          	tnz	(OFST+1,sp)
 686  001d 2706          	jreq	L532
 687                     ; 254         CLK->ICKR |= CLK_ICKR_SWUAH;
 689  001f 721a50c0      	bset	20672,#5
 691  0023 2004          	jra	L732
 692  0025               L532:
 693                     ; 259         CLK->ICKR &= (uint8_t)(~CLK_ICKR_SWUAH);
 695  0025 721b50c0      	bres	20672,#5
 696  0029               L732:
 697                     ; 262 }
 700  0029 84            	pop	a
 701  002a 81            	ret
 861                     ; 272 void CLK_PeripheralClockConfig(CLK_Peripheral_TypeDef CLK_Peripheral, FunctionalState NewState)
 861                     ; 273 {
 862                     .text:	section	.text,new
 863  0000               _CLK_PeripheralClockConfig:
 865  0000 89            	pushw	x
 866       00000000      OFST:	set	0
 869                     ; 276     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 871  0001 9f            	ld	a,xl
 872  0002 4d            	tnz	a
 873  0003 2705          	jreq	L201
 874  0005 9f            	ld	a,xl
 875  0006 a101          	cp	a,#1
 876  0008 2603          	jrne	L001
 877  000a               L201:
 878  000a 4f            	clr	a
 879  000b 2010          	jra	L401
 880  000d               L001:
 881  000d ae0114        	ldw	x,#276
 882  0010 89            	pushw	x
 883  0011 ae0000        	ldw	x,#0
 884  0014 89            	pushw	x
 885  0015 ae000c        	ldw	x,#L75
 886  0018 cd0000        	call	_assert_failed
 888  001b 5b04          	addw	sp,#4
 889  001d               L401:
 890                     ; 277     assert_param(IS_CLK_PERIPHERAL_OK(CLK_Peripheral));
 892  001d 0d01          	tnz	(OFST+1,sp)
 893  001f 274e          	jreq	L011
 894  0021 7b01          	ld	a,(OFST+1,sp)
 895  0023 a101          	cp	a,#1
 896  0025 2748          	jreq	L011
 897  0027 7b01          	ld	a,(OFST+1,sp)
 898  0029 a103          	cp	a,#3
 899  002b 2742          	jreq	L011
 900  002d 7b01          	ld	a,(OFST+1,sp)
 901  002f a103          	cp	a,#3
 902  0031 273c          	jreq	L011
 903  0033 7b01          	ld	a,(OFST+1,sp)
 904  0035 a103          	cp	a,#3
 905  0037 2736          	jreq	L011
 906  0039 7b01          	ld	a,(OFST+1,sp)
 907  003b a104          	cp	a,#4
 908  003d 2730          	jreq	L011
 909  003f 7b01          	ld	a,(OFST+1,sp)
 910  0041 a105          	cp	a,#5
 911  0043 272a          	jreq	L011
 912  0045 7b01          	ld	a,(OFST+1,sp)
 913  0047 a105          	cp	a,#5
 914  0049 2724          	jreq	L011
 915  004b 7b01          	ld	a,(OFST+1,sp)
 916  004d a104          	cp	a,#4
 917  004f 271e          	jreq	L011
 918  0051 7b01          	ld	a,(OFST+1,sp)
 919  0053 a106          	cp	a,#6
 920  0055 2718          	jreq	L011
 921  0057 7b01          	ld	a,(OFST+1,sp)
 922  0059 a107          	cp	a,#7
 923  005b 2712          	jreq	L011
 924  005d 7b01          	ld	a,(OFST+1,sp)
 925  005f a117          	cp	a,#23
 926  0061 270c          	jreq	L011
 927  0063 7b01          	ld	a,(OFST+1,sp)
 928  0065 a113          	cp	a,#19
 929  0067 2706          	jreq	L011
 930  0069 7b01          	ld	a,(OFST+1,sp)
 931  006b a112          	cp	a,#18
 932  006d 2603          	jrne	L601
 933  006f               L011:
 934  006f 4f            	clr	a
 935  0070 2010          	jra	L211
 936  0072               L601:
 937  0072 ae0115        	ldw	x,#277
 938  0075 89            	pushw	x
 939  0076 ae0000        	ldw	x,#0
 940  0079 89            	pushw	x
 941  007a ae000c        	ldw	x,#L75
 942  007d cd0000        	call	_assert_failed
 944  0080 5b04          	addw	sp,#4
 945  0082               L211:
 946                     ; 279     if (((uint8_t)CLK_Peripheral & (uint8_t)0x10) == 0x00)
 948  0082 7b01          	ld	a,(OFST+1,sp)
 949  0084 a510          	bcp	a,#16
 950  0086 2633          	jrne	L323
 951                     ; 281         if (NewState != DISABLE)
 953  0088 0d02          	tnz	(OFST+2,sp)
 954  008a 2717          	jreq	L523
 955                     ; 284             CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
 957  008c 7b01          	ld	a,(OFST+1,sp)
 958  008e a40f          	and	a,#15
 959  0090 5f            	clrw	x
 960  0091 97            	ld	xl,a
 961  0092 a601          	ld	a,#1
 962  0094 5d            	tnzw	x
 963  0095 2704          	jreq	L411
 964  0097               L611:
 965  0097 48            	sll	a
 966  0098 5a            	decw	x
 967  0099 26fc          	jrne	L611
 968  009b               L411:
 969  009b ca50c7        	or	a,20679
 970  009e c750c7        	ld	20679,a
 972  00a1 2049          	jra	L133
 973  00a3               L523:
 974                     ; 289             CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
 976  00a3 7b01          	ld	a,(OFST+1,sp)
 977  00a5 a40f          	and	a,#15
 978  00a7 5f            	clrw	x
 979  00a8 97            	ld	xl,a
 980  00a9 a601          	ld	a,#1
 981  00ab 5d            	tnzw	x
 982  00ac 2704          	jreq	L021
 983  00ae               L221:
 984  00ae 48            	sll	a
 985  00af 5a            	decw	x
 986  00b0 26fc          	jrne	L221
 987  00b2               L021:
 988  00b2 43            	cpl	a
 989  00b3 c450c7        	and	a,20679
 990  00b6 c750c7        	ld	20679,a
 991  00b9 2031          	jra	L133
 992  00bb               L323:
 993                     ; 294         if (NewState != DISABLE)
 995  00bb 0d02          	tnz	(OFST+2,sp)
 996  00bd 2717          	jreq	L333
 997                     ; 297             CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
 999  00bf 7b01          	ld	a,(OFST+1,sp)
1000  00c1 a40f          	and	a,#15
1001  00c3 5f            	clrw	x
1002  00c4 97            	ld	xl,a
1003  00c5 a601          	ld	a,#1
1004  00c7 5d            	tnzw	x
1005  00c8 2704          	jreq	L421
1006  00ca               L621:
1007  00ca 48            	sll	a
1008  00cb 5a            	decw	x
1009  00cc 26fc          	jrne	L621
1010  00ce               L421:
1011  00ce ca50ca        	or	a,20682
1012  00d1 c750ca        	ld	20682,a
1014  00d4 2016          	jra	L133
1015  00d6               L333:
1016                     ; 302             CLK->PCKENR2 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
1018  00d6 7b01          	ld	a,(OFST+1,sp)
1019  00d8 a40f          	and	a,#15
1020  00da 5f            	clrw	x
1021  00db 97            	ld	xl,a
1022  00dc a601          	ld	a,#1
1023  00de 5d            	tnzw	x
1024  00df 2704          	jreq	L031
1025  00e1               L231:
1026  00e1 48            	sll	a
1027  00e2 5a            	decw	x
1028  00e3 26fc          	jrne	L231
1029  00e5               L031:
1030  00e5 43            	cpl	a
1031  00e6 c450ca        	and	a,20682
1032  00e9 c750ca        	ld	20682,a
1033  00ec               L133:
1034                     ; 306 }
1037  00ec 85            	popw	x
1038  00ed 81            	ret
1225                     ; 319 ErrorStatus CLK_ClockSwitchConfig(CLK_SwitchMode_TypeDef CLK_SwitchMode, CLK_Source_TypeDef CLK_NewClock, FunctionalState ITState, CLK_CurrentClockState_TypeDef CLK_CurrentClockState)
1225                     ; 320 {
1226                     .text:	section	.text,new
1227  0000               _CLK_ClockSwitchConfig:
1229  0000 89            	pushw	x
1230  0001 5204          	subw	sp,#4
1231       00000004      OFST:	set	4
1234                     ; 323     uint16_t DownCounter = CLK_TIMEOUT;
1236  0003 ae0491        	ldw	x,#1169
1237  0006 1f03          	ldw	(OFST-1,sp),x
1239                     ; 324     ErrorStatus Swif = ERROR;
1241                     ; 327     assert_param(IS_CLK_SOURCE_OK(CLK_NewClock));
1243  0008 7b06          	ld	a,(OFST+2,sp)
1244  000a a1e1          	cp	a,#225
1245  000c 270c          	jreq	L041
1246  000e 7b06          	ld	a,(OFST+2,sp)
1247  0010 a1d2          	cp	a,#210
1248  0012 2706          	jreq	L041
1249  0014 7b06          	ld	a,(OFST+2,sp)
1250  0016 a1b4          	cp	a,#180
1251  0018 2603          	jrne	L631
1252  001a               L041:
1253  001a 4f            	clr	a
1254  001b 2010          	jra	L241
1255  001d               L631:
1256  001d ae0147        	ldw	x,#327
1257  0020 89            	pushw	x
1258  0021 ae0000        	ldw	x,#0
1259  0024 89            	pushw	x
1260  0025 ae000c        	ldw	x,#L75
1261  0028 cd0000        	call	_assert_failed
1263  002b 5b04          	addw	sp,#4
1264  002d               L241:
1265                     ; 328     assert_param(IS_CLK_SWITCHMODE_OK(CLK_SwitchMode));
1267  002d 0d05          	tnz	(OFST+1,sp)
1268  002f 2706          	jreq	L641
1269  0031 7b05          	ld	a,(OFST+1,sp)
1270  0033 a101          	cp	a,#1
1271  0035 2603          	jrne	L441
1272  0037               L641:
1273  0037 4f            	clr	a
1274  0038 2010          	jra	L051
1275  003a               L441:
1276  003a ae0148        	ldw	x,#328
1277  003d 89            	pushw	x
1278  003e ae0000        	ldw	x,#0
1279  0041 89            	pushw	x
1280  0042 ae000c        	ldw	x,#L75
1281  0045 cd0000        	call	_assert_failed
1283  0048 5b04          	addw	sp,#4
1284  004a               L051:
1285                     ; 329     assert_param(IS_FUNCTIONALSTATE_OK(ITState));
1287  004a 0d09          	tnz	(OFST+5,sp)
1288  004c 2706          	jreq	L451
1289  004e 7b09          	ld	a,(OFST+5,sp)
1290  0050 a101          	cp	a,#1
1291  0052 2603          	jrne	L251
1292  0054               L451:
1293  0054 4f            	clr	a
1294  0055 2010          	jra	L651
1295  0057               L251:
1296  0057 ae0149        	ldw	x,#329
1297  005a 89            	pushw	x
1298  005b ae0000        	ldw	x,#0
1299  005e 89            	pushw	x
1300  005f ae000c        	ldw	x,#L75
1301  0062 cd0000        	call	_assert_failed
1303  0065 5b04          	addw	sp,#4
1304  0067               L651:
1305                     ; 330     assert_param(IS_CLK_CURRENTCLOCKSTATE_OK(CLK_CurrentClockState));
1307  0067 0d0a          	tnz	(OFST+6,sp)
1308  0069 2706          	jreq	L261
1309  006b 7b0a          	ld	a,(OFST+6,sp)
1310  006d a101          	cp	a,#1
1311  006f 2603          	jrne	L061
1312  0071               L261:
1313  0071 4f            	clr	a
1314  0072 2010          	jra	L461
1315  0074               L061:
1316  0074 ae014a        	ldw	x,#330
1317  0077 89            	pushw	x
1318  0078 ae0000        	ldw	x,#0
1319  007b 89            	pushw	x
1320  007c ae000c        	ldw	x,#L75
1321  007f cd0000        	call	_assert_failed
1323  0082 5b04          	addw	sp,#4
1324  0084               L461:
1325                     ; 333     clock_master = (CLK_Source_TypeDef)CLK->CMSR;
1327  0084 c650c3        	ld	a,20675
1328  0087 6b01          	ld	(OFST-3,sp),a
1330                     ; 336     if (CLK_SwitchMode == CLK_SWITCHMODE_AUTO)
1332  0089 7b05          	ld	a,(OFST+1,sp)
1333  008b a101          	cp	a,#1
1334  008d 2639          	jrne	L544
1335                     ; 340         CLK->SWCR |= CLK_SWCR_SWEN;
1337  008f 721250c5      	bset	20677,#1
1338                     ; 343         if (ITState != DISABLE)
1340  0093 0d09          	tnz	(OFST+5,sp)
1341  0095 2706          	jreq	L744
1342                     ; 345             CLK->SWCR |= CLK_SWCR_SWIEN;
1344  0097 721450c5      	bset	20677,#2
1346  009b 2004          	jra	L154
1347  009d               L744:
1348                     ; 349             CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
1350  009d 721550c5      	bres	20677,#2
1351  00a1               L154:
1352                     ; 353         CLK->SWR = (uint8_t)CLK_NewClock;
1354  00a1 7b06          	ld	a,(OFST+2,sp)
1355  00a3 c750c4        	ld	20676,a
1357  00a6 2007          	jra	L754
1358  00a8               L354:
1359                     ; 357             DownCounter--;
1361  00a8 1e03          	ldw	x,(OFST-1,sp)
1362  00aa 1d0001        	subw	x,#1
1363  00ad 1f03          	ldw	(OFST-1,sp),x
1365  00af               L754:
1366                     ; 355         while ((((CLK->SWCR & CLK_SWCR_SWBSY) != 0 )&& (DownCounter != 0)))
1368  00af c650c5        	ld	a,20677
1369  00b2 a501          	bcp	a,#1
1370  00b4 2704          	jreq	L364
1372  00b6 1e03          	ldw	x,(OFST-1,sp)
1373  00b8 26ee          	jrne	L354
1374  00ba               L364:
1375                     ; 360         if (DownCounter != 0)
1377  00ba 1e03          	ldw	x,(OFST-1,sp)
1378  00bc 2706          	jreq	L564
1379                     ; 362             Swif = SUCCESS;
1381  00be a601          	ld	a,#1
1382  00c0 6b02          	ld	(OFST-2,sp),a
1385  00c2 201b          	jra	L174
1386  00c4               L564:
1387                     ; 366             Swif = ERROR;
1389  00c4 0f02          	clr	(OFST-2,sp)
1391  00c6 2017          	jra	L174
1392  00c8               L544:
1393                     ; 374         if (ITState != DISABLE)
1395  00c8 0d09          	tnz	(OFST+5,sp)
1396  00ca 2706          	jreq	L374
1397                     ; 376             CLK->SWCR |= CLK_SWCR_SWIEN;
1399  00cc 721450c5      	bset	20677,#2
1401  00d0 2004          	jra	L574
1402  00d2               L374:
1403                     ; 380             CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
1405  00d2 721550c5      	bres	20677,#2
1406  00d6               L574:
1407                     ; 384         CLK->SWR = (uint8_t)CLK_NewClock;
1409  00d6 7b06          	ld	a,(OFST+2,sp)
1410  00d8 c750c4        	ld	20676,a
1411                     ; 388         Swif = SUCCESS;
1413  00db a601          	ld	a,#1
1414  00dd 6b02          	ld	(OFST-2,sp),a
1416  00df               L174:
1417                     ; 393     if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSI))
1419  00df 0d0a          	tnz	(OFST+6,sp)
1420  00e1 260c          	jrne	L774
1422  00e3 7b01          	ld	a,(OFST-3,sp)
1423  00e5 a1e1          	cp	a,#225
1424  00e7 2606          	jrne	L774
1425                     ; 395         CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
1427  00e9 721150c0      	bres	20672,#0
1429  00ed 201e          	jra	L105
1430  00ef               L774:
1431                     ; 397     else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_LSI))
1433  00ef 0d0a          	tnz	(OFST+6,sp)
1434  00f1 260c          	jrne	L305
1436  00f3 7b01          	ld	a,(OFST-3,sp)
1437  00f5 a1d2          	cp	a,#210
1438  00f7 2606          	jrne	L305
1439                     ; 399         CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
1441  00f9 721750c0      	bres	20672,#3
1443  00fd 200e          	jra	L105
1444  00ff               L305:
1445                     ; 401     else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSE))
1447  00ff 0d0a          	tnz	(OFST+6,sp)
1448  0101 260a          	jrne	L105
1450  0103 7b01          	ld	a,(OFST-3,sp)
1451  0105 a1b4          	cp	a,#180
1452  0107 2604          	jrne	L105
1453                     ; 403         CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
1455  0109 721150c1      	bres	20673,#0
1456  010d               L105:
1457                     ; 406     return(Swif);
1459  010d 7b02          	ld	a,(OFST-2,sp)
1462  010f 5b06          	addw	sp,#6
1463  0111 81            	ret
1602                     ; 416 void CLK_HSIPrescalerConfig(CLK_Prescaler_TypeDef HSIPrescaler)
1602                     ; 417 {
1603                     .text:	section	.text,new
1604  0000               _CLK_HSIPrescalerConfig:
1606  0000 88            	push	a
1607       00000000      OFST:	set	0
1610                     ; 420     assert_param(IS_CLK_HSIPRESCALER_OK(HSIPrescaler));
1612  0001 4d            	tnz	a
1613  0002 270c          	jreq	L271
1614  0004 a108          	cp	a,#8
1615  0006 2708          	jreq	L271
1616  0008 a110          	cp	a,#16
1617  000a 2704          	jreq	L271
1618  000c a118          	cp	a,#24
1619  000e 2603          	jrne	L071
1620  0010               L271:
1621  0010 4f            	clr	a
1622  0011 2010          	jra	L471
1623  0013               L071:
1624  0013 ae01a4        	ldw	x,#420
1625  0016 89            	pushw	x
1626  0017 ae0000        	ldw	x,#0
1627  001a 89            	pushw	x
1628  001b ae000c        	ldw	x,#L75
1629  001e cd0000        	call	_assert_failed
1631  0021 5b04          	addw	sp,#4
1632  0023               L471:
1633                     ; 423     CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
1635  0023 c650c6        	ld	a,20678
1636  0026 a4e7          	and	a,#231
1637  0028 c750c6        	ld	20678,a
1638                     ; 426     CLK->CKDIVR |= (uint8_t)HSIPrescaler;
1640  002b c650c6        	ld	a,20678
1641  002e 1a01          	or	a,(OFST+1,sp)
1642  0030 c750c6        	ld	20678,a
1643                     ; 428 }
1646  0033 84            	pop	a
1647  0034 81            	ret
1783                     ; 439 void CLK_CCOConfig(CLK_Output_TypeDef CLK_CCO)
1783                     ; 440 {
1784                     .text:	section	.text,new
1785  0000               _CLK_CCOConfig:
1787  0000 88            	push	a
1788       00000000      OFST:	set	0
1791                     ; 443     assert_param(IS_CLK_OUTPUT_OK(CLK_CCO));
1793  0001 4d            	tnz	a
1794  0002 2730          	jreq	L202
1795  0004 a104          	cp	a,#4
1796  0006 272c          	jreq	L202
1797  0008 a102          	cp	a,#2
1798  000a 2728          	jreq	L202
1799  000c a108          	cp	a,#8
1800  000e 2724          	jreq	L202
1801  0010 a10a          	cp	a,#10
1802  0012 2720          	jreq	L202
1803  0014 a10c          	cp	a,#12
1804  0016 271c          	jreq	L202
1805  0018 a10e          	cp	a,#14
1806  001a 2718          	jreq	L202
1807  001c a110          	cp	a,#16
1808  001e 2714          	jreq	L202
1809  0020 a112          	cp	a,#18
1810  0022 2710          	jreq	L202
1811  0024 a114          	cp	a,#20
1812  0026 270c          	jreq	L202
1813  0028 a116          	cp	a,#22
1814  002a 2708          	jreq	L202
1815  002c a118          	cp	a,#24
1816  002e 2704          	jreq	L202
1817  0030 a11a          	cp	a,#26
1818  0032 2603          	jrne	L002
1819  0034               L202:
1820  0034 4f            	clr	a
1821  0035 2010          	jra	L402
1822  0037               L002:
1823  0037 ae01bb        	ldw	x,#443
1824  003a 89            	pushw	x
1825  003b ae0000        	ldw	x,#0
1826  003e 89            	pushw	x
1827  003f ae000c        	ldw	x,#L75
1828  0042 cd0000        	call	_assert_failed
1830  0045 5b04          	addw	sp,#4
1831  0047               L402:
1832                     ; 446     CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOSEL);
1834  0047 c650c9        	ld	a,20681
1835  004a a4e1          	and	a,#225
1836  004c c750c9        	ld	20681,a
1837                     ; 449     CLK->CCOR |= (uint8_t)CLK_CCO;
1839  004f c650c9        	ld	a,20681
1840  0052 1a01          	or	a,(OFST+1,sp)
1841  0054 c750c9        	ld	20681,a
1842                     ; 452     CLK->CCOR |= CLK_CCOR_CCOEN;
1844  0057 721050c9      	bset	20681,#0
1845                     ; 454 }
1848  005b 84            	pop	a
1849  005c 81            	ret
1915                     ; 464 void CLK_ITConfig(CLK_IT_TypeDef CLK_IT, FunctionalState NewState)
1915                     ; 465 {
1916                     .text:	section	.text,new
1917  0000               _CLK_ITConfig:
1919  0000 89            	pushw	x
1920       00000000      OFST:	set	0
1923                     ; 468     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1925  0001 9f            	ld	a,xl
1926  0002 4d            	tnz	a
1927  0003 2705          	jreq	L212
1928  0005 9f            	ld	a,xl
1929  0006 a101          	cp	a,#1
1930  0008 2603          	jrne	L012
1931  000a               L212:
1932  000a 4f            	clr	a
1933  000b 2010          	jra	L412
1934  000d               L012:
1935  000d ae01d4        	ldw	x,#468
1936  0010 89            	pushw	x
1937  0011 ae0000        	ldw	x,#0
1938  0014 89            	pushw	x
1939  0015 ae000c        	ldw	x,#L75
1940  0018 cd0000        	call	_assert_failed
1942  001b 5b04          	addw	sp,#4
1943  001d               L412:
1944                     ; 469     assert_param(IS_CLK_IT_OK(CLK_IT));
1946  001d 7b01          	ld	a,(OFST+1,sp)
1947  001f a10c          	cp	a,#12
1948  0021 2706          	jreq	L022
1949  0023 7b01          	ld	a,(OFST+1,sp)
1950  0025 a11c          	cp	a,#28
1951  0027 2603          	jrne	L612
1952  0029               L022:
1953  0029 4f            	clr	a
1954  002a 2010          	jra	L222
1955  002c               L612:
1956  002c ae01d5        	ldw	x,#469
1957  002f 89            	pushw	x
1958  0030 ae0000        	ldw	x,#0
1959  0033 89            	pushw	x
1960  0034 ae000c        	ldw	x,#L75
1961  0037 cd0000        	call	_assert_failed
1963  003a 5b04          	addw	sp,#4
1964  003c               L222:
1965                     ; 471     if (NewState != DISABLE)
1967  003c 0d02          	tnz	(OFST+2,sp)
1968  003e 271a          	jreq	L507
1969                     ; 473         switch (CLK_IT)
1971  0040 7b01          	ld	a,(OFST+1,sp)
1973                     ; 481         default:
1973                     ; 482             break;
1974  0042 a00c          	sub	a,#12
1975  0044 270a          	jreq	L146
1976  0046 a010          	sub	a,#16
1977  0048 2624          	jrne	L317
1978                     ; 475         case CLK_IT_SWIF: /* Enable the clock switch interrupt */
1978                     ; 476             CLK->SWCR |= CLK_SWCR_SWIEN;
1980  004a 721450c5      	bset	20677,#2
1981                     ; 477             break;
1983  004e 201e          	jra	L317
1984  0050               L146:
1985                     ; 478         case CLK_IT_CSSD: /* Enable the clock security system detection interrupt */
1985                     ; 479             CLK->CSSR |= CLK_CSSR_CSSDIE;
1987  0050 721450c8      	bset	20680,#2
1988                     ; 480             break;
1990  0054 2018          	jra	L317
1991  0056               L346:
1992                     ; 481         default:
1992                     ; 482             break;
1994  0056 2016          	jra	L317
1995  0058               L117:
1997  0058 2014          	jra	L317
1998  005a               L507:
1999                     ; 487         switch (CLK_IT)
2001  005a 7b01          	ld	a,(OFST+1,sp)
2003                     ; 495         default:
2003                     ; 496             break;
2004  005c a00c          	sub	a,#12
2005  005e 270a          	jreq	L746
2006  0060 a010          	sub	a,#16
2007  0062 260a          	jrne	L317
2008                     ; 489         case CLK_IT_SWIF: /* Disable the clock switch interrupt */
2008                     ; 490             CLK->SWCR  &= (uint8_t)(~CLK_SWCR_SWIEN);
2010  0064 721550c5      	bres	20677,#2
2011                     ; 491             break;
2013  0068 2004          	jra	L317
2014  006a               L746:
2015                     ; 492         case CLK_IT_CSSD: /* Disable the clock security system detection interrupt */
2015                     ; 493             CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSDIE);
2017  006a 721550c8      	bres	20680,#2
2018                     ; 494             break;
2019  006e               L317:
2020                     ; 500 }
2023  006e 85            	popw	x
2024  006f 81            	ret
2025  0070               L156:
2026                     ; 495         default:
2026                     ; 496             break;
2028  0070 20fc          	jra	L317
2029  0072               L717:
2030  0072 20fa          	jra	L317
2066                     ; 507 void CLK_SYSCLKConfig(CLK_Prescaler_TypeDef CLK_Prescaler)
2066                     ; 508 {
2067                     .text:	section	.text,new
2068  0000               _CLK_SYSCLKConfig:
2070  0000 88            	push	a
2071       00000000      OFST:	set	0
2074                     ; 511     assert_param(IS_CLK_PRESCALER_OK(CLK_Prescaler));
2076  0001 4d            	tnz	a
2077  0002 272c          	jreq	L032
2078  0004 a108          	cp	a,#8
2079  0006 2728          	jreq	L032
2080  0008 a110          	cp	a,#16
2081  000a 2724          	jreq	L032
2082  000c a118          	cp	a,#24
2083  000e 2720          	jreq	L032
2084  0010 a180          	cp	a,#128
2085  0012 271c          	jreq	L032
2086  0014 a181          	cp	a,#129
2087  0016 2718          	jreq	L032
2088  0018 a182          	cp	a,#130
2089  001a 2714          	jreq	L032
2090  001c a183          	cp	a,#131
2091  001e 2710          	jreq	L032
2092  0020 a184          	cp	a,#132
2093  0022 270c          	jreq	L032
2094  0024 a185          	cp	a,#133
2095  0026 2708          	jreq	L032
2096  0028 a186          	cp	a,#134
2097  002a 2704          	jreq	L032
2098  002c a187          	cp	a,#135
2099  002e 2603          	jrne	L622
2100  0030               L032:
2101  0030 4f            	clr	a
2102  0031 2010          	jra	L232
2103  0033               L622:
2104  0033 ae01ff        	ldw	x,#511
2105  0036 89            	pushw	x
2106  0037 ae0000        	ldw	x,#0
2107  003a 89            	pushw	x
2108  003b ae000c        	ldw	x,#L75
2109  003e cd0000        	call	_assert_failed
2111  0041 5b04          	addw	sp,#4
2112  0043               L232:
2113                     ; 513     if (((uint8_t)CLK_Prescaler & (uint8_t)0x80) == 0x00) /* Bit7 = 0 means HSI divider */
2115  0043 7b01          	ld	a,(OFST+1,sp)
2116  0045 a580          	bcp	a,#128
2117  0047 2614          	jrne	L737
2118                     ; 515         CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
2120  0049 c650c6        	ld	a,20678
2121  004c a4e7          	and	a,#231
2122  004e c750c6        	ld	20678,a
2123                     ; 516         CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_HSIDIV);
2125  0051 7b01          	ld	a,(OFST+1,sp)
2126  0053 a418          	and	a,#24
2127  0055 ca50c6        	or	a,20678
2128  0058 c750c6        	ld	20678,a
2130  005b 2012          	jra	L147
2131  005d               L737:
2132                     ; 520         CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_CPUDIV);
2134  005d c650c6        	ld	a,20678
2135  0060 a4f8          	and	a,#248
2136  0062 c750c6        	ld	20678,a
2137                     ; 521         CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_CPUDIV);
2139  0065 7b01          	ld	a,(OFST+1,sp)
2140  0067 a407          	and	a,#7
2141  0069 ca50c6        	or	a,20678
2142  006c c750c6        	ld	20678,a
2143  006f               L147:
2144                     ; 524 }
2147  006f 84            	pop	a
2148  0070 81            	ret
2205                     ; 531 void CLK_SWIMConfig(CLK_SWIMDivider_TypeDef CLK_SWIMDivider)
2205                     ; 532 {
2206                     .text:	section	.text,new
2207  0000               _CLK_SWIMConfig:
2209  0000 88            	push	a
2210       00000000      OFST:	set	0
2213                     ; 535     assert_param(IS_CLK_SWIMDIVIDER_OK(CLK_SWIMDivider));
2215  0001 4d            	tnz	a
2216  0002 2704          	jreq	L042
2217  0004 a101          	cp	a,#1
2218  0006 2603          	jrne	L632
2219  0008               L042:
2220  0008 4f            	clr	a
2221  0009 2010          	jra	L242
2222  000b               L632:
2223  000b ae0217        	ldw	x,#535
2224  000e 89            	pushw	x
2225  000f ae0000        	ldw	x,#0
2226  0012 89            	pushw	x
2227  0013 ae000c        	ldw	x,#L75
2228  0016 cd0000        	call	_assert_failed
2230  0019 5b04          	addw	sp,#4
2231  001b               L242:
2232                     ; 537     if (CLK_SWIMDivider != CLK_SWIMDIVIDER_2)
2234  001b 0d01          	tnz	(OFST+1,sp)
2235  001d 2706          	jreq	L177
2236                     ; 540         CLK->SWIMCCR |= CLK_SWIMCCR_SWIMDIV;
2238  001f 721050cd      	bset	20685,#0
2240  0023 2004          	jra	L377
2241  0025               L177:
2242                     ; 545         CLK->SWIMCCR &= (uint8_t)(~CLK_SWIMCCR_SWIMDIV);
2244  0025 721150cd      	bres	20685,#0
2245  0029               L377:
2246                     ; 548 }
2249  0029 84            	pop	a
2250  002a 81            	ret
2274                     ; 557 void CLK_ClockSecuritySystemEnable(void)
2274                     ; 558 {
2275                     .text:	section	.text,new
2276  0000               _CLK_ClockSecuritySystemEnable:
2280                     ; 560     CLK->CSSR |= CLK_CSSR_CSSEN;
2282  0000 721050c8      	bset	20680,#0
2283                     ; 561 }
2286  0004 81            	ret
2311                     ; 569 CLK_Source_TypeDef CLK_GetSYSCLKSource(void)
2311                     ; 570 {
2312                     .text:	section	.text,new
2313  0000               _CLK_GetSYSCLKSource:
2317                     ; 571     return((CLK_Source_TypeDef)CLK->CMSR);
2319  0000 c650c3        	ld	a,20675
2322  0003 81            	ret
2379                     ; 579 uint32_t CLK_GetClockFreq(void)
2379                     ; 580 {
2380                     .text:	section	.text,new
2381  0000               _CLK_GetClockFreq:
2383  0000 5209          	subw	sp,#9
2384       00000009      OFST:	set	9
2387                     ; 582     uint32_t clockfrequency = 0;
2389                     ; 583     CLK_Source_TypeDef clocksource = CLK_SOURCE_HSI;
2391                     ; 584     uint8_t tmp = 0, presc = 0;
2395                     ; 587     clocksource = (CLK_Source_TypeDef)CLK->CMSR;
2397  0002 c650c3        	ld	a,20675
2398  0005 6b09          	ld	(OFST+0,sp),a
2400                     ; 589     if (clocksource == CLK_SOURCE_HSI)
2402  0007 7b09          	ld	a,(OFST+0,sp)
2403  0009 a1e1          	cp	a,#225
2404  000b 2641          	jrne	L1401
2405                     ; 591         tmp = (uint8_t)(CLK->CKDIVR & CLK_CKDIVR_HSIDIV);
2407  000d c650c6        	ld	a,20678
2408  0010 a418          	and	a,#24
2409  0012 6b09          	ld	(OFST+0,sp),a
2411                     ; 592         tmp = (uint8_t)(tmp >> 3);
2413  0014 0409          	srl	(OFST+0,sp)
2414  0016 0409          	srl	(OFST+0,sp)
2415  0018 0409          	srl	(OFST+0,sp)
2417                     ; 593         presc = HSIDivFactor[tmp];
2419  001a 7b09          	ld	a,(OFST+0,sp)
2420  001c 5f            	clrw	x
2421  001d 97            	ld	xl,a
2422  001e d60000        	ld	a,(_HSIDivFactor,x)
2423  0021 6b09          	ld	(OFST+0,sp),a
2425                     ; 594         clockfrequency = HSI_VALUE / presc;
2427  0023 7b09          	ld	a,(OFST+0,sp)
2428  0025 b703          	ld	c_lreg+3,a
2429  0027 3f02          	clr	c_lreg+2
2430  0029 3f01          	clr	c_lreg+1
2431  002b 3f00          	clr	c_lreg
2432  002d 96            	ldw	x,sp
2433  002e 1c0001        	addw	x,#OFST-8
2434  0031 cd0000        	call	c_rtol
2437  0034 ae2400        	ldw	x,#9216
2438  0037 bf02          	ldw	c_lreg+2,x
2439  0039 ae00f4        	ldw	x,#244
2440  003c bf00          	ldw	c_lreg,x
2441  003e 96            	ldw	x,sp
2442  003f 1c0001        	addw	x,#OFST-8
2443  0042 cd0000        	call	c_ludv
2445  0045 96            	ldw	x,sp
2446  0046 1c0005        	addw	x,#OFST-4
2447  0049 cd0000        	call	c_rtol
2451  004c 201c          	jra	L3401
2452  004e               L1401:
2453                     ; 596     else if ( clocksource == CLK_SOURCE_LSI)
2455  004e 7b09          	ld	a,(OFST+0,sp)
2456  0050 a1d2          	cp	a,#210
2457  0052 260c          	jrne	L5401
2458                     ; 598         clockfrequency = LSI_VALUE;
2460  0054 aef400        	ldw	x,#62464
2461  0057 1f07          	ldw	(OFST-2,sp),x
2462  0059 ae0001        	ldw	x,#1
2463  005c 1f05          	ldw	(OFST-4,sp),x
2466  005e 200a          	jra	L3401
2467  0060               L5401:
2468                     ; 602         clockfrequency = HSE_VALUE;
2470  0060 ae2400        	ldw	x,#9216
2471  0063 1f07          	ldw	(OFST-2,sp),x
2472  0065 ae00f4        	ldw	x,#244
2473  0068 1f05          	ldw	(OFST-4,sp),x
2475  006a               L3401:
2476                     ; 605     return((uint32_t)clockfrequency);
2478  006a 96            	ldw	x,sp
2479  006b 1c0005        	addw	x,#OFST-4
2480  006e cd0000        	call	c_ltor
2484  0071 5b09          	addw	sp,#9
2485  0073 81            	ret
2585                     ; 616 void CLK_AdjustHSICalibrationValue(CLK_HSITrimValue_TypeDef CLK_HSICalibrationValue)
2585                     ; 617 {
2586                     .text:	section	.text,new
2587  0000               _CLK_AdjustHSICalibrationValue:
2589  0000 88            	push	a
2590       00000000      OFST:	set	0
2593                     ; 620     assert_param(IS_CLK_HSITRIMVALUE_OK(CLK_HSICalibrationValue));
2595  0001 4d            	tnz	a
2596  0002 271c          	jreq	L652
2597  0004 a101          	cp	a,#1
2598  0006 2718          	jreq	L652
2599  0008 a102          	cp	a,#2
2600  000a 2714          	jreq	L652
2601  000c a103          	cp	a,#3
2602  000e 2710          	jreq	L652
2603  0010 a104          	cp	a,#4
2604  0012 270c          	jreq	L652
2605  0014 a105          	cp	a,#5
2606  0016 2708          	jreq	L652
2607  0018 a106          	cp	a,#6
2608  001a 2704          	jreq	L652
2609  001c a107          	cp	a,#7
2610  001e 2603          	jrne	L452
2611  0020               L652:
2612  0020 4f            	clr	a
2613  0021 2010          	jra	L062
2614  0023               L452:
2615  0023 ae026c        	ldw	x,#620
2616  0026 89            	pushw	x
2617  0027 ae0000        	ldw	x,#0
2618  002a 89            	pushw	x
2619  002b ae000c        	ldw	x,#L75
2620  002e cd0000        	call	_assert_failed
2622  0031 5b04          	addw	sp,#4
2623  0033               L062:
2624                     ; 623     CLK->HSITRIMR = (uint8_t)( (uint8_t)(CLK->HSITRIMR & (uint8_t)(~CLK_HSITRIMR_HSITRIM))|((uint8_t)CLK_HSICalibrationValue));
2626  0033 c650cc        	ld	a,20684
2627  0036 a4f8          	and	a,#248
2628  0038 1a01          	or	a,(OFST+1,sp)
2629  003a c750cc        	ld	20684,a
2630                     ; 625 }
2633  003d 84            	pop	a
2634  003e 81            	ret
2658                     ; 636 void CLK_SYSCLKEmergencyClear(void)
2658                     ; 637 {
2659                     .text:	section	.text,new
2660  0000               _CLK_SYSCLKEmergencyClear:
2664                     ; 638     CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWBSY);
2666  0000 721150c5      	bres	20677,#0
2667                     ; 639 }
2670  0004 81            	ret
2820                     ; 648 FlagStatus CLK_GetFlagStatus(CLK_Flag_TypeDef CLK_FLAG)
2820                     ; 649 {
2821                     .text:	section	.text,new
2822  0000               _CLK_GetFlagStatus:
2824  0000 89            	pushw	x
2825  0001 5203          	subw	sp,#3
2826       00000003      OFST:	set	3
2829                     ; 651     uint16_t statusreg = 0;
2831                     ; 652     uint8_t tmpreg = 0;
2833                     ; 653     FlagStatus bitstatus = RESET;
2835                     ; 656     assert_param(IS_CLK_FLAG_OK(CLK_FLAG));
2837  0003 a30110        	cpw	x,#272
2838  0006 2728          	jreq	L072
2839  0008 a30102        	cpw	x,#258
2840  000b 2723          	jreq	L072
2841  000d a30202        	cpw	x,#514
2842  0010 271e          	jreq	L072
2843  0012 a30308        	cpw	x,#776
2844  0015 2719          	jreq	L072
2845  0017 a30301        	cpw	x,#769
2846  001a 2714          	jreq	L072
2847  001c a30408        	cpw	x,#1032
2848  001f 270f          	jreq	L072
2849  0021 a30402        	cpw	x,#1026
2850  0024 270a          	jreq	L072
2851  0026 a30504        	cpw	x,#1284
2852  0029 2705          	jreq	L072
2853  002b a30502        	cpw	x,#1282
2854  002e 2603          	jrne	L662
2855  0030               L072:
2856  0030 4f            	clr	a
2857  0031 2010          	jra	L272
2858  0033               L662:
2859  0033 ae0290        	ldw	x,#656
2860  0036 89            	pushw	x
2861  0037 ae0000        	ldw	x,#0
2862  003a 89            	pushw	x
2863  003b ae000c        	ldw	x,#L75
2864  003e cd0000        	call	_assert_failed
2866  0041 5b04          	addw	sp,#4
2867  0043               L272:
2868                     ; 659     statusreg = (uint16_t)((uint16_t)CLK_FLAG & (uint16_t)0xFF00);
2870  0043 7b04          	ld	a,(OFST+1,sp)
2871  0045 97            	ld	xl,a
2872  0046 7b05          	ld	a,(OFST+2,sp)
2873  0048 9f            	ld	a,xl
2874  0049 a4ff          	and	a,#255
2875  004b 97            	ld	xl,a
2876  004c 4f            	clr	a
2877  004d 02            	rlwa	x,a
2878  004e 1f01          	ldw	(OFST-2,sp),x
2879  0050 01            	rrwa	x,a
2881                     ; 662     if (statusreg == 0x0100) /* The flag to check is in ICKRregister */
2883  0051 1e01          	ldw	x,(OFST-2,sp)
2884  0053 a30100        	cpw	x,#256
2885  0056 2607          	jrne	L7021
2886                     ; 664         tmpreg = CLK->ICKR;
2888  0058 c650c0        	ld	a,20672
2889  005b 6b03          	ld	(OFST+0,sp),a
2892  005d 202f          	jra	L1121
2893  005f               L7021:
2894                     ; 666     else if (statusreg == 0x0200) /* The flag to check is in ECKRregister */
2896  005f 1e01          	ldw	x,(OFST-2,sp)
2897  0061 a30200        	cpw	x,#512
2898  0064 2607          	jrne	L3121
2899                     ; 668         tmpreg = CLK->ECKR;
2901  0066 c650c1        	ld	a,20673
2902  0069 6b03          	ld	(OFST+0,sp),a
2905  006b 2021          	jra	L1121
2906  006d               L3121:
2907                     ; 670     else if (statusreg == 0x0300) /* The flag to check is in SWIC register */
2909  006d 1e01          	ldw	x,(OFST-2,sp)
2910  006f a30300        	cpw	x,#768
2911  0072 2607          	jrne	L7121
2912                     ; 672         tmpreg = CLK->SWCR;
2914  0074 c650c5        	ld	a,20677
2915  0077 6b03          	ld	(OFST+0,sp),a
2918  0079 2013          	jra	L1121
2919  007b               L7121:
2920                     ; 674     else if (statusreg == 0x0400) /* The flag to check is in CSS register */
2922  007b 1e01          	ldw	x,(OFST-2,sp)
2923  007d a30400        	cpw	x,#1024
2924  0080 2607          	jrne	L3221
2925                     ; 676         tmpreg = CLK->CSSR;
2927  0082 c650c8        	ld	a,20680
2928  0085 6b03          	ld	(OFST+0,sp),a
2931  0087 2005          	jra	L1121
2932  0089               L3221:
2933                     ; 680         tmpreg = CLK->CCOR;
2935  0089 c650c9        	ld	a,20681
2936  008c 6b03          	ld	(OFST+0,sp),a
2938  008e               L1121:
2939                     ; 683     if ((tmpreg & (uint8_t)CLK_FLAG) != (uint8_t)RESET)
2941  008e 7b05          	ld	a,(OFST+2,sp)
2942  0090 1503          	bcp	a,(OFST+0,sp)
2943  0092 2706          	jreq	L7221
2944                     ; 685         bitstatus = SET;
2946  0094 a601          	ld	a,#1
2947  0096 6b03          	ld	(OFST+0,sp),a
2950  0098 2002          	jra	L1321
2951  009a               L7221:
2952                     ; 689         bitstatus = RESET;
2954  009a 0f03          	clr	(OFST+0,sp)
2956  009c               L1321:
2957                     ; 693     return((FlagStatus)bitstatus);
2959  009c 7b03          	ld	a,(OFST+0,sp)
2962  009e 5b05          	addw	sp,#5
2963  00a0 81            	ret
3010                     ; 703 ITStatus CLK_GetITStatus(CLK_IT_TypeDef CLK_IT)
3010                     ; 704 {
3011                     .text:	section	.text,new
3012  0000               _CLK_GetITStatus:
3014  0000 88            	push	a
3015  0001 88            	push	a
3016       00000001      OFST:	set	1
3019                     ; 706     ITStatus bitstatus = RESET;
3021                     ; 709     assert_param(IS_CLK_IT_OK(CLK_IT));
3023  0002 a10c          	cp	a,#12
3024  0004 2704          	jreq	L003
3025  0006 a11c          	cp	a,#28
3026  0008 2603          	jrne	L672
3027  000a               L003:
3028  000a 4f            	clr	a
3029  000b 2010          	jra	L203
3030  000d               L672:
3031  000d ae02c5        	ldw	x,#709
3032  0010 89            	pushw	x
3033  0011 ae0000        	ldw	x,#0
3034  0014 89            	pushw	x
3035  0015 ae000c        	ldw	x,#L75
3036  0018 cd0000        	call	_assert_failed
3038  001b 5b04          	addw	sp,#4
3039  001d               L203:
3040                     ; 711     if (CLK_IT == CLK_IT_SWIF)
3042  001d 7b02          	ld	a,(OFST+1,sp)
3043  001f a11c          	cp	a,#28
3044  0021 2613          	jrne	L5521
3045                     ; 714         if ((CLK->SWCR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
3047  0023 c650c5        	ld	a,20677
3048  0026 1402          	and	a,(OFST+1,sp)
3049  0028 a10c          	cp	a,#12
3050  002a 2606          	jrne	L7521
3051                     ; 716             bitstatus = SET;
3053  002c a601          	ld	a,#1
3054  002e 6b01          	ld	(OFST+0,sp),a
3057  0030 2015          	jra	L3621
3058  0032               L7521:
3059                     ; 720             bitstatus = RESET;
3061  0032 0f01          	clr	(OFST+0,sp)
3063  0034 2011          	jra	L3621
3064  0036               L5521:
3065                     ; 726         if ((CLK->CSSR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
3067  0036 c650c8        	ld	a,20680
3068  0039 1402          	and	a,(OFST+1,sp)
3069  003b a10c          	cp	a,#12
3070  003d 2606          	jrne	L5621
3071                     ; 728             bitstatus = SET;
3073  003f a601          	ld	a,#1
3074  0041 6b01          	ld	(OFST+0,sp),a
3077  0043 2002          	jra	L3621
3078  0045               L5621:
3079                     ; 732             bitstatus = RESET;
3081  0045 0f01          	clr	(OFST+0,sp)
3083  0047               L3621:
3084                     ; 737     return bitstatus;
3086  0047 7b01          	ld	a,(OFST+0,sp)
3089  0049 85            	popw	x
3090  004a 81            	ret
3127                     ; 747 void CLK_ClearITPendingBit(CLK_IT_TypeDef CLK_IT)
3127                     ; 748 {
3128                     .text:	section	.text,new
3129  0000               _CLK_ClearITPendingBit:
3131  0000 88            	push	a
3132       00000000      OFST:	set	0
3135                     ; 751     assert_param(IS_CLK_IT_OK(CLK_IT));
3137  0001 a10c          	cp	a,#12
3138  0003 2704          	jreq	L013
3139  0005 a11c          	cp	a,#28
3140  0007 2603          	jrne	L603
3141  0009               L013:
3142  0009 4f            	clr	a
3143  000a 2010          	jra	L213
3144  000c               L603:
3145  000c ae02ef        	ldw	x,#751
3146  000f 89            	pushw	x
3147  0010 ae0000        	ldw	x,#0
3148  0013 89            	pushw	x
3149  0014 ae000c        	ldw	x,#L75
3150  0017 cd0000        	call	_assert_failed
3152  001a 5b04          	addw	sp,#4
3153  001c               L213:
3154                     ; 753     if (CLK_IT == (uint8_t)CLK_IT_CSSD)
3156  001c 7b01          	ld	a,(OFST+1,sp)
3157  001e a10c          	cp	a,#12
3158  0020 2606          	jrne	L7031
3159                     ; 756         CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSD);
3161  0022 721750c8      	bres	20680,#3
3163  0026 2004          	jra	L1131
3164  0028               L7031:
3165                     ; 761         CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIF);
3167  0028 721750c5      	bres	20677,#3
3168  002c               L1131:
3169                     ; 764 }
3172  002c 84            	pop	a
3173  002d 81            	ret
3208                     	xdef	_CLKPrescTable
3209                     	xdef	_HSIDivFactor
3210                     	xdef	_CLK_ClearITPendingBit
3211                     	xdef	_CLK_GetITStatus
3212                     	xdef	_CLK_GetFlagStatus
3213                     	xdef	_CLK_GetSYSCLKSource
3214                     	xdef	_CLK_GetClockFreq
3215                     	xdef	_CLK_AdjustHSICalibrationValue
3216                     	xdef	_CLK_SYSCLKEmergencyClear
3217                     	xdef	_CLK_ClockSecuritySystemEnable
3218                     	xdef	_CLK_SWIMConfig
3219                     	xdef	_CLK_SYSCLKConfig
3220                     	xdef	_CLK_ITConfig
3221                     	xdef	_CLK_CCOConfig
3222                     	xdef	_CLK_HSIPrescalerConfig
3223                     	xdef	_CLK_ClockSwitchConfig
3224                     	xdef	_CLK_PeripheralClockConfig
3225                     	xdef	_CLK_SlowActiveHaltWakeUpCmd
3226                     	xdef	_CLK_FastHaltWakeUpCmd
3227                     	xdef	_CLK_ClockSwitchCmd
3228                     	xdef	_CLK_CCOCmd
3229                     	xdef	_CLK_LSICmd
3230                     	xdef	_CLK_HSICmd
3231                     	xdef	_CLK_HSECmd
3232                     	xdef	_CLK_DeInit
3233                     	xref	_assert_failed
3234                     	switch	.const
3235  000c               L75:
3236  000c 7372635c7374  	dc.b	"src\stm8s_clk.c",0
3237                     	xref.b	c_lreg
3238                     	xref.b	c_x
3258                     	xref	c_ltor
3259                     	xref	c_ludv
3260                     	xref	c_rtol
3261                     	end

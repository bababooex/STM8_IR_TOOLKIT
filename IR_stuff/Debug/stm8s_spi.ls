   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.13.3 - 22 May 2025
   3                     ; Generator (Limited) V4.6.6 - 07 Jan 2026
  44                     ; 50 void SPI_DeInit(void)
  44                     ; 51 {
  46                     .text:	section	.text,new
  47  0000               _SPI_DeInit:
  51                     ; 52   SPI->CR1    = SPI_CR1_RESET_VALUE;
  53  0000 725f5200      	clr	20992
  54                     ; 53   SPI->CR2    = SPI_CR2_RESET_VALUE;
  56  0004 725f5201      	clr	20993
  57                     ; 54   SPI->ICR    = SPI_ICR_RESET_VALUE;
  59  0008 725f5202      	clr	20994
  60                     ; 55   SPI->SR     = SPI_SR_RESET_VALUE;
  62  000c 35025203      	mov	20995,#2
  63                     ; 56   SPI->CRCPR  = SPI_CRCPR_RESET_VALUE;
  65  0010 35075205      	mov	20997,#7
  66                     ; 57 }
  69  0014 81            	ret
 384                     ; 78 void SPI_Init(SPI_FirstBit_TypeDef FirstBit, SPI_BaudRatePrescaler_TypeDef BaudRatePrescaler, SPI_Mode_TypeDef Mode, SPI_ClockPolarity_TypeDef ClockPolarity, SPI_ClockPhase_TypeDef ClockPhase, SPI_DataDirection_TypeDef Data_Direction, SPI_NSS_TypeDef Slave_Management, uint8_t CRCPolynomial)
 384                     ; 79 {
 385                     .text:	section	.text,new
 386  0000               _SPI_Init:
 388  0000 89            	pushw	x
 389  0001 88            	push	a
 390       00000001      OFST:	set	1
 393                     ; 81   assert_param(IS_SPI_FIRSTBIT_OK(FirstBit));
 395  0002 9e            	ld	a,xh
 396  0003 4d            	tnz	a
 397  0004 2705          	jreq	L21
 398  0006 9e            	ld	a,xh
 399  0007 a180          	cp	a,#128
 400  0009 2603          	jrne	L01
 401  000b               L21:
 402  000b 4f            	clr	a
 403  000c 2010          	jra	L41
 404  000e               L01:
 405  000e ae0051        	ldw	x,#81
 406  0011 89            	pushw	x
 407  0012 ae0000        	ldw	x,#0
 408  0015 89            	pushw	x
 409  0016 ae0000        	ldw	x,#L102
 410  0019 cd0000        	call	_assert_failed
 412  001c 5b04          	addw	sp,#4
 413  001e               L41:
 414                     ; 82   assert_param(IS_SPI_BAUDRATE_PRESCALER_OK(BaudRatePrescaler));
 416  001e 0d03          	tnz	(OFST+2,sp)
 417  0020 272a          	jreq	L02
 418  0022 7b03          	ld	a,(OFST+2,sp)
 419  0024 a108          	cp	a,#8
 420  0026 2724          	jreq	L02
 421  0028 7b03          	ld	a,(OFST+2,sp)
 422  002a a110          	cp	a,#16
 423  002c 271e          	jreq	L02
 424  002e 7b03          	ld	a,(OFST+2,sp)
 425  0030 a118          	cp	a,#24
 426  0032 2718          	jreq	L02
 427  0034 7b03          	ld	a,(OFST+2,sp)
 428  0036 a120          	cp	a,#32
 429  0038 2712          	jreq	L02
 430  003a 7b03          	ld	a,(OFST+2,sp)
 431  003c a128          	cp	a,#40
 432  003e 270c          	jreq	L02
 433  0040 7b03          	ld	a,(OFST+2,sp)
 434  0042 a130          	cp	a,#48
 435  0044 2706          	jreq	L02
 436  0046 7b03          	ld	a,(OFST+2,sp)
 437  0048 a138          	cp	a,#56
 438  004a 2603          	jrne	L61
 439  004c               L02:
 440  004c 4f            	clr	a
 441  004d 2010          	jra	L22
 442  004f               L61:
 443  004f ae0052        	ldw	x,#82
 444  0052 89            	pushw	x
 445  0053 ae0000        	ldw	x,#0
 446  0056 89            	pushw	x
 447  0057 ae0000        	ldw	x,#L102
 448  005a cd0000        	call	_assert_failed
 450  005d 5b04          	addw	sp,#4
 451  005f               L22:
 452                     ; 83   assert_param(IS_SPI_MODE_OK(Mode));
 454  005f 7b06          	ld	a,(OFST+5,sp)
 455  0061 a104          	cp	a,#4
 456  0063 2704          	jreq	L62
 457  0065 0d06          	tnz	(OFST+5,sp)
 458  0067 2603          	jrne	L42
 459  0069               L62:
 460  0069 4f            	clr	a
 461  006a 2010          	jra	L03
 462  006c               L42:
 463  006c ae0053        	ldw	x,#83
 464  006f 89            	pushw	x
 465  0070 ae0000        	ldw	x,#0
 466  0073 89            	pushw	x
 467  0074 ae0000        	ldw	x,#L102
 468  0077 cd0000        	call	_assert_failed
 470  007a 5b04          	addw	sp,#4
 471  007c               L03:
 472                     ; 84   assert_param(IS_SPI_POLARITY_OK(ClockPolarity));
 474  007c 0d07          	tnz	(OFST+6,sp)
 475  007e 2706          	jreq	L43
 476  0080 7b07          	ld	a,(OFST+6,sp)
 477  0082 a102          	cp	a,#2
 478  0084 2603          	jrne	L23
 479  0086               L43:
 480  0086 4f            	clr	a
 481  0087 2010          	jra	L63
 482  0089               L23:
 483  0089 ae0054        	ldw	x,#84
 484  008c 89            	pushw	x
 485  008d ae0000        	ldw	x,#0
 486  0090 89            	pushw	x
 487  0091 ae0000        	ldw	x,#L102
 488  0094 cd0000        	call	_assert_failed
 490  0097 5b04          	addw	sp,#4
 491  0099               L63:
 492                     ; 85   assert_param(IS_SPI_PHASE_OK(ClockPhase));
 494  0099 0d08          	tnz	(OFST+7,sp)
 495  009b 2706          	jreq	L24
 496  009d 7b08          	ld	a,(OFST+7,sp)
 497  009f a101          	cp	a,#1
 498  00a1 2603          	jrne	L04
 499  00a3               L24:
 500  00a3 4f            	clr	a
 501  00a4 2010          	jra	L44
 502  00a6               L04:
 503  00a6 ae0055        	ldw	x,#85
 504  00a9 89            	pushw	x
 505  00aa ae0000        	ldw	x,#0
 506  00ad 89            	pushw	x
 507  00ae ae0000        	ldw	x,#L102
 508  00b1 cd0000        	call	_assert_failed
 510  00b4 5b04          	addw	sp,#4
 511  00b6               L44:
 512                     ; 86   assert_param(IS_SPI_DATA_DIRECTION_OK(Data_Direction));
 514  00b6 0d09          	tnz	(OFST+8,sp)
 515  00b8 2712          	jreq	L05
 516  00ba 7b09          	ld	a,(OFST+8,sp)
 517  00bc a104          	cp	a,#4
 518  00be 270c          	jreq	L05
 519  00c0 7b09          	ld	a,(OFST+8,sp)
 520  00c2 a180          	cp	a,#128
 521  00c4 2706          	jreq	L05
 522  00c6 7b09          	ld	a,(OFST+8,sp)
 523  00c8 a1c0          	cp	a,#192
 524  00ca 2603          	jrne	L64
 525  00cc               L05:
 526  00cc 4f            	clr	a
 527  00cd 2010          	jra	L25
 528  00cf               L64:
 529  00cf ae0056        	ldw	x,#86
 530  00d2 89            	pushw	x
 531  00d3 ae0000        	ldw	x,#0
 532  00d6 89            	pushw	x
 533  00d7 ae0000        	ldw	x,#L102
 534  00da cd0000        	call	_assert_failed
 536  00dd 5b04          	addw	sp,#4
 537  00df               L25:
 538                     ; 87   assert_param(IS_SPI_SLAVEMANAGEMENT_OK(Slave_Management));
 540  00df 7b0a          	ld	a,(OFST+9,sp)
 541  00e1 a102          	cp	a,#2
 542  00e3 2704          	jreq	L65
 543  00e5 0d0a          	tnz	(OFST+9,sp)
 544  00e7 2603          	jrne	L45
 545  00e9               L65:
 546  00e9 4f            	clr	a
 547  00ea 2010          	jra	L06
 548  00ec               L45:
 549  00ec ae0057        	ldw	x,#87
 550  00ef 89            	pushw	x
 551  00f0 ae0000        	ldw	x,#0
 552  00f3 89            	pushw	x
 553  00f4 ae0000        	ldw	x,#L102
 554  00f7 cd0000        	call	_assert_failed
 556  00fa 5b04          	addw	sp,#4
 557  00fc               L06:
 558                     ; 88   assert_param(IS_SPI_CRC_POLYNOMIAL_OK(CRCPolynomial));
 560  00fc 0d0b          	tnz	(OFST+10,sp)
 561  00fe 2703          	jreq	L26
 562  0100 4f            	clr	a
 563  0101 2010          	jra	L46
 564  0103               L26:
 565  0103 ae0058        	ldw	x,#88
 566  0106 89            	pushw	x
 567  0107 ae0000        	ldw	x,#0
 568  010a 89            	pushw	x
 569  010b ae0000        	ldw	x,#L102
 570  010e cd0000        	call	_assert_failed
 572  0111 5b04          	addw	sp,#4
 573  0113               L46:
 574                     ; 91   SPI->CR1 = (uint8_t)((uint8_t)((uint8_t)FirstBit | BaudRatePrescaler) |
 574                     ; 92                        (uint8_t)((uint8_t)ClockPolarity | ClockPhase));
 576  0113 7b07          	ld	a,(OFST+6,sp)
 577  0115 1a08          	or	a,(OFST+7,sp)
 578  0117 6b01          	ld	(OFST+0,sp),a
 580  0119 7b02          	ld	a,(OFST+1,sp)
 581  011b 1a03          	or	a,(OFST+2,sp)
 582  011d 1a01          	or	a,(OFST+0,sp)
 583  011f c75200        	ld	20992,a
 584                     ; 95   SPI->CR2 = (uint8_t)((uint8_t)(Data_Direction) | (uint8_t)(Slave_Management));
 586  0122 7b09          	ld	a,(OFST+8,sp)
 587  0124 1a0a          	or	a,(OFST+9,sp)
 588  0126 c75201        	ld	20993,a
 589                     ; 97   if (Mode == SPI_MODE_MASTER)
 591  0129 7b06          	ld	a,(OFST+5,sp)
 592  012b a104          	cp	a,#4
 593  012d 2606          	jrne	L302
 594                     ; 99     SPI->CR2 |= (uint8_t)SPI_CR2_SSI;
 596  012f 72105201      	bset	20993,#0
 598  0133 2004          	jra	L502
 599  0135               L302:
 600                     ; 103     SPI->CR2 &= (uint8_t)~(SPI_CR2_SSI);
 602  0135 72115201      	bres	20993,#0
 603  0139               L502:
 604                     ; 107   SPI->CR1 |= (uint8_t)(Mode);
 606  0139 c65200        	ld	a,20992
 607  013c 1a06          	or	a,(OFST+5,sp)
 608  013e c75200        	ld	20992,a
 609                     ; 110   SPI->CRCPR = (uint8_t)CRCPolynomial;
 611  0141 7b0b          	ld	a,(OFST+10,sp)
 612  0143 c75205        	ld	20997,a
 613                     ; 111 }
 616  0146 5b03          	addw	sp,#3
 617  0148 81            	ret
 673                     ; 119 void SPI_Cmd(FunctionalState NewState)
 673                     ; 120 {
 674                     .text:	section	.text,new
 675  0000               _SPI_Cmd:
 677  0000 88            	push	a
 678       00000000      OFST:	set	0
 681                     ; 122   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 683  0001 4d            	tnz	a
 684  0002 2704          	jreq	L27
 685  0004 a101          	cp	a,#1
 686  0006 2603          	jrne	L07
 687  0008               L27:
 688  0008 4f            	clr	a
 689  0009 2010          	jra	L47
 690  000b               L07:
 691  000b ae007a        	ldw	x,#122
 692  000e 89            	pushw	x
 693  000f ae0000        	ldw	x,#0
 694  0012 89            	pushw	x
 695  0013 ae0000        	ldw	x,#L102
 696  0016 cd0000        	call	_assert_failed
 698  0019 5b04          	addw	sp,#4
 699  001b               L47:
 700                     ; 124   if (NewState != DISABLE)
 702  001b 0d01          	tnz	(OFST+1,sp)
 703  001d 2706          	jreq	L532
 704                     ; 126     SPI->CR1 |= SPI_CR1_SPE; /* Enable the SPI peripheral*/
 706  001f 721c5200      	bset	20992,#6
 708  0023 2004          	jra	L732
 709  0025               L532:
 710                     ; 130     SPI->CR1 &= (uint8_t)(~SPI_CR1_SPE); /* Disable the SPI peripheral*/
 712  0025 721d5200      	bres	20992,#6
 713  0029               L732:
 714                     ; 132 }
 717  0029 84            	pop	a
 718  002a 81            	ret
 826                     ; 141 void SPI_ITConfig(SPI_IT_TypeDef SPI_IT, FunctionalState NewState)
 826                     ; 142 {
 827                     .text:	section	.text,new
 828  0000               _SPI_ITConfig:
 830  0000 89            	pushw	x
 831  0001 88            	push	a
 832       00000001      OFST:	set	1
 835                     ; 143   uint8_t itpos = 0;
 837                     ; 145   assert_param(IS_SPI_CONFIG_IT_OK(SPI_IT));
 839  0002 9e            	ld	a,xh
 840  0003 a117          	cp	a,#23
 841  0005 270f          	jreq	L201
 842  0007 9e            	ld	a,xh
 843  0008 a106          	cp	a,#6
 844  000a 270a          	jreq	L201
 845  000c 9e            	ld	a,xh
 846  000d a105          	cp	a,#5
 847  000f 2705          	jreq	L201
 848  0011 9e            	ld	a,xh
 849  0012 a134          	cp	a,#52
 850  0014 2603          	jrne	L001
 851  0016               L201:
 852  0016 4f            	clr	a
 853  0017 2010          	jra	L401
 854  0019               L001:
 855  0019 ae0091        	ldw	x,#145
 856  001c 89            	pushw	x
 857  001d ae0000        	ldw	x,#0
 858  0020 89            	pushw	x
 859  0021 ae0000        	ldw	x,#L102
 860  0024 cd0000        	call	_assert_failed
 862  0027 5b04          	addw	sp,#4
 863  0029               L401:
 864                     ; 146   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 866  0029 0d03          	tnz	(OFST+2,sp)
 867  002b 2706          	jreq	L011
 868  002d 7b03          	ld	a,(OFST+2,sp)
 869  002f a101          	cp	a,#1
 870  0031 2603          	jrne	L601
 871  0033               L011:
 872  0033 4f            	clr	a
 873  0034 2010          	jra	L211
 874  0036               L601:
 875  0036 ae0092        	ldw	x,#146
 876  0039 89            	pushw	x
 877  003a ae0000        	ldw	x,#0
 878  003d 89            	pushw	x
 879  003e ae0000        	ldw	x,#L102
 880  0041 cd0000        	call	_assert_failed
 882  0044 5b04          	addw	sp,#4
 883  0046               L211:
 884                     ; 149   itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)SPI_IT & (uint8_t)0x0F));
 886  0046 7b02          	ld	a,(OFST+1,sp)
 887  0048 a40f          	and	a,#15
 888  004a 5f            	clrw	x
 889  004b 97            	ld	xl,a
 890  004c a601          	ld	a,#1
 891  004e 5d            	tnzw	x
 892  004f 2704          	jreq	L411
 893  0051               L611:
 894  0051 48            	sll	a
 895  0052 5a            	decw	x
 896  0053 26fc          	jrne	L611
 897  0055               L411:
 898  0055 6b01          	ld	(OFST+0,sp),a
 900                     ; 151   if (NewState != DISABLE)
 902  0057 0d03          	tnz	(OFST+2,sp)
 903  0059 270a          	jreq	L703
 904                     ; 153     SPI->ICR |= itpos; /* Enable interrupt*/
 906  005b c65202        	ld	a,20994
 907  005e 1a01          	or	a,(OFST+0,sp)
 908  0060 c75202        	ld	20994,a
 910  0063 2009          	jra	L113
 911  0065               L703:
 912                     ; 157     SPI->ICR &= (uint8_t)(~itpos); /* Disable interrupt*/
 914  0065 7b01          	ld	a,(OFST+0,sp)
 915  0067 43            	cpl	a
 916  0068 c45202        	and	a,20994
 917  006b c75202        	ld	20994,a
 918  006e               L113:
 919                     ; 159 }
 922  006e 5b03          	addw	sp,#3
 923  0070 81            	ret
 955                     ; 166 void SPI_SendData(uint8_t Data)
 955                     ; 167 {
 956                     .text:	section	.text,new
 957  0000               _SPI_SendData:
 961                     ; 168   SPI->DR = Data; /* Write in the DR register the data to be sent*/
 963  0000 c75204        	ld	20996,a
 964                     ; 169 }
 967  0003 81            	ret
 990                     ; 176 uint8_t SPI_ReceiveData(void)
 990                     ; 177 {
 991                     .text:	section	.text,new
 992  0000               _SPI_ReceiveData:
 996                     ; 178   return ((uint8_t)SPI->DR); /* Return the data in the DR register*/
 998  0000 c65204        	ld	a,20996
1001  0003 81            	ret
1038                     ; 187 void SPI_NSSInternalSoftwareCmd(FunctionalState NewState)
1038                     ; 188 {
1039                     .text:	section	.text,new
1040  0000               _SPI_NSSInternalSoftwareCmd:
1042  0000 88            	push	a
1043       00000000      OFST:	set	0
1046                     ; 190   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1048  0001 4d            	tnz	a
1049  0002 2704          	jreq	L031
1050  0004 a101          	cp	a,#1
1051  0006 2603          	jrne	L621
1052  0008               L031:
1053  0008 4f            	clr	a
1054  0009 2010          	jra	L231
1055  000b               L621:
1056  000b ae00be        	ldw	x,#190
1057  000e 89            	pushw	x
1058  000f ae0000        	ldw	x,#0
1059  0012 89            	pushw	x
1060  0013 ae0000        	ldw	x,#L102
1061  0016 cd0000        	call	_assert_failed
1063  0019 5b04          	addw	sp,#4
1064  001b               L231:
1065                     ; 192   if (NewState != DISABLE)
1067  001b 0d01          	tnz	(OFST+1,sp)
1068  001d 2706          	jreq	L553
1069                     ; 194     SPI->CR2 |= SPI_CR2_SSI; /* Set NSS pin internally by software*/
1071  001f 72105201      	bset	20993,#0
1073  0023 2004          	jra	L753
1074  0025               L553:
1075                     ; 198     SPI->CR2 &= (uint8_t)(~SPI_CR2_SSI); /* Reset NSS pin internally by software*/
1077  0025 72115201      	bres	20993,#0
1078  0029               L753:
1079                     ; 200 }
1082  0029 84            	pop	a
1083  002a 81            	ret
1106                     ; 207 void SPI_TransmitCRC(void)
1106                     ; 208 {
1107                     .text:	section	.text,new
1108  0000               _SPI_TransmitCRC:
1112                     ; 209   SPI->CR2 |= SPI_CR2_CRCNEXT; /* Enable the CRC transmission*/
1114  0000 72185201      	bset	20993,#4
1115                     ; 210 }
1118  0004 81            	ret
1155                     ; 218 void SPI_CalculateCRCCmd(FunctionalState NewState)
1155                     ; 219 {
1156                     .text:	section	.text,new
1157  0000               _SPI_CalculateCRCCmd:
1159  0000 88            	push	a
1160       00000000      OFST:	set	0
1163                     ; 221   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1165  0001 4d            	tnz	a
1166  0002 2704          	jreq	L241
1167  0004 a101          	cp	a,#1
1168  0006 2603          	jrne	L041
1169  0008               L241:
1170  0008 4f            	clr	a
1171  0009 2010          	jra	L441
1172  000b               L041:
1173  000b ae00dd        	ldw	x,#221
1174  000e 89            	pushw	x
1175  000f ae0000        	ldw	x,#0
1176  0012 89            	pushw	x
1177  0013 ae0000        	ldw	x,#L102
1178  0016 cd0000        	call	_assert_failed
1180  0019 5b04          	addw	sp,#4
1181  001b               L441:
1182                     ; 223   if (NewState != DISABLE)
1184  001b 0d01          	tnz	(OFST+1,sp)
1185  001d 2706          	jreq	L704
1186                     ; 225     SPI->CR2 |= SPI_CR2_CRCEN; /* Enable the CRC calculation*/
1188  001f 721a5201      	bset	20993,#5
1190  0023 2004          	jra	L114
1191  0025               L704:
1192                     ; 229     SPI->CR2 &= (uint8_t)(~SPI_CR2_CRCEN); /* Disable the CRC calculation*/
1194  0025 721b5201      	bres	20993,#5
1195  0029               L114:
1196                     ; 231 }
1199  0029 84            	pop	a
1200  002a 81            	ret
1263                     ; 238 uint8_t SPI_GetCRC(SPI_CRC_TypeDef SPI_CRC)
1263                     ; 239 {
1264                     .text:	section	.text,new
1265  0000               _SPI_GetCRC:
1267  0000 88            	push	a
1268  0001 88            	push	a
1269       00000001      OFST:	set	1
1272                     ; 240   uint8_t crcreg = 0;
1274                     ; 243   assert_param(IS_SPI_CRC_OK(SPI_CRC));
1276  0002 a101          	cp	a,#1
1277  0004 2703          	jreq	L251
1278  0006 4d            	tnz	a
1279  0007 2603          	jrne	L051
1280  0009               L251:
1281  0009 4f            	clr	a
1282  000a 2010          	jra	L451
1283  000c               L051:
1284  000c ae00f3        	ldw	x,#243
1285  000f 89            	pushw	x
1286  0010 ae0000        	ldw	x,#0
1287  0013 89            	pushw	x
1288  0014 ae0000        	ldw	x,#L102
1289  0017 cd0000        	call	_assert_failed
1291  001a 5b04          	addw	sp,#4
1292  001c               L451:
1293                     ; 245   if (SPI_CRC != SPI_CRC_RX)
1295  001c 0d02          	tnz	(OFST+1,sp)
1296  001e 2707          	jreq	L344
1297                     ; 247     crcreg = SPI->TXCRCR;  /* Get the Tx CRC register*/
1299  0020 c65207        	ld	a,20999
1300  0023 6b01          	ld	(OFST+0,sp),a
1303  0025 2005          	jra	L544
1304  0027               L344:
1305                     ; 251     crcreg = SPI->RXCRCR; /* Get the Rx CRC register*/
1307  0027 c65206        	ld	a,20998
1308  002a 6b01          	ld	(OFST+0,sp),a
1310  002c               L544:
1311                     ; 255   return crcreg;
1313  002c 7b01          	ld	a,(OFST+0,sp)
1316  002e 85            	popw	x
1317  002f 81            	ret
1342                     ; 263 void SPI_ResetCRC(void)
1342                     ; 264 {
1343                     .text:	section	.text,new
1344  0000               _SPI_ResetCRC:
1348                     ; 267   SPI_CalculateCRCCmd(ENABLE);
1350  0000 a601          	ld	a,#1
1351  0002 cd0000        	call	_SPI_CalculateCRCCmd
1353                     ; 270   SPI_Cmd(ENABLE);
1355  0005 a601          	ld	a,#1
1356  0007 cd0000        	call	_SPI_Cmd
1358                     ; 271 }
1361  000a 81            	ret
1385                     ; 278 uint8_t SPI_GetCRCPolynomial(void)
1385                     ; 279 {
1386                     .text:	section	.text,new
1387  0000               _SPI_GetCRCPolynomial:
1391                     ; 280   return SPI->CRCPR; /* Return the CRC polynomial register */
1393  0000 c65205        	ld	a,20997
1396  0003 81            	ret
1453                     ; 288 void SPI_BiDirectionalLineConfig(SPI_Direction_TypeDef SPI_Direction)
1453                     ; 289 {
1454                     .text:	section	.text,new
1455  0000               _SPI_BiDirectionalLineConfig:
1457  0000 88            	push	a
1458       00000000      OFST:	set	0
1461                     ; 291   assert_param(IS_SPI_DIRECTION_OK(SPI_Direction));
1463  0001 4d            	tnz	a
1464  0002 2704          	jreq	L661
1465  0004 a101          	cp	a,#1
1466  0006 2603          	jrne	L461
1467  0008               L661:
1468  0008 4f            	clr	a
1469  0009 2010          	jra	L071
1470  000b               L461:
1471  000b ae0123        	ldw	x,#291
1472  000e 89            	pushw	x
1473  000f ae0000        	ldw	x,#0
1474  0012 89            	pushw	x
1475  0013 ae0000        	ldw	x,#L102
1476  0016 cd0000        	call	_assert_failed
1478  0019 5b04          	addw	sp,#4
1479  001b               L071:
1480                     ; 293   if (SPI_Direction != SPI_DIRECTION_RX)
1482  001b 0d01          	tnz	(OFST+1,sp)
1483  001d 2706          	jreq	L515
1484                     ; 295     SPI->CR2 |= SPI_CR2_BDOE; /* Set the Tx only mode*/
1486  001f 721c5201      	bset	20993,#6
1488  0023 2004          	jra	L715
1489  0025               L515:
1490                     ; 299     SPI->CR2 &= (uint8_t)(~SPI_CR2_BDOE); /* Set the Rx only mode*/
1492  0025 721d5201      	bres	20993,#6
1493  0029               L715:
1494                     ; 301 }
1497  0029 84            	pop	a
1498  002a 81            	ret
1620                     ; 311 FlagStatus SPI_GetFlagStatus(SPI_Flag_TypeDef SPI_FLAG)
1620                     ; 312 {
1621                     .text:	section	.text,new
1622  0000               _SPI_GetFlagStatus:
1624  0000 88            	push	a
1625  0001 88            	push	a
1626       00000001      OFST:	set	1
1629                     ; 313   FlagStatus status = RESET;
1631                     ; 315   assert_param(IS_SPI_FLAGS_OK(SPI_FLAG));
1633  0002 a140          	cp	a,#64
1634  0004 2718          	jreq	L671
1635  0006 a120          	cp	a,#32
1636  0008 2714          	jreq	L671
1637  000a a110          	cp	a,#16
1638  000c 2710          	jreq	L671
1639  000e a108          	cp	a,#8
1640  0010 270c          	jreq	L671
1641  0012 a102          	cp	a,#2
1642  0014 2708          	jreq	L671
1643  0016 a101          	cp	a,#1
1644  0018 2704          	jreq	L671
1645  001a a180          	cp	a,#128
1646  001c 2603          	jrne	L471
1647  001e               L671:
1648  001e 4f            	clr	a
1649  001f 2010          	jra	L002
1650  0021               L471:
1651  0021 ae013b        	ldw	x,#315
1652  0024 89            	pushw	x
1653  0025 ae0000        	ldw	x,#0
1654  0028 89            	pushw	x
1655  0029 ae0000        	ldw	x,#L102
1656  002c cd0000        	call	_assert_failed
1658  002f 5b04          	addw	sp,#4
1659  0031               L002:
1660                     ; 318   if ((SPI->SR & (uint8_t)SPI_FLAG) != (uint8_t)RESET)
1662  0031 c65203        	ld	a,20995
1663  0034 1502          	bcp	a,(OFST+1,sp)
1664  0036 2706          	jreq	L575
1665                     ; 320     status = SET; /* SPI_FLAG is set */
1667  0038 a601          	ld	a,#1
1668  003a 6b01          	ld	(OFST+0,sp),a
1671  003c 2002          	jra	L775
1672  003e               L575:
1673                     ; 324     status = RESET; /* SPI_FLAG is reset*/
1675  003e 0f01          	clr	(OFST+0,sp)
1677  0040               L775:
1678                     ; 328   return status;
1680  0040 7b01          	ld	a,(OFST+0,sp)
1683  0042 85            	popw	x
1684  0043 81            	ret
1720                     ; 346 void SPI_ClearFlag(SPI_Flag_TypeDef SPI_FLAG)
1720                     ; 347 {
1721                     .text:	section	.text,new
1722  0000               _SPI_ClearFlag:
1724  0000 88            	push	a
1725       00000000      OFST:	set	0
1728                     ; 348   assert_param(IS_SPI_CLEAR_FLAGS_OK(SPI_FLAG));
1730  0001 a110          	cp	a,#16
1731  0003 2704          	jreq	L602
1732  0005 a108          	cp	a,#8
1733  0007 2603          	jrne	L402
1734  0009               L602:
1735  0009 4f            	clr	a
1736  000a 2010          	jra	L012
1737  000c               L402:
1738  000c ae015c        	ldw	x,#348
1739  000f 89            	pushw	x
1740  0010 ae0000        	ldw	x,#0
1741  0013 89            	pushw	x
1742  0014 ae0000        	ldw	x,#L102
1743  0017 cd0000        	call	_assert_failed
1745  001a 5b04          	addw	sp,#4
1746  001c               L012:
1747                     ; 350   SPI->SR = (uint8_t)(~SPI_FLAG);
1749  001c 7b01          	ld	a,(OFST+1,sp)
1750  001e 43            	cpl	a
1751  001f c75203        	ld	20995,a
1752                     ; 351 }
1755  0022 84            	pop	a
1756  0023 81            	ret
1831                     ; 366 ITStatus SPI_GetITStatus(SPI_IT_TypeDef SPI_IT)
1831                     ; 367 {
1832                     .text:	section	.text,new
1833  0000               _SPI_GetITStatus:
1835  0000 88            	push	a
1836  0001 89            	pushw	x
1837       00000002      OFST:	set	2
1840                     ; 368   ITStatus pendingbitstatus = RESET;
1842                     ; 369   uint8_t itpos = 0;
1844                     ; 370   uint8_t itmask1 = 0;
1846                     ; 371   uint8_t itmask2 = 0;
1848                     ; 372   uint8_t enablestatus = 0;
1850                     ; 373   assert_param(IS_SPI_GET_IT_OK(SPI_IT));
1852  0002 a165          	cp	a,#101
1853  0004 2714          	jreq	L612
1854  0006 a155          	cp	a,#85
1855  0008 2710          	jreq	L612
1856  000a a145          	cp	a,#69
1857  000c 270c          	jreq	L612
1858  000e a134          	cp	a,#52
1859  0010 2708          	jreq	L612
1860  0012 a117          	cp	a,#23
1861  0014 2704          	jreq	L612
1862  0016 a106          	cp	a,#6
1863  0018 2603          	jrne	L412
1864  001a               L612:
1865  001a 4f            	clr	a
1866  001b 2010          	jra	L022
1867  001d               L412:
1868  001d ae0175        	ldw	x,#373
1869  0020 89            	pushw	x
1870  0021 ae0000        	ldw	x,#0
1871  0024 89            	pushw	x
1872  0025 ae0000        	ldw	x,#L102
1873  0028 cd0000        	call	_assert_failed
1875  002b 5b04          	addw	sp,#4
1876  002d               L022:
1877                     ; 375   itpos = (uint8_t)((uint8_t)1 << ((uint8_t)SPI_IT & (uint8_t)0x0F));
1879  002d 7b03          	ld	a,(OFST+1,sp)
1880  002f a40f          	and	a,#15
1881  0031 5f            	clrw	x
1882  0032 97            	ld	xl,a
1883  0033 a601          	ld	a,#1
1884  0035 5d            	tnzw	x
1885  0036 2704          	jreq	L222
1886  0038               L422:
1887  0038 48            	sll	a
1888  0039 5a            	decw	x
1889  003a 26fc          	jrne	L422
1890  003c               L222:
1891  003c 6b01          	ld	(OFST-1,sp),a
1893                     ; 378   itmask1 = (uint8_t)((uint8_t)SPI_IT >> (uint8_t)4);
1895  003e 7b03          	ld	a,(OFST+1,sp)
1896  0040 4e            	swap	a
1897  0041 a40f          	and	a,#15
1898  0043 6b02          	ld	(OFST+0,sp),a
1900                     ; 380   itmask2 = (uint8_t)((uint8_t)1 << itmask1);
1902  0045 7b02          	ld	a,(OFST+0,sp)
1903  0047 5f            	clrw	x
1904  0048 97            	ld	xl,a
1905  0049 a601          	ld	a,#1
1906  004b 5d            	tnzw	x
1907  004c 2704          	jreq	L622
1908  004e               L032:
1909  004e 48            	sll	a
1910  004f 5a            	decw	x
1911  0050 26fc          	jrne	L032
1912  0052               L622:
1913  0052 6b02          	ld	(OFST+0,sp),a
1915                     ; 382   enablestatus = (uint8_t)((uint8_t)SPI->SR & itmask2);
1917  0054 c65203        	ld	a,20995
1918  0057 1402          	and	a,(OFST+0,sp)
1919  0059 6b02          	ld	(OFST+0,sp),a
1921                     ; 384   if (((SPI->ICR & itpos) != RESET) && enablestatus)
1923  005b c65202        	ld	a,20994
1924  005e 1501          	bcp	a,(OFST-1,sp)
1925  0060 270a          	jreq	L156
1927  0062 0d02          	tnz	(OFST+0,sp)
1928  0064 2706          	jreq	L156
1929                     ; 387     pendingbitstatus = SET;
1931  0066 a601          	ld	a,#1
1932  0068 6b02          	ld	(OFST+0,sp),a
1935  006a 2002          	jra	L356
1936  006c               L156:
1937                     ; 392     pendingbitstatus = RESET;
1939  006c 0f02          	clr	(OFST+0,sp)
1941  006e               L356:
1942                     ; 395   return  pendingbitstatus;
1944  006e 7b02          	ld	a,(OFST+0,sp)
1947  0070 5b03          	addw	sp,#3
1948  0072 81            	ret
1992                     ; 412 void SPI_ClearITPendingBit(SPI_IT_TypeDef SPI_IT)
1992                     ; 413 {
1993                     .text:	section	.text,new
1994  0000               _SPI_ClearITPendingBit:
1996  0000 88            	push	a
1997  0001 88            	push	a
1998       00000001      OFST:	set	1
2001                     ; 414   uint8_t itpos = 0;
2003                     ; 415   assert_param(IS_SPI_CLEAR_IT_OK(SPI_IT));
2005  0002 a145          	cp	a,#69
2006  0004 2704          	jreq	L632
2007  0006 a134          	cp	a,#52
2008  0008 2603          	jrne	L432
2009  000a               L632:
2010  000a 4f            	clr	a
2011  000b 2010          	jra	L042
2012  000d               L432:
2013  000d ae019f        	ldw	x,#415
2014  0010 89            	pushw	x
2015  0011 ae0000        	ldw	x,#0
2016  0014 89            	pushw	x
2017  0015 ae0000        	ldw	x,#L102
2018  0018 cd0000        	call	_assert_failed
2020  001b 5b04          	addw	sp,#4
2021  001d               L042:
2022                     ; 420   itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)(SPI_IT & (uint8_t)0xF0) >> 4));
2024  001d 7b02          	ld	a,(OFST+1,sp)
2025  001f a4f0          	and	a,#240
2026  0021 4e            	swap	a
2027  0022 a40f          	and	a,#15
2028  0024 5f            	clrw	x
2029  0025 97            	ld	xl,a
2030  0026 a601          	ld	a,#1
2031  0028 5d            	tnzw	x
2032  0029 2704          	jreq	L242
2033  002b               L442:
2034  002b 48            	sll	a
2035  002c 5a            	decw	x
2036  002d 26fc          	jrne	L442
2037  002f               L242:
2038  002f 6b01          	ld	(OFST+0,sp),a
2040                     ; 422   SPI->SR = (uint8_t)(~itpos);
2042  0031 7b01          	ld	a,(OFST+0,sp)
2043  0033 43            	cpl	a
2044  0034 c75203        	ld	20995,a
2045                     ; 424 }
2048  0037 85            	popw	x
2049  0038 81            	ret
2062                     	xdef	_SPI_ClearITPendingBit
2063                     	xdef	_SPI_GetITStatus
2064                     	xdef	_SPI_ClearFlag
2065                     	xdef	_SPI_GetFlagStatus
2066                     	xdef	_SPI_BiDirectionalLineConfig
2067                     	xdef	_SPI_GetCRCPolynomial
2068                     	xdef	_SPI_ResetCRC
2069                     	xdef	_SPI_GetCRC
2070                     	xdef	_SPI_CalculateCRCCmd
2071                     	xdef	_SPI_TransmitCRC
2072                     	xdef	_SPI_NSSInternalSoftwareCmd
2073                     	xdef	_SPI_ReceiveData
2074                     	xdef	_SPI_SendData
2075                     	xdef	_SPI_ITConfig
2076                     	xdef	_SPI_Cmd
2077                     	xdef	_SPI_Init
2078                     	xdef	_SPI_DeInit
2079                     	xref	_assert_failed
2080                     .const:	section	.text
2081  0000               L102:
2082  0000 7372635c7374  	dc.b	"src\stm8s_spi.c",0
2102                     	end

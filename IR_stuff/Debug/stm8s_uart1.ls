   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.13.3 - 22 May 2025
   3                     ; Generator (Limited) V4.6.6 - 07 Jan 2026
  44                     ; 46 void UART1_DeInit(void)
  44                     ; 47 {
  46                     .text:	section	.text,new
  47  0000               _UART1_DeInit:
  51                     ; 50     (void)UART1->SR;
  53  0000 c65230        	ld	a,21040
  54                     ; 51     (void)UART1->DR;
  56  0003 c65231        	ld	a,21041
  57                     ; 53     UART1->BRR2 = UART1_BRR2_RESET_VALUE;  /* Set UART1_BRR2 to reset value 0x00 */
  59  0006 725f5233      	clr	21043
  60                     ; 54     UART1->BRR1 = UART1_BRR1_RESET_VALUE;  /* Set UART1_BRR1 to reset value 0x00 */
  62  000a 725f5232      	clr	21042
  63                     ; 56     UART1->CR1 = UART1_CR1_RESET_VALUE;  /* Set UART1_CR1 to reset value 0x00 */
  65  000e 725f5234      	clr	21044
  66                     ; 57     UART1->CR2 = UART1_CR2_RESET_VALUE;  /* Set UART1_CR2 to reset value 0x00 */
  68  0012 725f5235      	clr	21045
  69                     ; 58     UART1->CR3 = UART1_CR3_RESET_VALUE;  /* Set UART1_CR3 to reset value 0x00 */
  71  0016 725f5236      	clr	21046
  72                     ; 59     UART1->CR4 = UART1_CR4_RESET_VALUE;  /* Set UART1_CR4 to reset value 0x00 */
  74  001a 725f5237      	clr	21047
  75                     ; 60     UART1->CR5 = UART1_CR5_RESET_VALUE;  /* Set UART1_CR5 to reset value 0x00 */
  77  001e 725f5238      	clr	21048
  78                     ; 62     UART1->GTR = UART1_GTR_RESET_VALUE;
  80  0022 725f5239      	clr	21049
  81                     ; 63     UART1->PSCR = UART1_PSCR_RESET_VALUE;
  83  0026 725f523a      	clr	21050
  84                     ; 64 }
  87  002a 81            	ret
 385                     .const:	section	.text
 386  0000               L21:
 387  0000 00098969      	dc.l	625001
 388  0004               L25:
 389  0004 00000064      	dc.l	100
 390                     ; 83 void UART1_Init(uint32_t BaudRate, UART1_WordLength_TypeDef WordLength, 
 390                     ; 84                 UART1_StopBits_TypeDef StopBits, UART1_Parity_TypeDef Parity, 
 390                     ; 85                 UART1_SyncMode_TypeDef SyncMode, UART1_Mode_TypeDef Mode)
 390                     ; 86 {
 391                     .text:	section	.text,new
 392  0000               _UART1_Init:
 394  0000 520c          	subw	sp,#12
 395       0000000c      OFST:	set	12
 398                     ; 87     uint32_t BaudRate_Mantissa = 0, BaudRate_Mantissa100 = 0;
 402                     ; 90     assert_param(IS_UART1_BAUDRATE_OK(BaudRate));
 404  0002 96            	ldw	x,sp
 405  0003 1c000f        	addw	x,#OFST+3
 406  0006 cd0000        	call	c_ltor
 408  0009 ae0000        	ldw	x,#L21
 409  000c cd0000        	call	c_lcmp
 411  000f 2403          	jruge	L01
 412  0011 4f            	clr	a
 413  0012 2010          	jra	L41
 414  0014               L01:
 415  0014 ae005a        	ldw	x,#90
 416  0017 89            	pushw	x
 417  0018 ae0000        	ldw	x,#0
 418  001b 89            	pushw	x
 419  001c ae0008        	ldw	x,#L561
 420  001f cd0000        	call	_assert_failed
 422  0022 5b04          	addw	sp,#4
 423  0024               L41:
 424                     ; 91     assert_param(IS_UART1_WORDLENGTH_OK(WordLength));
 426  0024 0d13          	tnz	(OFST+7,sp)
 427  0026 2706          	jreq	L02
 428  0028 7b13          	ld	a,(OFST+7,sp)
 429  002a a110          	cp	a,#16
 430  002c 2603          	jrne	L61
 431  002e               L02:
 432  002e 4f            	clr	a
 433  002f 2010          	jra	L22
 434  0031               L61:
 435  0031 ae005b        	ldw	x,#91
 436  0034 89            	pushw	x
 437  0035 ae0000        	ldw	x,#0
 438  0038 89            	pushw	x
 439  0039 ae0008        	ldw	x,#L561
 440  003c cd0000        	call	_assert_failed
 442  003f 5b04          	addw	sp,#4
 443  0041               L22:
 444                     ; 92     assert_param(IS_UART1_STOPBITS_OK(StopBits));
 446  0041 0d14          	tnz	(OFST+8,sp)
 447  0043 2712          	jreq	L62
 448  0045 7b14          	ld	a,(OFST+8,sp)
 449  0047 a110          	cp	a,#16
 450  0049 270c          	jreq	L62
 451  004b 7b14          	ld	a,(OFST+8,sp)
 452  004d a120          	cp	a,#32
 453  004f 2706          	jreq	L62
 454  0051 7b14          	ld	a,(OFST+8,sp)
 455  0053 a130          	cp	a,#48
 456  0055 2603          	jrne	L42
 457  0057               L62:
 458  0057 4f            	clr	a
 459  0058 2010          	jra	L03
 460  005a               L42:
 461  005a ae005c        	ldw	x,#92
 462  005d 89            	pushw	x
 463  005e ae0000        	ldw	x,#0
 464  0061 89            	pushw	x
 465  0062 ae0008        	ldw	x,#L561
 466  0065 cd0000        	call	_assert_failed
 468  0068 5b04          	addw	sp,#4
 469  006a               L03:
 470                     ; 93     assert_param(IS_UART1_PARITY_OK(Parity));
 472  006a 0d15          	tnz	(OFST+9,sp)
 473  006c 270c          	jreq	L43
 474  006e 7b15          	ld	a,(OFST+9,sp)
 475  0070 a104          	cp	a,#4
 476  0072 2706          	jreq	L43
 477  0074 7b15          	ld	a,(OFST+9,sp)
 478  0076 a106          	cp	a,#6
 479  0078 2603          	jrne	L23
 480  007a               L43:
 481  007a 4f            	clr	a
 482  007b 2010          	jra	L63
 483  007d               L23:
 484  007d ae005d        	ldw	x,#93
 485  0080 89            	pushw	x
 486  0081 ae0000        	ldw	x,#0
 487  0084 89            	pushw	x
 488  0085 ae0008        	ldw	x,#L561
 489  0088 cd0000        	call	_assert_failed
 491  008b 5b04          	addw	sp,#4
 492  008d               L63:
 493                     ; 94     assert_param(IS_UART1_MODE_OK((uint8_t)Mode));
 495  008d 7b17          	ld	a,(OFST+11,sp)
 496  008f a108          	cp	a,#8
 497  0091 2730          	jreq	L24
 498  0093 7b17          	ld	a,(OFST+11,sp)
 499  0095 a140          	cp	a,#64
 500  0097 272a          	jreq	L24
 501  0099 7b17          	ld	a,(OFST+11,sp)
 502  009b a104          	cp	a,#4
 503  009d 2724          	jreq	L24
 504  009f 7b17          	ld	a,(OFST+11,sp)
 505  00a1 a180          	cp	a,#128
 506  00a3 271e          	jreq	L24
 507  00a5 7b17          	ld	a,(OFST+11,sp)
 508  00a7 a10c          	cp	a,#12
 509  00a9 2718          	jreq	L24
 510  00ab 7b17          	ld	a,(OFST+11,sp)
 511  00ad a10c          	cp	a,#12
 512  00af 2712          	jreq	L24
 513  00b1 7b17          	ld	a,(OFST+11,sp)
 514  00b3 a144          	cp	a,#68
 515  00b5 270c          	jreq	L24
 516  00b7 7b17          	ld	a,(OFST+11,sp)
 517  00b9 a1c0          	cp	a,#192
 518  00bb 2706          	jreq	L24
 519  00bd 7b17          	ld	a,(OFST+11,sp)
 520  00bf a188          	cp	a,#136
 521  00c1 2603          	jrne	L04
 522  00c3               L24:
 523  00c3 4f            	clr	a
 524  00c4 2010          	jra	L44
 525  00c6               L04:
 526  00c6 ae005e        	ldw	x,#94
 527  00c9 89            	pushw	x
 528  00ca ae0000        	ldw	x,#0
 529  00cd 89            	pushw	x
 530  00ce ae0008        	ldw	x,#L561
 531  00d1 cd0000        	call	_assert_failed
 533  00d4 5b04          	addw	sp,#4
 534  00d6               L44:
 535                     ; 95     assert_param(IS_UART1_SYNCMODE_OK((uint8_t)SyncMode));
 537  00d6 7b16          	ld	a,(OFST+10,sp)
 538  00d8 a488          	and	a,#136
 539  00da a188          	cp	a,#136
 540  00dc 271b          	jreq	L64
 541  00de 7b16          	ld	a,(OFST+10,sp)
 542  00e0 a444          	and	a,#68
 543  00e2 a144          	cp	a,#68
 544  00e4 2713          	jreq	L64
 545  00e6 7b16          	ld	a,(OFST+10,sp)
 546  00e8 a422          	and	a,#34
 547  00ea a122          	cp	a,#34
 548  00ec 270b          	jreq	L64
 549  00ee 7b16          	ld	a,(OFST+10,sp)
 550  00f0 a411          	and	a,#17
 551  00f2 a111          	cp	a,#17
 552  00f4 2703          	jreq	L64
 553  00f6 4f            	clr	a
 554  00f7 2010          	jra	L05
 555  00f9               L64:
 556  00f9 ae005f        	ldw	x,#95
 557  00fc 89            	pushw	x
 558  00fd ae0000        	ldw	x,#0
 559  0100 89            	pushw	x
 560  0101 ae0008        	ldw	x,#L561
 561  0104 cd0000        	call	_assert_failed
 563  0107 5b04          	addw	sp,#4
 564  0109               L05:
 565                     ; 98     UART1->CR1 &= (uint8_t)(~UART1_CR1_M);  
 567  0109 72195234      	bres	21044,#4
 568                     ; 101     UART1->CR1 |= (uint8_t)WordLength;
 570  010d c65234        	ld	a,21044
 571  0110 1a13          	or	a,(OFST+7,sp)
 572  0112 c75234        	ld	21044,a
 573                     ; 104     UART1->CR3 &= (uint8_t)(~UART1_CR3_STOP);  
 575  0115 c65236        	ld	a,21046
 576  0118 a4cf          	and	a,#207
 577  011a c75236        	ld	21046,a
 578                     ; 106     UART1->CR3 |= (uint8_t)StopBits;  
 580  011d c65236        	ld	a,21046
 581  0120 1a14          	or	a,(OFST+8,sp)
 582  0122 c75236        	ld	21046,a
 583                     ; 109     UART1->CR1 &= (uint8_t)(~(UART1_CR1_PCEN | UART1_CR1_PS  ));  
 585  0125 c65234        	ld	a,21044
 586  0128 a4f9          	and	a,#249
 587  012a c75234        	ld	21044,a
 588                     ; 111     UART1->CR1 |= (uint8_t)Parity;  
 590  012d c65234        	ld	a,21044
 591  0130 1a15          	or	a,(OFST+9,sp)
 592  0132 c75234        	ld	21044,a
 593                     ; 114     UART1->BRR1 &= (uint8_t)(~UART1_BRR1_DIVM);  
 595  0135 725f5232      	clr	21042
 596                     ; 116     UART1->BRR2 &= (uint8_t)(~UART1_BRR2_DIVM);  
 598  0139 c65233        	ld	a,21043
 599  013c a40f          	and	a,#15
 600  013e c75233        	ld	21043,a
 601                     ; 118     UART1->BRR2 &= (uint8_t)(~UART1_BRR2_DIVF);  
 603  0141 c65233        	ld	a,21043
 604  0144 a4f0          	and	a,#240
 605  0146 c75233        	ld	21043,a
 606                     ; 121     BaudRate_Mantissa    = ((uint32_t)CLK_GetClockFreq() / (BaudRate << 4));
 608  0149 96            	ldw	x,sp
 609  014a 1c000f        	addw	x,#OFST+3
 610  014d cd0000        	call	c_ltor
 612  0150 a604          	ld	a,#4
 613  0152 cd0000        	call	c_llsh
 615  0155 96            	ldw	x,sp
 616  0156 1c0001        	addw	x,#OFST-11
 617  0159 cd0000        	call	c_rtol
 620  015c cd0000        	call	_CLK_GetClockFreq
 622  015f 96            	ldw	x,sp
 623  0160 1c0001        	addw	x,#OFST-11
 624  0163 cd0000        	call	c_ludv
 626  0166 96            	ldw	x,sp
 627  0167 1c0009        	addw	x,#OFST-3
 628  016a cd0000        	call	c_rtol
 631                     ; 122     BaudRate_Mantissa100 = (((uint32_t)CLK_GetClockFreq() * 100) / (BaudRate << 4));
 633  016d 96            	ldw	x,sp
 634  016e 1c000f        	addw	x,#OFST+3
 635  0171 cd0000        	call	c_ltor
 637  0174 a604          	ld	a,#4
 638  0176 cd0000        	call	c_llsh
 640  0179 96            	ldw	x,sp
 641  017a 1c0001        	addw	x,#OFST-11
 642  017d cd0000        	call	c_rtol
 645  0180 cd0000        	call	_CLK_GetClockFreq
 647  0183 a664          	ld	a,#100
 648  0185 cd0000        	call	c_smul
 650  0188 96            	ldw	x,sp
 651  0189 1c0001        	addw	x,#OFST-11
 652  018c cd0000        	call	c_ludv
 654  018f 96            	ldw	x,sp
 655  0190 1c0005        	addw	x,#OFST-7
 656  0193 cd0000        	call	c_rtol
 659                     ; 124     UART1->BRR2 |= (uint8_t)((uint8_t)(((BaudRate_Mantissa100 - (BaudRate_Mantissa * 100)) << 4) / 100) & (uint8_t)0x0F); 
 661  0196 96            	ldw	x,sp
 662  0197 1c0009        	addw	x,#OFST-3
 663  019a cd0000        	call	c_ltor
 665  019d a664          	ld	a,#100
 666  019f cd0000        	call	c_smul
 668  01a2 96            	ldw	x,sp
 669  01a3 1c0001        	addw	x,#OFST-11
 670  01a6 cd0000        	call	c_rtol
 673  01a9 96            	ldw	x,sp
 674  01aa 1c0005        	addw	x,#OFST-7
 675  01ad cd0000        	call	c_ltor
 677  01b0 96            	ldw	x,sp
 678  01b1 1c0001        	addw	x,#OFST-11
 679  01b4 cd0000        	call	c_lsub
 681  01b7 a604          	ld	a,#4
 682  01b9 cd0000        	call	c_llsh
 684  01bc ae0004        	ldw	x,#L25
 685  01bf cd0000        	call	c_ludv
 687  01c2 b603          	ld	a,c_lreg+3
 688  01c4 a40f          	and	a,#15
 689  01c6 ca5233        	or	a,21043
 690  01c9 c75233        	ld	21043,a
 691                     ; 126     UART1->BRR2 |= (uint8_t)((BaudRate_Mantissa >> 4) & (uint8_t)0xF0); 
 693  01cc 1e0b          	ldw	x,(OFST-1,sp)
 694  01ce 54            	srlw	x
 695  01cf 54            	srlw	x
 696  01d0 54            	srlw	x
 697  01d1 54            	srlw	x
 698  01d2 01            	rrwa	x,a
 699  01d3 a4f0          	and	a,#240
 700  01d5 5f            	clrw	x
 701  01d6 ca5233        	or	a,21043
 702  01d9 c75233        	ld	21043,a
 703                     ; 128     UART1->BRR1 |= (uint8_t)BaudRate_Mantissa;           
 705  01dc c65232        	ld	a,21042
 706  01df 1a0c          	or	a,(OFST+0,sp)
 707  01e1 c75232        	ld	21042,a
 708                     ; 131     UART1->CR2 &= (uint8_t)~(UART1_CR2_TEN | UART1_CR2_REN); 
 710  01e4 c65235        	ld	a,21045
 711  01e7 a4f3          	and	a,#243
 712  01e9 c75235        	ld	21045,a
 713                     ; 133     UART1->CR3 &= (uint8_t)~(UART1_CR3_CPOL | UART1_CR3_CPHA | UART1_CR3_LBCL); 
 715  01ec c65236        	ld	a,21046
 716  01ef a4f8          	and	a,#248
 717  01f1 c75236        	ld	21046,a
 718                     ; 135     UART1->CR3 |= (uint8_t)((uint8_t)SyncMode & (uint8_t)(UART1_CR3_CPOL | 
 718                     ; 136                                               UART1_CR3_CPHA | UART1_CR3_LBCL));  
 720  01f4 7b16          	ld	a,(OFST+10,sp)
 721  01f6 a407          	and	a,#7
 722  01f8 ca5236        	or	a,21046
 723  01fb c75236        	ld	21046,a
 724                     ; 138     if ((uint8_t)(Mode & UART1_MODE_TX_ENABLE))
 726  01fe 7b17          	ld	a,(OFST+11,sp)
 727  0200 a504          	bcp	a,#4
 728  0202 2706          	jreq	L761
 729                     ; 141         UART1->CR2 |= (uint8_t)UART1_CR2_TEN;  
 731  0204 72165235      	bset	21045,#3
 733  0208 2004          	jra	L171
 734  020a               L761:
 735                     ; 146         UART1->CR2 &= (uint8_t)(~UART1_CR2_TEN);  
 737  020a 72175235      	bres	21045,#3
 738  020e               L171:
 739                     ; 148     if ((uint8_t)(Mode & UART1_MODE_RX_ENABLE))
 741  020e 7b17          	ld	a,(OFST+11,sp)
 742  0210 a508          	bcp	a,#8
 743  0212 2706          	jreq	L371
 744                     ; 151         UART1->CR2 |= (uint8_t)UART1_CR2_REN;  
 746  0214 72145235      	bset	21045,#2
 748  0218 2004          	jra	L571
 749  021a               L371:
 750                     ; 156         UART1->CR2 &= (uint8_t)(~UART1_CR2_REN);  
 752  021a 72155235      	bres	21045,#2
 753  021e               L571:
 754                     ; 160     if ((uint8_t)(SyncMode & UART1_SYNCMODE_CLOCK_DISABLE))
 756  021e 7b16          	ld	a,(OFST+10,sp)
 757  0220 a580          	bcp	a,#128
 758  0222 2706          	jreq	L771
 759                     ; 163         UART1->CR3 &= (uint8_t)(~UART1_CR3_CKEN); 
 761  0224 72175236      	bres	21046,#3
 763  0228 200a          	jra	L102
 764  022a               L771:
 765                     ; 167         UART1->CR3 |= (uint8_t)((uint8_t)SyncMode & UART1_CR3_CKEN);
 767  022a 7b16          	ld	a,(OFST+10,sp)
 768  022c a408          	and	a,#8
 769  022e ca5236        	or	a,21046
 770  0231 c75236        	ld	21046,a
 771  0234               L102:
 772                     ; 169 }
 775  0234 5b0c          	addw	sp,#12
 776  0236 81            	ret
 831                     ; 177 void UART1_Cmd(FunctionalState NewState)
 831                     ; 178 {
 832                     .text:	section	.text,new
 833  0000               _UART1_Cmd:
 837                     ; 179     if (NewState != DISABLE)
 839  0000 4d            	tnz	a
 840  0001 2706          	jreq	L132
 841                     ; 182         UART1->CR1 &= (uint8_t)(~UART1_CR1_UARTD); 
 843  0003 721b5234      	bres	21044,#5
 845  0007 2004          	jra	L332
 846  0009               L132:
 847                     ; 187         UART1->CR1 |= UART1_CR1_UARTD;  
 849  0009 721a5234      	bset	21044,#5
 850  000d               L332:
 851                     ; 189 }
 854  000d 81            	ret
 976                     ; 205 void UART1_ITConfig(UART1_IT_TypeDef UART1_IT, FunctionalState NewState)
 976                     ; 206 {
 977                     .text:	section	.text,new
 978  0000               _UART1_ITConfig:
 980  0000 89            	pushw	x
 981  0001 89            	pushw	x
 982       00000002      OFST:	set	2
 985                     ; 207     uint8_t uartreg = 0, itpos = 0x00;
 989                     ; 210     assert_param(IS_UART1_CONFIG_IT_OK(UART1_IT));
 991  0002 a30100        	cpw	x,#256
 992  0005 2719          	jreq	L26
 993  0007 a30277        	cpw	x,#631
 994  000a 2714          	jreq	L26
 995  000c a30266        	cpw	x,#614
 996  000f 270f          	jreq	L26
 997  0011 a30205        	cpw	x,#517
 998  0014 270a          	jreq	L26
 999  0016 a30244        	cpw	x,#580
1000  0019 2705          	jreq	L26
1001  001b a30346        	cpw	x,#838
1002  001e 2603          	jrne	L06
1003  0020               L26:
1004  0020 4f            	clr	a
1005  0021 2010          	jra	L46
1006  0023               L06:
1007  0023 ae00d2        	ldw	x,#210
1008  0026 89            	pushw	x
1009  0027 ae0000        	ldw	x,#0
1010  002a 89            	pushw	x
1011  002b ae0008        	ldw	x,#L561
1012  002e cd0000        	call	_assert_failed
1014  0031 5b04          	addw	sp,#4
1015  0033               L46:
1016                     ; 211     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1018  0033 0d07          	tnz	(OFST+5,sp)
1019  0035 2706          	jreq	L07
1020  0037 7b07          	ld	a,(OFST+5,sp)
1021  0039 a101          	cp	a,#1
1022  003b 2603          	jrne	L66
1023  003d               L07:
1024  003d 4f            	clr	a
1025  003e 2010          	jra	L27
1026  0040               L66:
1027  0040 ae00d3        	ldw	x,#211
1028  0043 89            	pushw	x
1029  0044 ae0000        	ldw	x,#0
1030  0047 89            	pushw	x
1031  0048 ae0008        	ldw	x,#L561
1032  004b cd0000        	call	_assert_failed
1034  004e 5b04          	addw	sp,#4
1035  0050               L27:
1036                     ; 214     uartreg = (uint8_t)((uint16_t)UART1_IT >> 0x08);
1038  0050 7b03          	ld	a,(OFST+1,sp)
1039  0052 6b01          	ld	(OFST-1,sp),a
1041                     ; 216     itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART1_IT & (uint8_t)0x0F));
1043  0054 7b04          	ld	a,(OFST+2,sp)
1044  0056 a40f          	and	a,#15
1045  0058 5f            	clrw	x
1046  0059 97            	ld	xl,a
1047  005a a601          	ld	a,#1
1048  005c 5d            	tnzw	x
1049  005d 2704          	jreq	L47
1050  005f               L67:
1051  005f 48            	sll	a
1052  0060 5a            	decw	x
1053  0061 26fc          	jrne	L67
1054  0063               L47:
1055  0063 6b02          	ld	(OFST+0,sp),a
1057                     ; 218     if (NewState != DISABLE)
1059  0065 0d07          	tnz	(OFST+5,sp)
1060  0067 272a          	jreq	L703
1061                     ; 221         if (uartreg == 0x01)
1063  0069 7b01          	ld	a,(OFST-1,sp)
1064  006b a101          	cp	a,#1
1065  006d 260a          	jrne	L113
1066                     ; 223             UART1->CR1 |= itpos;
1068  006f c65234        	ld	a,21044
1069  0072 1a02          	or	a,(OFST+0,sp)
1070  0074 c75234        	ld	21044,a
1072  0077 2045          	jra	L123
1073  0079               L113:
1074                     ; 225         else if (uartreg == 0x02)
1076  0079 7b01          	ld	a,(OFST-1,sp)
1077  007b a102          	cp	a,#2
1078  007d 260a          	jrne	L513
1079                     ; 227             UART1->CR2 |= itpos;
1081  007f c65235        	ld	a,21045
1082  0082 1a02          	or	a,(OFST+0,sp)
1083  0084 c75235        	ld	21045,a
1085  0087 2035          	jra	L123
1086  0089               L513:
1087                     ; 231             UART1->CR4 |= itpos;
1089  0089 c65237        	ld	a,21047
1090  008c 1a02          	or	a,(OFST+0,sp)
1091  008e c75237        	ld	21047,a
1092  0091 202b          	jra	L123
1093  0093               L703:
1094                     ; 237         if (uartreg == 0x01)
1096  0093 7b01          	ld	a,(OFST-1,sp)
1097  0095 a101          	cp	a,#1
1098  0097 260b          	jrne	L323
1099                     ; 239             UART1->CR1 &= (uint8_t)(~itpos);
1101  0099 7b02          	ld	a,(OFST+0,sp)
1102  009b 43            	cpl	a
1103  009c c45234        	and	a,21044
1104  009f c75234        	ld	21044,a
1106  00a2 201a          	jra	L123
1107  00a4               L323:
1108                     ; 241         else if (uartreg == 0x02)
1110  00a4 7b01          	ld	a,(OFST-1,sp)
1111  00a6 a102          	cp	a,#2
1112  00a8 260b          	jrne	L723
1113                     ; 243             UART1->CR2 &= (uint8_t)(~itpos);
1115  00aa 7b02          	ld	a,(OFST+0,sp)
1116  00ac 43            	cpl	a
1117  00ad c45235        	and	a,21045
1118  00b0 c75235        	ld	21045,a
1120  00b3 2009          	jra	L123
1121  00b5               L723:
1122                     ; 247             UART1->CR4 &= (uint8_t)(~itpos);
1124  00b5 7b02          	ld	a,(OFST+0,sp)
1125  00b7 43            	cpl	a
1126  00b8 c45237        	and	a,21047
1127  00bb c75237        	ld	21047,a
1128  00be               L123:
1129                     ; 251 }
1132  00be 5b04          	addw	sp,#4
1133  00c0 81            	ret
1170                     ; 258 void UART1_HalfDuplexCmd(FunctionalState NewState)
1170                     ; 259 {
1171                     .text:	section	.text,new
1172  0000               _UART1_HalfDuplexCmd:
1174  0000 88            	push	a
1175       00000000      OFST:	set	0
1178                     ; 260     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1180  0001 4d            	tnz	a
1181  0002 2704          	jreq	L401
1182  0004 a101          	cp	a,#1
1183  0006 2603          	jrne	L201
1184  0008               L401:
1185  0008 4f            	clr	a
1186  0009 2010          	jra	L601
1187  000b               L201:
1188  000b ae0104        	ldw	x,#260
1189  000e 89            	pushw	x
1190  000f ae0000        	ldw	x,#0
1191  0012 89            	pushw	x
1192  0013 ae0008        	ldw	x,#L561
1193  0016 cd0000        	call	_assert_failed
1195  0019 5b04          	addw	sp,#4
1196  001b               L601:
1197                     ; 262     if (NewState != DISABLE)
1199  001b 0d01          	tnz	(OFST+1,sp)
1200  001d 2706          	jreq	L153
1201                     ; 264         UART1->CR5 |= UART1_CR5_HDSEL;  /**< UART1 Half Duplex Enable  */
1203  001f 72165238      	bset	21048,#3
1205  0023 2004          	jra	L353
1206  0025               L153:
1207                     ; 268         UART1->CR5 &= (uint8_t)~UART1_CR5_HDSEL; /**< UART1 Half Duplex Disable */
1209  0025 72175238      	bres	21048,#3
1210  0029               L353:
1211                     ; 270 }
1214  0029 84            	pop	a
1215  002a 81            	ret
1273                     ; 278 void UART1_IrDAConfig(UART1_IrDAMode_TypeDef UART1_IrDAMode)
1273                     ; 279 {
1274                     .text:	section	.text,new
1275  0000               _UART1_IrDAConfig:
1277  0000 88            	push	a
1278       00000000      OFST:	set	0
1281                     ; 280     assert_param(IS_UART1_IRDAMODE_OK(UART1_IrDAMode));
1283  0001 a101          	cp	a,#1
1284  0003 2703          	jreq	L411
1285  0005 4d            	tnz	a
1286  0006 2603          	jrne	L211
1287  0008               L411:
1288  0008 4f            	clr	a
1289  0009 2010          	jra	L611
1290  000b               L211:
1291  000b ae0118        	ldw	x,#280
1292  000e 89            	pushw	x
1293  000f ae0000        	ldw	x,#0
1294  0012 89            	pushw	x
1295  0013 ae0008        	ldw	x,#L561
1296  0016 cd0000        	call	_assert_failed
1298  0019 5b04          	addw	sp,#4
1299  001b               L611:
1300                     ; 282     if (UART1_IrDAMode != UART1_IRDAMODE_NORMAL)
1302  001b 0d01          	tnz	(OFST+1,sp)
1303  001d 2706          	jreq	L304
1304                     ; 284         UART1->CR5 |= UART1_CR5_IRLP;
1306  001f 72145238      	bset	21048,#2
1308  0023 2004          	jra	L504
1309  0025               L304:
1310                     ; 288         UART1->CR5 &= ((uint8_t)~UART1_CR5_IRLP);
1312  0025 72155238      	bres	21048,#2
1313  0029               L504:
1314                     ; 290 }
1317  0029 84            	pop	a
1318  002a 81            	ret
1354                     ; 298 void UART1_IrDACmd(FunctionalState NewState)
1354                     ; 299 {
1355                     .text:	section	.text,new
1356  0000               _UART1_IrDACmd:
1358  0000 88            	push	a
1359       00000000      OFST:	set	0
1362                     ; 302     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1364  0001 4d            	tnz	a
1365  0002 2704          	jreq	L421
1366  0004 a101          	cp	a,#1
1367  0006 2603          	jrne	L221
1368  0008               L421:
1369  0008 4f            	clr	a
1370  0009 2010          	jra	L621
1371  000b               L221:
1372  000b ae012e        	ldw	x,#302
1373  000e 89            	pushw	x
1374  000f ae0000        	ldw	x,#0
1375  0012 89            	pushw	x
1376  0013 ae0008        	ldw	x,#L561
1377  0016 cd0000        	call	_assert_failed
1379  0019 5b04          	addw	sp,#4
1380  001b               L621:
1381                     ; 304     if (NewState != DISABLE)
1383  001b 0d01          	tnz	(OFST+1,sp)
1384  001d 2706          	jreq	L524
1385                     ; 307         UART1->CR5 |= UART1_CR5_IREN;
1387  001f 72125238      	bset	21048,#1
1389  0023 2004          	jra	L724
1390  0025               L524:
1391                     ; 312         UART1->CR5 &= ((uint8_t)~UART1_CR5_IREN);
1393  0025 72135238      	bres	21048,#1
1394  0029               L724:
1395                     ; 314 }
1398  0029 84            	pop	a
1399  002a 81            	ret
1459                     ; 323 void UART1_LINBreakDetectionConfig(UART1_LINBreakDetectionLength_TypeDef UART1_LINBreakDetectionLength)
1459                     ; 324 {
1460                     .text:	section	.text,new
1461  0000               _UART1_LINBreakDetectionConfig:
1463  0000 88            	push	a
1464       00000000      OFST:	set	0
1467                     ; 325     assert_param(IS_UART1_LINBREAKDETECTIONLENGTH_OK(UART1_LINBreakDetectionLength));
1469  0001 4d            	tnz	a
1470  0002 2704          	jreq	L431
1471  0004 a101          	cp	a,#1
1472  0006 2603          	jrne	L231
1473  0008               L431:
1474  0008 4f            	clr	a
1475  0009 2010          	jra	L631
1476  000b               L231:
1477  000b ae0145        	ldw	x,#325
1478  000e 89            	pushw	x
1479  000f ae0000        	ldw	x,#0
1480  0012 89            	pushw	x
1481  0013 ae0008        	ldw	x,#L561
1482  0016 cd0000        	call	_assert_failed
1484  0019 5b04          	addw	sp,#4
1485  001b               L631:
1486                     ; 327     if (UART1_LINBreakDetectionLength != UART1_LINBREAKDETECTIONLENGTH_10BITS)
1488  001b 0d01          	tnz	(OFST+1,sp)
1489  001d 2706          	jreq	L754
1490                     ; 329         UART1->CR4 |= UART1_CR4_LBDL;
1492  001f 721a5237      	bset	21047,#5
1494  0023 2004          	jra	L164
1495  0025               L754:
1496                     ; 333         UART1->CR4 &= ((uint8_t)~UART1_CR4_LBDL);
1498  0025 721b5237      	bres	21047,#5
1499  0029               L164:
1500                     ; 335 }
1503  0029 84            	pop	a
1504  002a 81            	ret
1540                     ; 343 void UART1_LINCmd(FunctionalState NewState)
1540                     ; 344 {
1541                     .text:	section	.text,new
1542  0000               _UART1_LINCmd:
1544  0000 88            	push	a
1545       00000000      OFST:	set	0
1548                     ; 345     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1550  0001 4d            	tnz	a
1551  0002 2704          	jreq	L441
1552  0004 a101          	cp	a,#1
1553  0006 2603          	jrne	L241
1554  0008               L441:
1555  0008 4f            	clr	a
1556  0009 2010          	jra	L641
1557  000b               L241:
1558  000b ae0159        	ldw	x,#345
1559  000e 89            	pushw	x
1560  000f ae0000        	ldw	x,#0
1561  0012 89            	pushw	x
1562  0013 ae0008        	ldw	x,#L561
1563  0016 cd0000        	call	_assert_failed
1565  0019 5b04          	addw	sp,#4
1566  001b               L641:
1567                     ; 347     if (NewState != DISABLE)
1569  001b 0d01          	tnz	(OFST+1,sp)
1570  001d 2706          	jreq	L105
1571                     ; 350         UART1->CR3 |= UART1_CR3_LINEN;
1573  001f 721c5236      	bset	21046,#6
1575  0023 2004          	jra	L305
1576  0025               L105:
1577                     ; 355         UART1->CR3 &= ((uint8_t)~UART1_CR3_LINEN);
1579  0025 721d5236      	bres	21046,#6
1580  0029               L305:
1581                     ; 357 }
1584  0029 84            	pop	a
1585  002a 81            	ret
1621                     ; 364 void UART1_SmartCardCmd(FunctionalState NewState)
1621                     ; 365 {
1622                     .text:	section	.text,new
1623  0000               _UART1_SmartCardCmd:
1625  0000 88            	push	a
1626       00000000      OFST:	set	0
1629                     ; 366     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1631  0001 4d            	tnz	a
1632  0002 2704          	jreq	L451
1633  0004 a101          	cp	a,#1
1634  0006 2603          	jrne	L251
1635  0008               L451:
1636  0008 4f            	clr	a
1637  0009 2010          	jra	L651
1638  000b               L251:
1639  000b ae016e        	ldw	x,#366
1640  000e 89            	pushw	x
1641  000f ae0000        	ldw	x,#0
1642  0012 89            	pushw	x
1643  0013 ae0008        	ldw	x,#L561
1644  0016 cd0000        	call	_assert_failed
1646  0019 5b04          	addw	sp,#4
1647  001b               L651:
1648                     ; 368     if (NewState != DISABLE)
1650  001b 0d01          	tnz	(OFST+1,sp)
1651  001d 2706          	jreq	L325
1652                     ; 371         UART1->CR5 |= UART1_CR5_SCEN;
1654  001f 721a5238      	bset	21048,#5
1656  0023 2004          	jra	L525
1657  0025               L325:
1658                     ; 376         UART1->CR5 &= ((uint8_t)(~UART1_CR5_SCEN));
1660  0025 721b5238      	bres	21048,#5
1661  0029               L525:
1662                     ; 378 }
1665  0029 84            	pop	a
1666  002a 81            	ret
1703                     ; 387 void UART1_SmartCardNACKCmd(FunctionalState NewState)
1703                     ; 388 {
1704                     .text:	section	.text,new
1705  0000               _UART1_SmartCardNACKCmd:
1707  0000 88            	push	a
1708       00000000      OFST:	set	0
1711                     ; 389     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1713  0001 4d            	tnz	a
1714  0002 2704          	jreq	L461
1715  0004 a101          	cp	a,#1
1716  0006 2603          	jrne	L261
1717  0008               L461:
1718  0008 4f            	clr	a
1719  0009 2010          	jra	L661
1720  000b               L261:
1721  000b ae0185        	ldw	x,#389
1722  000e 89            	pushw	x
1723  000f ae0000        	ldw	x,#0
1724  0012 89            	pushw	x
1725  0013 ae0008        	ldw	x,#L561
1726  0016 cd0000        	call	_assert_failed
1728  0019 5b04          	addw	sp,#4
1729  001b               L661:
1730                     ; 391     if (NewState != DISABLE)
1732  001b 0d01          	tnz	(OFST+1,sp)
1733  001d 2706          	jreq	L545
1734                     ; 394         UART1->CR5 |= UART1_CR5_NACK;
1736  001f 72185238      	bset	21048,#4
1738  0023 2004          	jra	L745
1739  0025               L545:
1740                     ; 399         UART1->CR5 &= ((uint8_t)~(UART1_CR5_NACK));
1742  0025 72195238      	bres	21048,#4
1743  0029               L745:
1744                     ; 401 }
1747  0029 84            	pop	a
1748  002a 81            	ret
1806                     ; 409 void UART1_WakeUpConfig(UART1_WakeUp_TypeDef UART1_WakeUp)
1806                     ; 410 {
1807                     .text:	section	.text,new
1808  0000               _UART1_WakeUpConfig:
1810  0000 88            	push	a
1811       00000000      OFST:	set	0
1814                     ; 411     assert_param(IS_UART1_WAKEUP_OK(UART1_WakeUp));
1816  0001 4d            	tnz	a
1817  0002 2704          	jreq	L471
1818  0004 a108          	cp	a,#8
1819  0006 2603          	jrne	L271
1820  0008               L471:
1821  0008 4f            	clr	a
1822  0009 2010          	jra	L671
1823  000b               L271:
1824  000b ae019b        	ldw	x,#411
1825  000e 89            	pushw	x
1826  000f ae0000        	ldw	x,#0
1827  0012 89            	pushw	x
1828  0013 ae0008        	ldw	x,#L561
1829  0016 cd0000        	call	_assert_failed
1831  0019 5b04          	addw	sp,#4
1832  001b               L671:
1833                     ; 413     UART1->CR1 &= ((uint8_t)~UART1_CR1_WAKE);
1835  001b 72175234      	bres	21044,#3
1836                     ; 414     UART1->CR1 |= (uint8_t)UART1_WakeUp;
1838  001f c65234        	ld	a,21044
1839  0022 1a01          	or	a,(OFST+1,sp)
1840  0024 c75234        	ld	21044,a
1841                     ; 415 }
1844  0027 84            	pop	a
1845  0028 81            	ret
1882                     ; 422 void UART1_ReceiverWakeUpCmd(FunctionalState NewState)
1882                     ; 423 {
1883                     .text:	section	.text,new
1884  0000               _UART1_ReceiverWakeUpCmd:
1886  0000 88            	push	a
1887       00000000      OFST:	set	0
1890                     ; 424     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1892  0001 4d            	tnz	a
1893  0002 2704          	jreq	L402
1894  0004 a101          	cp	a,#1
1895  0006 2603          	jrne	L202
1896  0008               L402:
1897  0008 4f            	clr	a
1898  0009 2010          	jra	L602
1899  000b               L202:
1900  000b ae01a8        	ldw	x,#424
1901  000e 89            	pushw	x
1902  000f ae0000        	ldw	x,#0
1903  0012 89            	pushw	x
1904  0013 ae0008        	ldw	x,#L561
1905  0016 cd0000        	call	_assert_failed
1907  0019 5b04          	addw	sp,#4
1908  001b               L602:
1909                     ; 426     if (NewState != DISABLE)
1911  001b 0d01          	tnz	(OFST+1,sp)
1912  001d 2706          	jreq	L516
1913                     ; 429         UART1->CR2 |= UART1_CR2_RWU;
1915  001f 72125235      	bset	21045,#1
1917  0023 2004          	jra	L716
1918  0025               L516:
1919                     ; 434         UART1->CR2 &= ((uint8_t)~UART1_CR2_RWU);
1921  0025 72135235      	bres	21045,#1
1922  0029               L716:
1923                     ; 436 }
1926  0029 84            	pop	a
1927  002a 81            	ret
1950                     ; 443 uint8_t UART1_ReceiveData8(void)
1950                     ; 444 {
1951                     .text:	section	.text,new
1952  0000               _UART1_ReceiveData8:
1956                     ; 445     return ((uint8_t)UART1->DR);
1958  0000 c65231        	ld	a,21041
1961  0003 81            	ret
1993                     ; 453 uint16_t UART1_ReceiveData9(void)
1993                     ; 454 {
1994                     .text:	section	.text,new
1995  0000               _UART1_ReceiveData9:
1997  0000 89            	pushw	x
1998       00000002      OFST:	set	2
2001                     ; 455   uint16_t temp = 0;
2003                     ; 457   temp = (uint16_t)(((uint16_t)( (uint16_t)UART1->CR1 & (uint16_t)UART1_CR1_R8)) << 1);
2005  0001 c65234        	ld	a,21044
2006  0004 5f            	clrw	x
2007  0005 a480          	and	a,#128
2008  0007 5f            	clrw	x
2009  0008 02            	rlwa	x,a
2010  0009 58            	sllw	x
2011  000a 1f01          	ldw	(OFST-1,sp),x
2013                     ; 458   return (uint16_t)( (((uint16_t) UART1->DR) | temp ) & ((uint16_t)0x01FF));
2015  000c c65231        	ld	a,21041
2016  000f 5f            	clrw	x
2017  0010 97            	ld	xl,a
2018  0011 01            	rrwa	x,a
2019  0012 1a02          	or	a,(OFST+0,sp)
2020  0014 01            	rrwa	x,a
2021  0015 1a01          	or	a,(OFST-1,sp)
2022  0017 01            	rrwa	x,a
2023  0018 01            	rrwa	x,a
2024  0019 a4ff          	and	a,#255
2025  001b 01            	rrwa	x,a
2026  001c a401          	and	a,#1
2027  001e 01            	rrwa	x,a
2030  001f 5b02          	addw	sp,#2
2031  0021 81            	ret
2063                     ; 466 void UART1_SendData8(uint8_t Data)
2063                     ; 467 {
2064                     .text:	section	.text,new
2065  0000               _UART1_SendData8:
2069                     ; 469     UART1->DR = Data;
2071  0000 c75231        	ld	21041,a
2072                     ; 470 }
2075  0003 81            	ret
2107                     ; 478 void UART1_SendData9(uint16_t Data)
2107                     ; 479 {
2108                     .text:	section	.text,new
2109  0000               _UART1_SendData9:
2111  0000 89            	pushw	x
2112       00000000      OFST:	set	0
2115                     ; 481     UART1->CR1 &= ((uint8_t)~UART1_CR1_T8);
2117  0001 721d5234      	bres	21044,#6
2118                     ; 483     UART1->CR1 |= (uint8_t)(((uint8_t)(Data >> 2)) & UART1_CR1_T8);
2120  0005 54            	srlw	x
2121  0006 54            	srlw	x
2122  0007 9f            	ld	a,xl
2123  0008 a440          	and	a,#64
2124  000a ca5234        	or	a,21044
2125  000d c75234        	ld	21044,a
2126                     ; 485     UART1->DR   = (uint8_t)(Data);
2128  0010 7b02          	ld	a,(OFST+2,sp)
2129  0012 c75231        	ld	21041,a
2130                     ; 486 }
2133  0015 85            	popw	x
2134  0016 81            	ret
2157                     ; 493 void UART1_SendBreak(void)
2157                     ; 494 {
2158                     .text:	section	.text,new
2159  0000               _UART1_SendBreak:
2163                     ; 495     UART1->CR2 |= UART1_CR2_SBK;
2165  0000 72105235      	bset	21045,#0
2166                     ; 496 }
2169  0004 81            	ret
2202                     ; 503 void UART1_SetAddress(uint8_t UART1_Address)
2202                     ; 504 {
2203                     .text:	section	.text,new
2204  0000               _UART1_SetAddress:
2206  0000 88            	push	a
2207       00000000      OFST:	set	0
2210                     ; 506     assert_param(IS_UART1_ADDRESS_OK(UART1_Address));
2212  0001 a110          	cp	a,#16
2213  0003 2403          	jruge	L422
2214  0005 4f            	clr	a
2215  0006 2010          	jra	L622
2216  0008               L422:
2217  0008 ae01fa        	ldw	x,#506
2218  000b 89            	pushw	x
2219  000c ae0000        	ldw	x,#0
2220  000f 89            	pushw	x
2221  0010 ae0008        	ldw	x,#L561
2222  0013 cd0000        	call	_assert_failed
2224  0016 5b04          	addw	sp,#4
2225  0018               L622:
2226                     ; 509     UART1->CR4 &= ((uint8_t)~UART1_CR4_ADD);
2228  0018 c65237        	ld	a,21047
2229  001b a4f0          	and	a,#240
2230  001d c75237        	ld	21047,a
2231                     ; 511     UART1->CR4 |= UART1_Address;
2233  0020 c65237        	ld	a,21047
2234  0023 1a01          	or	a,(OFST+1,sp)
2235  0025 c75237        	ld	21047,a
2236                     ; 512 }
2239  0028 84            	pop	a
2240  0029 81            	ret
2272                     ; 520 void UART1_SetGuardTime(uint8_t UART1_GuardTime)
2272                     ; 521 {
2273                     .text:	section	.text,new
2274  0000               _UART1_SetGuardTime:
2278                     ; 523     UART1->GTR = UART1_GuardTime;
2280  0000 c75239        	ld	21049,a
2281                     ; 524 }
2284  0003 81            	ret
2316                     ; 548 void UART1_SetPrescaler(uint8_t UART1_Prescaler)
2316                     ; 549 {
2317                     .text:	section	.text,new
2318  0000               _UART1_SetPrescaler:
2322                     ; 551     UART1->PSCR = UART1_Prescaler;
2324  0000 c7523a        	ld	21050,a
2325                     ; 552 }
2328  0003 81            	ret
2472                     ; 560 FlagStatus UART1_GetFlagStatus(UART1_Flag_TypeDef UART1_FLAG)
2472                     ; 561 {
2473                     .text:	section	.text,new
2474  0000               _UART1_GetFlagStatus:
2476  0000 89            	pushw	x
2477  0001 88            	push	a
2478       00000001      OFST:	set	1
2481                     ; 562     FlagStatus status = RESET;
2483                     ; 565     assert_param(IS_UART1_FLAG_OK(UART1_FLAG));
2485  0002 a30080        	cpw	x,#128
2486  0005 272d          	jreq	L042
2487  0007 a30040        	cpw	x,#64
2488  000a 2728          	jreq	L042
2489  000c a30020        	cpw	x,#32
2490  000f 2723          	jreq	L042
2491  0011 a30010        	cpw	x,#16
2492  0014 271e          	jreq	L042
2493  0016 a30008        	cpw	x,#8
2494  0019 2719          	jreq	L042
2495  001b a30004        	cpw	x,#4
2496  001e 2714          	jreq	L042
2497  0020 a30002        	cpw	x,#2
2498  0023 270f          	jreq	L042
2499  0025 a30001        	cpw	x,#1
2500  0028 270a          	jreq	L042
2501  002a a30101        	cpw	x,#257
2502  002d 2705          	jreq	L042
2503  002f a30210        	cpw	x,#528
2504  0032 2603          	jrne	L632
2505  0034               L042:
2506  0034 4f            	clr	a
2507  0035 2010          	jra	L242
2508  0037               L632:
2509  0037 ae0235        	ldw	x,#565
2510  003a 89            	pushw	x
2511  003b ae0000        	ldw	x,#0
2512  003e 89            	pushw	x
2513  003f ae0008        	ldw	x,#L561
2514  0042 cd0000        	call	_assert_failed
2516  0045 5b04          	addw	sp,#4
2517  0047               L242:
2518                     ; 569     if (UART1_FLAG == UART1_FLAG_LBDF)
2520  0047 1e02          	ldw	x,(OFST+1,sp)
2521  0049 a30210        	cpw	x,#528
2522  004c 2611          	jrne	L3301
2523                     ; 571         if ((UART1->CR4 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
2525  004e c65237        	ld	a,21047
2526  0051 1503          	bcp	a,(OFST+2,sp)
2527  0053 2706          	jreq	L5301
2528                     ; 574             status = SET;
2530  0055 a601          	ld	a,#1
2531  0057 6b01          	ld	(OFST+0,sp),a
2534  0059 202b          	jra	L1401
2535  005b               L5301:
2536                     ; 579             status = RESET;
2538  005b 0f01          	clr	(OFST+0,sp)
2540  005d 2027          	jra	L1401
2541  005f               L3301:
2542                     ; 582     else if (UART1_FLAG == UART1_FLAG_SBK)
2544  005f 1e02          	ldw	x,(OFST+1,sp)
2545  0061 a30101        	cpw	x,#257
2546  0064 2611          	jrne	L3401
2547                     ; 584         if ((UART1->CR2 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
2549  0066 c65235        	ld	a,21045
2550  0069 1503          	bcp	a,(OFST+2,sp)
2551  006b 2706          	jreq	L5401
2552                     ; 587             status = SET;
2554  006d a601          	ld	a,#1
2555  006f 6b01          	ld	(OFST+0,sp),a
2558  0071 2013          	jra	L1401
2559  0073               L5401:
2560                     ; 592             status = RESET;
2562  0073 0f01          	clr	(OFST+0,sp)
2564  0075 200f          	jra	L1401
2565  0077               L3401:
2566                     ; 597         if ((UART1->SR & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
2568  0077 c65230        	ld	a,21040
2569  007a 1503          	bcp	a,(OFST+2,sp)
2570  007c 2706          	jreq	L3501
2571                     ; 600             status = SET;
2573  007e a601          	ld	a,#1
2574  0080 6b01          	ld	(OFST+0,sp),a
2577  0082 2002          	jra	L1401
2578  0084               L3501:
2579                     ; 605             status = RESET;
2581  0084 0f01          	clr	(OFST+0,sp)
2583  0086               L1401:
2584                     ; 609     return status;
2586  0086 7b01          	ld	a,(OFST+0,sp)
2589  0088 5b03          	addw	sp,#3
2590  008a 81            	ret
2626                     ; 639 void UART1_ClearFlag(UART1_Flag_TypeDef UART1_FLAG)
2626                     ; 640 {
2627                     .text:	section	.text,new
2628  0000               _UART1_ClearFlag:
2630  0000 89            	pushw	x
2631       00000000      OFST:	set	0
2634                     ; 641     assert_param(IS_UART1_CLEAR_FLAG_OK(UART1_FLAG));
2636  0001 a30020        	cpw	x,#32
2637  0004 2705          	jreq	L052
2638  0006 a30210        	cpw	x,#528
2639  0009 2603          	jrne	L642
2640  000b               L052:
2641  000b 4f            	clr	a
2642  000c 2010          	jra	L252
2643  000e               L642:
2644  000e ae0281        	ldw	x,#641
2645  0011 89            	pushw	x
2646  0012 ae0000        	ldw	x,#0
2647  0015 89            	pushw	x
2648  0016 ae0008        	ldw	x,#L561
2649  0019 cd0000        	call	_assert_failed
2651  001c 5b04          	addw	sp,#4
2652  001e               L252:
2653                     ; 644     if (UART1_FLAG == UART1_FLAG_RXNE)
2655  001e 1e01          	ldw	x,(OFST+1,sp)
2656  0020 a30020        	cpw	x,#32
2657  0023 2606          	jrne	L5701
2658                     ; 646         UART1->SR = (uint8_t)~(UART1_SR_RXNE);
2660  0025 35df5230      	mov	21040,#223
2662  0029 2004          	jra	L7701
2663  002b               L5701:
2664                     ; 651         UART1->CR4 &= (uint8_t)~(UART1_CR4_LBDF);
2666  002b 72195237      	bres	21047,#4
2667  002f               L7701:
2668                     ; 653 }
2671  002f 85            	popw	x
2672  0030 81            	ret
2747                     ; 668 ITStatus UART1_GetITStatus(UART1_IT_TypeDef UART1_IT)
2747                     ; 669 {
2748                     .text:	section	.text,new
2749  0000               _UART1_GetITStatus:
2751  0000 89            	pushw	x
2752  0001 89            	pushw	x
2753       00000002      OFST:	set	2
2756                     ; 670     ITStatus pendingbitstatus = RESET;
2758                     ; 671     uint8_t itpos = 0;
2760                     ; 672     uint8_t itmask1 = 0;
2762                     ; 673     uint8_t itmask2 = 0;
2764                     ; 674     uint8_t enablestatus = 0;
2766                     ; 677     assert_param(IS_UART1_GET_IT_OK(UART1_IT));
2768  0002 a30277        	cpw	x,#631
2769  0005 271e          	jreq	L062
2770  0007 a30266        	cpw	x,#614
2771  000a 2719          	jreq	L062
2772  000c a30255        	cpw	x,#597
2773  000f 2714          	jreq	L062
2774  0011 a30244        	cpw	x,#580
2775  0014 270f          	jreq	L062
2776  0016 a30235        	cpw	x,#565
2777  0019 270a          	jreq	L062
2778  001b a30346        	cpw	x,#838
2779  001e 2705          	jreq	L062
2780  0020 a30100        	cpw	x,#256
2781  0023 2603          	jrne	L652
2782  0025               L062:
2783  0025 4f            	clr	a
2784  0026 2010          	jra	L262
2785  0028               L652:
2786  0028 ae02a5        	ldw	x,#677
2787  002b 89            	pushw	x
2788  002c ae0000        	ldw	x,#0
2789  002f 89            	pushw	x
2790  0030 ae0008        	ldw	x,#L561
2791  0033 cd0000        	call	_assert_failed
2793  0036 5b04          	addw	sp,#4
2794  0038               L262:
2795                     ; 680     itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART1_IT & (uint8_t)0x0F));
2797  0038 7b04          	ld	a,(OFST+2,sp)
2798  003a a40f          	and	a,#15
2799  003c 5f            	clrw	x
2800  003d 97            	ld	xl,a
2801  003e a601          	ld	a,#1
2802  0040 5d            	tnzw	x
2803  0041 2704          	jreq	L462
2804  0043               L662:
2805  0043 48            	sll	a
2806  0044 5a            	decw	x
2807  0045 26fc          	jrne	L662
2808  0047               L462:
2809  0047 6b01          	ld	(OFST-1,sp),a
2811                     ; 682     itmask1 = (uint8_t)((uint8_t)UART1_IT >> (uint8_t)4);
2813  0049 7b04          	ld	a,(OFST+2,sp)
2814  004b 4e            	swap	a
2815  004c a40f          	and	a,#15
2816  004e 6b02          	ld	(OFST+0,sp),a
2818                     ; 684     itmask2 = (uint8_t)((uint8_t)1 << itmask1);
2820  0050 7b02          	ld	a,(OFST+0,sp)
2821  0052 5f            	clrw	x
2822  0053 97            	ld	xl,a
2823  0054 a601          	ld	a,#1
2824  0056 5d            	tnzw	x
2825  0057 2704          	jreq	L072
2826  0059               L272:
2827  0059 48            	sll	a
2828  005a 5a            	decw	x
2829  005b 26fc          	jrne	L272
2830  005d               L072:
2831  005d 6b02          	ld	(OFST+0,sp),a
2833                     ; 688     if (UART1_IT == UART1_IT_PE)
2835  005f 1e03          	ldw	x,(OFST+1,sp)
2836  0061 a30100        	cpw	x,#256
2837  0064 261c          	jrne	L3311
2838                     ; 691         enablestatus = (uint8_t)((uint8_t)UART1->CR1 & itmask2);
2840  0066 c65234        	ld	a,21044
2841  0069 1402          	and	a,(OFST+0,sp)
2842  006b 6b02          	ld	(OFST+0,sp),a
2844                     ; 694         if (((UART1->SR & itpos) != (uint8_t)0x00) && enablestatus)
2846  006d c65230        	ld	a,21040
2847  0070 1501          	bcp	a,(OFST-1,sp)
2848  0072 270a          	jreq	L5311
2850  0074 0d02          	tnz	(OFST+0,sp)
2851  0076 2706          	jreq	L5311
2852                     ; 697             pendingbitstatus = SET;
2854  0078 a601          	ld	a,#1
2855  007a 6b02          	ld	(OFST+0,sp),a
2858  007c 2041          	jra	L1411
2859  007e               L5311:
2860                     ; 702             pendingbitstatus = RESET;
2862  007e 0f02          	clr	(OFST+0,sp)
2864  0080 203d          	jra	L1411
2865  0082               L3311:
2866                     ; 706     else if (UART1_IT == UART1_IT_LBDF)
2868  0082 1e03          	ldw	x,(OFST+1,sp)
2869  0084 a30346        	cpw	x,#838
2870  0087 261c          	jrne	L3411
2871                     ; 709         enablestatus = (uint8_t)((uint8_t)UART1->CR4 & itmask2);
2873  0089 c65237        	ld	a,21047
2874  008c 1402          	and	a,(OFST+0,sp)
2875  008e 6b02          	ld	(OFST+0,sp),a
2877                     ; 711         if (((UART1->CR4 & itpos) != (uint8_t)0x00) && enablestatus)
2879  0090 c65237        	ld	a,21047
2880  0093 1501          	bcp	a,(OFST-1,sp)
2881  0095 270a          	jreq	L5411
2883  0097 0d02          	tnz	(OFST+0,sp)
2884  0099 2706          	jreq	L5411
2885                     ; 714             pendingbitstatus = SET;
2887  009b a601          	ld	a,#1
2888  009d 6b02          	ld	(OFST+0,sp),a
2891  009f 201e          	jra	L1411
2892  00a1               L5411:
2893                     ; 719             pendingbitstatus = RESET;
2895  00a1 0f02          	clr	(OFST+0,sp)
2897  00a3 201a          	jra	L1411
2898  00a5               L3411:
2899                     ; 725         enablestatus = (uint8_t)((uint8_t)UART1->CR2 & itmask2);
2901  00a5 c65235        	ld	a,21045
2902  00a8 1402          	and	a,(OFST+0,sp)
2903  00aa 6b02          	ld	(OFST+0,sp),a
2905                     ; 727         if (((UART1->SR & itpos) != (uint8_t)0x00) && enablestatus)
2907  00ac c65230        	ld	a,21040
2908  00af 1501          	bcp	a,(OFST-1,sp)
2909  00b1 270a          	jreq	L3511
2911  00b3 0d02          	tnz	(OFST+0,sp)
2912  00b5 2706          	jreq	L3511
2913                     ; 730             pendingbitstatus = SET;
2915  00b7 a601          	ld	a,#1
2916  00b9 6b02          	ld	(OFST+0,sp),a
2919  00bb 2002          	jra	L1411
2920  00bd               L3511:
2921                     ; 735             pendingbitstatus = RESET;
2923  00bd 0f02          	clr	(OFST+0,sp)
2925  00bf               L1411:
2926                     ; 740     return  pendingbitstatus;
2928  00bf 7b02          	ld	a,(OFST+0,sp)
2931  00c1 5b04          	addw	sp,#4
2932  00c3 81            	ret
2969                     ; 768 void UART1_ClearITPendingBit(UART1_IT_TypeDef UART1_IT)
2969                     ; 769 {
2970                     .text:	section	.text,new
2971  0000               _UART1_ClearITPendingBit:
2973  0000 89            	pushw	x
2974       00000000      OFST:	set	0
2977                     ; 770     assert_param(IS_UART1_CLEAR_IT_OK(UART1_IT));
2979  0001 a30255        	cpw	x,#597
2980  0004 2705          	jreq	L003
2981  0006 a30346        	cpw	x,#838
2982  0009 2603          	jrne	L672
2983  000b               L003:
2984  000b 4f            	clr	a
2985  000c 2010          	jra	L203
2986  000e               L672:
2987  000e ae0302        	ldw	x,#770
2988  0011 89            	pushw	x
2989  0012 ae0000        	ldw	x,#0
2990  0015 89            	pushw	x
2991  0016 ae0008        	ldw	x,#L561
2992  0019 cd0000        	call	_assert_failed
2994  001c 5b04          	addw	sp,#4
2995  001e               L203:
2996                     ; 773     if (UART1_IT == UART1_IT_RXNE)
2998  001e 1e01          	ldw	x,(OFST+1,sp)
2999  0020 a30255        	cpw	x,#597
3000  0023 2606          	jrne	L5711
3001                     ; 775         UART1->SR = (uint8_t)~(UART1_SR_RXNE);
3003  0025 35df5230      	mov	21040,#223
3005  0029 2004          	jra	L7711
3006  002b               L5711:
3007                     ; 780         UART1->CR4 &= (uint8_t)~(UART1_CR4_LBDF);
3009  002b 72195237      	bres	21047,#4
3010  002f               L7711:
3011                     ; 782 }
3014  002f 85            	popw	x
3015  0030 81            	ret
3028                     	xdef	_UART1_ClearITPendingBit
3029                     	xdef	_UART1_GetITStatus
3030                     	xdef	_UART1_ClearFlag
3031                     	xdef	_UART1_GetFlagStatus
3032                     	xdef	_UART1_SetPrescaler
3033                     	xdef	_UART1_SetGuardTime
3034                     	xdef	_UART1_SetAddress
3035                     	xdef	_UART1_SendBreak
3036                     	xdef	_UART1_SendData9
3037                     	xdef	_UART1_SendData8
3038                     	xdef	_UART1_ReceiveData9
3039                     	xdef	_UART1_ReceiveData8
3040                     	xdef	_UART1_ReceiverWakeUpCmd
3041                     	xdef	_UART1_WakeUpConfig
3042                     	xdef	_UART1_SmartCardNACKCmd
3043                     	xdef	_UART1_SmartCardCmd
3044                     	xdef	_UART1_LINCmd
3045                     	xdef	_UART1_LINBreakDetectionConfig
3046                     	xdef	_UART1_IrDACmd
3047                     	xdef	_UART1_IrDAConfig
3048                     	xdef	_UART1_HalfDuplexCmd
3049                     	xdef	_UART1_ITConfig
3050                     	xdef	_UART1_Cmd
3051                     	xdef	_UART1_Init
3052                     	xdef	_UART1_DeInit
3053                     	xref	_assert_failed
3054                     	xref	_CLK_GetClockFreq
3055                     	switch	.const
3056  0008               L561:
3057  0008 7372635c7374  	dc.b	"src\stm8s_uart1.c",0
3058                     	xref.b	c_lreg
3059                     	xref.b	c_x
3079                     	xref	c_lsub
3080                     	xref	c_smul
3081                     	xref	c_ludv
3082                     	xref	c_rtol
3083                     	xref	c_llsh
3084                     	xref	c_lcmp
3085                     	xref	c_ltor
3086                     	end

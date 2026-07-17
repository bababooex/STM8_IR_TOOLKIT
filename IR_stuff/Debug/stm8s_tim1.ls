   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.13.3 - 22 May 2025
   3                     ; Generator (Limited) V4.6.6 - 07 Jan 2026
  44                     ; 52 void TIM1_DeInit(void)
  44                     ; 53 {
  46                     .text:	section	.text,new
  47  0000               _TIM1_DeInit:
  51                     ; 54     TIM1->CR1  = TIM1_CR1_RESET_VALUE;
  53  0000 725f5250      	clr	21072
  54                     ; 55     TIM1->CR2  = TIM1_CR2_RESET_VALUE;
  56  0004 725f5251      	clr	21073
  57                     ; 56     TIM1->SMCR = TIM1_SMCR_RESET_VALUE;
  59  0008 725f5252      	clr	21074
  60                     ; 57     TIM1->ETR  = TIM1_ETR_RESET_VALUE;
  62  000c 725f5253      	clr	21075
  63                     ; 58     TIM1->IER  = TIM1_IER_RESET_VALUE;
  65  0010 725f5254      	clr	21076
  66                     ; 59     TIM1->SR2  = TIM1_SR2_RESET_VALUE;
  68  0014 725f5256      	clr	21078
  69                     ; 61     TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
  71  0018 725f525c      	clr	21084
  72                     ; 62     TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
  74  001c 725f525d      	clr	21085
  75                     ; 64     TIM1->CCMR1 = 0x01;
  77  0020 35015258      	mov	21080,#1
  78                     ; 65     TIM1->CCMR2 = 0x01;
  80  0024 35015259      	mov	21081,#1
  81                     ; 66     TIM1->CCMR3 = 0x01;
  83  0028 3501525a      	mov	21082,#1
  84                     ; 67     TIM1->CCMR4 = 0x01;
  86  002c 3501525b      	mov	21083,#1
  87                     ; 69     TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
  89  0030 725f525c      	clr	21084
  90                     ; 70     TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
  92  0034 725f525d      	clr	21085
  93                     ; 71     TIM1->CCMR1 = TIM1_CCMR1_RESET_VALUE;
  95  0038 725f5258      	clr	21080
  96                     ; 72     TIM1->CCMR2 = TIM1_CCMR2_RESET_VALUE;
  98  003c 725f5259      	clr	21081
  99                     ; 73     TIM1->CCMR3 = TIM1_CCMR3_RESET_VALUE;
 101  0040 725f525a      	clr	21082
 102                     ; 74     TIM1->CCMR4 = TIM1_CCMR4_RESET_VALUE;
 104  0044 725f525b      	clr	21083
 105                     ; 75     TIM1->CNTRH = TIM1_CNTRH_RESET_VALUE;
 107  0048 725f525e      	clr	21086
 108                     ; 76     TIM1->CNTRL = TIM1_CNTRL_RESET_VALUE;
 110  004c 725f525f      	clr	21087
 111                     ; 77     TIM1->PSCRH = TIM1_PSCRH_RESET_VALUE;
 113  0050 725f5260      	clr	21088
 114                     ; 78     TIM1->PSCRL = TIM1_PSCRL_RESET_VALUE;
 116  0054 725f5261      	clr	21089
 117                     ; 79     TIM1->ARRH  = TIM1_ARRH_RESET_VALUE;
 119  0058 35ff5262      	mov	21090,#255
 120                     ; 80     TIM1->ARRL  = TIM1_ARRL_RESET_VALUE;
 122  005c 35ff5263      	mov	21091,#255
 123                     ; 81     TIM1->CCR1H = TIM1_CCR1H_RESET_VALUE;
 125  0060 725f5265      	clr	21093
 126                     ; 82     TIM1->CCR1L = TIM1_CCR1L_RESET_VALUE;
 128  0064 725f5266      	clr	21094
 129                     ; 83     TIM1->CCR2H = TIM1_CCR2H_RESET_VALUE;
 131  0068 725f5267      	clr	21095
 132                     ; 84     TIM1->CCR2L = TIM1_CCR2L_RESET_VALUE;
 134  006c 725f5268      	clr	21096
 135                     ; 85     TIM1->CCR3H = TIM1_CCR3H_RESET_VALUE;
 137  0070 725f5269      	clr	21097
 138                     ; 86     TIM1->CCR3L = TIM1_CCR3L_RESET_VALUE;
 140  0074 725f526a      	clr	21098
 141                     ; 87     TIM1->CCR4H = TIM1_CCR4H_RESET_VALUE;
 143  0078 725f526b      	clr	21099
 144                     ; 88     TIM1->CCR4L = TIM1_CCR4L_RESET_VALUE;
 146  007c 725f526c      	clr	21100
 147                     ; 89     TIM1->OISR  = TIM1_OISR_RESET_VALUE;
 149  0080 725f526f      	clr	21103
 150                     ; 90     TIM1->EGR   = 0x01; /* TIM1_EGR_UG */
 152  0084 35015257      	mov	21079,#1
 153                     ; 91     TIM1->DTR   = TIM1_DTR_RESET_VALUE;
 155  0088 725f526e      	clr	21102
 156                     ; 92     TIM1->BKR   = TIM1_BKR_RESET_VALUE;
 158  008c 725f526d      	clr	21101
 159                     ; 93     TIM1->RCR   = TIM1_RCR_RESET_VALUE;
 161  0090 725f5264      	clr	21092
 162                     ; 94     TIM1->SR1   = TIM1_SR1_RESET_VALUE;
 164  0094 725f5255      	clr	21077
 165                     ; 95 }
 168  0098 81            	ret
 272                     ; 105 void TIM1_TimeBaseInit(uint16_t TIM1_Prescaler,
 272                     ; 106                        TIM1_CounterMode_TypeDef TIM1_CounterMode,
 272                     ; 107                        uint16_t TIM1_Period,
 272                     ; 108                        uint8_t TIM1_RepetitionCounter)
 272                     ; 109 {
 273                     .text:	section	.text,new
 274  0000               _TIM1_TimeBaseInit:
 276  0000 89            	pushw	x
 277       00000000      OFST:	set	0
 280                     ; 112     assert_param(IS_TIM1_COUNTER_MODE_OK(TIM1_CounterMode));
 282  0001 0d05          	tnz	(OFST+5,sp)
 283  0003 2718          	jreq	L21
 284  0005 7b05          	ld	a,(OFST+5,sp)
 285  0007 a110          	cp	a,#16
 286  0009 2712          	jreq	L21
 287  000b 7b05          	ld	a,(OFST+5,sp)
 288  000d a120          	cp	a,#32
 289  000f 270c          	jreq	L21
 290  0011 7b05          	ld	a,(OFST+5,sp)
 291  0013 a140          	cp	a,#64
 292  0015 2706          	jreq	L21
 293  0017 7b05          	ld	a,(OFST+5,sp)
 294  0019 a160          	cp	a,#96
 295  001b 2603          	jrne	L01
 296  001d               L21:
 297  001d 4f            	clr	a
 298  001e 2010          	jra	L41
 299  0020               L01:
 300  0020 ae0070        	ldw	x,#112
 301  0023 89            	pushw	x
 302  0024 ae0000        	ldw	x,#0
 303  0027 89            	pushw	x
 304  0028 ae0000        	ldw	x,#L37
 305  002b cd0000        	call	_assert_failed
 307  002e 5b04          	addw	sp,#4
 308  0030               L41:
 309                     ; 115     TIM1->ARRH = (uint8_t)(TIM1_Period >> 8);
 311  0030 7b06          	ld	a,(OFST+6,sp)
 312  0032 c75262        	ld	21090,a
 313                     ; 116     TIM1->ARRL = (uint8_t)(TIM1_Period);
 315  0035 7b07          	ld	a,(OFST+7,sp)
 316  0037 c75263        	ld	21091,a
 317                     ; 119     TIM1->PSCRH = (uint8_t)(TIM1_Prescaler >> 8);
 319  003a 7b01          	ld	a,(OFST+1,sp)
 320  003c c75260        	ld	21088,a
 321                     ; 120     TIM1->PSCRL = (uint8_t)(TIM1_Prescaler);
 323  003f 7b02          	ld	a,(OFST+2,sp)
 324  0041 c75261        	ld	21089,a
 325                     ; 123     TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)(~(TIM1_CR1_CMS | TIM1_CR1_DIR)))
 325                     ; 124                            | (uint8_t)(TIM1_CounterMode));
 327  0044 c65250        	ld	a,21072
 328  0047 a48f          	and	a,#143
 329  0049 1a05          	or	a,(OFST+5,sp)
 330  004b c75250        	ld	21072,a
 331                     ; 127     TIM1->RCR = TIM1_RepetitionCounter;
 333  004e 7b08          	ld	a,(OFST+8,sp)
 334  0050 c75264        	ld	21092,a
 335                     ; 129 }
 338  0053 85            	popw	x
 339  0054 81            	ret
 623                     ; 150 void TIM1_OC1Init(TIM1_OCMode_TypeDef TIM1_OCMode,
 623                     ; 151                   TIM1_OutputState_TypeDef TIM1_OutputState,
 623                     ; 152                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
 623                     ; 153                   uint16_t TIM1_Pulse,
 623                     ; 154                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
 623                     ; 155                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
 623                     ; 156                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
 623                     ; 157                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
 623                     ; 158 {
 624                     .text:	section	.text,new
 625  0000               _TIM1_OC1Init:
 627  0000 89            	pushw	x
 628  0001 5203          	subw	sp,#3
 629       00000003      OFST:	set	3
 632                     ; 160     assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
 634  0003 9e            	ld	a,xh
 635  0004 4d            	tnz	a
 636  0005 2719          	jreq	L22
 637  0007 9e            	ld	a,xh
 638  0008 a110          	cp	a,#16
 639  000a 2714          	jreq	L22
 640  000c 9e            	ld	a,xh
 641  000d a120          	cp	a,#32
 642  000f 270f          	jreq	L22
 643  0011 9e            	ld	a,xh
 644  0012 a130          	cp	a,#48
 645  0014 270a          	jreq	L22
 646  0016 9e            	ld	a,xh
 647  0017 a160          	cp	a,#96
 648  0019 2705          	jreq	L22
 649  001b 9e            	ld	a,xh
 650  001c a170          	cp	a,#112
 651  001e 2603          	jrne	L02
 652  0020               L22:
 653  0020 4f            	clr	a
 654  0021 2010          	jra	L42
 655  0023               L02:
 656  0023 ae00a0        	ldw	x,#160
 657  0026 89            	pushw	x
 658  0027 ae0000        	ldw	x,#0
 659  002a 89            	pushw	x
 660  002b ae0000        	ldw	x,#L37
 661  002e cd0000        	call	_assert_failed
 663  0031 5b04          	addw	sp,#4
 664  0033               L42:
 665                     ; 161     assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
 667  0033 0d05          	tnz	(OFST+2,sp)
 668  0035 2706          	jreq	L03
 669  0037 7b05          	ld	a,(OFST+2,sp)
 670  0039 a111          	cp	a,#17
 671  003b 2603          	jrne	L62
 672  003d               L03:
 673  003d 4f            	clr	a
 674  003e 2010          	jra	L23
 675  0040               L62:
 676  0040 ae00a1        	ldw	x,#161
 677  0043 89            	pushw	x
 678  0044 ae0000        	ldw	x,#0
 679  0047 89            	pushw	x
 680  0048 ae0000        	ldw	x,#L37
 681  004b cd0000        	call	_assert_failed
 683  004e 5b04          	addw	sp,#4
 684  0050               L23:
 685                     ; 162     assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
 687  0050 0d08          	tnz	(OFST+5,sp)
 688  0052 2706          	jreq	L63
 689  0054 7b08          	ld	a,(OFST+5,sp)
 690  0056 a144          	cp	a,#68
 691  0058 2603          	jrne	L43
 692  005a               L63:
 693  005a 4f            	clr	a
 694  005b 2010          	jra	L04
 695  005d               L43:
 696  005d ae00a2        	ldw	x,#162
 697  0060 89            	pushw	x
 698  0061 ae0000        	ldw	x,#0
 699  0064 89            	pushw	x
 700  0065 ae0000        	ldw	x,#L37
 701  0068 cd0000        	call	_assert_failed
 703  006b 5b04          	addw	sp,#4
 704  006d               L04:
 705                     ; 163     assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
 707  006d 0d0b          	tnz	(OFST+8,sp)
 708  006f 2706          	jreq	L44
 709  0071 7b0b          	ld	a,(OFST+8,sp)
 710  0073 a122          	cp	a,#34
 711  0075 2603          	jrne	L24
 712  0077               L44:
 713  0077 4f            	clr	a
 714  0078 2010          	jra	L64
 715  007a               L24:
 716  007a ae00a3        	ldw	x,#163
 717  007d 89            	pushw	x
 718  007e ae0000        	ldw	x,#0
 719  0081 89            	pushw	x
 720  0082 ae0000        	ldw	x,#L37
 721  0085 cd0000        	call	_assert_failed
 723  0088 5b04          	addw	sp,#4
 724  008a               L64:
 725                     ; 164     assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
 727  008a 0d0c          	tnz	(OFST+9,sp)
 728  008c 2706          	jreq	L25
 729  008e 7b0c          	ld	a,(OFST+9,sp)
 730  0090 a188          	cp	a,#136
 731  0092 2603          	jrne	L05
 732  0094               L25:
 733  0094 4f            	clr	a
 734  0095 2010          	jra	L45
 735  0097               L05:
 736  0097 ae00a4        	ldw	x,#164
 737  009a 89            	pushw	x
 738  009b ae0000        	ldw	x,#0
 739  009e 89            	pushw	x
 740  009f ae0000        	ldw	x,#L37
 741  00a2 cd0000        	call	_assert_failed
 743  00a5 5b04          	addw	sp,#4
 744  00a7               L45:
 745                     ; 165     assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
 747  00a7 7b0d          	ld	a,(OFST+10,sp)
 748  00a9 a155          	cp	a,#85
 749  00ab 2704          	jreq	L06
 750  00ad 0d0d          	tnz	(OFST+10,sp)
 751  00af 2603          	jrne	L65
 752  00b1               L06:
 753  00b1 4f            	clr	a
 754  00b2 2010          	jra	L26
 755  00b4               L65:
 756  00b4 ae00a5        	ldw	x,#165
 757  00b7 89            	pushw	x
 758  00b8 ae0000        	ldw	x,#0
 759  00bb 89            	pushw	x
 760  00bc ae0000        	ldw	x,#L37
 761  00bf cd0000        	call	_assert_failed
 763  00c2 5b04          	addw	sp,#4
 764  00c4               L26:
 765                     ; 166     assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
 767  00c4 7b0e          	ld	a,(OFST+11,sp)
 768  00c6 a12a          	cp	a,#42
 769  00c8 2704          	jreq	L66
 770  00ca 0d0e          	tnz	(OFST+11,sp)
 771  00cc 2603          	jrne	L46
 772  00ce               L66:
 773  00ce 4f            	clr	a
 774  00cf 2010          	jra	L07
 775  00d1               L46:
 776  00d1 ae00a6        	ldw	x,#166
 777  00d4 89            	pushw	x
 778  00d5 ae0000        	ldw	x,#0
 779  00d8 89            	pushw	x
 780  00d9 ae0000        	ldw	x,#L37
 781  00dc cd0000        	call	_assert_failed
 783  00df 5b04          	addw	sp,#4
 784  00e1               L07:
 785                     ; 170     TIM1->CCER1 &= (uint8_t)(~( TIM1_CCER1_CC1E | TIM1_CCER1_CC1NE 
 785                     ; 171                                | TIM1_CCER1_CC1P | TIM1_CCER1_CC1NP));
 787  00e1 c6525c        	ld	a,21084
 788  00e4 a4f0          	and	a,#240
 789  00e6 c7525c        	ld	21084,a
 790                     ; 174   TIM1->CCER1 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER1_CC1E)
 790                     ; 175                                      | (uint8_t)(TIM1_OutputNState & TIM1_CCER1_CC1NE))
 790                     ; 176                            | (uint8_t)( (uint8_t)(TIM1_OCPolarity  & TIM1_CCER1_CC1P)
 790                     ; 177                                         | (uint8_t)(TIM1_OCNPolarity & TIM1_CCER1_CC1NP)));
 792  00e9 7b0c          	ld	a,(OFST+9,sp)
 793  00eb a408          	and	a,#8
 794  00ed 6b03          	ld	(OFST+0,sp),a
 796  00ef 7b0b          	ld	a,(OFST+8,sp)
 797  00f1 a402          	and	a,#2
 798  00f3 1a03          	or	a,(OFST+0,sp)
 799  00f5 6b02          	ld	(OFST-1,sp),a
 801  00f7 7b08          	ld	a,(OFST+5,sp)
 802  00f9 a404          	and	a,#4
 803  00fb 6b01          	ld	(OFST-2,sp),a
 805  00fd 7b05          	ld	a,(OFST+2,sp)
 806  00ff a401          	and	a,#1
 807  0101 1a01          	or	a,(OFST-2,sp)
 808  0103 1a02          	or	a,(OFST-1,sp)
 809  0105 ca525c        	or	a,21084
 810  0108 c7525c        	ld	21084,a
 811                     ; 180     TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM)) | 
 811                     ; 181                             (uint8_t)TIM1_OCMode);
 813  010b c65258        	ld	a,21080
 814  010e a48f          	and	a,#143
 815  0110 1a04          	or	a,(OFST+1,sp)
 816  0112 c75258        	ld	21080,a
 817                     ; 184     TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS1 | TIM1_OISR_OIS1N));
 819  0115 c6526f        	ld	a,21103
 820  0118 a4fc          	and	a,#252
 821  011a c7526f        	ld	21103,a
 822                     ; 186     TIM1->OISR |= (uint8_t)((uint8_t)( TIM1_OCIdleState & TIM1_OISR_OIS1 ) | 
 822                     ; 187                             (uint8_t)( TIM1_OCNIdleState & TIM1_OISR_OIS1N ));
 824  011d 7b0e          	ld	a,(OFST+11,sp)
 825  011f a402          	and	a,#2
 826  0121 6b03          	ld	(OFST+0,sp),a
 828  0123 7b0d          	ld	a,(OFST+10,sp)
 829  0125 a401          	and	a,#1
 830  0127 1a03          	or	a,(OFST+0,sp)
 831  0129 ca526f        	or	a,21103
 832  012c c7526f        	ld	21103,a
 833                     ; 190     TIM1->CCR1H = (uint8_t)(TIM1_Pulse >> 8);
 835  012f 7b09          	ld	a,(OFST+6,sp)
 836  0131 c75265        	ld	21093,a
 837                     ; 191     TIM1->CCR1L = (uint8_t)(TIM1_Pulse);
 839  0134 7b0a          	ld	a,(OFST+7,sp)
 840  0136 c75266        	ld	21094,a
 841                     ; 192 }
 844  0139 5b05          	addw	sp,#5
 845  013b 81            	ret
 948                     ; 213 void TIM1_OC2Init(TIM1_OCMode_TypeDef TIM1_OCMode,
 948                     ; 214                   TIM1_OutputState_TypeDef TIM1_OutputState,
 948                     ; 215                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
 948                     ; 216                   uint16_t TIM1_Pulse,
 948                     ; 217                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
 948                     ; 218                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
 948                     ; 219                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
 948                     ; 220                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
 948                     ; 221 {
 949                     .text:	section	.text,new
 950  0000               _TIM1_OC2Init:
 952  0000 89            	pushw	x
 953  0001 5203          	subw	sp,#3
 954       00000003      OFST:	set	3
 957                     ; 223     assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
 959  0003 9e            	ld	a,xh
 960  0004 4d            	tnz	a
 961  0005 2719          	jreq	L67
 962  0007 9e            	ld	a,xh
 963  0008 a110          	cp	a,#16
 964  000a 2714          	jreq	L67
 965  000c 9e            	ld	a,xh
 966  000d a120          	cp	a,#32
 967  000f 270f          	jreq	L67
 968  0011 9e            	ld	a,xh
 969  0012 a130          	cp	a,#48
 970  0014 270a          	jreq	L67
 971  0016 9e            	ld	a,xh
 972  0017 a160          	cp	a,#96
 973  0019 2705          	jreq	L67
 974  001b 9e            	ld	a,xh
 975  001c a170          	cp	a,#112
 976  001e 2603          	jrne	L47
 977  0020               L67:
 978  0020 4f            	clr	a
 979  0021 2010          	jra	L001
 980  0023               L47:
 981  0023 ae00df        	ldw	x,#223
 982  0026 89            	pushw	x
 983  0027 ae0000        	ldw	x,#0
 984  002a 89            	pushw	x
 985  002b ae0000        	ldw	x,#L37
 986  002e cd0000        	call	_assert_failed
 988  0031 5b04          	addw	sp,#4
 989  0033               L001:
 990                     ; 224     assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
 992  0033 0d05          	tnz	(OFST+2,sp)
 993  0035 2706          	jreq	L401
 994  0037 7b05          	ld	a,(OFST+2,sp)
 995  0039 a111          	cp	a,#17
 996  003b 2603          	jrne	L201
 997  003d               L401:
 998  003d 4f            	clr	a
 999  003e 2010          	jra	L601
1000  0040               L201:
1001  0040 ae00e0        	ldw	x,#224
1002  0043 89            	pushw	x
1003  0044 ae0000        	ldw	x,#0
1004  0047 89            	pushw	x
1005  0048 ae0000        	ldw	x,#L37
1006  004b cd0000        	call	_assert_failed
1008  004e 5b04          	addw	sp,#4
1009  0050               L601:
1010                     ; 225     assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
1012  0050 0d08          	tnz	(OFST+5,sp)
1013  0052 2706          	jreq	L211
1014  0054 7b08          	ld	a,(OFST+5,sp)
1015  0056 a144          	cp	a,#68
1016  0058 2603          	jrne	L011
1017  005a               L211:
1018  005a 4f            	clr	a
1019  005b 2010          	jra	L411
1020  005d               L011:
1021  005d ae00e1        	ldw	x,#225
1022  0060 89            	pushw	x
1023  0061 ae0000        	ldw	x,#0
1024  0064 89            	pushw	x
1025  0065 ae0000        	ldw	x,#L37
1026  0068 cd0000        	call	_assert_failed
1028  006b 5b04          	addw	sp,#4
1029  006d               L411:
1030                     ; 226     assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
1032  006d 0d0b          	tnz	(OFST+8,sp)
1033  006f 2706          	jreq	L021
1034  0071 7b0b          	ld	a,(OFST+8,sp)
1035  0073 a122          	cp	a,#34
1036  0075 2603          	jrne	L611
1037  0077               L021:
1038  0077 4f            	clr	a
1039  0078 2010          	jra	L221
1040  007a               L611:
1041  007a ae00e2        	ldw	x,#226
1042  007d 89            	pushw	x
1043  007e ae0000        	ldw	x,#0
1044  0081 89            	pushw	x
1045  0082 ae0000        	ldw	x,#L37
1046  0085 cd0000        	call	_assert_failed
1048  0088 5b04          	addw	sp,#4
1049  008a               L221:
1050                     ; 227     assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
1052  008a 0d0c          	tnz	(OFST+9,sp)
1053  008c 2706          	jreq	L621
1054  008e 7b0c          	ld	a,(OFST+9,sp)
1055  0090 a188          	cp	a,#136
1056  0092 2603          	jrne	L421
1057  0094               L621:
1058  0094 4f            	clr	a
1059  0095 2010          	jra	L031
1060  0097               L421:
1061  0097 ae00e3        	ldw	x,#227
1062  009a 89            	pushw	x
1063  009b ae0000        	ldw	x,#0
1064  009e 89            	pushw	x
1065  009f ae0000        	ldw	x,#L37
1066  00a2 cd0000        	call	_assert_failed
1068  00a5 5b04          	addw	sp,#4
1069  00a7               L031:
1070                     ; 228     assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
1072  00a7 7b0d          	ld	a,(OFST+10,sp)
1073  00a9 a155          	cp	a,#85
1074  00ab 2704          	jreq	L431
1075  00ad 0d0d          	tnz	(OFST+10,sp)
1076  00af 2603          	jrne	L231
1077  00b1               L431:
1078  00b1 4f            	clr	a
1079  00b2 2010          	jra	L631
1080  00b4               L231:
1081  00b4 ae00e4        	ldw	x,#228
1082  00b7 89            	pushw	x
1083  00b8 ae0000        	ldw	x,#0
1084  00bb 89            	pushw	x
1085  00bc ae0000        	ldw	x,#L37
1086  00bf cd0000        	call	_assert_failed
1088  00c2 5b04          	addw	sp,#4
1089  00c4               L631:
1090                     ; 229     assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
1092  00c4 7b0e          	ld	a,(OFST+11,sp)
1093  00c6 a12a          	cp	a,#42
1094  00c8 2704          	jreq	L241
1095  00ca 0d0e          	tnz	(OFST+11,sp)
1096  00cc 2603          	jrne	L041
1097  00ce               L241:
1098  00ce 4f            	clr	a
1099  00cf 2010          	jra	L441
1100  00d1               L041:
1101  00d1 ae00e5        	ldw	x,#229
1102  00d4 89            	pushw	x
1103  00d5 ae0000        	ldw	x,#0
1104  00d8 89            	pushw	x
1105  00d9 ae0000        	ldw	x,#L37
1106  00dc cd0000        	call	_assert_failed
1108  00df 5b04          	addw	sp,#4
1109  00e1               L441:
1110                     ; 233     TIM1->CCER1 &= (uint8_t)(~( TIM1_CCER1_CC2E | TIM1_CCER1_CC2NE | 
1110                     ; 234                                 TIM1_CCER1_CC2P | TIM1_CCER1_CC2NP));
1112  00e1 c6525c        	ld	a,21084
1113  00e4 a40f          	and	a,#15
1114  00e6 c7525c        	ld	21084,a
1115                     ; 238     TIM1->CCER1 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER1_CC2E  ) | 
1115                     ; 239                              (uint8_t)(TIM1_OutputNState & TIM1_CCER1_CC2NE )) | 
1115                     ; 240                              (uint8_t)((uint8_t)(TIM1_OCPolarity  & TIM1_CCER1_CC2P  ) | 
1115                     ; 241                              (uint8_t)(TIM1_OCNPolarity & TIM1_CCER1_CC2NP )));
1117  00e9 7b0c          	ld	a,(OFST+9,sp)
1118  00eb a480          	and	a,#128
1119  00ed 6b03          	ld	(OFST+0,sp),a
1121  00ef 7b0b          	ld	a,(OFST+8,sp)
1122  00f1 a420          	and	a,#32
1123  00f3 1a03          	or	a,(OFST+0,sp)
1124  00f5 6b02          	ld	(OFST-1,sp),a
1126  00f7 7b08          	ld	a,(OFST+5,sp)
1127  00f9 a440          	and	a,#64
1128  00fb 6b01          	ld	(OFST-2,sp),a
1130  00fd 7b05          	ld	a,(OFST+2,sp)
1131  00ff a410          	and	a,#16
1132  0101 1a01          	or	a,(OFST-2,sp)
1133  0103 1a02          	or	a,(OFST-1,sp)
1134  0105 ca525c        	or	a,21084
1135  0108 c7525c        	ld	21084,a
1136                     ; 244     TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM)) | 
1136                     ; 245                              (uint8_t)TIM1_OCMode);
1138  010b c65259        	ld	a,21081
1139  010e a48f          	and	a,#143
1140  0110 1a04          	or	a,(OFST+1,sp)
1141  0112 c75259        	ld	21081,a
1142                     ; 248     TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS2 | TIM1_OISR_OIS2N));
1144  0115 c6526f        	ld	a,21103
1145  0118 a4f3          	and	a,#243
1146  011a c7526f        	ld	21103,a
1147                     ; 250     TIM1->OISR |= (uint8_t)((uint8_t)(TIM1_OISR_OIS2 & TIM1_OCIdleState) | 
1147                     ; 251                             (uint8_t)(TIM1_OISR_OIS2N & TIM1_OCNIdleState));
1149  011d 7b0e          	ld	a,(OFST+11,sp)
1150  011f a408          	and	a,#8
1151  0121 6b03          	ld	(OFST+0,sp),a
1153  0123 7b0d          	ld	a,(OFST+10,sp)
1154  0125 a404          	and	a,#4
1155  0127 1a03          	or	a,(OFST+0,sp)
1156  0129 ca526f        	or	a,21103
1157  012c c7526f        	ld	21103,a
1158                     ; 254     TIM1->CCR2H = (uint8_t)(TIM1_Pulse >> 8);
1160  012f 7b09          	ld	a,(OFST+6,sp)
1161  0131 c75267        	ld	21095,a
1162                     ; 255     TIM1->CCR2L = (uint8_t)(TIM1_Pulse);
1164  0134 7b0a          	ld	a,(OFST+7,sp)
1165  0136 c75268        	ld	21096,a
1166                     ; 257 }
1169  0139 5b05          	addw	sp,#5
1170  013b 81            	ret
1273                     ; 278 void TIM1_OC3Init(TIM1_OCMode_TypeDef TIM1_OCMode,
1273                     ; 279                   TIM1_OutputState_TypeDef TIM1_OutputState,
1273                     ; 280                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
1273                     ; 281                   uint16_t TIM1_Pulse,
1273                     ; 282                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
1273                     ; 283                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
1273                     ; 284                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
1273                     ; 285                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
1273                     ; 286 {
1274                     .text:	section	.text,new
1275  0000               _TIM1_OC3Init:
1277  0000 89            	pushw	x
1278  0001 5203          	subw	sp,#3
1279       00000003      OFST:	set	3
1282                     ; 288     assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
1284  0003 9e            	ld	a,xh
1285  0004 4d            	tnz	a
1286  0005 2719          	jreq	L251
1287  0007 9e            	ld	a,xh
1288  0008 a110          	cp	a,#16
1289  000a 2714          	jreq	L251
1290  000c 9e            	ld	a,xh
1291  000d a120          	cp	a,#32
1292  000f 270f          	jreq	L251
1293  0011 9e            	ld	a,xh
1294  0012 a130          	cp	a,#48
1295  0014 270a          	jreq	L251
1296  0016 9e            	ld	a,xh
1297  0017 a160          	cp	a,#96
1298  0019 2705          	jreq	L251
1299  001b 9e            	ld	a,xh
1300  001c a170          	cp	a,#112
1301  001e 2603          	jrne	L051
1302  0020               L251:
1303  0020 4f            	clr	a
1304  0021 2010          	jra	L451
1305  0023               L051:
1306  0023 ae0120        	ldw	x,#288
1307  0026 89            	pushw	x
1308  0027 ae0000        	ldw	x,#0
1309  002a 89            	pushw	x
1310  002b ae0000        	ldw	x,#L37
1311  002e cd0000        	call	_assert_failed
1313  0031 5b04          	addw	sp,#4
1314  0033               L451:
1315                     ; 289     assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
1317  0033 0d05          	tnz	(OFST+2,sp)
1318  0035 2706          	jreq	L061
1319  0037 7b05          	ld	a,(OFST+2,sp)
1320  0039 a111          	cp	a,#17
1321  003b 2603          	jrne	L651
1322  003d               L061:
1323  003d 4f            	clr	a
1324  003e 2010          	jra	L261
1325  0040               L651:
1326  0040 ae0121        	ldw	x,#289
1327  0043 89            	pushw	x
1328  0044 ae0000        	ldw	x,#0
1329  0047 89            	pushw	x
1330  0048 ae0000        	ldw	x,#L37
1331  004b cd0000        	call	_assert_failed
1333  004e 5b04          	addw	sp,#4
1334  0050               L261:
1335                     ; 290     assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
1337  0050 0d08          	tnz	(OFST+5,sp)
1338  0052 2706          	jreq	L661
1339  0054 7b08          	ld	a,(OFST+5,sp)
1340  0056 a144          	cp	a,#68
1341  0058 2603          	jrne	L461
1342  005a               L661:
1343  005a 4f            	clr	a
1344  005b 2010          	jra	L071
1345  005d               L461:
1346  005d ae0122        	ldw	x,#290
1347  0060 89            	pushw	x
1348  0061 ae0000        	ldw	x,#0
1349  0064 89            	pushw	x
1350  0065 ae0000        	ldw	x,#L37
1351  0068 cd0000        	call	_assert_failed
1353  006b 5b04          	addw	sp,#4
1354  006d               L071:
1355                     ; 291     assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
1357  006d 0d0b          	tnz	(OFST+8,sp)
1358  006f 2706          	jreq	L471
1359  0071 7b0b          	ld	a,(OFST+8,sp)
1360  0073 a122          	cp	a,#34
1361  0075 2603          	jrne	L271
1362  0077               L471:
1363  0077 4f            	clr	a
1364  0078 2010          	jra	L671
1365  007a               L271:
1366  007a ae0123        	ldw	x,#291
1367  007d 89            	pushw	x
1368  007e ae0000        	ldw	x,#0
1369  0081 89            	pushw	x
1370  0082 ae0000        	ldw	x,#L37
1371  0085 cd0000        	call	_assert_failed
1373  0088 5b04          	addw	sp,#4
1374  008a               L671:
1375                     ; 292     assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
1377  008a 0d0c          	tnz	(OFST+9,sp)
1378  008c 2706          	jreq	L202
1379  008e 7b0c          	ld	a,(OFST+9,sp)
1380  0090 a188          	cp	a,#136
1381  0092 2603          	jrne	L002
1382  0094               L202:
1383  0094 4f            	clr	a
1384  0095 2010          	jra	L402
1385  0097               L002:
1386  0097 ae0124        	ldw	x,#292
1387  009a 89            	pushw	x
1388  009b ae0000        	ldw	x,#0
1389  009e 89            	pushw	x
1390  009f ae0000        	ldw	x,#L37
1391  00a2 cd0000        	call	_assert_failed
1393  00a5 5b04          	addw	sp,#4
1394  00a7               L402:
1395                     ; 293     assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
1397  00a7 7b0d          	ld	a,(OFST+10,sp)
1398  00a9 a155          	cp	a,#85
1399  00ab 2704          	jreq	L012
1400  00ad 0d0d          	tnz	(OFST+10,sp)
1401  00af 2603          	jrne	L602
1402  00b1               L012:
1403  00b1 4f            	clr	a
1404  00b2 2010          	jra	L212
1405  00b4               L602:
1406  00b4 ae0125        	ldw	x,#293
1407  00b7 89            	pushw	x
1408  00b8 ae0000        	ldw	x,#0
1409  00bb 89            	pushw	x
1410  00bc ae0000        	ldw	x,#L37
1411  00bf cd0000        	call	_assert_failed
1413  00c2 5b04          	addw	sp,#4
1414  00c4               L212:
1415                     ; 294     assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
1417  00c4 7b0e          	ld	a,(OFST+11,sp)
1418  00c6 a12a          	cp	a,#42
1419  00c8 2704          	jreq	L612
1420  00ca 0d0e          	tnz	(OFST+11,sp)
1421  00cc 2603          	jrne	L412
1422  00ce               L612:
1423  00ce 4f            	clr	a
1424  00cf 2010          	jra	L022
1425  00d1               L412:
1426  00d1 ae0126        	ldw	x,#294
1427  00d4 89            	pushw	x
1428  00d5 ae0000        	ldw	x,#0
1429  00d8 89            	pushw	x
1430  00d9 ae0000        	ldw	x,#L37
1431  00dc cd0000        	call	_assert_failed
1433  00df 5b04          	addw	sp,#4
1434  00e1               L022:
1435                     ; 298     TIM1->CCER2 &= (uint8_t)(~( TIM1_CCER2_CC3E | TIM1_CCER2_CC3NE | 
1435                     ; 299                                 TIM1_CCER2_CC3P | TIM1_CCER2_CC3NP));
1437  00e1 c6525d        	ld	a,21085
1438  00e4 a4f0          	and	a,#240
1439  00e6 c7525d        	ld	21085,a
1440                     ; 302     TIM1->CCER2 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState  & TIM1_CCER2_CC3E   ) |
1440                     ; 303                              (uint8_t)(TIM1_OutputNState & TIM1_CCER2_CC3NE  )) | 
1440                     ; 304                              (uint8_t)((uint8_t)(TIM1_OCPolarity   & TIM1_CCER2_CC3P   ) | 
1440                     ; 305                              (uint8_t)(TIM1_OCNPolarity  & TIM1_CCER2_CC3NP  )));
1442  00e9 7b0c          	ld	a,(OFST+9,sp)
1443  00eb a408          	and	a,#8
1444  00ed 6b03          	ld	(OFST+0,sp),a
1446  00ef 7b0b          	ld	a,(OFST+8,sp)
1447  00f1 a402          	and	a,#2
1448  00f3 1a03          	or	a,(OFST+0,sp)
1449  00f5 6b02          	ld	(OFST-1,sp),a
1451  00f7 7b08          	ld	a,(OFST+5,sp)
1452  00f9 a404          	and	a,#4
1453  00fb 6b01          	ld	(OFST-2,sp),a
1455  00fd 7b05          	ld	a,(OFST+2,sp)
1456  00ff a401          	and	a,#1
1457  0101 1a01          	or	a,(OFST-2,sp)
1458  0103 1a02          	or	a,(OFST-1,sp)
1459  0105 ca525d        	or	a,21085
1460  0108 c7525d        	ld	21085,a
1461                     ; 308     TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM)) | 
1461                     ; 309                              (uint8_t)TIM1_OCMode);
1463  010b c6525a        	ld	a,21082
1464  010e a48f          	and	a,#143
1465  0110 1a04          	or	a,(OFST+1,sp)
1466  0112 c7525a        	ld	21082,a
1467                     ; 312     TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS3 | TIM1_OISR_OIS3N));
1469  0115 c6526f        	ld	a,21103
1470  0118 a4cf          	and	a,#207
1471  011a c7526f        	ld	21103,a
1472                     ; 314     TIM1->OISR |= (uint8_t)((uint8_t)(TIM1_OISR_OIS3 & TIM1_OCIdleState) | 
1472                     ; 315                             (uint8_t)(TIM1_OISR_OIS3N & TIM1_OCNIdleState));
1474  011d 7b0e          	ld	a,(OFST+11,sp)
1475  011f a420          	and	a,#32
1476  0121 6b03          	ld	(OFST+0,sp),a
1478  0123 7b0d          	ld	a,(OFST+10,sp)
1479  0125 a410          	and	a,#16
1480  0127 1a03          	or	a,(OFST+0,sp)
1481  0129 ca526f        	or	a,21103
1482  012c c7526f        	ld	21103,a
1483                     ; 318     TIM1->CCR3H = (uint8_t)(TIM1_Pulse >> 8);
1485  012f 7b09          	ld	a,(OFST+6,sp)
1486  0131 c75269        	ld	21097,a
1487                     ; 319     TIM1->CCR3L = (uint8_t)(TIM1_Pulse);
1489  0134 7b0a          	ld	a,(OFST+7,sp)
1490  0136 c7526a        	ld	21098,a
1491                     ; 321 }
1494  0139 5b05          	addw	sp,#5
1495  013b 81            	ret
1568                     ; 336 void TIM1_OC4Init(TIM1_OCMode_TypeDef TIM1_OCMode,
1568                     ; 337                   TIM1_OutputState_TypeDef TIM1_OutputState,
1568                     ; 338                   uint16_t TIM1_Pulse,
1568                     ; 339                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
1568                     ; 340                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState)
1568                     ; 341 {
1569                     .text:	section	.text,new
1570  0000               _TIM1_OC4Init:
1572  0000 89            	pushw	x
1573  0001 88            	push	a
1574       00000001      OFST:	set	1
1577                     ; 343     assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
1579  0002 9e            	ld	a,xh
1580  0003 4d            	tnz	a
1581  0004 2719          	jreq	L622
1582  0006 9e            	ld	a,xh
1583  0007 a110          	cp	a,#16
1584  0009 2714          	jreq	L622
1585  000b 9e            	ld	a,xh
1586  000c a120          	cp	a,#32
1587  000e 270f          	jreq	L622
1588  0010 9e            	ld	a,xh
1589  0011 a130          	cp	a,#48
1590  0013 270a          	jreq	L622
1591  0015 9e            	ld	a,xh
1592  0016 a160          	cp	a,#96
1593  0018 2705          	jreq	L622
1594  001a 9e            	ld	a,xh
1595  001b a170          	cp	a,#112
1596  001d 2603          	jrne	L422
1597  001f               L622:
1598  001f 4f            	clr	a
1599  0020 2010          	jra	L032
1600  0022               L422:
1601  0022 ae0157        	ldw	x,#343
1602  0025 89            	pushw	x
1603  0026 ae0000        	ldw	x,#0
1604  0029 89            	pushw	x
1605  002a ae0000        	ldw	x,#L37
1606  002d cd0000        	call	_assert_failed
1608  0030 5b04          	addw	sp,#4
1609  0032               L032:
1610                     ; 344     assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
1612  0032 0d03          	tnz	(OFST+2,sp)
1613  0034 2706          	jreq	L432
1614  0036 7b03          	ld	a,(OFST+2,sp)
1615  0038 a111          	cp	a,#17
1616  003a 2603          	jrne	L232
1617  003c               L432:
1618  003c 4f            	clr	a
1619  003d 2010          	jra	L632
1620  003f               L232:
1621  003f ae0158        	ldw	x,#344
1622  0042 89            	pushw	x
1623  0043 ae0000        	ldw	x,#0
1624  0046 89            	pushw	x
1625  0047 ae0000        	ldw	x,#L37
1626  004a cd0000        	call	_assert_failed
1628  004d 5b04          	addw	sp,#4
1629  004f               L632:
1630                     ; 345     assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
1632  004f 0d08          	tnz	(OFST+7,sp)
1633  0051 2706          	jreq	L242
1634  0053 7b08          	ld	a,(OFST+7,sp)
1635  0055 a122          	cp	a,#34
1636  0057 2603          	jrne	L042
1637  0059               L242:
1638  0059 4f            	clr	a
1639  005a 2010          	jra	L442
1640  005c               L042:
1641  005c ae0159        	ldw	x,#345
1642  005f 89            	pushw	x
1643  0060 ae0000        	ldw	x,#0
1644  0063 89            	pushw	x
1645  0064 ae0000        	ldw	x,#L37
1646  0067 cd0000        	call	_assert_failed
1648  006a 5b04          	addw	sp,#4
1649  006c               L442:
1650                     ; 346     assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
1652  006c 7b09          	ld	a,(OFST+8,sp)
1653  006e a155          	cp	a,#85
1654  0070 2704          	jreq	L052
1655  0072 0d09          	tnz	(OFST+8,sp)
1656  0074 2603          	jrne	L642
1657  0076               L052:
1658  0076 4f            	clr	a
1659  0077 2010          	jra	L252
1660  0079               L642:
1661  0079 ae015a        	ldw	x,#346
1662  007c 89            	pushw	x
1663  007d ae0000        	ldw	x,#0
1664  0080 89            	pushw	x
1665  0081 ae0000        	ldw	x,#L37
1666  0084 cd0000        	call	_assert_failed
1668  0087 5b04          	addw	sp,#4
1669  0089               L252:
1670                     ; 349     TIM1->CCER2 &= (uint8_t)(~(TIM1_CCER2_CC4E | TIM1_CCER2_CC4P));
1672  0089 c6525d        	ld	a,21085
1673  008c a4cf          	and	a,#207
1674  008e c7525d        	ld	21085,a
1675                     ; 351     TIM1->CCER2 |= (uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER2_CC4E ) |  
1675                     ; 352                              (uint8_t)(TIM1_OCPolarity  & TIM1_CCER2_CC4P ));
1677  0091 7b08          	ld	a,(OFST+7,sp)
1678  0093 a420          	and	a,#32
1679  0095 6b01          	ld	(OFST+0,sp),a
1681  0097 7b03          	ld	a,(OFST+2,sp)
1682  0099 a410          	and	a,#16
1683  009b 1a01          	or	a,(OFST+0,sp)
1684  009d ca525d        	or	a,21085
1685  00a0 c7525d        	ld	21085,a
1686                     ; 355     TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) | 
1686                     ; 356                             TIM1_OCMode);
1688  00a3 c6525b        	ld	a,21083
1689  00a6 a48f          	and	a,#143
1690  00a8 1a02          	or	a,(OFST+1,sp)
1691  00aa c7525b        	ld	21083,a
1692                     ; 359     if (TIM1_OCIdleState != TIM1_OCIDLESTATE_RESET)
1694  00ad 0d09          	tnz	(OFST+8,sp)
1695  00af 270a          	jreq	L124
1696                     ; 361         TIM1->OISR |= (uint8_t)(~TIM1_CCER2_CC4P);
1698  00b1 c6526f        	ld	a,21103
1699  00b4 aadf          	or	a,#223
1700  00b6 c7526f        	ld	21103,a
1702  00b9 2004          	jra	L324
1703  00bb               L124:
1704                     ; 365         TIM1->OISR &= (uint8_t)(~TIM1_OISR_OIS4);
1706  00bb 721d526f      	bres	21103,#6
1707  00bf               L324:
1708                     ; 369     TIM1->CCR4H = (uint8_t)(TIM1_Pulse >> 8);
1710  00bf 7b06          	ld	a,(OFST+5,sp)
1711  00c1 c7526b        	ld	21099,a
1712                     ; 370     TIM1->CCR4L = (uint8_t)(TIM1_Pulse);
1714  00c4 7b07          	ld	a,(OFST+6,sp)
1715  00c6 c7526c        	ld	21100,a
1716                     ; 372 }
1719  00c9 5b03          	addw	sp,#3
1720  00cb 81            	ret
1924                     ; 387 void TIM1_BDTRConfig(TIM1_OSSIState_TypeDef TIM1_OSSIState,
1924                     ; 388                      TIM1_LockLevel_TypeDef TIM1_LockLevel,
1924                     ; 389                      uint8_t TIM1_DeadTime,
1924                     ; 390                      TIM1_BreakState_TypeDef TIM1_Break,
1924                     ; 391                      TIM1_BreakPolarity_TypeDef TIM1_BreakPolarity,
1924                     ; 392                      TIM1_AutomaticOutput_TypeDef TIM1_AutomaticOutput)
1924                     ; 393 {
1925                     .text:	section	.text,new
1926  0000               _TIM1_BDTRConfig:
1928  0000 89            	pushw	x
1929  0001 88            	push	a
1930       00000001      OFST:	set	1
1933                     ; 395     assert_param(IS_TIM1_OSSI_STATE_OK(TIM1_OSSIState));
1935  0002 9e            	ld	a,xh
1936  0003 a104          	cp	a,#4
1937  0005 2704          	jreq	L062
1938  0007 9e            	ld	a,xh
1939  0008 4d            	tnz	a
1940  0009 2603          	jrne	L652
1941  000b               L062:
1942  000b 4f            	clr	a
1943  000c 2010          	jra	L262
1944  000e               L652:
1945  000e ae018b        	ldw	x,#395
1946  0011 89            	pushw	x
1947  0012 ae0000        	ldw	x,#0
1948  0015 89            	pushw	x
1949  0016 ae0000        	ldw	x,#L37
1950  0019 cd0000        	call	_assert_failed
1952  001c 5b04          	addw	sp,#4
1953  001e               L262:
1954                     ; 396     assert_param(IS_TIM1_LOCK_LEVEL_OK(TIM1_LockLevel));
1956  001e 0d03          	tnz	(OFST+2,sp)
1957  0020 2712          	jreq	L662
1958  0022 7b03          	ld	a,(OFST+2,sp)
1959  0024 a101          	cp	a,#1
1960  0026 270c          	jreq	L662
1961  0028 7b03          	ld	a,(OFST+2,sp)
1962  002a a102          	cp	a,#2
1963  002c 2706          	jreq	L662
1964  002e 7b03          	ld	a,(OFST+2,sp)
1965  0030 a103          	cp	a,#3
1966  0032 2603          	jrne	L462
1967  0034               L662:
1968  0034 4f            	clr	a
1969  0035 2010          	jra	L072
1970  0037               L462:
1971  0037 ae018c        	ldw	x,#396
1972  003a 89            	pushw	x
1973  003b ae0000        	ldw	x,#0
1974  003e 89            	pushw	x
1975  003f ae0000        	ldw	x,#L37
1976  0042 cd0000        	call	_assert_failed
1978  0045 5b04          	addw	sp,#4
1979  0047               L072:
1980                     ; 397     assert_param(IS_TIM1_BREAK_STATE_OK(TIM1_Break));
1982  0047 7b07          	ld	a,(OFST+6,sp)
1983  0049 a110          	cp	a,#16
1984  004b 2704          	jreq	L472
1985  004d 0d07          	tnz	(OFST+6,sp)
1986  004f 2603          	jrne	L272
1987  0051               L472:
1988  0051 4f            	clr	a
1989  0052 2010          	jra	L672
1990  0054               L272:
1991  0054 ae018d        	ldw	x,#397
1992  0057 89            	pushw	x
1993  0058 ae0000        	ldw	x,#0
1994  005b 89            	pushw	x
1995  005c ae0000        	ldw	x,#L37
1996  005f cd0000        	call	_assert_failed
1998  0062 5b04          	addw	sp,#4
1999  0064               L672:
2000                     ; 398     assert_param(IS_TIM1_BREAK_POLARITY_OK(TIM1_BreakPolarity));
2002  0064 0d08          	tnz	(OFST+7,sp)
2003  0066 2706          	jreq	L203
2004  0068 7b08          	ld	a,(OFST+7,sp)
2005  006a a120          	cp	a,#32
2006  006c 2603          	jrne	L003
2007  006e               L203:
2008  006e 4f            	clr	a
2009  006f 2010          	jra	L403
2010  0071               L003:
2011  0071 ae018e        	ldw	x,#398
2012  0074 89            	pushw	x
2013  0075 ae0000        	ldw	x,#0
2014  0078 89            	pushw	x
2015  0079 ae0000        	ldw	x,#L37
2016  007c cd0000        	call	_assert_failed
2018  007f 5b04          	addw	sp,#4
2019  0081               L403:
2020                     ; 399     assert_param(IS_TIM1_AUTOMATIC_OUTPUT_STATE_OK(TIM1_AutomaticOutput));
2022  0081 7b09          	ld	a,(OFST+8,sp)
2023  0083 a140          	cp	a,#64
2024  0085 2704          	jreq	L013
2025  0087 0d09          	tnz	(OFST+8,sp)
2026  0089 2603          	jrne	L603
2027  008b               L013:
2028  008b 4f            	clr	a
2029  008c 2010          	jra	L213
2030  008e               L603:
2031  008e ae018f        	ldw	x,#399
2032  0091 89            	pushw	x
2033  0092 ae0000        	ldw	x,#0
2034  0095 89            	pushw	x
2035  0096 ae0000        	ldw	x,#L37
2036  0099 cd0000        	call	_assert_failed
2038  009c 5b04          	addw	sp,#4
2039  009e               L213:
2040                     ; 401     TIM1->DTR = (uint8_t)(TIM1_DeadTime);
2042  009e 7b06          	ld	a,(OFST+5,sp)
2043  00a0 c7526e        	ld	21102,a
2044                     ; 405     TIM1->BKR  =  (uint8_t)((uint8_t)(TIM1_OSSIState | (uint8_t)TIM1_LockLevel)  | 
2044                     ; 406                             (uint8_t)((uint8_t)(TIM1_Break | (uint8_t)TIM1_BreakPolarity)  | 
2044                     ; 407                             (uint8_t)TIM1_AutomaticOutput));
2046  00a3 7b07          	ld	a,(OFST+6,sp)
2047  00a5 1a08          	or	a,(OFST+7,sp)
2048  00a7 1a09          	or	a,(OFST+8,sp)
2049  00a9 6b01          	ld	(OFST+0,sp),a
2051  00ab 7b02          	ld	a,(OFST+1,sp)
2052  00ad 1a03          	or	a,(OFST+2,sp)
2053  00af 1a01          	or	a,(OFST+0,sp)
2054  00b1 c7526d        	ld	21101,a
2055                     ; 409 }
2058  00b4 5b03          	addw	sp,#3
2059  00b6 81            	ret
2260                     ; 423 void TIM1_ICInit(TIM1_Channel_TypeDef TIM1_Channel,
2260                     ; 424                  TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
2260                     ; 425                  TIM1_ICSelection_TypeDef TIM1_ICSelection,
2260                     ; 426                  TIM1_ICPSC_TypeDef TIM1_ICPrescaler,
2260                     ; 427                  uint8_t TIM1_ICFilter)
2260                     ; 428 {
2261                     .text:	section	.text,new
2262  0000               _TIM1_ICInit:
2264  0000 89            	pushw	x
2265       00000000      OFST:	set	0
2268                     ; 431     assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
2270  0001 9e            	ld	a,xh
2271  0002 4d            	tnz	a
2272  0003 270f          	jreq	L023
2273  0005 9e            	ld	a,xh
2274  0006 a101          	cp	a,#1
2275  0008 270a          	jreq	L023
2276  000a 9e            	ld	a,xh
2277  000b a102          	cp	a,#2
2278  000d 2705          	jreq	L023
2279  000f 9e            	ld	a,xh
2280  0010 a103          	cp	a,#3
2281  0012 2603          	jrne	L613
2282  0014               L023:
2283  0014 4f            	clr	a
2284  0015 2010          	jra	L223
2285  0017               L613:
2286  0017 ae01af        	ldw	x,#431
2287  001a 89            	pushw	x
2288  001b ae0000        	ldw	x,#0
2289  001e 89            	pushw	x
2290  001f ae0000        	ldw	x,#L37
2291  0022 cd0000        	call	_assert_failed
2293  0025 5b04          	addw	sp,#4
2294  0027               L223:
2295                     ; 432     assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
2297  0027 0d02          	tnz	(OFST+2,sp)
2298  0029 2706          	jreq	L623
2299  002b 7b02          	ld	a,(OFST+2,sp)
2300  002d a101          	cp	a,#1
2301  002f 2603          	jrne	L423
2302  0031               L623:
2303  0031 4f            	clr	a
2304  0032 2010          	jra	L033
2305  0034               L423:
2306  0034 ae01b0        	ldw	x,#432
2307  0037 89            	pushw	x
2308  0038 ae0000        	ldw	x,#0
2309  003b 89            	pushw	x
2310  003c ae0000        	ldw	x,#L37
2311  003f cd0000        	call	_assert_failed
2313  0042 5b04          	addw	sp,#4
2314  0044               L033:
2315                     ; 433     assert_param(IS_TIM1_IC_SELECTION_OK(TIM1_ICSelection));
2317  0044 7b05          	ld	a,(OFST+5,sp)
2318  0046 a101          	cp	a,#1
2319  0048 270c          	jreq	L433
2320  004a 7b05          	ld	a,(OFST+5,sp)
2321  004c a102          	cp	a,#2
2322  004e 2706          	jreq	L433
2323  0050 7b05          	ld	a,(OFST+5,sp)
2324  0052 a103          	cp	a,#3
2325  0054 2603          	jrne	L233
2326  0056               L433:
2327  0056 4f            	clr	a
2328  0057 2010          	jra	L633
2329  0059               L233:
2330  0059 ae01b1        	ldw	x,#433
2331  005c 89            	pushw	x
2332  005d ae0000        	ldw	x,#0
2333  0060 89            	pushw	x
2334  0061 ae0000        	ldw	x,#L37
2335  0064 cd0000        	call	_assert_failed
2337  0067 5b04          	addw	sp,#4
2338  0069               L633:
2339                     ; 434     assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_ICPrescaler));
2341  0069 0d06          	tnz	(OFST+6,sp)
2342  006b 2712          	jreq	L243
2343  006d 7b06          	ld	a,(OFST+6,sp)
2344  006f a104          	cp	a,#4
2345  0071 270c          	jreq	L243
2346  0073 7b06          	ld	a,(OFST+6,sp)
2347  0075 a108          	cp	a,#8
2348  0077 2706          	jreq	L243
2349  0079 7b06          	ld	a,(OFST+6,sp)
2350  007b a10c          	cp	a,#12
2351  007d 2603          	jrne	L043
2352  007f               L243:
2353  007f 4f            	clr	a
2354  0080 2010          	jra	L443
2355  0082               L043:
2356  0082 ae01b2        	ldw	x,#434
2357  0085 89            	pushw	x
2358  0086 ae0000        	ldw	x,#0
2359  0089 89            	pushw	x
2360  008a ae0000        	ldw	x,#L37
2361  008d cd0000        	call	_assert_failed
2363  0090 5b04          	addw	sp,#4
2364  0092               L443:
2365                     ; 435     assert_param(IS_TIM1_IC_FILTER_OK(TIM1_ICFilter));
2367  0092 7b07          	ld	a,(OFST+7,sp)
2368  0094 a110          	cp	a,#16
2369  0096 2403          	jruge	L643
2370  0098 4f            	clr	a
2371  0099 2010          	jra	L053
2372  009b               L643:
2373  009b ae01b3        	ldw	x,#435
2374  009e 89            	pushw	x
2375  009f ae0000        	ldw	x,#0
2376  00a2 89            	pushw	x
2377  00a3 ae0000        	ldw	x,#L37
2378  00a6 cd0000        	call	_assert_failed
2380  00a9 5b04          	addw	sp,#4
2381  00ab               L053:
2382                     ; 437     if (TIM1_Channel == TIM1_CHANNEL_1)
2384  00ab 0d01          	tnz	(OFST+1,sp)
2385  00ad 2614          	jrne	L746
2386                     ; 440         TI1_Config((uint8_t)TIM1_ICPolarity,
2386                     ; 441                    (uint8_t)TIM1_ICSelection,
2386                     ; 442                    (uint8_t)TIM1_ICFilter);
2388  00af 7b07          	ld	a,(OFST+7,sp)
2389  00b1 88            	push	a
2390  00b2 7b06          	ld	a,(OFST+6,sp)
2391  00b4 97            	ld	xl,a
2392  00b5 7b03          	ld	a,(OFST+3,sp)
2393  00b7 95            	ld	xh,a
2394  00b8 cd0000        	call	L3_TI1_Config
2396  00bb 84            	pop	a
2397                     ; 444         TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
2399  00bc 7b06          	ld	a,(OFST+6,sp)
2400  00be cd0000        	call	_TIM1_SetIC1Prescaler
2403  00c1 2046          	jra	L156
2404  00c3               L746:
2405                     ; 446     else if (TIM1_Channel == TIM1_CHANNEL_2)
2407  00c3 7b01          	ld	a,(OFST+1,sp)
2408  00c5 a101          	cp	a,#1
2409  00c7 2614          	jrne	L356
2410                     ; 449         TI2_Config((uint8_t)TIM1_ICPolarity,
2410                     ; 450                    (uint8_t)TIM1_ICSelection,
2410                     ; 451                    (uint8_t)TIM1_ICFilter);
2412  00c9 7b07          	ld	a,(OFST+7,sp)
2413  00cb 88            	push	a
2414  00cc 7b06          	ld	a,(OFST+6,sp)
2415  00ce 97            	ld	xl,a
2416  00cf 7b03          	ld	a,(OFST+3,sp)
2417  00d1 95            	ld	xh,a
2418  00d2 cd0000        	call	L5_TI2_Config
2420  00d5 84            	pop	a
2421                     ; 453         TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
2423  00d6 7b06          	ld	a,(OFST+6,sp)
2424  00d8 cd0000        	call	_TIM1_SetIC2Prescaler
2427  00db 202c          	jra	L156
2428  00dd               L356:
2429                     ; 455     else if (TIM1_Channel == TIM1_CHANNEL_3)
2431  00dd 7b01          	ld	a,(OFST+1,sp)
2432  00df a102          	cp	a,#2
2433  00e1 2614          	jrne	L756
2434                     ; 458         TI3_Config((uint8_t)TIM1_ICPolarity,
2434                     ; 459                    (uint8_t)TIM1_ICSelection,
2434                     ; 460                    (uint8_t)TIM1_ICFilter);
2436  00e3 7b07          	ld	a,(OFST+7,sp)
2437  00e5 88            	push	a
2438  00e6 7b06          	ld	a,(OFST+6,sp)
2439  00e8 97            	ld	xl,a
2440  00e9 7b03          	ld	a,(OFST+3,sp)
2441  00eb 95            	ld	xh,a
2442  00ec cd0000        	call	L7_TI3_Config
2444  00ef 84            	pop	a
2445                     ; 462         TIM1_SetIC3Prescaler(TIM1_ICPrescaler);
2447  00f0 7b06          	ld	a,(OFST+6,sp)
2448  00f2 cd0000        	call	_TIM1_SetIC3Prescaler
2451  00f5 2012          	jra	L156
2452  00f7               L756:
2453                     ; 467         TI4_Config((uint8_t)TIM1_ICPolarity,
2453                     ; 468                    (uint8_t)TIM1_ICSelection,
2453                     ; 469                    (uint8_t)TIM1_ICFilter);
2455  00f7 7b07          	ld	a,(OFST+7,sp)
2456  00f9 88            	push	a
2457  00fa 7b06          	ld	a,(OFST+6,sp)
2458  00fc 97            	ld	xl,a
2459  00fd 7b03          	ld	a,(OFST+3,sp)
2460  00ff 95            	ld	xh,a
2461  0100 cd0000        	call	L11_TI4_Config
2463  0103 84            	pop	a
2464                     ; 471         TIM1_SetIC4Prescaler(TIM1_ICPrescaler);
2466  0104 7b06          	ld	a,(OFST+6,sp)
2467  0106 cd0000        	call	_TIM1_SetIC4Prescaler
2469  0109               L156:
2470                     ; 474 }
2473  0109 85            	popw	x
2474  010a 81            	ret
2565                     ; 490 void TIM1_PWMIConfig(TIM1_Channel_TypeDef TIM1_Channel,
2565                     ; 491                      TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
2565                     ; 492                      TIM1_ICSelection_TypeDef TIM1_ICSelection,
2565                     ; 493                      TIM1_ICPSC_TypeDef TIM1_ICPrescaler,
2565                     ; 494                      uint8_t TIM1_ICFilter)
2565                     ; 495 {
2566                     .text:	section	.text,new
2567  0000               _TIM1_PWMIConfig:
2569  0000 89            	pushw	x
2570  0001 89            	pushw	x
2571       00000002      OFST:	set	2
2574                     ; 496     uint8_t icpolarity = TIM1_ICPOLARITY_RISING;
2576                     ; 497     uint8_t icselection = TIM1_ICSELECTION_DIRECTTI;
2578                     ; 500     assert_param(IS_TIM1_PWMI_CHANNEL_OK(TIM1_Channel));
2580  0002 9e            	ld	a,xh
2581  0003 4d            	tnz	a
2582  0004 2705          	jreq	L653
2583  0006 9e            	ld	a,xh
2584  0007 a101          	cp	a,#1
2585  0009 2603          	jrne	L453
2586  000b               L653:
2587  000b 4f            	clr	a
2588  000c 2010          	jra	L063
2589  000e               L453:
2590  000e ae01f4        	ldw	x,#500
2591  0011 89            	pushw	x
2592  0012 ae0000        	ldw	x,#0
2593  0015 89            	pushw	x
2594  0016 ae0000        	ldw	x,#L37
2595  0019 cd0000        	call	_assert_failed
2597  001c 5b04          	addw	sp,#4
2598  001e               L063:
2599                     ; 501     assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
2601  001e 0d04          	tnz	(OFST+2,sp)
2602  0020 2706          	jreq	L463
2603  0022 7b04          	ld	a,(OFST+2,sp)
2604  0024 a101          	cp	a,#1
2605  0026 2603          	jrne	L263
2606  0028               L463:
2607  0028 4f            	clr	a
2608  0029 2010          	jra	L663
2609  002b               L263:
2610  002b ae01f5        	ldw	x,#501
2611  002e 89            	pushw	x
2612  002f ae0000        	ldw	x,#0
2613  0032 89            	pushw	x
2614  0033 ae0000        	ldw	x,#L37
2615  0036 cd0000        	call	_assert_failed
2617  0039 5b04          	addw	sp,#4
2618  003b               L663:
2619                     ; 502     assert_param(IS_TIM1_IC_SELECTION_OK(TIM1_ICSelection));
2621  003b 7b07          	ld	a,(OFST+5,sp)
2622  003d a101          	cp	a,#1
2623  003f 270c          	jreq	L273
2624  0041 7b07          	ld	a,(OFST+5,sp)
2625  0043 a102          	cp	a,#2
2626  0045 2706          	jreq	L273
2627  0047 7b07          	ld	a,(OFST+5,sp)
2628  0049 a103          	cp	a,#3
2629  004b 2603          	jrne	L073
2630  004d               L273:
2631  004d 4f            	clr	a
2632  004e 2010          	jra	L473
2633  0050               L073:
2634  0050 ae01f6        	ldw	x,#502
2635  0053 89            	pushw	x
2636  0054 ae0000        	ldw	x,#0
2637  0057 89            	pushw	x
2638  0058 ae0000        	ldw	x,#L37
2639  005b cd0000        	call	_assert_failed
2641  005e 5b04          	addw	sp,#4
2642  0060               L473:
2643                     ; 503     assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_ICPrescaler));
2645  0060 0d08          	tnz	(OFST+6,sp)
2646  0062 2712          	jreq	L004
2647  0064 7b08          	ld	a,(OFST+6,sp)
2648  0066 a104          	cp	a,#4
2649  0068 270c          	jreq	L004
2650  006a 7b08          	ld	a,(OFST+6,sp)
2651  006c a108          	cp	a,#8
2652  006e 2706          	jreq	L004
2653  0070 7b08          	ld	a,(OFST+6,sp)
2654  0072 a10c          	cp	a,#12
2655  0074 2603          	jrne	L673
2656  0076               L004:
2657  0076 4f            	clr	a
2658  0077 2010          	jra	L204
2659  0079               L673:
2660  0079 ae01f7        	ldw	x,#503
2661  007c 89            	pushw	x
2662  007d ae0000        	ldw	x,#0
2663  0080 89            	pushw	x
2664  0081 ae0000        	ldw	x,#L37
2665  0084 cd0000        	call	_assert_failed
2667  0087 5b04          	addw	sp,#4
2668  0089               L204:
2669                     ; 506     if (TIM1_ICPolarity != TIM1_ICPOLARITY_FALLING)
2671  0089 7b04          	ld	a,(OFST+2,sp)
2672  008b a101          	cp	a,#1
2673  008d 2706          	jreq	L327
2674                     ; 508         icpolarity = TIM1_ICPOLARITY_FALLING;
2676  008f a601          	ld	a,#1
2677  0091 6b01          	ld	(OFST-1,sp),a
2680  0093 2002          	jra	L527
2681  0095               L327:
2682                     ; 512         icpolarity = TIM1_ICPOLARITY_RISING;
2684  0095 0f01          	clr	(OFST-1,sp)
2686  0097               L527:
2687                     ; 516     if (TIM1_ICSelection == TIM1_ICSELECTION_DIRECTTI)
2689  0097 7b07          	ld	a,(OFST+5,sp)
2690  0099 a101          	cp	a,#1
2691  009b 2606          	jrne	L727
2692                     ; 518         icselection = TIM1_ICSELECTION_INDIRECTTI;
2694  009d a602          	ld	a,#2
2695  009f 6b02          	ld	(OFST+0,sp),a
2698  00a1 2004          	jra	L137
2699  00a3               L727:
2700                     ; 522         icselection = TIM1_ICSELECTION_DIRECTTI;
2702  00a3 a601          	ld	a,#1
2703  00a5 6b02          	ld	(OFST+0,sp),a
2705  00a7               L137:
2706                     ; 525     if (TIM1_Channel == TIM1_CHANNEL_1)
2708  00a7 0d03          	tnz	(OFST+1,sp)
2709  00a9 2626          	jrne	L337
2710                     ; 528         TI1_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSelection,
2710                     ; 529                    (uint8_t)TIM1_ICFilter);
2712  00ab 7b09          	ld	a,(OFST+7,sp)
2713  00ad 88            	push	a
2714  00ae 7b08          	ld	a,(OFST+6,sp)
2715  00b0 97            	ld	xl,a
2716  00b1 7b05          	ld	a,(OFST+3,sp)
2717  00b3 95            	ld	xh,a
2718  00b4 cd0000        	call	L3_TI1_Config
2720  00b7 84            	pop	a
2721                     ; 532         TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
2723  00b8 7b08          	ld	a,(OFST+6,sp)
2724  00ba cd0000        	call	_TIM1_SetIC1Prescaler
2726                     ; 535         TI2_Config(icpolarity, icselection, TIM1_ICFilter);
2728  00bd 7b09          	ld	a,(OFST+7,sp)
2729  00bf 88            	push	a
2730  00c0 7b03          	ld	a,(OFST+1,sp)
2731  00c2 97            	ld	xl,a
2732  00c3 7b02          	ld	a,(OFST+0,sp)
2733  00c5 95            	ld	xh,a
2734  00c6 cd0000        	call	L5_TI2_Config
2736  00c9 84            	pop	a
2737                     ; 538         TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
2739  00ca 7b08          	ld	a,(OFST+6,sp)
2740  00cc cd0000        	call	_TIM1_SetIC2Prescaler
2743  00cf 2024          	jra	L537
2744  00d1               L337:
2745                     ; 543         TI2_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSelection,
2745                     ; 544                    (uint8_t)TIM1_ICFilter);
2747  00d1 7b09          	ld	a,(OFST+7,sp)
2748  00d3 88            	push	a
2749  00d4 7b08          	ld	a,(OFST+6,sp)
2750  00d6 97            	ld	xl,a
2751  00d7 7b05          	ld	a,(OFST+3,sp)
2752  00d9 95            	ld	xh,a
2753  00da cd0000        	call	L5_TI2_Config
2755  00dd 84            	pop	a
2756                     ; 547         TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
2758  00de 7b08          	ld	a,(OFST+6,sp)
2759  00e0 cd0000        	call	_TIM1_SetIC2Prescaler
2761                     ; 550         TI1_Config(icpolarity, icselection, TIM1_ICFilter);
2763  00e3 7b09          	ld	a,(OFST+7,sp)
2764  00e5 88            	push	a
2765  00e6 7b03          	ld	a,(OFST+1,sp)
2766  00e8 97            	ld	xl,a
2767  00e9 7b02          	ld	a,(OFST+0,sp)
2768  00eb 95            	ld	xh,a
2769  00ec cd0000        	call	L3_TI1_Config
2771  00ef 84            	pop	a
2772                     ; 553         TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
2774  00f0 7b08          	ld	a,(OFST+6,sp)
2775  00f2 cd0000        	call	_TIM1_SetIC1Prescaler
2777  00f5               L537:
2778                     ; 555 }
2781  00f5 5b04          	addw	sp,#4
2782  00f7 81            	ret
2838                     ; 563 void TIM1_Cmd(FunctionalState NewState)
2838                     ; 564 {
2839                     .text:	section	.text,new
2840  0000               _TIM1_Cmd:
2842  0000 88            	push	a
2843       00000000      OFST:	set	0
2846                     ; 566     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2848  0001 4d            	tnz	a
2849  0002 2704          	jreq	L014
2850  0004 a101          	cp	a,#1
2851  0006 2603          	jrne	L604
2852  0008               L014:
2853  0008 4f            	clr	a
2854  0009 2010          	jra	L214
2855  000b               L604:
2856  000b ae0236        	ldw	x,#566
2857  000e 89            	pushw	x
2858  000f ae0000        	ldw	x,#0
2859  0012 89            	pushw	x
2860  0013 ae0000        	ldw	x,#L37
2861  0016 cd0000        	call	_assert_failed
2863  0019 5b04          	addw	sp,#4
2864  001b               L214:
2865                     ; 569     if (NewState != DISABLE)
2867  001b 0d01          	tnz	(OFST+1,sp)
2868  001d 2706          	jreq	L567
2869                     ; 571         TIM1->CR1 |= TIM1_CR1_CEN;
2871  001f 72105250      	bset	21072,#0
2873  0023 2004          	jra	L767
2874  0025               L567:
2875                     ; 575         TIM1->CR1 &= (uint8_t)(~TIM1_CR1_CEN);
2877  0025 72115250      	bres	21072,#0
2878  0029               L767:
2879                     ; 577 }
2882  0029 84            	pop	a
2883  002a 81            	ret
2920                     ; 585 void TIM1_CtrlPWMOutputs(FunctionalState NewState)
2920                     ; 586 {
2921                     .text:	section	.text,new
2922  0000               _TIM1_CtrlPWMOutputs:
2924  0000 88            	push	a
2925       00000000      OFST:	set	0
2928                     ; 588     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2930  0001 4d            	tnz	a
2931  0002 2704          	jreq	L024
2932  0004 a101          	cp	a,#1
2933  0006 2603          	jrne	L614
2934  0008               L024:
2935  0008 4f            	clr	a
2936  0009 2010          	jra	L224
2937  000b               L614:
2938  000b ae024c        	ldw	x,#588
2939  000e 89            	pushw	x
2940  000f ae0000        	ldw	x,#0
2941  0012 89            	pushw	x
2942  0013 ae0000        	ldw	x,#L37
2943  0016 cd0000        	call	_assert_failed
2945  0019 5b04          	addw	sp,#4
2946  001b               L224:
2947                     ; 592     if (NewState != DISABLE)
2949  001b 0d01          	tnz	(OFST+1,sp)
2950  001d 2706          	jreq	L7001
2951                     ; 594         TIM1->BKR |= TIM1_BKR_MOE;
2953  001f 721e526d      	bset	21101,#7
2955  0023 2004          	jra	L1101
2956  0025               L7001:
2957                     ; 598         TIM1->BKR &= (uint8_t)(~TIM1_BKR_MOE);
2959  0025 721f526d      	bres	21101,#7
2960  0029               L1101:
2961                     ; 600 }
2964  0029 84            	pop	a
2965  002a 81            	ret
3073                     ; 619 void TIM1_ITConfig(TIM1_IT_TypeDef  TIM1_IT, FunctionalState NewState)
3073                     ; 620 {
3074                     .text:	section	.text,new
3075  0000               _TIM1_ITConfig:
3077  0000 89            	pushw	x
3078       00000000      OFST:	set	0
3081                     ; 622     assert_param(IS_TIM1_IT_OK(TIM1_IT));
3083  0001 9e            	ld	a,xh
3084  0002 4d            	tnz	a
3085  0003 2703          	jreq	L624
3086  0005 4f            	clr	a
3087  0006 2010          	jra	L034
3088  0008               L624:
3089  0008 ae026e        	ldw	x,#622
3090  000b 89            	pushw	x
3091  000c ae0000        	ldw	x,#0
3092  000f 89            	pushw	x
3093  0010 ae0000        	ldw	x,#L37
3094  0013 cd0000        	call	_assert_failed
3096  0016 5b04          	addw	sp,#4
3097  0018               L034:
3098                     ; 623     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3100  0018 0d02          	tnz	(OFST+2,sp)
3101  001a 2706          	jreq	L434
3102  001c 7b02          	ld	a,(OFST+2,sp)
3103  001e a101          	cp	a,#1
3104  0020 2603          	jrne	L234
3105  0022               L434:
3106  0022 4f            	clr	a
3107  0023 2010          	jra	L634
3108  0025               L234:
3109  0025 ae026f        	ldw	x,#623
3110  0028 89            	pushw	x
3111  0029 ae0000        	ldw	x,#0
3112  002c 89            	pushw	x
3113  002d ae0000        	ldw	x,#L37
3114  0030 cd0000        	call	_assert_failed
3116  0033 5b04          	addw	sp,#4
3117  0035               L634:
3118                     ; 625     if (NewState != DISABLE)
3120  0035 0d02          	tnz	(OFST+2,sp)
3121  0037 270a          	jreq	L1601
3122                     ; 628         TIM1->IER |= (uint8_t)TIM1_IT;
3124  0039 c65254        	ld	a,21076
3125  003c 1a01          	or	a,(OFST+1,sp)
3126  003e c75254        	ld	21076,a
3128  0041 2009          	jra	L3601
3129  0043               L1601:
3130                     ; 633         TIM1->IER &= (uint8_t)(~(uint8_t)TIM1_IT);
3132  0043 7b01          	ld	a,(OFST+1,sp)
3133  0045 43            	cpl	a
3134  0046 c45254        	and	a,21076
3135  0049 c75254        	ld	21076,a
3136  004c               L3601:
3137                     ; 635 }
3140  004c 85            	popw	x
3141  004d 81            	ret
3165                     ; 642 void TIM1_InternalClockConfig(void)
3165                     ; 643 {
3166                     .text:	section	.text,new
3167  0000               _TIM1_InternalClockConfig:
3171                     ; 645     TIM1->SMCR &= (uint8_t)(~TIM1_SMCR_SMS);
3173  0000 c65252        	ld	a,21074
3174  0003 a4f8          	and	a,#248
3175  0005 c75252        	ld	21074,a
3176                     ; 646 }
3179  0008 81            	ret
3295                     ; 664 void TIM1_ETRClockMode1Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
3295                     ; 665                               TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
3295                     ; 666                               uint8_t ExtTRGFilter)
3295                     ; 667 {
3296                     .text:	section	.text,new
3297  0000               _TIM1_ETRClockMode1Config:
3299  0000 89            	pushw	x
3300       00000000      OFST:	set	0
3303                     ; 669     assert_param(IS_TIM1_EXT_PRESCALER_OK(TIM1_ExtTRGPrescaler));
3305  0001 9e            	ld	a,xh
3306  0002 4d            	tnz	a
3307  0003 270f          	jreq	L644
3308  0005 9e            	ld	a,xh
3309  0006 a110          	cp	a,#16
3310  0008 270a          	jreq	L644
3311  000a 9e            	ld	a,xh
3312  000b a120          	cp	a,#32
3313  000d 2705          	jreq	L644
3314  000f 9e            	ld	a,xh
3315  0010 a130          	cp	a,#48
3316  0012 2603          	jrne	L444
3317  0014               L644:
3318  0014 4f            	clr	a
3319  0015 2010          	jra	L054
3320  0017               L444:
3321  0017 ae029d        	ldw	x,#669
3322  001a 89            	pushw	x
3323  001b ae0000        	ldw	x,#0
3324  001e 89            	pushw	x
3325  001f ae0000        	ldw	x,#L37
3326  0022 cd0000        	call	_assert_failed
3328  0025 5b04          	addw	sp,#4
3329  0027               L054:
3330                     ; 670     assert_param(IS_TIM1_EXT_POLARITY_OK(TIM1_ExtTRGPolarity));
3332  0027 7b02          	ld	a,(OFST+2,sp)
3333  0029 a180          	cp	a,#128
3334  002b 2704          	jreq	L454
3335  002d 0d02          	tnz	(OFST+2,sp)
3336  002f 2603          	jrne	L254
3337  0031               L454:
3338  0031 4f            	clr	a
3339  0032 2010          	jra	L654
3340  0034               L254:
3341  0034 ae029e        	ldw	x,#670
3342  0037 89            	pushw	x
3343  0038 ae0000        	ldw	x,#0
3344  003b 89            	pushw	x
3345  003c ae0000        	ldw	x,#L37
3346  003f cd0000        	call	_assert_failed
3348  0042 5b04          	addw	sp,#4
3349  0044               L654:
3350                     ; 673     TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
3352  0044 7b05          	ld	a,(OFST+5,sp)
3353  0046 88            	push	a
3354  0047 7b03          	ld	a,(OFST+3,sp)
3355  0049 97            	ld	xl,a
3356  004a 7b02          	ld	a,(OFST+2,sp)
3357  004c 95            	ld	xh,a
3358  004d cd0000        	call	_TIM1_ETRConfig
3360  0050 84            	pop	a
3361                     ; 676     TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~(uint8_t)(TIM1_SMCR_SMS | TIM1_SMCR_TS )))
3361                     ; 677                            | (uint8_t)((uint8_t)TIM1_SLAVEMODE_EXTERNAL1 | TIM1_TS_ETRF ));
3363  0051 c65252        	ld	a,21074
3364  0054 a488          	and	a,#136
3365  0056 aa77          	or	a,#119
3366  0058 c75252        	ld	21074,a
3367                     ; 678 }
3370  005b 85            	popw	x
3371  005c 81            	ret
3428                     ; 696 void TIM1_ETRClockMode2Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
3428                     ; 697                               TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
3428                     ; 698                               uint8_t ExtTRGFilter)
3428                     ; 699 {
3429                     .text:	section	.text,new
3430  0000               _TIM1_ETRClockMode2Config:
3432  0000 89            	pushw	x
3433       00000000      OFST:	set	0
3436                     ; 701     assert_param(IS_TIM1_EXT_PRESCALER_OK(TIM1_ExtTRGPrescaler));
3438  0001 9e            	ld	a,xh
3439  0002 4d            	tnz	a
3440  0003 270f          	jreq	L464
3441  0005 9e            	ld	a,xh
3442  0006 a110          	cp	a,#16
3443  0008 270a          	jreq	L464
3444  000a 9e            	ld	a,xh
3445  000b a120          	cp	a,#32
3446  000d 2705          	jreq	L464
3447  000f 9e            	ld	a,xh
3448  0010 a130          	cp	a,#48
3449  0012 2603          	jrne	L264
3450  0014               L464:
3451  0014 4f            	clr	a
3452  0015 2010          	jra	L664
3453  0017               L264:
3454  0017 ae02bd        	ldw	x,#701
3455  001a 89            	pushw	x
3456  001b ae0000        	ldw	x,#0
3457  001e 89            	pushw	x
3458  001f ae0000        	ldw	x,#L37
3459  0022 cd0000        	call	_assert_failed
3461  0025 5b04          	addw	sp,#4
3462  0027               L664:
3463                     ; 702     assert_param(IS_TIM1_EXT_POLARITY_OK(TIM1_ExtTRGPolarity));
3465  0027 7b02          	ld	a,(OFST+2,sp)
3466  0029 a180          	cp	a,#128
3467  002b 2704          	jreq	L274
3468  002d 0d02          	tnz	(OFST+2,sp)
3469  002f 2603          	jrne	L074
3470  0031               L274:
3471  0031 4f            	clr	a
3472  0032 2010          	jra	L474
3473  0034               L074:
3474  0034 ae02be        	ldw	x,#702
3475  0037 89            	pushw	x
3476  0038 ae0000        	ldw	x,#0
3477  003b 89            	pushw	x
3478  003c ae0000        	ldw	x,#L37
3479  003f cd0000        	call	_assert_failed
3481  0042 5b04          	addw	sp,#4
3482  0044               L474:
3483                     ; 705     TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
3485  0044 7b05          	ld	a,(OFST+5,sp)
3486  0046 88            	push	a
3487  0047 7b03          	ld	a,(OFST+3,sp)
3488  0049 97            	ld	xl,a
3489  004a 7b02          	ld	a,(OFST+2,sp)
3490  004c 95            	ld	xh,a
3491  004d cd0000        	call	_TIM1_ETRConfig
3493  0050 84            	pop	a
3494                     ; 708     TIM1->ETR |= TIM1_ETR_ECE;
3496  0051 721c5253      	bset	21075,#6
3497                     ; 709 }
3500  0055 85            	popw	x
3501  0056 81            	ret
3556                     ; 727 void TIM1_ETRConfig(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
3556                     ; 728                     TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
3556                     ; 729                     uint8_t ExtTRGFilter)
3556                     ; 730 {
3557                     .text:	section	.text,new
3558  0000               _TIM1_ETRConfig:
3560  0000 89            	pushw	x
3561       00000000      OFST:	set	0
3564                     ; 732     assert_param(IS_TIM1_EXT_TRG_FILTER_OK(ExtTRGFilter));
3566  0001 7b05          	ld	a,(OFST+5,sp)
3567  0003 a110          	cp	a,#16
3568  0005 2403          	jruge	L005
3569  0007 4f            	clr	a
3570  0008 2010          	jra	L205
3571  000a               L005:
3572  000a ae02dc        	ldw	x,#732
3573  000d 89            	pushw	x
3574  000e ae0000        	ldw	x,#0
3575  0011 89            	pushw	x
3576  0012 ae0000        	ldw	x,#L37
3577  0015 cd0000        	call	_assert_failed
3579  0018 5b04          	addw	sp,#4
3580  001a               L205:
3581                     ; 734     TIM1->ETR |= (uint8_t)((uint8_t)(TIM1_ExtTRGPrescaler | (uint8_t)TIM1_ExtTRGPolarity )|
3581                     ; 735                       (uint8_t)ExtTRGFilter );
3583  001a 7b01          	ld	a,(OFST+1,sp)
3584  001c 1a02          	or	a,(OFST+2,sp)
3585  001e 1a05          	or	a,(OFST+5,sp)
3586  0020 ca5253        	or	a,21075
3587  0023 c75253        	ld	21075,a
3588                     ; 736 }
3591  0026 85            	popw	x
3592  0027 81            	ret
3680                     ; 753 void TIM1_TIxExternalClockConfig(TIM1_TIxExternalCLK1Source_TypeDef TIM1_TIxExternalCLKSource,
3680                     ; 754                                  TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
3680                     ; 755                                  uint8_t ICFilter)
3680                     ; 756 {
3681                     .text:	section	.text,new
3682  0000               _TIM1_TIxExternalClockConfig:
3684  0000 89            	pushw	x
3685       00000000      OFST:	set	0
3688                     ; 758     assert_param(IS_TIM1_TIXCLK_SOURCE_OK(TIM1_TIxExternalCLKSource));
3690  0001 9e            	ld	a,xh
3691  0002 a140          	cp	a,#64
3692  0004 270a          	jreq	L015
3693  0006 9e            	ld	a,xh
3694  0007 a160          	cp	a,#96
3695  0009 2705          	jreq	L015
3696  000b 9e            	ld	a,xh
3697  000c a150          	cp	a,#80
3698  000e 2603          	jrne	L605
3699  0010               L015:
3700  0010 4f            	clr	a
3701  0011 2010          	jra	L215
3702  0013               L605:
3703  0013 ae02f6        	ldw	x,#758
3704  0016 89            	pushw	x
3705  0017 ae0000        	ldw	x,#0
3706  001a 89            	pushw	x
3707  001b ae0000        	ldw	x,#L37
3708  001e cd0000        	call	_assert_failed
3710  0021 5b04          	addw	sp,#4
3711  0023               L215:
3712                     ; 759     assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
3714  0023 0d02          	tnz	(OFST+2,sp)
3715  0025 2706          	jreq	L615
3716  0027 7b02          	ld	a,(OFST+2,sp)
3717  0029 a101          	cp	a,#1
3718  002b 2603          	jrne	L415
3719  002d               L615:
3720  002d 4f            	clr	a
3721  002e 2010          	jra	L025
3722  0030               L415:
3723  0030 ae02f7        	ldw	x,#759
3724  0033 89            	pushw	x
3725  0034 ae0000        	ldw	x,#0
3726  0037 89            	pushw	x
3727  0038 ae0000        	ldw	x,#L37
3728  003b cd0000        	call	_assert_failed
3730  003e 5b04          	addw	sp,#4
3731  0040               L025:
3732                     ; 760     assert_param(IS_TIM1_IC_FILTER_OK(ICFilter));
3734  0040 7b05          	ld	a,(OFST+5,sp)
3735  0042 a110          	cp	a,#16
3736  0044 2403          	jruge	L225
3737  0046 4f            	clr	a
3738  0047 2010          	jra	L425
3739  0049               L225:
3740  0049 ae02f8        	ldw	x,#760
3741  004c 89            	pushw	x
3742  004d ae0000        	ldw	x,#0
3743  0050 89            	pushw	x
3744  0051 ae0000        	ldw	x,#L37
3745  0054 cd0000        	call	_assert_failed
3747  0057 5b04          	addw	sp,#4
3748  0059               L425:
3749                     ; 763     if (TIM1_TIxExternalCLKSource == TIM1_TIXEXTERNALCLK1SOURCE_TI2)
3751  0059 7b01          	ld	a,(OFST+1,sp)
3752  005b a160          	cp	a,#96
3753  005d 260f          	jrne	L3521
3754                     ; 765         TI2_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSELECTION_DIRECTTI, (uint8_t)ICFilter);
3756  005f 7b05          	ld	a,(OFST+5,sp)
3757  0061 88            	push	a
3758  0062 7b03          	ld	a,(OFST+3,sp)
3759  0064 ae0001        	ldw	x,#1
3760  0067 95            	ld	xh,a
3761  0068 cd0000        	call	L5_TI2_Config
3763  006b 84            	pop	a
3765  006c 200d          	jra	L5521
3766  006e               L3521:
3767                     ; 769         TI1_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSELECTION_DIRECTTI, (uint8_t)ICFilter);
3769  006e 7b05          	ld	a,(OFST+5,sp)
3770  0070 88            	push	a
3771  0071 7b03          	ld	a,(OFST+3,sp)
3772  0073 ae0001        	ldw	x,#1
3773  0076 95            	ld	xh,a
3774  0077 cd0000        	call	L3_TI1_Config
3776  007a 84            	pop	a
3777  007b               L5521:
3778                     ; 773     TIM1_SelectInputTrigger((TIM1_TS_TypeDef)TIM1_TIxExternalCLKSource);
3780  007b 7b01          	ld	a,(OFST+1,sp)
3781  007d cd0000        	call	_TIM1_SelectInputTrigger
3783                     ; 776     TIM1->SMCR |= (uint8_t)(TIM1_SLAVEMODE_EXTERNAL1);
3785  0080 c65252        	ld	a,21074
3786  0083 aa07          	or	a,#7
3787  0085 c75252        	ld	21074,a
3788                     ; 777 }
3791  0088 85            	popw	x
3792  0089 81            	ret
3878                     ; 789 void TIM1_SelectInputTrigger(TIM1_TS_TypeDef TIM1_InputTriggerSource)
3878                     ; 790 {
3879                     .text:	section	.text,new
3880  0000               _TIM1_SelectInputTrigger:
3882  0000 88            	push	a
3883       00000000      OFST:	set	0
3886                     ; 792     assert_param(IS_TIM1_TRIGGER_SELECTION_OK(TIM1_InputTriggerSource));
3888  0001 a140          	cp	a,#64
3889  0003 2713          	jreq	L235
3890  0005 a150          	cp	a,#80
3891  0007 270f          	jreq	L235
3892  0009 a160          	cp	a,#96
3893  000b 270b          	jreq	L235
3894  000d a170          	cp	a,#112
3895  000f 2707          	jreq	L235
3896  0011 a130          	cp	a,#48
3897  0013 2703          	jreq	L235
3898  0015 4d            	tnz	a
3899  0016 2603          	jrne	L035
3900  0018               L235:
3901  0018 4f            	clr	a
3902  0019 2010          	jra	L435
3903  001b               L035:
3904  001b ae0318        	ldw	x,#792
3905  001e 89            	pushw	x
3906  001f ae0000        	ldw	x,#0
3907  0022 89            	pushw	x
3908  0023 ae0000        	ldw	x,#L37
3909  0026 cd0000        	call	_assert_failed
3911  0029 5b04          	addw	sp,#4
3912  002b               L435:
3913                     ; 795     TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~TIM1_SMCR_TS)) | (uint8_t)TIM1_InputTriggerSource);
3915  002b c65252        	ld	a,21074
3916  002e a48f          	and	a,#143
3917  0030 1a01          	or	a,(OFST+1,sp)
3918  0032 c75252        	ld	21074,a
3919                     ; 796 }
3922  0035 84            	pop	a
3923  0036 81            	ret
3960                     ; 806 void TIM1_UpdateDisableConfig(FunctionalState NewState)
3960                     ; 807 {
3961                     .text:	section	.text,new
3962  0000               _TIM1_UpdateDisableConfig:
3964  0000 88            	push	a
3965       00000000      OFST:	set	0
3968                     ; 809     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3970  0001 4d            	tnz	a
3971  0002 2704          	jreq	L245
3972  0004 a101          	cp	a,#1
3973  0006 2603          	jrne	L045
3974  0008               L245:
3975  0008 4f            	clr	a
3976  0009 2010          	jra	L445
3977  000b               L045:
3978  000b ae0329        	ldw	x,#809
3979  000e 89            	pushw	x
3980  000f ae0000        	ldw	x,#0
3981  0012 89            	pushw	x
3982  0013 ae0000        	ldw	x,#L37
3983  0016 cd0000        	call	_assert_failed
3985  0019 5b04          	addw	sp,#4
3986  001b               L445:
3987                     ; 812     if (NewState != DISABLE)
3989  001b 0d01          	tnz	(OFST+1,sp)
3990  001d 2706          	jreq	L3331
3991                     ; 814         TIM1->CR1 |= TIM1_CR1_UDIS;
3993  001f 72125250      	bset	21072,#1
3995  0023 2004          	jra	L5331
3996  0025               L3331:
3997                     ; 818         TIM1->CR1 &= (uint8_t)(~TIM1_CR1_UDIS);
3999  0025 72135250      	bres	21072,#1
4000  0029               L5331:
4001                     ; 820 }
4004  0029 84            	pop	a
4005  002a 81            	ret
4064                     ; 830 void TIM1_UpdateRequestConfig(TIM1_UpdateSource_TypeDef TIM1_UpdateSource)
4064                     ; 831 {
4065                     .text:	section	.text,new
4066  0000               _TIM1_UpdateRequestConfig:
4068  0000 88            	push	a
4069       00000000      OFST:	set	0
4072                     ; 833     assert_param(IS_TIM1_UPDATE_SOURCE_OK(TIM1_UpdateSource));
4074  0001 4d            	tnz	a
4075  0002 2704          	jreq	L255
4076  0004 a101          	cp	a,#1
4077  0006 2603          	jrne	L055
4078  0008               L255:
4079  0008 4f            	clr	a
4080  0009 2010          	jra	L455
4081  000b               L055:
4082  000b ae0341        	ldw	x,#833
4083  000e 89            	pushw	x
4084  000f ae0000        	ldw	x,#0
4085  0012 89            	pushw	x
4086  0013 ae0000        	ldw	x,#L37
4087  0016 cd0000        	call	_assert_failed
4089  0019 5b04          	addw	sp,#4
4090  001b               L455:
4091                     ; 836     if (TIM1_UpdateSource != TIM1_UPDATESOURCE_GLOBAL)
4093  001b 0d01          	tnz	(OFST+1,sp)
4094  001d 2706          	jreq	L5631
4095                     ; 838         TIM1->CR1 |= TIM1_CR1_URS;
4097  001f 72145250      	bset	21072,#2
4099  0023 2004          	jra	L7631
4100  0025               L5631:
4101                     ; 842         TIM1->CR1 &= (uint8_t)(~TIM1_CR1_URS);
4103  0025 72155250      	bres	21072,#2
4104  0029               L7631:
4105                     ; 844 }
4108  0029 84            	pop	a
4109  002a 81            	ret
4146                     ; 853 void TIM1_SelectHallSensor(FunctionalState NewState)
4146                     ; 854 {
4147                     .text:	section	.text,new
4148  0000               _TIM1_SelectHallSensor:
4150  0000 88            	push	a
4151       00000000      OFST:	set	0
4154                     ; 856     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4156  0001 4d            	tnz	a
4157  0002 2704          	jreq	L265
4158  0004 a101          	cp	a,#1
4159  0006 2603          	jrne	L065
4160  0008               L265:
4161  0008 4f            	clr	a
4162  0009 2010          	jra	L465
4163  000b               L065:
4164  000b ae0358        	ldw	x,#856
4165  000e 89            	pushw	x
4166  000f ae0000        	ldw	x,#0
4167  0012 89            	pushw	x
4168  0013 ae0000        	ldw	x,#L37
4169  0016 cd0000        	call	_assert_failed
4171  0019 5b04          	addw	sp,#4
4172  001b               L465:
4173                     ; 859     if (NewState != DISABLE)
4175  001b 0d01          	tnz	(OFST+1,sp)
4176  001d 2706          	jreq	L7041
4177                     ; 861         TIM1->CR2 |= TIM1_CR2_TI1S;
4179  001f 721e5251      	bset	21073,#7
4181  0023 2004          	jra	L1141
4182  0025               L7041:
4183                     ; 865         TIM1->CR2 &= (uint8_t)(~TIM1_CR2_TI1S);
4185  0025 721f5251      	bres	21073,#7
4186  0029               L1141:
4187                     ; 867 }
4190  0029 84            	pop	a
4191  002a 81            	ret
4249                     ; 878 void TIM1_SelectOnePulseMode(TIM1_OPMode_TypeDef TIM1_OPMode)
4249                     ; 879 {
4250                     .text:	section	.text,new
4251  0000               _TIM1_SelectOnePulseMode:
4253  0000 88            	push	a
4254       00000000      OFST:	set	0
4257                     ; 881     assert_param(IS_TIM1_OPM_MODE_OK(TIM1_OPMode));
4259  0001 a101          	cp	a,#1
4260  0003 2703          	jreq	L275
4261  0005 4d            	tnz	a
4262  0006 2603          	jrne	L075
4263  0008               L275:
4264  0008 4f            	clr	a
4265  0009 2010          	jra	L475
4266  000b               L075:
4267  000b ae0371        	ldw	x,#881
4268  000e 89            	pushw	x
4269  000f ae0000        	ldw	x,#0
4270  0012 89            	pushw	x
4271  0013 ae0000        	ldw	x,#L37
4272  0016 cd0000        	call	_assert_failed
4274  0019 5b04          	addw	sp,#4
4275  001b               L475:
4276                     ; 884     if (TIM1_OPMode != TIM1_OPMODE_REPETITIVE)
4278  001b 0d01          	tnz	(OFST+1,sp)
4279  001d 2706          	jreq	L1441
4280                     ; 886         TIM1->CR1 |= TIM1_CR1_OPM;
4282  001f 72165250      	bset	21072,#3
4284  0023 2004          	jra	L3441
4285  0025               L1441:
4286                     ; 890         TIM1->CR1 &= (uint8_t)(~TIM1_CR1_OPM);
4288  0025 72175250      	bres	21072,#3
4289  0029               L3441:
4290                     ; 893 }
4293  0029 84            	pop	a
4294  002a 81            	ret
4393                     ; 909 void TIM1_SelectOutputTrigger(TIM1_TRGOSource_TypeDef TIM1_TRGOSource)
4393                     ; 910 {
4394                     .text:	section	.text,new
4395  0000               _TIM1_SelectOutputTrigger:
4397  0000 88            	push	a
4398       00000000      OFST:	set	0
4401                     ; 912     assert_param(IS_TIM1_TRGO_SOURCE_OK(TIM1_TRGOSource));
4403  0001 4d            	tnz	a
4404  0002 2718          	jreq	L206
4405  0004 a110          	cp	a,#16
4406  0006 2714          	jreq	L206
4407  0008 a120          	cp	a,#32
4408  000a 2710          	jreq	L206
4409  000c a130          	cp	a,#48
4410  000e 270c          	jreq	L206
4411  0010 a140          	cp	a,#64
4412  0012 2708          	jreq	L206
4413  0014 a150          	cp	a,#80
4414  0016 2704          	jreq	L206
4415  0018 a160          	cp	a,#96
4416  001a 2603          	jrne	L006
4417  001c               L206:
4418  001c 4f            	clr	a
4419  001d 2010          	jra	L406
4420  001f               L006:
4421  001f ae0390        	ldw	x,#912
4422  0022 89            	pushw	x
4423  0023 ae0000        	ldw	x,#0
4424  0026 89            	pushw	x
4425  0027 ae0000        	ldw	x,#L37
4426  002a cd0000        	call	_assert_failed
4428  002d 5b04          	addw	sp,#4
4429  002f               L406:
4430                     ; 915     TIM1->CR2 = (uint8_t)((uint8_t)(TIM1->CR2 & (uint8_t)(~TIM1_CR2_MMS)) | 
4430                     ; 916                           (uint8_t) TIM1_TRGOSource);
4432  002f c65251        	ld	a,21073
4433  0032 a48f          	and	a,#143
4434  0034 1a01          	or	a,(OFST+1,sp)
4435  0036 c75251        	ld	21073,a
4436                     ; 917 }
4439  0039 84            	pop	a
4440  003a 81            	ret
4515                     ; 929 void TIM1_SelectSlaveMode(TIM1_SlaveMode_TypeDef TIM1_SlaveMode)
4515                     ; 930 {
4516                     .text:	section	.text,new
4517  0000               _TIM1_SelectSlaveMode:
4519  0000 88            	push	a
4520       00000000      OFST:	set	0
4523                     ; 933     assert_param(IS_TIM1_SLAVE_MODE_OK(TIM1_SlaveMode));
4525  0001 a104          	cp	a,#4
4526  0003 270c          	jreq	L216
4527  0005 a105          	cp	a,#5
4528  0007 2708          	jreq	L216
4529  0009 a106          	cp	a,#6
4530  000b 2704          	jreq	L216
4531  000d a107          	cp	a,#7
4532  000f 2603          	jrne	L016
4533  0011               L216:
4534  0011 4f            	clr	a
4535  0012 2010          	jra	L416
4536  0014               L016:
4537  0014 ae03a5        	ldw	x,#933
4538  0017 89            	pushw	x
4539  0018 ae0000        	ldw	x,#0
4540  001b 89            	pushw	x
4541  001c ae0000        	ldw	x,#L37
4542  001f cd0000        	call	_assert_failed
4544  0022 5b04          	addw	sp,#4
4545  0024               L416:
4546                     ; 936     TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~TIM1_SMCR_SMS)) |
4546                     ; 937                            (uint8_t)TIM1_SlaveMode);
4548  0024 c65252        	ld	a,21074
4549  0027 a4f8          	and	a,#248
4550  0029 1a01          	or	a,(OFST+1,sp)
4551  002b c75252        	ld	21074,a
4552                     ; 939 }
4555  002e 84            	pop	a
4556  002f 81            	ret
4593                     ; 947 void TIM1_SelectMasterSlaveMode(FunctionalState NewState)
4593                     ; 948 {
4594                     .text:	section	.text,new
4595  0000               _TIM1_SelectMasterSlaveMode:
4597  0000 88            	push	a
4598       00000000      OFST:	set	0
4601                     ; 950     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4603  0001 4d            	tnz	a
4604  0002 2704          	jreq	L226
4605  0004 a101          	cp	a,#1
4606  0006 2603          	jrne	L026
4607  0008               L226:
4608  0008 4f            	clr	a
4609  0009 2010          	jra	L426
4610  000b               L026:
4611  000b ae03b6        	ldw	x,#950
4612  000e 89            	pushw	x
4613  000f ae0000        	ldw	x,#0
4614  0012 89            	pushw	x
4615  0013 ae0000        	ldw	x,#L37
4616  0016 cd0000        	call	_assert_failed
4618  0019 5b04          	addw	sp,#4
4619  001b               L426:
4620                     ; 953     if (NewState != DISABLE)
4622  001b 0d01          	tnz	(OFST+1,sp)
4623  001d 2706          	jreq	L5551
4624                     ; 955         TIM1->SMCR |= TIM1_SMCR_MSM;
4626  001f 721e5252      	bset	21074,#7
4628  0023 2004          	jra	L7551
4629  0025               L5551:
4630                     ; 959         TIM1->SMCR &= (uint8_t)(~TIM1_SMCR_MSM);
4632  0025 721f5252      	bres	21074,#7
4633  0029               L7551:
4634                     ; 961 }
4637  0029 84            	pop	a
4638  002a 81            	ret
4725                     ; 983 void TIM1_EncoderInterfaceConfig(TIM1_EncoderMode_TypeDef TIM1_EncoderMode,
4725                     ; 984                                  TIM1_ICPolarity_TypeDef TIM1_IC1Polarity,
4725                     ; 985                                  TIM1_ICPolarity_TypeDef TIM1_IC2Polarity)
4725                     ; 986 {
4726                     .text:	section	.text,new
4727  0000               _TIM1_EncoderInterfaceConfig:
4729  0000 89            	pushw	x
4730       00000000      OFST:	set	0
4733                     ; 990     assert_param(IS_TIM1_ENCODER_MODE_OK(TIM1_EncoderMode));
4735  0001 9e            	ld	a,xh
4736  0002 a101          	cp	a,#1
4737  0004 270a          	jreq	L236
4738  0006 9e            	ld	a,xh
4739  0007 a102          	cp	a,#2
4740  0009 2705          	jreq	L236
4741  000b 9e            	ld	a,xh
4742  000c a103          	cp	a,#3
4743  000e 2603          	jrne	L036
4744  0010               L236:
4745  0010 4f            	clr	a
4746  0011 2010          	jra	L436
4747  0013               L036:
4748  0013 ae03de        	ldw	x,#990
4749  0016 89            	pushw	x
4750  0017 ae0000        	ldw	x,#0
4751  001a 89            	pushw	x
4752  001b ae0000        	ldw	x,#L37
4753  001e cd0000        	call	_assert_failed
4755  0021 5b04          	addw	sp,#4
4756  0023               L436:
4757                     ; 991     assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_IC1Polarity));
4759  0023 0d02          	tnz	(OFST+2,sp)
4760  0025 2706          	jreq	L046
4761  0027 7b02          	ld	a,(OFST+2,sp)
4762  0029 a101          	cp	a,#1
4763  002b 2603          	jrne	L636
4764  002d               L046:
4765  002d 4f            	clr	a
4766  002e 2010          	jra	L246
4767  0030               L636:
4768  0030 ae03df        	ldw	x,#991
4769  0033 89            	pushw	x
4770  0034 ae0000        	ldw	x,#0
4771  0037 89            	pushw	x
4772  0038 ae0000        	ldw	x,#L37
4773  003b cd0000        	call	_assert_failed
4775  003e 5b04          	addw	sp,#4
4776  0040               L246:
4777                     ; 992     assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_IC2Polarity));
4779  0040 0d05          	tnz	(OFST+5,sp)
4780  0042 2706          	jreq	L646
4781  0044 7b05          	ld	a,(OFST+5,sp)
4782  0046 a101          	cp	a,#1
4783  0048 2603          	jrne	L446
4784  004a               L646:
4785  004a 4f            	clr	a
4786  004b 2010          	jra	L056
4787  004d               L446:
4788  004d ae03e0        	ldw	x,#992
4789  0050 89            	pushw	x
4790  0051 ae0000        	ldw	x,#0
4791  0054 89            	pushw	x
4792  0055 ae0000        	ldw	x,#L37
4793  0058 cd0000        	call	_assert_failed
4795  005b 5b04          	addw	sp,#4
4796  005d               L056:
4797                     ; 995     if (TIM1_IC1Polarity != TIM1_ICPOLARITY_RISING)
4799  005d 0d02          	tnz	(OFST+2,sp)
4800  005f 2706          	jreq	L1261
4801                     ; 997         TIM1->CCER1 |= TIM1_CCER1_CC1P;
4803  0061 7212525c      	bset	21084,#1
4805  0065 2004          	jra	L3261
4806  0067               L1261:
4807                     ; 1001         TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
4809  0067 7213525c      	bres	21084,#1
4810  006b               L3261:
4811                     ; 1004     if (TIM1_IC2Polarity != TIM1_ICPOLARITY_RISING)
4813  006b 0d05          	tnz	(OFST+5,sp)
4814  006d 2706          	jreq	L5261
4815                     ; 1006         TIM1->CCER1 |= TIM1_CCER1_CC2P;
4817  006f 721a525c      	bset	21084,#5
4819  0073 2004          	jra	L7261
4820  0075               L5261:
4821                     ; 1010         TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
4823  0075 721b525c      	bres	21084,#5
4824  0079               L7261:
4825                     ; 1013     TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(TIM1_SMCR_MSM | TIM1_SMCR_TS))
4825                     ; 1014                            | (uint8_t) TIM1_EncoderMode);
4827  0079 c65252        	ld	a,21074
4828  007c a4f0          	and	a,#240
4829  007e 1a01          	or	a,(OFST+1,sp)
4830  0080 c75252        	ld	21074,a
4831                     ; 1017     TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_CCxS)) 
4831                     ; 1018                             | (uint8_t) CCMR_TIxDirect_Set);
4833  0083 c65258        	ld	a,21080
4834  0086 a4fc          	and	a,#252
4835  0088 aa01          	or	a,#1
4836  008a c75258        	ld	21080,a
4837                     ; 1019     TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_CCxS))
4837                     ; 1020                             | (uint8_t) CCMR_TIxDirect_Set);
4839  008d c65259        	ld	a,21081
4840  0090 a4fc          	and	a,#252
4841  0092 aa01          	or	a,#1
4842  0094 c75259        	ld	21081,a
4843                     ; 1022 }
4846  0097 85            	popw	x
4847  0098 81            	ret
4913                     ; 1035 void TIM1_PrescalerConfig(uint16_t Prescaler,
4913                     ; 1036                           TIM1_PSCReloadMode_TypeDef TIM1_PSCReloadMode)
4913                     ; 1037 {
4914                     .text:	section	.text,new
4915  0000               _TIM1_PrescalerConfig:
4917  0000 89            	pushw	x
4918       00000000      OFST:	set	0
4921                     ; 1039     assert_param(IS_TIM1_PRESCALER_RELOAD_OK(TIM1_PSCReloadMode));
4923  0001 0d05          	tnz	(OFST+5,sp)
4924  0003 2706          	jreq	L656
4925  0005 7b05          	ld	a,(OFST+5,sp)
4926  0007 a101          	cp	a,#1
4927  0009 2603          	jrne	L456
4928  000b               L656:
4929  000b 4f            	clr	a
4930  000c 2010          	jra	L066
4931  000e               L456:
4932  000e ae040f        	ldw	x,#1039
4933  0011 89            	pushw	x
4934  0012 ae0000        	ldw	x,#0
4935  0015 89            	pushw	x
4936  0016 ae0000        	ldw	x,#L37
4937  0019 cd0000        	call	_assert_failed
4939  001c 5b04          	addw	sp,#4
4940  001e               L066:
4941                     ; 1042     TIM1->PSCRH = (uint8_t)(Prescaler >> 8);
4943  001e 7b01          	ld	a,(OFST+1,sp)
4944  0020 c75260        	ld	21088,a
4945                     ; 1043     TIM1->PSCRL = (uint8_t)(Prescaler);
4947  0023 7b02          	ld	a,(OFST+2,sp)
4948  0025 c75261        	ld	21089,a
4949                     ; 1046     TIM1->EGR = (uint8_t)TIM1_PSCReloadMode;
4951  0028 7b05          	ld	a,(OFST+5,sp)
4952  002a c75257        	ld	21079,a
4953                     ; 1048 }
4956  002d 85            	popw	x
4957  002e 81            	ret
4994                     ; 1061 void TIM1_CounterModeConfig(TIM1_CounterMode_TypeDef TIM1_CounterMode)
4994                     ; 1062 {
4995                     .text:	section	.text,new
4996  0000               _TIM1_CounterModeConfig:
4998  0000 88            	push	a
4999       00000000      OFST:	set	0
5002                     ; 1064     assert_param(IS_TIM1_COUNTER_MODE_OK(TIM1_CounterMode));
5004  0001 4d            	tnz	a
5005  0002 2710          	jreq	L666
5006  0004 a110          	cp	a,#16
5007  0006 270c          	jreq	L666
5008  0008 a120          	cp	a,#32
5009  000a 2708          	jreq	L666
5010  000c a140          	cp	a,#64
5011  000e 2704          	jreq	L666
5012  0010 a160          	cp	a,#96
5013  0012 2603          	jrne	L466
5014  0014               L666:
5015  0014 4f            	clr	a
5016  0015 2010          	jra	L076
5017  0017               L466:
5018  0017 ae0428        	ldw	x,#1064
5019  001a 89            	pushw	x
5020  001b ae0000        	ldw	x,#0
5021  001e 89            	pushw	x
5022  001f ae0000        	ldw	x,#L37
5023  0022 cd0000        	call	_assert_failed
5025  0025 5b04          	addw	sp,#4
5026  0027               L076:
5027                     ; 1068     TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)((uint8_t)(~TIM1_CR1_CMS) & (uint8_t)(~TIM1_CR1_DIR)))
5027                     ; 1069                           | (uint8_t)TIM1_CounterMode);
5029  0027 c65250        	ld	a,21072
5030  002a a48f          	and	a,#143
5031  002c 1a01          	or	a,(OFST+1,sp)
5032  002e c75250        	ld	21072,a
5033                     ; 1070 }
5036  0031 84            	pop	a
5037  0032 81            	ret
5096                     ; 1081 void TIM1_ForcedOC1Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
5096                     ; 1082 {
5097                     .text:	section	.text,new
5098  0000               _TIM1_ForcedOC1Config:
5100  0000 88            	push	a
5101       00000000      OFST:	set	0
5104                     ; 1084     assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
5106  0001 a150          	cp	a,#80
5107  0003 2704          	jreq	L676
5108  0005 a140          	cp	a,#64
5109  0007 2603          	jrne	L476
5110  0009               L676:
5111  0009 4f            	clr	a
5112  000a 2010          	jra	L007
5113  000c               L476:
5114  000c ae043c        	ldw	x,#1084
5115  000f 89            	pushw	x
5116  0010 ae0000        	ldw	x,#0
5117  0013 89            	pushw	x
5118  0014 ae0000        	ldw	x,#L37
5119  0017 cd0000        	call	_assert_failed
5121  001a 5b04          	addw	sp,#4
5122  001c               L007:
5123                     ; 1087     TIM1->CCMR1 =  (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM))|
5123                     ; 1088                              (uint8_t)TIM1_ForcedAction);
5125  001c c65258        	ld	a,21080
5126  001f a48f          	and	a,#143
5127  0021 1a01          	or	a,(OFST+1,sp)
5128  0023 c75258        	ld	21080,a
5129                     ; 1089 }
5132  0026 84            	pop	a
5133  0027 81            	ret
5170                     ; 1100 void TIM1_ForcedOC2Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
5170                     ; 1101 {
5171                     .text:	section	.text,new
5172  0000               _TIM1_ForcedOC2Config:
5174  0000 88            	push	a
5175       00000000      OFST:	set	0
5178                     ; 1103     assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
5180  0001 a150          	cp	a,#80
5181  0003 2704          	jreq	L607
5182  0005 a140          	cp	a,#64
5183  0007 2603          	jrne	L407
5184  0009               L607:
5185  0009 4f            	clr	a
5186  000a 2010          	jra	L017
5187  000c               L407:
5188  000c ae044f        	ldw	x,#1103
5189  000f 89            	pushw	x
5190  0010 ae0000        	ldw	x,#0
5191  0013 89            	pushw	x
5192  0014 ae0000        	ldw	x,#L37
5193  0017 cd0000        	call	_assert_failed
5195  001a 5b04          	addw	sp,#4
5196  001c               L017:
5197                     ; 1106     TIM1->CCMR2  =  (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM))
5197                     ; 1107                               | (uint8_t)TIM1_ForcedAction);
5199  001c c65259        	ld	a,21081
5200  001f a48f          	and	a,#143
5201  0021 1a01          	or	a,(OFST+1,sp)
5202  0023 c75259        	ld	21081,a
5203                     ; 1108 }
5206  0026 84            	pop	a
5207  0027 81            	ret
5244                     ; 1120 void TIM1_ForcedOC3Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
5244                     ; 1121 {
5245                     .text:	section	.text,new
5246  0000               _TIM1_ForcedOC3Config:
5248  0000 88            	push	a
5249       00000000      OFST:	set	0
5252                     ; 1123     assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
5254  0001 a150          	cp	a,#80
5255  0003 2704          	jreq	L617
5256  0005 a140          	cp	a,#64
5257  0007 2603          	jrne	L417
5258  0009               L617:
5259  0009 4f            	clr	a
5260  000a 2010          	jra	L027
5261  000c               L417:
5262  000c ae0463        	ldw	x,#1123
5263  000f 89            	pushw	x
5264  0010 ae0000        	ldw	x,#0
5265  0013 89            	pushw	x
5266  0014 ae0000        	ldw	x,#L37
5267  0017 cd0000        	call	_assert_failed
5269  001a 5b04          	addw	sp,#4
5270  001c               L027:
5271                     ; 1126     TIM1->CCMR3  =  (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM))  
5271                     ; 1127                               | (uint8_t)TIM1_ForcedAction);
5273  001c c6525a        	ld	a,21082
5274  001f a48f          	and	a,#143
5275  0021 1a01          	or	a,(OFST+1,sp)
5276  0023 c7525a        	ld	21082,a
5277                     ; 1128 }
5280  0026 84            	pop	a
5281  0027 81            	ret
5318                     ; 1140 void TIM1_ForcedOC4Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
5318                     ; 1141 {
5319                     .text:	section	.text,new
5320  0000               _TIM1_ForcedOC4Config:
5322  0000 88            	push	a
5323       00000000      OFST:	set	0
5326                     ; 1143     assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
5328  0001 a150          	cp	a,#80
5329  0003 2704          	jreq	L627
5330  0005 a140          	cp	a,#64
5331  0007 2603          	jrne	L427
5332  0009               L627:
5333  0009 4f            	clr	a
5334  000a 2010          	jra	L037
5335  000c               L427:
5336  000c ae0477        	ldw	x,#1143
5337  000f 89            	pushw	x
5338  0010 ae0000        	ldw	x,#0
5339  0013 89            	pushw	x
5340  0014 ae0000        	ldw	x,#L37
5341  0017 cd0000        	call	_assert_failed
5343  001a 5b04          	addw	sp,#4
5344  001c               L037:
5345                     ; 1146     TIM1->CCMR4  =  (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) 
5345                     ; 1147                               | (uint8_t)TIM1_ForcedAction);
5347  001c c6525b        	ld	a,21083
5348  001f a48f          	and	a,#143
5349  0021 1a01          	or	a,(OFST+1,sp)
5350  0023 c7525b        	ld	21083,a
5351                     ; 1148 }
5354  0026 84            	pop	a
5355  0027 81            	ret
5392                     ; 1157 void TIM1_ARRPreloadConfig(FunctionalState NewState)
5392                     ; 1158 {
5393                     .text:	section	.text,new
5394  0000               _TIM1_ARRPreloadConfig:
5396  0000 88            	push	a
5397       00000000      OFST:	set	0
5400                     ; 1160     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5402  0001 4d            	tnz	a
5403  0002 2704          	jreq	L637
5404  0004 a101          	cp	a,#1
5405  0006 2603          	jrne	L437
5406  0008               L637:
5407  0008 4f            	clr	a
5408  0009 2010          	jra	L047
5409  000b               L437:
5410  000b ae0488        	ldw	x,#1160
5411  000e 89            	pushw	x
5412  000f ae0000        	ldw	x,#0
5413  0012 89            	pushw	x
5414  0013 ae0000        	ldw	x,#L37
5415  0016 cd0000        	call	_assert_failed
5417  0019 5b04          	addw	sp,#4
5418  001b               L047:
5419                     ; 1163     if (NewState != DISABLE)
5421  001b 0d01          	tnz	(OFST+1,sp)
5422  001d 2706          	jreq	L5102
5423                     ; 1165         TIM1->CR1 |= TIM1_CR1_ARPE;
5425  001f 721e5250      	bset	21072,#7
5427  0023 2004          	jra	L7102
5428  0025               L5102:
5429                     ; 1169         TIM1->CR1 &= (uint8_t)(~TIM1_CR1_ARPE);
5431  0025 721f5250      	bres	21072,#7
5432  0029               L7102:
5433                     ; 1171 }
5436  0029 84            	pop	a
5437  002a 81            	ret
5473                     ; 1180 void TIM1_SelectCOM(FunctionalState NewState)
5473                     ; 1181 {
5474                     .text:	section	.text,new
5475  0000               _TIM1_SelectCOM:
5477  0000 88            	push	a
5478       00000000      OFST:	set	0
5481                     ; 1183     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5483  0001 4d            	tnz	a
5484  0002 2704          	jreq	L647
5485  0004 a101          	cp	a,#1
5486  0006 2603          	jrne	L447
5487  0008               L647:
5488  0008 4f            	clr	a
5489  0009 2010          	jra	L057
5490  000b               L447:
5491  000b ae049f        	ldw	x,#1183
5492  000e 89            	pushw	x
5493  000f ae0000        	ldw	x,#0
5494  0012 89            	pushw	x
5495  0013 ae0000        	ldw	x,#L37
5496  0016 cd0000        	call	_assert_failed
5498  0019 5b04          	addw	sp,#4
5499  001b               L057:
5500                     ; 1186     if (NewState != DISABLE)
5502  001b 0d01          	tnz	(OFST+1,sp)
5503  001d 2706          	jreq	L7302
5504                     ; 1188         TIM1->CR2 |= TIM1_CR2_COMS;
5506  001f 72145251      	bset	21073,#2
5508  0023 2004          	jra	L1402
5509  0025               L7302:
5510                     ; 1192         TIM1->CR2 &= (uint8_t)(~TIM1_CR2_COMS);
5512  0025 72155251      	bres	21073,#2
5513  0029               L1402:
5514                     ; 1194 }
5517  0029 84            	pop	a
5518  002a 81            	ret
5555                     ; 1202 void TIM1_CCPreloadControl(FunctionalState NewState)
5555                     ; 1203 {
5556                     .text:	section	.text,new
5557  0000               _TIM1_CCPreloadControl:
5559  0000 88            	push	a
5560       00000000      OFST:	set	0
5563                     ; 1205     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5565  0001 4d            	tnz	a
5566  0002 2704          	jreq	L657
5567  0004 a101          	cp	a,#1
5568  0006 2603          	jrne	L457
5569  0008               L657:
5570  0008 4f            	clr	a
5571  0009 2010          	jra	L067
5572  000b               L457:
5573  000b ae04b5        	ldw	x,#1205
5574  000e 89            	pushw	x
5575  000f ae0000        	ldw	x,#0
5576  0012 89            	pushw	x
5577  0013 ae0000        	ldw	x,#L37
5578  0016 cd0000        	call	_assert_failed
5580  0019 5b04          	addw	sp,#4
5581  001b               L067:
5582                     ; 1208     if (NewState != DISABLE)
5584  001b 0d01          	tnz	(OFST+1,sp)
5585  001d 2706          	jreq	L1602
5586                     ; 1210         TIM1->CR2 |= TIM1_CR2_CCPC;
5588  001f 72105251      	bset	21073,#0
5590  0023 2004          	jra	L3602
5591  0025               L1602:
5592                     ; 1214         TIM1->CR2 &= (uint8_t)(~TIM1_CR2_CCPC);
5594  0025 72115251      	bres	21073,#0
5595  0029               L3602:
5596                     ; 1216 }
5599  0029 84            	pop	a
5600  002a 81            	ret
5637                     ; 1225 void TIM1_OC1PreloadConfig(FunctionalState NewState)
5637                     ; 1226 {
5638                     .text:	section	.text,new
5639  0000               _TIM1_OC1PreloadConfig:
5641  0000 88            	push	a
5642       00000000      OFST:	set	0
5645                     ; 1228     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5647  0001 4d            	tnz	a
5648  0002 2704          	jreq	L667
5649  0004 a101          	cp	a,#1
5650  0006 2603          	jrne	L467
5651  0008               L667:
5652  0008 4f            	clr	a
5653  0009 2010          	jra	L077
5654  000b               L467:
5655  000b ae04cc        	ldw	x,#1228
5656  000e 89            	pushw	x
5657  000f ae0000        	ldw	x,#0
5658  0012 89            	pushw	x
5659  0013 ae0000        	ldw	x,#L37
5660  0016 cd0000        	call	_assert_failed
5662  0019 5b04          	addw	sp,#4
5663  001b               L077:
5664                     ; 1231     if (NewState != DISABLE)
5666  001b 0d01          	tnz	(OFST+1,sp)
5667  001d 2706          	jreq	L3012
5668                     ; 1233         TIM1->CCMR1 |= TIM1_CCMR_OCxPE;
5670  001f 72165258      	bset	21080,#3
5672  0023 2004          	jra	L5012
5673  0025               L3012:
5674                     ; 1237         TIM1->CCMR1 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5676  0025 72175258      	bres	21080,#3
5677  0029               L5012:
5678                     ; 1239 }
5681  0029 84            	pop	a
5682  002a 81            	ret
5719                     ; 1248 void TIM1_OC2PreloadConfig(FunctionalState NewState)
5719                     ; 1249 {
5720                     .text:	section	.text,new
5721  0000               _TIM1_OC2PreloadConfig:
5723  0000 88            	push	a
5724       00000000      OFST:	set	0
5727                     ; 1251     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5729  0001 4d            	tnz	a
5730  0002 2704          	jreq	L677
5731  0004 a101          	cp	a,#1
5732  0006 2603          	jrne	L477
5733  0008               L677:
5734  0008 4f            	clr	a
5735  0009 2010          	jra	L0001
5736  000b               L477:
5737  000b ae04e3        	ldw	x,#1251
5738  000e 89            	pushw	x
5739  000f ae0000        	ldw	x,#0
5740  0012 89            	pushw	x
5741  0013 ae0000        	ldw	x,#L37
5742  0016 cd0000        	call	_assert_failed
5744  0019 5b04          	addw	sp,#4
5745  001b               L0001:
5746                     ; 1254     if (NewState != DISABLE)
5748  001b 0d01          	tnz	(OFST+1,sp)
5749  001d 2706          	jreq	L5212
5750                     ; 1256         TIM1->CCMR2 |= TIM1_CCMR_OCxPE;
5752  001f 72165259      	bset	21081,#3
5754  0023 2004          	jra	L7212
5755  0025               L5212:
5756                     ; 1260         TIM1->CCMR2 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5758  0025 72175259      	bres	21081,#3
5759  0029               L7212:
5760                     ; 1262 }
5763  0029 84            	pop	a
5764  002a 81            	ret
5801                     ; 1271 void TIM1_OC3PreloadConfig(FunctionalState NewState)
5801                     ; 1272 {
5802                     .text:	section	.text,new
5803  0000               _TIM1_OC3PreloadConfig:
5805  0000 88            	push	a
5806       00000000      OFST:	set	0
5809                     ; 1274     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5811  0001 4d            	tnz	a
5812  0002 2704          	jreq	L6001
5813  0004 a101          	cp	a,#1
5814  0006 2603          	jrne	L4001
5815  0008               L6001:
5816  0008 4f            	clr	a
5817  0009 2010          	jra	L0101
5818  000b               L4001:
5819  000b ae04fa        	ldw	x,#1274
5820  000e 89            	pushw	x
5821  000f ae0000        	ldw	x,#0
5822  0012 89            	pushw	x
5823  0013 ae0000        	ldw	x,#L37
5824  0016 cd0000        	call	_assert_failed
5826  0019 5b04          	addw	sp,#4
5827  001b               L0101:
5828                     ; 1277     if (NewState != DISABLE)
5830  001b 0d01          	tnz	(OFST+1,sp)
5831  001d 2706          	jreq	L7412
5832                     ; 1279         TIM1->CCMR3 |= TIM1_CCMR_OCxPE;
5834  001f 7216525a      	bset	21082,#3
5836  0023 2004          	jra	L1512
5837  0025               L7412:
5838                     ; 1283         TIM1->CCMR3 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5840  0025 7217525a      	bres	21082,#3
5841  0029               L1512:
5842                     ; 1285 }
5845  0029 84            	pop	a
5846  002a 81            	ret
5883                     ; 1295 void TIM1_OC4PreloadConfig(FunctionalState NewState)
5883                     ; 1296 {
5884                     .text:	section	.text,new
5885  0000               _TIM1_OC4PreloadConfig:
5887  0000 88            	push	a
5888       00000000      OFST:	set	0
5891                     ; 1298     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5893  0001 4d            	tnz	a
5894  0002 2704          	jreq	L6101
5895  0004 a101          	cp	a,#1
5896  0006 2603          	jrne	L4101
5897  0008               L6101:
5898  0008 4f            	clr	a
5899  0009 2010          	jra	L0201
5900  000b               L4101:
5901  000b ae0512        	ldw	x,#1298
5902  000e 89            	pushw	x
5903  000f ae0000        	ldw	x,#0
5904  0012 89            	pushw	x
5905  0013 ae0000        	ldw	x,#L37
5906  0016 cd0000        	call	_assert_failed
5908  0019 5b04          	addw	sp,#4
5909  001b               L0201:
5910                     ; 1301     if (NewState != DISABLE)
5912  001b 0d01          	tnz	(OFST+1,sp)
5913  001d 2706          	jreq	L1712
5914                     ; 1303         TIM1->CCMR4 |= TIM1_CCMR_OCxPE;
5916  001f 7216525b      	bset	21083,#3
5918  0023 2004          	jra	L3712
5919  0025               L1712:
5920                     ; 1307         TIM1->CCMR4 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5922  0025 7217525b      	bres	21083,#3
5923  0029               L3712:
5924                     ; 1309 }
5927  0029 84            	pop	a
5928  002a 81            	ret
5964                     ; 1317 void TIM1_OC1FastConfig(FunctionalState NewState)
5964                     ; 1318 {
5965                     .text:	section	.text,new
5966  0000               _TIM1_OC1FastConfig:
5968  0000 88            	push	a
5969       00000000      OFST:	set	0
5972                     ; 1320     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5974  0001 4d            	tnz	a
5975  0002 2704          	jreq	L6201
5976  0004 a101          	cp	a,#1
5977  0006 2603          	jrne	L4201
5978  0008               L6201:
5979  0008 4f            	clr	a
5980  0009 2010          	jra	L0301
5981  000b               L4201:
5982  000b ae0528        	ldw	x,#1320
5983  000e 89            	pushw	x
5984  000f ae0000        	ldw	x,#0
5985  0012 89            	pushw	x
5986  0013 ae0000        	ldw	x,#L37
5987  0016 cd0000        	call	_assert_failed
5989  0019 5b04          	addw	sp,#4
5990  001b               L0301:
5991                     ; 1323     if (NewState != DISABLE)
5993  001b 0d01          	tnz	(OFST+1,sp)
5994  001d 2706          	jreq	L3122
5995                     ; 1325         TIM1->CCMR1 |= TIM1_CCMR_OCxFE;
5997  001f 72145258      	bset	21080,#2
5999  0023 2004          	jra	L5122
6000  0025               L3122:
6001                     ; 1329         TIM1->CCMR1 &= (uint8_t)(~TIM1_CCMR_OCxFE);
6003  0025 72155258      	bres	21080,#2
6004  0029               L5122:
6005                     ; 1331 }
6008  0029 84            	pop	a
6009  002a 81            	ret
6045                     ; 1341 void TIM1_OC2FastConfig(FunctionalState NewState)
6045                     ; 1342 {
6046                     .text:	section	.text,new
6047  0000               _TIM1_OC2FastConfig:
6049  0000 88            	push	a
6050       00000000      OFST:	set	0
6053                     ; 1344     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
6055  0001 4d            	tnz	a
6056  0002 2704          	jreq	L6301
6057  0004 a101          	cp	a,#1
6058  0006 2603          	jrne	L4301
6059  0008               L6301:
6060  0008 4f            	clr	a
6061  0009 2010          	jra	L0401
6062  000b               L4301:
6063  000b ae0540        	ldw	x,#1344
6064  000e 89            	pushw	x
6065  000f ae0000        	ldw	x,#0
6066  0012 89            	pushw	x
6067  0013 ae0000        	ldw	x,#L37
6068  0016 cd0000        	call	_assert_failed
6070  0019 5b04          	addw	sp,#4
6071  001b               L0401:
6072                     ; 1347     if (NewState != DISABLE)
6074  001b 0d01          	tnz	(OFST+1,sp)
6075  001d 2706          	jreq	L5322
6076                     ; 1349         TIM1->CCMR2 |= TIM1_CCMR_OCxFE;
6078  001f 72145259      	bset	21081,#2
6080  0023 2004          	jra	L7322
6081  0025               L5322:
6082                     ; 1353         TIM1->CCMR2 &= (uint8_t)(~TIM1_CCMR_OCxFE);
6084  0025 72155259      	bres	21081,#2
6085  0029               L7322:
6086                     ; 1355 }
6089  0029 84            	pop	a
6090  002a 81            	ret
6126                     ; 1364 void TIM1_OC3FastConfig(FunctionalState NewState)
6126                     ; 1365 {
6127                     .text:	section	.text,new
6128  0000               _TIM1_OC3FastConfig:
6130  0000 88            	push	a
6131       00000000      OFST:	set	0
6134                     ; 1367     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
6136  0001 4d            	tnz	a
6137  0002 2704          	jreq	L6401
6138  0004 a101          	cp	a,#1
6139  0006 2603          	jrne	L4401
6140  0008               L6401:
6141  0008 4f            	clr	a
6142  0009 2010          	jra	L0501
6143  000b               L4401:
6144  000b ae0557        	ldw	x,#1367
6145  000e 89            	pushw	x
6146  000f ae0000        	ldw	x,#0
6147  0012 89            	pushw	x
6148  0013 ae0000        	ldw	x,#L37
6149  0016 cd0000        	call	_assert_failed
6151  0019 5b04          	addw	sp,#4
6152  001b               L0501:
6153                     ; 1370     if (NewState != DISABLE)
6155  001b 0d01          	tnz	(OFST+1,sp)
6156  001d 2706          	jreq	L7522
6157                     ; 1372         TIM1->CCMR3 |= TIM1_CCMR_OCxFE;
6159  001f 7214525a      	bset	21082,#2
6161  0023 2004          	jra	L1622
6162  0025               L7522:
6163                     ; 1376         TIM1->CCMR3 &= (uint8_t)(~TIM1_CCMR_OCxFE);
6165  0025 7215525a      	bres	21082,#2
6166  0029               L1622:
6167                     ; 1378 }
6170  0029 84            	pop	a
6171  002a 81            	ret
6207                     ; 1387 void TIM1_OC4FastConfig(FunctionalState NewState)
6207                     ; 1388 {
6208                     .text:	section	.text,new
6209  0000               _TIM1_OC4FastConfig:
6211  0000 88            	push	a
6212       00000000      OFST:	set	0
6215                     ; 1390     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
6217  0001 4d            	tnz	a
6218  0002 2704          	jreq	L6501
6219  0004 a101          	cp	a,#1
6220  0006 2603          	jrne	L4501
6221  0008               L6501:
6222  0008 4f            	clr	a
6223  0009 2010          	jra	L0601
6224  000b               L4501:
6225  000b ae056e        	ldw	x,#1390
6226  000e 89            	pushw	x
6227  000f ae0000        	ldw	x,#0
6228  0012 89            	pushw	x
6229  0013 ae0000        	ldw	x,#L37
6230  0016 cd0000        	call	_assert_failed
6232  0019 5b04          	addw	sp,#4
6233  001b               L0601:
6234                     ; 1393     if (NewState != DISABLE)
6236  001b 0d01          	tnz	(OFST+1,sp)
6237  001d 2706          	jreq	L1032
6238                     ; 1395         TIM1->CCMR4 |= TIM1_CCMR_OCxFE;
6240  001f 7214525b      	bset	21083,#2
6242  0023 2004          	jra	L3032
6243  0025               L1032:
6244                     ; 1399         TIM1->CCMR4 &= (uint8_t)(~TIM1_CCMR_OCxFE);
6246  0025 7215525b      	bres	21083,#2
6247  0029               L3032:
6248                     ; 1401 }
6251  0029 84            	pop	a
6252  002a 81            	ret
6358                     ; 1418 void TIM1_GenerateEvent(TIM1_EventSource_TypeDef TIM1_EventSource)
6358                     ; 1419 {
6359                     .text:	section	.text,new
6360  0000               _TIM1_GenerateEvent:
6362  0000 88            	push	a
6363       00000000      OFST:	set	0
6366                     ; 1421     assert_param(IS_TIM1_EVENT_SOURCE_OK(TIM1_EventSource));
6368  0001 4d            	tnz	a
6369  0002 2703          	jreq	L4601
6370  0004 4f            	clr	a
6371  0005 2010          	jra	L6601
6372  0007               L4601:
6373  0007 ae058d        	ldw	x,#1421
6374  000a 89            	pushw	x
6375  000b ae0000        	ldw	x,#0
6376  000e 89            	pushw	x
6377  000f ae0000        	ldw	x,#L37
6378  0012 cd0000        	call	_assert_failed
6380  0015 5b04          	addw	sp,#4
6381  0017               L6601:
6382                     ; 1424     TIM1->EGR = (uint8_t)TIM1_EventSource;
6384  0017 7b01          	ld	a,(OFST+1,sp)
6385  0019 c75257        	ld	21079,a
6386                     ; 1425 }
6389  001c 84            	pop	a
6390  001d 81            	ret
6427                     ; 1436 void TIM1_OC1PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
6427                     ; 1437 {
6428                     .text:	section	.text,new
6429  0000               _TIM1_OC1PolarityConfig:
6431  0000 88            	push	a
6432       00000000      OFST:	set	0
6435                     ; 1439     assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
6437  0001 4d            	tnz	a
6438  0002 2704          	jreq	L4701
6439  0004 a122          	cp	a,#34
6440  0006 2603          	jrne	L2701
6441  0008               L4701:
6442  0008 4f            	clr	a
6443  0009 2010          	jra	L6701
6444  000b               L2701:
6445  000b ae059f        	ldw	x,#1439
6446  000e 89            	pushw	x
6447  000f ae0000        	ldw	x,#0
6448  0012 89            	pushw	x
6449  0013 ae0000        	ldw	x,#L37
6450  0016 cd0000        	call	_assert_failed
6452  0019 5b04          	addw	sp,#4
6453  001b               L6701:
6454                     ; 1442     if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
6456  001b 0d01          	tnz	(OFST+1,sp)
6457  001d 2706          	jreq	L5632
6458                     ; 1444         TIM1->CCER1 |= TIM1_CCER1_CC1P;
6460  001f 7212525c      	bset	21084,#1
6462  0023 2004          	jra	L7632
6463  0025               L5632:
6464                     ; 1448         TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
6466  0025 7213525c      	bres	21084,#1
6467  0029               L7632:
6468                     ; 1450 }
6471  0029 84            	pop	a
6472  002a 81            	ret
6509                     ; 1461 void TIM1_OC1NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
6509                     ; 1462 {
6510                     .text:	section	.text,new
6511  0000               _TIM1_OC1NPolarityConfig:
6513  0000 88            	push	a
6514       00000000      OFST:	set	0
6517                     ; 1464     assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
6519  0001 4d            	tnz	a
6520  0002 2704          	jreq	L4011
6521  0004 a188          	cp	a,#136
6522  0006 2603          	jrne	L2011
6523  0008               L4011:
6524  0008 4f            	clr	a
6525  0009 2010          	jra	L6011
6526  000b               L2011:
6527  000b ae05b8        	ldw	x,#1464
6528  000e 89            	pushw	x
6529  000f ae0000        	ldw	x,#0
6530  0012 89            	pushw	x
6531  0013 ae0000        	ldw	x,#L37
6532  0016 cd0000        	call	_assert_failed
6534  0019 5b04          	addw	sp,#4
6535  001b               L6011:
6536                     ; 1467     if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
6538  001b 0d01          	tnz	(OFST+1,sp)
6539  001d 2706          	jreq	L7042
6540                     ; 1469         TIM1->CCER1 |= TIM1_CCER1_CC1NP;
6542  001f 7216525c      	bset	21084,#3
6544  0023 2004          	jra	L1142
6545  0025               L7042:
6546                     ; 1473         TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1NP);
6548  0025 7217525c      	bres	21084,#3
6549  0029               L1142:
6550                     ; 1475 }
6553  0029 84            	pop	a
6554  002a 81            	ret
6591                     ; 1486 void TIM1_OC2PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
6591                     ; 1487 {
6592                     .text:	section	.text,new
6593  0000               _TIM1_OC2PolarityConfig:
6595  0000 88            	push	a
6596       00000000      OFST:	set	0
6599                     ; 1489     assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
6601  0001 4d            	tnz	a
6602  0002 2704          	jreq	L4111
6603  0004 a122          	cp	a,#34
6604  0006 2603          	jrne	L2111
6605  0008               L4111:
6606  0008 4f            	clr	a
6607  0009 2010          	jra	L6111
6608  000b               L2111:
6609  000b ae05d1        	ldw	x,#1489
6610  000e 89            	pushw	x
6611  000f ae0000        	ldw	x,#0
6612  0012 89            	pushw	x
6613  0013 ae0000        	ldw	x,#L37
6614  0016 cd0000        	call	_assert_failed
6616  0019 5b04          	addw	sp,#4
6617  001b               L6111:
6618                     ; 1492     if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
6620  001b 0d01          	tnz	(OFST+1,sp)
6621  001d 2706          	jreq	L1342
6622                     ; 1494         TIM1->CCER1 |= TIM1_CCER1_CC2P;
6624  001f 721a525c      	bset	21084,#5
6626  0023 2004          	jra	L3342
6627  0025               L1342:
6628                     ; 1498         TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
6630  0025 721b525c      	bres	21084,#5
6631  0029               L3342:
6632                     ; 1500 }
6635  0029 84            	pop	a
6636  002a 81            	ret
6673                     ; 1510 void TIM1_OC2NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
6673                     ; 1511 {
6674                     .text:	section	.text,new
6675  0000               _TIM1_OC2NPolarityConfig:
6677  0000 88            	push	a
6678       00000000      OFST:	set	0
6681                     ; 1513     assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
6683  0001 4d            	tnz	a
6684  0002 2704          	jreq	L4211
6685  0004 a188          	cp	a,#136
6686  0006 2603          	jrne	L2211
6687  0008               L4211:
6688  0008 4f            	clr	a
6689  0009 2010          	jra	L6211
6690  000b               L2211:
6691  000b ae05e9        	ldw	x,#1513
6692  000e 89            	pushw	x
6693  000f ae0000        	ldw	x,#0
6694  0012 89            	pushw	x
6695  0013 ae0000        	ldw	x,#L37
6696  0016 cd0000        	call	_assert_failed
6698  0019 5b04          	addw	sp,#4
6699  001b               L6211:
6700                     ; 1516     if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
6702  001b 0d01          	tnz	(OFST+1,sp)
6703  001d 2706          	jreq	L3542
6704                     ; 1518         TIM1->CCER1 |= TIM1_CCER1_CC2NP;
6706  001f 721e525c      	bset	21084,#7
6708  0023 2004          	jra	L5542
6709  0025               L3542:
6710                     ; 1522         TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2NP);
6712  0025 721f525c      	bres	21084,#7
6713  0029               L5542:
6714                     ; 1524 }
6717  0029 84            	pop	a
6718  002a 81            	ret
6755                     ; 1535 void TIM1_OC3PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
6755                     ; 1536 {
6756                     .text:	section	.text,new
6757  0000               _TIM1_OC3PolarityConfig:
6759  0000 88            	push	a
6760       00000000      OFST:	set	0
6763                     ; 1538     assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
6765  0001 4d            	tnz	a
6766  0002 2704          	jreq	L4311
6767  0004 a122          	cp	a,#34
6768  0006 2603          	jrne	L2311
6769  0008               L4311:
6770  0008 4f            	clr	a
6771  0009 2010          	jra	L6311
6772  000b               L2311:
6773  000b ae0602        	ldw	x,#1538
6774  000e 89            	pushw	x
6775  000f ae0000        	ldw	x,#0
6776  0012 89            	pushw	x
6777  0013 ae0000        	ldw	x,#L37
6778  0016 cd0000        	call	_assert_failed
6780  0019 5b04          	addw	sp,#4
6781  001b               L6311:
6782                     ; 1541     if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
6784  001b 0d01          	tnz	(OFST+1,sp)
6785  001d 2706          	jreq	L5742
6786                     ; 1543         TIM1->CCER2 |= TIM1_CCER2_CC3P;
6788  001f 7212525d      	bset	21085,#1
6790  0023 2004          	jra	L7742
6791  0025               L5742:
6792                     ; 1547         TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
6794  0025 7213525d      	bres	21085,#1
6795  0029               L7742:
6796                     ; 1549 }
6799  0029 84            	pop	a
6800  002a 81            	ret
6837                     ; 1560 void TIM1_OC3NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
6837                     ; 1561 {
6838                     .text:	section	.text,new
6839  0000               _TIM1_OC3NPolarityConfig:
6841  0000 88            	push	a
6842       00000000      OFST:	set	0
6845                     ; 1563     assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
6847  0001 4d            	tnz	a
6848  0002 2704          	jreq	L4411
6849  0004 a188          	cp	a,#136
6850  0006 2603          	jrne	L2411
6851  0008               L4411:
6852  0008 4f            	clr	a
6853  0009 2010          	jra	L6411
6854  000b               L2411:
6855  000b ae061b        	ldw	x,#1563
6856  000e 89            	pushw	x
6857  000f ae0000        	ldw	x,#0
6858  0012 89            	pushw	x
6859  0013 ae0000        	ldw	x,#L37
6860  0016 cd0000        	call	_assert_failed
6862  0019 5b04          	addw	sp,#4
6863  001b               L6411:
6864                     ; 1566     if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
6866  001b 0d01          	tnz	(OFST+1,sp)
6867  001d 2706          	jreq	L7152
6868                     ; 1568         TIM1->CCER2 |= TIM1_CCER2_CC3NP;
6870  001f 7216525d      	bset	21085,#3
6872  0023 2004          	jra	L1252
6873  0025               L7152:
6874                     ; 1572         TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3NP);
6876  0025 7217525d      	bres	21085,#3
6877  0029               L1252:
6878                     ; 1574 }
6881  0029 84            	pop	a
6882  002a 81            	ret
6919                     ; 1584 void TIM1_OC4PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
6919                     ; 1585 {
6920                     .text:	section	.text,new
6921  0000               _TIM1_OC4PolarityConfig:
6923  0000 88            	push	a
6924       00000000      OFST:	set	0
6927                     ; 1587     assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
6929  0001 4d            	tnz	a
6930  0002 2704          	jreq	L4511
6931  0004 a122          	cp	a,#34
6932  0006 2603          	jrne	L2511
6933  0008               L4511:
6934  0008 4f            	clr	a
6935  0009 2010          	jra	L6511
6936  000b               L2511:
6937  000b ae0633        	ldw	x,#1587
6938  000e 89            	pushw	x
6939  000f ae0000        	ldw	x,#0
6940  0012 89            	pushw	x
6941  0013 ae0000        	ldw	x,#L37
6942  0016 cd0000        	call	_assert_failed
6944  0019 5b04          	addw	sp,#4
6945  001b               L6511:
6946                     ; 1590     if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
6948  001b 0d01          	tnz	(OFST+1,sp)
6949  001d 2706          	jreq	L1452
6950                     ; 1592         TIM1->CCER2 |= TIM1_CCER2_CC4P;
6952  001f 721a525d      	bset	21085,#5
6954  0023 2004          	jra	L3452
6955  0025               L1452:
6956                     ; 1596         TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4P);
6958  0025 721b525d      	bres	21085,#5
6959  0029               L3452:
6960                     ; 1598 }
6963  0029 84            	pop	a
6964  002a 81            	ret
7010                     ; 1613 void TIM1_CCxCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
7010                     ; 1614 {
7011                     .text:	section	.text,new
7012  0000               _TIM1_CCxCmd:
7014  0000 89            	pushw	x
7015       00000000      OFST:	set	0
7018                     ; 1616     assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
7020  0001 9e            	ld	a,xh
7021  0002 4d            	tnz	a
7022  0003 270f          	jreq	L4611
7023  0005 9e            	ld	a,xh
7024  0006 a101          	cp	a,#1
7025  0008 270a          	jreq	L4611
7026  000a 9e            	ld	a,xh
7027  000b a102          	cp	a,#2
7028  000d 2705          	jreq	L4611
7029  000f 9e            	ld	a,xh
7030  0010 a103          	cp	a,#3
7031  0012 2603          	jrne	L2611
7032  0014               L4611:
7033  0014 4f            	clr	a
7034  0015 2010          	jra	L6611
7035  0017               L2611:
7036  0017 ae0650        	ldw	x,#1616
7037  001a 89            	pushw	x
7038  001b ae0000        	ldw	x,#0
7039  001e 89            	pushw	x
7040  001f ae0000        	ldw	x,#L37
7041  0022 cd0000        	call	_assert_failed
7043  0025 5b04          	addw	sp,#4
7044  0027               L6611:
7045                     ; 1617     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
7047  0027 0d02          	tnz	(OFST+2,sp)
7048  0029 2706          	jreq	L2711
7049  002b 7b02          	ld	a,(OFST+2,sp)
7050  002d a101          	cp	a,#1
7051  002f 2603          	jrne	L0711
7052  0031               L2711:
7053  0031 4f            	clr	a
7054  0032 2010          	jra	L4711
7055  0034               L0711:
7056  0034 ae0651        	ldw	x,#1617
7057  0037 89            	pushw	x
7058  0038 ae0000        	ldw	x,#0
7059  003b 89            	pushw	x
7060  003c ae0000        	ldw	x,#L37
7061  003f cd0000        	call	_assert_failed
7063  0042 5b04          	addw	sp,#4
7064  0044               L4711:
7065                     ; 1619     if (TIM1_Channel == TIM1_CHANNEL_1)
7067  0044 0d01          	tnz	(OFST+1,sp)
7068  0046 2610          	jrne	L7652
7069                     ; 1622         if (NewState != DISABLE)
7071  0048 0d02          	tnz	(OFST+2,sp)
7072  004a 2706          	jreq	L1752
7073                     ; 1624             TIM1->CCER1 |= TIM1_CCER1_CC1E;
7075  004c 7210525c      	bset	21084,#0
7077  0050 2040          	jra	L5752
7078  0052               L1752:
7079                     ; 1628             TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
7081  0052 7211525c      	bres	21084,#0
7082  0056 203a          	jra	L5752
7083  0058               L7652:
7084                     ; 1632     else if (TIM1_Channel == TIM1_CHANNEL_2)
7086  0058 7b01          	ld	a,(OFST+1,sp)
7087  005a a101          	cp	a,#1
7088  005c 2610          	jrne	L7752
7089                     ; 1635         if (NewState != DISABLE)
7091  005e 0d02          	tnz	(OFST+2,sp)
7092  0060 2706          	jreq	L1062
7093                     ; 1637             TIM1->CCER1 |= TIM1_CCER1_CC2E;
7095  0062 7218525c      	bset	21084,#4
7097  0066 202a          	jra	L5752
7098  0068               L1062:
7099                     ; 1641             TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
7101  0068 7219525c      	bres	21084,#4
7102  006c 2024          	jra	L5752
7103  006e               L7752:
7104                     ; 1644     else if (TIM1_Channel == TIM1_CHANNEL_3)
7106  006e 7b01          	ld	a,(OFST+1,sp)
7107  0070 a102          	cp	a,#2
7108  0072 2610          	jrne	L7062
7109                     ; 1647         if (NewState != DISABLE)
7111  0074 0d02          	tnz	(OFST+2,sp)
7112  0076 2706          	jreq	L1162
7113                     ; 1649             TIM1->CCER2 |= TIM1_CCER2_CC3E;
7115  0078 7210525d      	bset	21085,#0
7117  007c 2014          	jra	L5752
7118  007e               L1162:
7119                     ; 1653             TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
7121  007e 7211525d      	bres	21085,#0
7122  0082 200e          	jra	L5752
7123  0084               L7062:
7124                     ; 1659         if (NewState != DISABLE)
7126  0084 0d02          	tnz	(OFST+2,sp)
7127  0086 2706          	jreq	L7162
7128                     ; 1661             TIM1->CCER2 |= TIM1_CCER2_CC4E;
7130  0088 7218525d      	bset	21085,#4
7132  008c 2004          	jra	L5752
7133  008e               L7162:
7134                     ; 1665             TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
7136  008e 7219525d      	bres	21085,#4
7137  0092               L5752:
7138                     ; 1668 }
7141  0092 85            	popw	x
7142  0093 81            	ret
7188                     ; 1681 void TIM1_CCxNCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
7188                     ; 1682 {
7189                     .text:	section	.text,new
7190  0000               _TIM1_CCxNCmd:
7192  0000 89            	pushw	x
7193       00000000      OFST:	set	0
7196                     ; 1684     assert_param(IS_TIM1_COMPLEMENTARY_CHANNEL_OK(TIM1_Channel));
7198  0001 9e            	ld	a,xh
7199  0002 4d            	tnz	a
7200  0003 270a          	jreq	L2021
7201  0005 9e            	ld	a,xh
7202  0006 a101          	cp	a,#1
7203  0008 2705          	jreq	L2021
7204  000a 9e            	ld	a,xh
7205  000b a102          	cp	a,#2
7206  000d 2603          	jrne	L0021
7207  000f               L2021:
7208  000f 4f            	clr	a
7209  0010 2010          	jra	L4021
7210  0012               L0021:
7211  0012 ae0694        	ldw	x,#1684
7212  0015 89            	pushw	x
7213  0016 ae0000        	ldw	x,#0
7214  0019 89            	pushw	x
7215  001a ae0000        	ldw	x,#L37
7216  001d cd0000        	call	_assert_failed
7218  0020 5b04          	addw	sp,#4
7219  0022               L4021:
7220                     ; 1685     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
7222  0022 0d02          	tnz	(OFST+2,sp)
7223  0024 2706          	jreq	L0121
7224  0026 7b02          	ld	a,(OFST+2,sp)
7225  0028 a101          	cp	a,#1
7226  002a 2603          	jrne	L6021
7227  002c               L0121:
7228  002c 4f            	clr	a
7229  002d 2010          	jra	L2121
7230  002f               L6021:
7231  002f ae0695        	ldw	x,#1685
7232  0032 89            	pushw	x
7233  0033 ae0000        	ldw	x,#0
7234  0036 89            	pushw	x
7235  0037 ae0000        	ldw	x,#L37
7236  003a cd0000        	call	_assert_failed
7238  003d 5b04          	addw	sp,#4
7239  003f               L2121:
7240                     ; 1687     if (TIM1_Channel == TIM1_CHANNEL_1)
7242  003f 0d01          	tnz	(OFST+1,sp)
7243  0041 2610          	jrne	L5462
7244                     ; 1690         if (NewState != DISABLE)
7246  0043 0d02          	tnz	(OFST+2,sp)
7247  0045 2706          	jreq	L7462
7248                     ; 1692             TIM1->CCER1 |= TIM1_CCER1_CC1NE;
7250  0047 7214525c      	bset	21084,#2
7252  004b 202a          	jra	L3562
7253  004d               L7462:
7254                     ; 1696             TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1NE);
7256  004d 7215525c      	bres	21084,#2
7257  0051 2024          	jra	L3562
7258  0053               L5462:
7259                     ; 1699     else if (TIM1_Channel == TIM1_CHANNEL_2)
7261  0053 7b01          	ld	a,(OFST+1,sp)
7262  0055 a101          	cp	a,#1
7263  0057 2610          	jrne	L5562
7264                     ; 1702         if (NewState != DISABLE)
7266  0059 0d02          	tnz	(OFST+2,sp)
7267  005b 2706          	jreq	L7562
7268                     ; 1704             TIM1->CCER1 |= TIM1_CCER1_CC2NE;
7270  005d 721c525c      	bset	21084,#6
7272  0061 2014          	jra	L3562
7273  0063               L7562:
7274                     ; 1708             TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2NE);
7276  0063 721d525c      	bres	21084,#6
7277  0067 200e          	jra	L3562
7278  0069               L5562:
7279                     ; 1714         if (NewState != DISABLE)
7281  0069 0d02          	tnz	(OFST+2,sp)
7282  006b 2706          	jreq	L5662
7283                     ; 1716             TIM1->CCER2 |= TIM1_CCER2_CC3NE;
7285  006d 7214525d      	bset	21085,#2
7287  0071 2004          	jra	L3562
7288  0073               L5662:
7289                     ; 1720             TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3NE);
7291  0073 7215525d      	bres	21085,#2
7292  0077               L3562:
7293                     ; 1723 }
7296  0077 85            	popw	x
7297  0078 81            	ret
7343                     ; 1747 void TIM1_SelectOCxM(TIM1_Channel_TypeDef TIM1_Channel, TIM1_OCMode_TypeDef TIM1_OCMode)
7343                     ; 1748 {
7344                     .text:	section	.text,new
7345  0000               _TIM1_SelectOCxM:
7347  0000 89            	pushw	x
7348       00000000      OFST:	set	0
7351                     ; 1750     assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
7353  0001 9e            	ld	a,xh
7354  0002 4d            	tnz	a
7355  0003 270f          	jreq	L0221
7356  0005 9e            	ld	a,xh
7357  0006 a101          	cp	a,#1
7358  0008 270a          	jreq	L0221
7359  000a 9e            	ld	a,xh
7360  000b a102          	cp	a,#2
7361  000d 2705          	jreq	L0221
7362  000f 9e            	ld	a,xh
7363  0010 a103          	cp	a,#3
7364  0012 2603          	jrne	L6121
7365  0014               L0221:
7366  0014 4f            	clr	a
7367  0015 2010          	jra	L2221
7368  0017               L6121:
7369  0017 ae06d6        	ldw	x,#1750
7370  001a 89            	pushw	x
7371  001b ae0000        	ldw	x,#0
7372  001e 89            	pushw	x
7373  001f ae0000        	ldw	x,#L37
7374  0022 cd0000        	call	_assert_failed
7376  0025 5b04          	addw	sp,#4
7377  0027               L2221:
7378                     ; 1751     assert_param(IS_TIM1_OCM_OK(TIM1_OCMode));
7380  0027 0d02          	tnz	(OFST+2,sp)
7381  0029 272a          	jreq	L6221
7382  002b 7b02          	ld	a,(OFST+2,sp)
7383  002d a110          	cp	a,#16
7384  002f 2724          	jreq	L6221
7385  0031 7b02          	ld	a,(OFST+2,sp)
7386  0033 a120          	cp	a,#32
7387  0035 271e          	jreq	L6221
7388  0037 7b02          	ld	a,(OFST+2,sp)
7389  0039 a130          	cp	a,#48
7390  003b 2718          	jreq	L6221
7391  003d 7b02          	ld	a,(OFST+2,sp)
7392  003f a160          	cp	a,#96
7393  0041 2712          	jreq	L6221
7394  0043 7b02          	ld	a,(OFST+2,sp)
7395  0045 a170          	cp	a,#112
7396  0047 270c          	jreq	L6221
7397  0049 7b02          	ld	a,(OFST+2,sp)
7398  004b a150          	cp	a,#80
7399  004d 2706          	jreq	L6221
7400  004f 7b02          	ld	a,(OFST+2,sp)
7401  0051 a140          	cp	a,#64
7402  0053 2603          	jrne	L4221
7403  0055               L6221:
7404  0055 4f            	clr	a
7405  0056 2010          	jra	L0321
7406  0058               L4221:
7407  0058 ae06d7        	ldw	x,#1751
7408  005b 89            	pushw	x
7409  005c ae0000        	ldw	x,#0
7410  005f 89            	pushw	x
7411  0060 ae0000        	ldw	x,#L37
7412  0063 cd0000        	call	_assert_failed
7414  0066 5b04          	addw	sp,#4
7415  0068               L0321:
7416                     ; 1753     if (TIM1_Channel == TIM1_CHANNEL_1)
7418  0068 0d01          	tnz	(OFST+1,sp)
7419  006a 2610          	jrne	L3172
7420                     ; 1756         TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
7422  006c 7211525c      	bres	21084,#0
7423                     ; 1759         TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM)) 
7423                     ; 1760                                 | (uint8_t)TIM1_OCMode);
7425  0070 c65258        	ld	a,21080
7426  0073 a48f          	and	a,#143
7427  0075 1a02          	or	a,(OFST+2,sp)
7428  0077 c75258        	ld	21080,a
7430  007a 203a          	jra	L5172
7431  007c               L3172:
7432                     ; 1762     else if (TIM1_Channel == TIM1_CHANNEL_2)
7434  007c 7b01          	ld	a,(OFST+1,sp)
7435  007e a101          	cp	a,#1
7436  0080 2610          	jrne	L7172
7437                     ; 1765         TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
7439  0082 7219525c      	bres	21084,#4
7440                     ; 1768         TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM))
7440                     ; 1769                                 | (uint8_t)TIM1_OCMode);
7442  0086 c65259        	ld	a,21081
7443  0089 a48f          	and	a,#143
7444  008b 1a02          	or	a,(OFST+2,sp)
7445  008d c75259        	ld	21081,a
7447  0090 2024          	jra	L5172
7448  0092               L7172:
7449                     ; 1771     else if (TIM1_Channel == TIM1_CHANNEL_3)
7451  0092 7b01          	ld	a,(OFST+1,sp)
7452  0094 a102          	cp	a,#2
7453  0096 2610          	jrne	L3272
7454                     ; 1774         TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
7456  0098 7211525d      	bres	21085,#0
7457                     ; 1777         TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM)) 
7457                     ; 1778                                 | (uint8_t)TIM1_OCMode);
7459  009c c6525a        	ld	a,21082
7460  009f a48f          	and	a,#143
7461  00a1 1a02          	or	a,(OFST+2,sp)
7462  00a3 c7525a        	ld	21082,a
7464  00a6 200e          	jra	L5172
7465  00a8               L3272:
7466                     ; 1783         TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
7468  00a8 7219525d      	bres	21085,#4
7469                     ; 1786         TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) 
7469                     ; 1787                                 | (uint8_t)TIM1_OCMode);
7471  00ac c6525b        	ld	a,21083
7472  00af a48f          	and	a,#143
7473  00b1 1a02          	or	a,(OFST+2,sp)
7474  00b3 c7525b        	ld	21083,a
7475  00b6               L5172:
7476                     ; 1789 }
7479  00b6 85            	popw	x
7480  00b7 81            	ret
7512                     ; 1798 void TIM1_SetCounter(uint16_t Counter)
7512                     ; 1799 {
7513                     .text:	section	.text,new
7514  0000               _TIM1_SetCounter:
7518                     ; 1801     TIM1->CNTRH = (uint8_t)(Counter >> 8);
7520  0000 9e            	ld	a,xh
7521  0001 c7525e        	ld	21086,a
7522                     ; 1802     TIM1->CNTRL = (uint8_t)(Counter);
7524  0004 9f            	ld	a,xl
7525  0005 c7525f        	ld	21087,a
7526                     ; 1804 }
7529  0008 81            	ret
7561                     ; 1813 void TIM1_SetAutoreload(uint16_t Autoreload)
7561                     ; 1814 {
7562                     .text:	section	.text,new
7563  0000               _TIM1_SetAutoreload:
7567                     ; 1817     TIM1->ARRH = (uint8_t)(Autoreload >> 8);
7569  0000 9e            	ld	a,xh
7570  0001 c75262        	ld	21090,a
7571                     ; 1818     TIM1->ARRL = (uint8_t)(Autoreload);
7573  0004 9f            	ld	a,xl
7574  0005 c75263        	ld	21091,a
7575                     ; 1820 }
7578  0008 81            	ret
7610                     ; 1829 void TIM1_SetCompare1(uint16_t Compare1)
7610                     ; 1830 {
7611                     .text:	section	.text,new
7612  0000               _TIM1_SetCompare1:
7616                     ; 1832     TIM1->CCR1H = (uint8_t)(Compare1 >> 8);
7618  0000 9e            	ld	a,xh
7619  0001 c75265        	ld	21093,a
7620                     ; 1833     TIM1->CCR1L = (uint8_t)(Compare1);
7622  0004 9f            	ld	a,xl
7623  0005 c75266        	ld	21094,a
7624                     ; 1835 }
7627  0008 81            	ret
7659                     ; 1844 void TIM1_SetCompare2(uint16_t Compare2)
7659                     ; 1845 {
7660                     .text:	section	.text,new
7661  0000               _TIM1_SetCompare2:
7665                     ; 1847     TIM1->CCR2H = (uint8_t)(Compare2 >> 8);
7667  0000 9e            	ld	a,xh
7668  0001 c75267        	ld	21095,a
7669                     ; 1848     TIM1->CCR2L = (uint8_t)(Compare2);
7671  0004 9f            	ld	a,xl
7672  0005 c75268        	ld	21096,a
7673                     ; 1850 }
7676  0008 81            	ret
7708                     ; 1859 void TIM1_SetCompare3(uint16_t Compare3)
7708                     ; 1860 {
7709                     .text:	section	.text,new
7710  0000               _TIM1_SetCompare3:
7714                     ; 1862     TIM1->CCR3H = (uint8_t)(Compare3 >> 8);
7716  0000 9e            	ld	a,xh
7717  0001 c75269        	ld	21097,a
7718                     ; 1863     TIM1->CCR3L = (uint8_t)(Compare3);
7720  0004 9f            	ld	a,xl
7721  0005 c7526a        	ld	21098,a
7722                     ; 1865 }
7725  0008 81            	ret
7757                     ; 1874 void TIM1_SetCompare4(uint16_t Compare4)
7757                     ; 1875 {
7758                     .text:	section	.text,new
7759  0000               _TIM1_SetCompare4:
7763                     ; 1877     TIM1->CCR4H = (uint8_t)(Compare4 >> 8);
7765  0000 9e            	ld	a,xh
7766  0001 c7526b        	ld	21099,a
7767                     ; 1878     TIM1->CCR4L = (uint8_t)(Compare4);
7769  0004 9f            	ld	a,xl
7770  0005 c7526c        	ld	21100,a
7771                     ; 1879 }
7774  0008 81            	ret
7811                     ; 1892 void TIM1_SetIC1Prescaler(TIM1_ICPSC_TypeDef TIM1_IC1Prescaler)
7811                     ; 1893 {
7812                     .text:	section	.text,new
7813  0000               _TIM1_SetIC1Prescaler:
7815  0000 88            	push	a
7816       00000000      OFST:	set	0
7819                     ; 1895     assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC1Prescaler));
7821  0001 4d            	tnz	a
7822  0002 270c          	jreq	L2521
7823  0004 a104          	cp	a,#4
7824  0006 2708          	jreq	L2521
7825  0008 a108          	cp	a,#8
7826  000a 2704          	jreq	L2521
7827  000c a10c          	cp	a,#12
7828  000e 2603          	jrne	L0521
7829  0010               L2521:
7830  0010 4f            	clr	a
7831  0011 2010          	jra	L4521
7832  0013               L0521:
7833  0013 ae0767        	ldw	x,#1895
7834  0016 89            	pushw	x
7835  0017 ae0000        	ldw	x,#0
7836  001a 89            	pushw	x
7837  001b ae0000        	ldw	x,#L37
7838  001e cd0000        	call	_assert_failed
7840  0021 5b04          	addw	sp,#4
7841  0023               L4521:
7842                     ; 1898     TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_ICxPSC)) 
7842                     ; 1899                             | (uint8_t)TIM1_IC1Prescaler);
7844  0023 c65258        	ld	a,21080
7845  0026 a4f3          	and	a,#243
7846  0028 1a01          	or	a,(OFST+1,sp)
7847  002a c75258        	ld	21080,a
7848                     ; 1901 }
7851  002d 84            	pop	a
7852  002e 81            	ret
7889                     ; 1913 void TIM1_SetIC2Prescaler(TIM1_ICPSC_TypeDef TIM1_IC2Prescaler)
7889                     ; 1914 {
7890                     .text:	section	.text,new
7891  0000               _TIM1_SetIC2Prescaler:
7893  0000 88            	push	a
7894       00000000      OFST:	set	0
7897                     ; 1917     assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC2Prescaler));
7899  0001 4d            	tnz	a
7900  0002 270c          	jreq	L2621
7901  0004 a104          	cp	a,#4
7902  0006 2708          	jreq	L2621
7903  0008 a108          	cp	a,#8
7904  000a 2704          	jreq	L2621
7905  000c a10c          	cp	a,#12
7906  000e 2603          	jrne	L0621
7907  0010               L2621:
7908  0010 4f            	clr	a
7909  0011 2010          	jra	L4621
7910  0013               L0621:
7911  0013 ae077d        	ldw	x,#1917
7912  0016 89            	pushw	x
7913  0017 ae0000        	ldw	x,#0
7914  001a 89            	pushw	x
7915  001b ae0000        	ldw	x,#L37
7916  001e cd0000        	call	_assert_failed
7918  0021 5b04          	addw	sp,#4
7919  0023               L4621:
7920                     ; 1920     TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_ICxPSC))
7920                     ; 1921                             | (uint8_t)TIM1_IC2Prescaler);
7922  0023 c65259        	ld	a,21081
7923  0026 a4f3          	and	a,#243
7924  0028 1a01          	or	a,(OFST+1,sp)
7925  002a c75259        	ld	21081,a
7926                     ; 1922 }
7929  002d 84            	pop	a
7930  002e 81            	ret
7967                     ; 1935 void TIM1_SetIC3Prescaler(TIM1_ICPSC_TypeDef TIM1_IC3Prescaler)
7967                     ; 1936 {
7968                     .text:	section	.text,new
7969  0000               _TIM1_SetIC3Prescaler:
7971  0000 88            	push	a
7972       00000000      OFST:	set	0
7975                     ; 1939     assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC3Prescaler));
7977  0001 4d            	tnz	a
7978  0002 270c          	jreq	L2721
7979  0004 a104          	cp	a,#4
7980  0006 2708          	jreq	L2721
7981  0008 a108          	cp	a,#8
7982  000a 2704          	jreq	L2721
7983  000c a10c          	cp	a,#12
7984  000e 2603          	jrne	L0721
7985  0010               L2721:
7986  0010 4f            	clr	a
7987  0011 2010          	jra	L4721
7988  0013               L0721:
7989  0013 ae0793        	ldw	x,#1939
7990  0016 89            	pushw	x
7991  0017 ae0000        	ldw	x,#0
7992  001a 89            	pushw	x
7993  001b ae0000        	ldw	x,#L37
7994  001e cd0000        	call	_assert_failed
7996  0021 5b04          	addw	sp,#4
7997  0023               L4721:
7998                     ; 1942     TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_ICxPSC)) | 
7998                     ; 1943                             (uint8_t)TIM1_IC3Prescaler);
8000  0023 c6525a        	ld	a,21082
8001  0026 a4f3          	and	a,#243
8002  0028 1a01          	or	a,(OFST+1,sp)
8003  002a c7525a        	ld	21082,a
8004                     ; 1944 }
8007  002d 84            	pop	a
8008  002e 81            	ret
8045                     ; 1956 void TIM1_SetIC4Prescaler(TIM1_ICPSC_TypeDef TIM1_IC4Prescaler)
8045                     ; 1957 {
8046                     .text:	section	.text,new
8047  0000               _TIM1_SetIC4Prescaler:
8049  0000 88            	push	a
8050       00000000      OFST:	set	0
8053                     ; 1960     assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC4Prescaler));
8055  0001 4d            	tnz	a
8056  0002 270c          	jreq	L2031
8057  0004 a104          	cp	a,#4
8058  0006 2708          	jreq	L2031
8059  0008 a108          	cp	a,#8
8060  000a 2704          	jreq	L2031
8061  000c a10c          	cp	a,#12
8062  000e 2603          	jrne	L0031
8063  0010               L2031:
8064  0010 4f            	clr	a
8065  0011 2010          	jra	L4031
8066  0013               L0031:
8067  0013 ae07a8        	ldw	x,#1960
8068  0016 89            	pushw	x
8069  0017 ae0000        	ldw	x,#0
8070  001a 89            	pushw	x
8071  001b ae0000        	ldw	x,#L37
8072  001e cd0000        	call	_assert_failed
8074  0021 5b04          	addw	sp,#4
8075  0023               L4031:
8076                     ; 1963     TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_ICxPSC)) |
8076                     ; 1964                             (uint8_t)TIM1_IC4Prescaler);
8078  0023 c6525b        	ld	a,21083
8079  0026 a4f3          	and	a,#243
8080  0028 1a01          	or	a,(OFST+1,sp)
8081  002a c7525b        	ld	21083,a
8082                     ; 1965 }
8085  002d 84            	pop	a
8086  002e 81            	ret
8132                     ; 1972 uint16_t TIM1_GetCapture1(void)
8132                     ; 1973 {
8133                     .text:	section	.text,new
8134  0000               _TIM1_GetCapture1:
8136  0000 5204          	subw	sp,#4
8137       00000004      OFST:	set	4
8140                     ; 1976     uint16_t tmpccr1 = 0;
8142                     ; 1977     uint8_t tmpccr1l=0, tmpccr1h=0;
8146                     ; 1979     tmpccr1h = TIM1->CCR1H;
8148  0002 c65265        	ld	a,21093
8149  0005 6b02          	ld	(OFST-2,sp),a
8151                     ; 1980     tmpccr1l = TIM1->CCR1L;
8153  0007 c65266        	ld	a,21094
8154  000a 6b01          	ld	(OFST-3,sp),a
8156                     ; 1982     tmpccr1 = (uint16_t)(tmpccr1l);
8158  000c 7b01          	ld	a,(OFST-3,sp)
8159  000e 5f            	clrw	x
8160  000f 97            	ld	xl,a
8161  0010 1f03          	ldw	(OFST-1,sp),x
8163                     ; 1983     tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
8165  0012 7b02          	ld	a,(OFST-2,sp)
8166  0014 5f            	clrw	x
8167  0015 97            	ld	xl,a
8168  0016 4f            	clr	a
8169  0017 02            	rlwa	x,a
8170  0018 01            	rrwa	x,a
8171  0019 1a04          	or	a,(OFST+0,sp)
8172  001b 01            	rrwa	x,a
8173  001c 1a03          	or	a,(OFST-1,sp)
8174  001e 01            	rrwa	x,a
8175  001f 1f03          	ldw	(OFST-1,sp),x
8177                     ; 1985     return (uint16_t)tmpccr1;
8179  0021 1e03          	ldw	x,(OFST-1,sp)
8182  0023 5b04          	addw	sp,#4
8183  0025 81            	ret
8229                     ; 1993 uint16_t TIM1_GetCapture2(void)
8229                     ; 1994 {
8230                     .text:	section	.text,new
8231  0000               _TIM1_GetCapture2:
8233  0000 5204          	subw	sp,#4
8234       00000004      OFST:	set	4
8237                     ; 1997     uint16_t tmpccr2 = 0;
8239                     ; 1998     uint8_t tmpccr2l=0, tmpccr2h=0;
8243                     ; 2000     tmpccr2h = TIM1->CCR2H;
8245  0002 c65267        	ld	a,21095
8246  0005 6b02          	ld	(OFST-2,sp),a
8248                     ; 2001     tmpccr2l = TIM1->CCR2L;
8250  0007 c65268        	ld	a,21096
8251  000a 6b01          	ld	(OFST-3,sp),a
8253                     ; 2003     tmpccr2 = (uint16_t)(tmpccr2l);
8255  000c 7b01          	ld	a,(OFST-3,sp)
8256  000e 5f            	clrw	x
8257  000f 97            	ld	xl,a
8258  0010 1f03          	ldw	(OFST-1,sp),x
8260                     ; 2004     tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
8262  0012 7b02          	ld	a,(OFST-2,sp)
8263  0014 5f            	clrw	x
8264  0015 97            	ld	xl,a
8265  0016 4f            	clr	a
8266  0017 02            	rlwa	x,a
8267  0018 01            	rrwa	x,a
8268  0019 1a04          	or	a,(OFST+0,sp)
8269  001b 01            	rrwa	x,a
8270  001c 1a03          	or	a,(OFST-1,sp)
8271  001e 01            	rrwa	x,a
8272  001f 1f03          	ldw	(OFST-1,sp),x
8274                     ; 2006     return (uint16_t)tmpccr2;
8276  0021 1e03          	ldw	x,(OFST-1,sp)
8279  0023 5b04          	addw	sp,#4
8280  0025 81            	ret
8326                     ; 2014 uint16_t TIM1_GetCapture3(void)
8326                     ; 2015 {
8327                     .text:	section	.text,new
8328  0000               _TIM1_GetCapture3:
8330  0000 5204          	subw	sp,#4
8331       00000004      OFST:	set	4
8334                     ; 2017     uint16_t tmpccr3 = 0;
8336                     ; 2018     uint8_t tmpccr3l=0, tmpccr3h=0;
8340                     ; 2020     tmpccr3h = TIM1->CCR3H;
8342  0002 c65269        	ld	a,21097
8343  0005 6b02          	ld	(OFST-2,sp),a
8345                     ; 2021     tmpccr3l = TIM1->CCR3L;
8347  0007 c6526a        	ld	a,21098
8348  000a 6b01          	ld	(OFST-3,sp),a
8350                     ; 2023     tmpccr3 = (uint16_t)(tmpccr3l);
8352  000c 7b01          	ld	a,(OFST-3,sp)
8353  000e 5f            	clrw	x
8354  000f 97            	ld	xl,a
8355  0010 1f03          	ldw	(OFST-1,sp),x
8357                     ; 2024     tmpccr3 |= (uint16_t)((uint16_t)tmpccr3h << 8);
8359  0012 7b02          	ld	a,(OFST-2,sp)
8360  0014 5f            	clrw	x
8361  0015 97            	ld	xl,a
8362  0016 4f            	clr	a
8363  0017 02            	rlwa	x,a
8364  0018 01            	rrwa	x,a
8365  0019 1a04          	or	a,(OFST+0,sp)
8366  001b 01            	rrwa	x,a
8367  001c 1a03          	or	a,(OFST-1,sp)
8368  001e 01            	rrwa	x,a
8369  001f 1f03          	ldw	(OFST-1,sp),x
8371                     ; 2026     return (uint16_t)tmpccr3;
8373  0021 1e03          	ldw	x,(OFST-1,sp)
8376  0023 5b04          	addw	sp,#4
8377  0025 81            	ret
8423                     ; 2034 uint16_t TIM1_GetCapture4(void)
8423                     ; 2035 {
8424                     .text:	section	.text,new
8425  0000               _TIM1_GetCapture4:
8427  0000 5204          	subw	sp,#4
8428       00000004      OFST:	set	4
8431                     ; 2037     uint16_t tmpccr4 = 0;
8433                     ; 2038     uint8_t tmpccr4l=0, tmpccr4h=0;
8437                     ; 2040     tmpccr4h = TIM1->CCR4H;
8439  0002 c6526b        	ld	a,21099
8440  0005 6b02          	ld	(OFST-2,sp),a
8442                     ; 2041     tmpccr4l = TIM1->CCR4L;
8444  0007 c6526c        	ld	a,21100
8445  000a 6b01          	ld	(OFST-3,sp),a
8447                     ; 2043     tmpccr4 = (uint16_t)(tmpccr4l);
8449  000c 7b01          	ld	a,(OFST-3,sp)
8450  000e 5f            	clrw	x
8451  000f 97            	ld	xl,a
8452  0010 1f03          	ldw	(OFST-1,sp),x
8454                     ; 2044     tmpccr4 |= (uint16_t)((uint16_t)tmpccr4h << 8);
8456  0012 7b02          	ld	a,(OFST-2,sp)
8457  0014 5f            	clrw	x
8458  0015 97            	ld	xl,a
8459  0016 4f            	clr	a
8460  0017 02            	rlwa	x,a
8461  0018 01            	rrwa	x,a
8462  0019 1a04          	or	a,(OFST+0,sp)
8463  001b 01            	rrwa	x,a
8464  001c 1a03          	or	a,(OFST-1,sp)
8465  001e 01            	rrwa	x,a
8466  001f 1f03          	ldw	(OFST-1,sp),x
8468                     ; 2046     return (uint16_t)tmpccr4;
8470  0021 1e03          	ldw	x,(OFST-1,sp)
8473  0023 5b04          	addw	sp,#4
8474  0025 81            	ret
8506                     ; 2054 uint16_t TIM1_GetCounter(void)
8506                     ; 2055 {
8507                     .text:	section	.text,new
8508  0000               _TIM1_GetCounter:
8510  0000 89            	pushw	x
8511       00000002      OFST:	set	2
8514                     ; 2056   uint16_t tmpcntr = 0;
8516                     ; 2058   tmpcntr = ((uint16_t)TIM1->CNTRH << 8);
8518  0001 c6525e        	ld	a,21086
8519  0004 5f            	clrw	x
8520  0005 97            	ld	xl,a
8521  0006 4f            	clr	a
8522  0007 02            	rlwa	x,a
8523  0008 1f01          	ldw	(OFST-1,sp),x
8525                     ; 2061     return (uint16_t)(tmpcntr | (uint16_t)(TIM1->CNTRL));
8527  000a c6525f        	ld	a,21087
8528  000d 5f            	clrw	x
8529  000e 97            	ld	xl,a
8530  000f 01            	rrwa	x,a
8531  0010 1a02          	or	a,(OFST+0,sp)
8532  0012 01            	rrwa	x,a
8533  0013 1a01          	or	a,(OFST-1,sp)
8534  0015 01            	rrwa	x,a
8537  0016 5b02          	addw	sp,#2
8538  0018 81            	ret
8570                     ; 2069 uint16_t TIM1_GetPrescaler(void)
8570                     ; 2070 {
8571                     .text:	section	.text,new
8572  0000               _TIM1_GetPrescaler:
8574  0000 89            	pushw	x
8575       00000002      OFST:	set	2
8578                     ; 2071    uint16_t temp = 0;
8580                     ; 2073    temp = ((uint16_t)TIM1->PSCRH << 8);
8582  0001 c65260        	ld	a,21088
8583  0004 5f            	clrw	x
8584  0005 97            	ld	xl,a
8585  0006 4f            	clr	a
8586  0007 02            	rlwa	x,a
8587  0008 1f01          	ldw	(OFST-1,sp),x
8589                     ; 2076     return (uint16_t)( temp | (uint16_t)(TIM1->PSCRL));
8591  000a c65261        	ld	a,21089
8592  000d 5f            	clrw	x
8593  000e 97            	ld	xl,a
8594  000f 01            	rrwa	x,a
8595  0010 1a02          	or	a,(OFST+0,sp)
8596  0012 01            	rrwa	x,a
8597  0013 1a01          	or	a,(OFST-1,sp)
8598  0015 01            	rrwa	x,a
8601  0016 5b02          	addw	sp,#2
8602  0018 81            	ret
8773                     ; 2097 FlagStatus TIM1_GetFlagStatus(TIM1_FLAG_TypeDef TIM1_FLAG)
8773                     ; 2098 {
8774                     .text:	section	.text,new
8775  0000               _TIM1_GetFlagStatus:
8777  0000 89            	pushw	x
8778  0001 89            	pushw	x
8779       00000002      OFST:	set	2
8782                     ; 2099     FlagStatus bitstatus = RESET;
8784                     ; 2100     uint8_t tim1_flag_l = 0, tim1_flag_h = 0;
8788                     ; 2103     assert_param(IS_TIM1_GET_FLAG_OK(TIM1_FLAG));
8790  0002 a30001        	cpw	x,#1
8791  0005 2737          	jreq	L6231
8792  0007 a30002        	cpw	x,#2
8793  000a 2732          	jreq	L6231
8794  000c a30004        	cpw	x,#4
8795  000f 272d          	jreq	L6231
8796  0011 a30008        	cpw	x,#8
8797  0014 2728          	jreq	L6231
8798  0016 a30010        	cpw	x,#16
8799  0019 2723          	jreq	L6231
8800  001b a30020        	cpw	x,#32
8801  001e 271e          	jreq	L6231
8802  0020 a30040        	cpw	x,#64
8803  0023 2719          	jreq	L6231
8804  0025 a30080        	cpw	x,#128
8805  0028 2714          	jreq	L6231
8806  002a a30200        	cpw	x,#512
8807  002d 270f          	jreq	L6231
8808  002f a30400        	cpw	x,#1024
8809  0032 270a          	jreq	L6231
8810  0034 a30800        	cpw	x,#2048
8811  0037 2705          	jreq	L6231
8812  0039 a31000        	cpw	x,#4096
8813  003c 2603          	jrne	L4231
8814  003e               L6231:
8815  003e 4f            	clr	a
8816  003f 2010          	jra	L0331
8817  0041               L4231:
8818  0041 ae0837        	ldw	x,#2103
8819  0044 89            	pushw	x
8820  0045 ae0000        	ldw	x,#0
8821  0048 89            	pushw	x
8822  0049 ae0000        	ldw	x,#L37
8823  004c cd0000        	call	_assert_failed
8825  004f 5b04          	addw	sp,#4
8826  0051               L0331:
8827                     ; 2105     tim1_flag_l = (uint8_t)(TIM1->SR1 & (uint8_t)TIM1_FLAG);
8829  0051 c65255        	ld	a,21077
8830  0054 1404          	and	a,(OFST+2,sp)
8831  0056 6b01          	ld	(OFST-1,sp),a
8833                     ; 2106     tim1_flag_h = (uint8_t)((uint16_t)TIM1_FLAG >> 8);
8835  0058 7b03          	ld	a,(OFST+1,sp)
8836  005a 6b02          	ld	(OFST+0,sp),a
8838                     ; 2108     if ((tim1_flag_l | (uint8_t)(TIM1->SR2 & tim1_flag_h)) != 0)
8840  005c c65256        	ld	a,21078
8841  005f 1402          	and	a,(OFST+0,sp)
8842  0061 1a01          	or	a,(OFST-1,sp)
8843  0063 2706          	jreq	L1533
8844                     ; 2110         bitstatus = SET;
8846  0065 a601          	ld	a,#1
8847  0067 6b02          	ld	(OFST+0,sp),a
8850  0069 2002          	jra	L3533
8851  006b               L1533:
8852                     ; 2114         bitstatus = RESET;
8854  006b 0f02          	clr	(OFST+0,sp)
8856  006d               L3533:
8857                     ; 2116     return (FlagStatus)(bitstatus);
8859  006d 7b02          	ld	a,(OFST+0,sp)
8862  006f 5b04          	addw	sp,#4
8863  0071 81            	ret
8899                     ; 2137 void TIM1_ClearFlag(TIM1_FLAG_TypeDef TIM1_FLAG)
8899                     ; 2138 {
8900                     .text:	section	.text,new
8901  0000               _TIM1_ClearFlag:
8903  0000 89            	pushw	x
8904       00000000      OFST:	set	0
8907                     ; 2140     assert_param(IS_TIM1_CLEAR_FLAG_OK(TIM1_FLAG));
8909  0001 01            	rrwa	x,a
8910  0002 9f            	ld	a,xl
8911  0003 a4e1          	and	a,#225
8912  0005 97            	ld	xl,a
8913  0006 4f            	clr	a
8914  0007 02            	rlwa	x,a
8915  0008 5d            	tnzw	x
8916  0009 2607          	jrne	L4331
8917  000b 1e01          	ldw	x,(OFST+1,sp)
8918  000d 2703          	jreq	L4331
8919  000f 4f            	clr	a
8920  0010 2010          	jra	L6331
8921  0012               L4331:
8922  0012 ae085c        	ldw	x,#2140
8923  0015 89            	pushw	x
8924  0016 ae0000        	ldw	x,#0
8925  0019 89            	pushw	x
8926  001a ae0000        	ldw	x,#L37
8927  001d cd0000        	call	_assert_failed
8929  0020 5b04          	addw	sp,#4
8930  0022               L6331:
8931                     ; 2143     TIM1->SR1 = (uint8_t)(~(uint8_t)(TIM1_FLAG));
8933  0022 7b02          	ld	a,(OFST+2,sp)
8934  0024 43            	cpl	a
8935  0025 c75255        	ld	21077,a
8936                     ; 2144     TIM1->SR2 = (uint8_t)((uint8_t)(~((uint8_t)((uint16_t)TIM1_FLAG >> 8))) & 
8936                     ; 2145                           (uint8_t)0x1E);
8938  0028 7b01          	ld	a,(OFST+1,sp)
8939  002a 43            	cpl	a
8940  002b a41e          	and	a,#30
8941  002d c75256        	ld	21078,a
8942                     ; 2146 }
8945  0030 85            	popw	x
8946  0031 81            	ret
9007                     ; 2162 ITStatus TIM1_GetITStatus(TIM1_IT_TypeDef TIM1_IT)
9007                     ; 2163 {
9008                     .text:	section	.text,new
9009  0000               _TIM1_GetITStatus:
9011  0000 88            	push	a
9012  0001 89            	pushw	x
9013       00000002      OFST:	set	2
9016                     ; 2164     ITStatus bitstatus = RESET;
9018                     ; 2165     uint8_t TIM1_itStatus = 0, TIM1_itEnable = 0;
9022                     ; 2168     assert_param(IS_TIM1_GET_IT_OK(TIM1_IT));
9024  0002 a101          	cp	a,#1
9025  0004 271c          	jreq	L4431
9026  0006 a102          	cp	a,#2
9027  0008 2718          	jreq	L4431
9028  000a a104          	cp	a,#4
9029  000c 2714          	jreq	L4431
9030  000e a108          	cp	a,#8
9031  0010 2710          	jreq	L4431
9032  0012 a110          	cp	a,#16
9033  0014 270c          	jreq	L4431
9034  0016 a120          	cp	a,#32
9035  0018 2708          	jreq	L4431
9036  001a a140          	cp	a,#64
9037  001c 2704          	jreq	L4431
9038  001e a180          	cp	a,#128
9039  0020 2603          	jrne	L2431
9040  0022               L4431:
9041  0022 4f            	clr	a
9042  0023 2010          	jra	L6431
9043  0025               L2431:
9044  0025 ae0878        	ldw	x,#2168
9045  0028 89            	pushw	x
9046  0029 ae0000        	ldw	x,#0
9047  002c 89            	pushw	x
9048  002d ae0000        	ldw	x,#L37
9049  0030 cd0000        	call	_assert_failed
9051  0033 5b04          	addw	sp,#4
9052  0035               L6431:
9053                     ; 2170     TIM1_itStatus = (uint8_t)(TIM1->SR1 & (uint8_t)TIM1_IT);
9055  0035 c65255        	ld	a,21077
9056  0038 1403          	and	a,(OFST+1,sp)
9057  003a 6b01          	ld	(OFST-1,sp),a
9059                     ; 2172     TIM1_itEnable = (uint8_t)(TIM1->IER & (uint8_t)TIM1_IT);
9061  003c c65254        	ld	a,21076
9062  003f 1403          	and	a,(OFST+1,sp)
9063  0041 6b02          	ld	(OFST+0,sp),a
9065                     ; 2174     if ((TIM1_itStatus != (uint8_t)RESET ) && (TIM1_itEnable != (uint8_t)RESET ))
9067  0043 0d01          	tnz	(OFST-1,sp)
9068  0045 270a          	jreq	L1243
9070  0047 0d02          	tnz	(OFST+0,sp)
9071  0049 2706          	jreq	L1243
9072                     ; 2176         bitstatus = SET;
9074  004b a601          	ld	a,#1
9075  004d 6b02          	ld	(OFST+0,sp),a
9078  004f 2002          	jra	L3243
9079  0051               L1243:
9080                     ; 2180         bitstatus = RESET;
9082  0051 0f02          	clr	(OFST+0,sp)
9084  0053               L3243:
9085                     ; 2182     return (ITStatus)(bitstatus);
9087  0053 7b02          	ld	a,(OFST+0,sp)
9090  0055 5b03          	addw	sp,#3
9091  0057 81            	ret
9128                     ; 2199 void TIM1_ClearITPendingBit(TIM1_IT_TypeDef TIM1_IT)
9128                     ; 2200 {
9129                     .text:	section	.text,new
9130  0000               _TIM1_ClearITPendingBit:
9132  0000 88            	push	a
9133       00000000      OFST:	set	0
9136                     ; 2202     assert_param(IS_TIM1_IT_OK(TIM1_IT));
9138  0001 4d            	tnz	a
9139  0002 2703          	jreq	L2531
9140  0004 4f            	clr	a
9141  0005 2010          	jra	L4531
9142  0007               L2531:
9143  0007 ae089a        	ldw	x,#2202
9144  000a 89            	pushw	x
9145  000b ae0000        	ldw	x,#0
9146  000e 89            	pushw	x
9147  000f ae0000        	ldw	x,#L37
9148  0012 cd0000        	call	_assert_failed
9150  0015 5b04          	addw	sp,#4
9151  0017               L4531:
9152                     ; 2205     TIM1->SR1 = (uint8_t)(~(uint8_t)TIM1_IT);
9154  0017 7b01          	ld	a,(OFST+1,sp)
9155  0019 43            	cpl	a
9156  001a c75255        	ld	21077,a
9157                     ; 2206 }
9160  001d 84            	pop	a
9161  001e 81            	ret
9207                     ; 2224 static void TI1_Config(uint8_t TIM1_ICPolarity,
9207                     ; 2225                        uint8_t TIM1_ICSelection,
9207                     ; 2226                        uint8_t TIM1_ICFilter)
9207                     ; 2227 {
9208                     .text:	section	.text,new
9209  0000               L3_TI1_Config:
9211  0000 89            	pushw	x
9212  0001 88            	push	a
9213       00000001      OFST:	set	1
9216                     ; 2230     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
9218  0002 7211525c      	bres	21084,#0
9219                     ; 2233     TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) | 
9219                     ; 2234                             (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
9221  0006 7b06          	ld	a,(OFST+5,sp)
9222  0008 97            	ld	xl,a
9223  0009 a610          	ld	a,#16
9224  000b 42            	mul	x,a
9225  000c 9f            	ld	a,xl
9226  000d 1a03          	or	a,(OFST+2,sp)
9227  000f 6b01          	ld	(OFST+0,sp),a
9229  0011 c65258        	ld	a,21080
9230  0014 a40c          	and	a,#12
9231  0016 1a01          	or	a,(OFST+0,sp)
9232  0018 c75258        	ld	21080,a
9233                     ; 2237     if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
9235  001b 0d02          	tnz	(OFST+1,sp)
9236  001d 2706          	jreq	L3643
9237                     ; 2239         TIM1->CCER1 |= TIM1_CCER1_CC1P;
9239  001f 7212525c      	bset	21084,#1
9241  0023 2004          	jra	L5643
9242  0025               L3643:
9243                     ; 2243         TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
9245  0025 7213525c      	bres	21084,#1
9246  0029               L5643:
9247                     ; 2247     TIM1->CCER1 |=  TIM1_CCER1_CC1E;
9249  0029 7210525c      	bset	21084,#0
9250                     ; 2248 }
9253  002d 5b03          	addw	sp,#3
9254  002f 81            	ret
9300                     ; 2266 static void TI2_Config(uint8_t TIM1_ICPolarity,
9300                     ; 2267                        uint8_t TIM1_ICSelection,
9300                     ; 2268                        uint8_t TIM1_ICFilter)
9300                     ; 2269 {
9301                     .text:	section	.text,new
9302  0000               L5_TI2_Config:
9304  0000 89            	pushw	x
9305  0001 88            	push	a
9306       00000001      OFST:	set	1
9309                     ; 2271     TIM1->CCER1 &=  (uint8_t)(~TIM1_CCER1_CC2E);
9311  0002 7219525c      	bres	21084,#4
9312                     ; 2274     TIM1->CCMR2  = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) 
9312                     ; 2275                             | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
9314  0006 7b06          	ld	a,(OFST+5,sp)
9315  0008 97            	ld	xl,a
9316  0009 a610          	ld	a,#16
9317  000b 42            	mul	x,a
9318  000c 9f            	ld	a,xl
9319  000d 1a03          	or	a,(OFST+2,sp)
9320  000f 6b01          	ld	(OFST+0,sp),a
9322  0011 c65259        	ld	a,21081
9323  0014 a40c          	and	a,#12
9324  0016 1a01          	or	a,(OFST+0,sp)
9325  0018 c75259        	ld	21081,a
9326                     ; 2277     if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
9328  001b 0d02          	tnz	(OFST+1,sp)
9329  001d 2706          	jreq	L7053
9330                     ; 2279         TIM1->CCER1 |= TIM1_CCER1_CC2P;
9332  001f 721a525c      	bset	21084,#5
9334  0023 2004          	jra	L1153
9335  0025               L7053:
9336                     ; 2283         TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
9338  0025 721b525c      	bres	21084,#5
9339  0029               L1153:
9340                     ; 2286     TIM1->CCER1 |=  TIM1_CCER1_CC2E;
9342  0029 7218525c      	bset	21084,#4
9343                     ; 2287 }
9346  002d 5b03          	addw	sp,#3
9347  002f 81            	ret
9393                     ; 2305 static void TI3_Config(uint8_t TIM1_ICPolarity,
9393                     ; 2306                        uint8_t TIM1_ICSelection,
9393                     ; 2307                        uint8_t TIM1_ICFilter)
9393                     ; 2308 {
9394                     .text:	section	.text,new
9395  0000               L7_TI3_Config:
9397  0000 89            	pushw	x
9398  0001 88            	push	a
9399       00000001      OFST:	set	1
9402                     ; 2310     TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC3E);
9404  0002 7211525d      	bres	21085,#0
9405                     ; 2313     TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF))) 
9405                     ; 2314                             | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
9407  0006 7b06          	ld	a,(OFST+5,sp)
9408  0008 97            	ld	xl,a
9409  0009 a610          	ld	a,#16
9410  000b 42            	mul	x,a
9411  000c 9f            	ld	a,xl
9412  000d 1a03          	or	a,(OFST+2,sp)
9413  000f 6b01          	ld	(OFST+0,sp),a
9415  0011 c6525a        	ld	a,21082
9416  0014 a40c          	and	a,#12
9417  0016 1a01          	or	a,(OFST+0,sp)
9418  0018 c7525a        	ld	21082,a
9419                     ; 2317     if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
9421  001b 0d02          	tnz	(OFST+1,sp)
9422  001d 2706          	jreq	L3353
9423                     ; 2319         TIM1->CCER2 |= TIM1_CCER2_CC3P;
9425  001f 7212525d      	bset	21085,#1
9427  0023 2004          	jra	L5353
9428  0025               L3353:
9429                     ; 2323         TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
9431  0025 7213525d      	bres	21085,#1
9432  0029               L5353:
9433                     ; 2326     TIM1->CCER2 |=  TIM1_CCER2_CC3E;
9435  0029 7210525d      	bset	21085,#0
9436                     ; 2327 }
9439  002d 5b03          	addw	sp,#3
9440  002f 81            	ret
9486                     ; 2346 static void TI4_Config(uint8_t TIM1_ICPolarity,
9486                     ; 2347                        uint8_t TIM1_ICSelection,
9486                     ; 2348                        uint8_t TIM1_ICFilter)
9486                     ; 2349 {
9487                     .text:	section	.text,new
9488  0000               L11_TI4_Config:
9490  0000 89            	pushw	x
9491  0001 88            	push	a
9492       00000001      OFST:	set	1
9495                     ; 2352     TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC4E);
9497  0002 7219525d      	bres	21085,#4
9498                     ; 2355     TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF )))
9498                     ; 2356                             | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
9500  0006 7b06          	ld	a,(OFST+5,sp)
9501  0008 97            	ld	xl,a
9502  0009 a610          	ld	a,#16
9503  000b 42            	mul	x,a
9504  000c 9f            	ld	a,xl
9505  000d 1a03          	or	a,(OFST+2,sp)
9506  000f 6b01          	ld	(OFST+0,sp),a
9508  0011 c6525b        	ld	a,21083
9509  0014 a40c          	and	a,#12
9510  0016 1a01          	or	a,(OFST+0,sp)
9511  0018 c7525b        	ld	21083,a
9512                     ; 2359     if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
9514  001b 0d02          	tnz	(OFST+1,sp)
9515  001d 2706          	jreq	L7553
9516                     ; 2361         TIM1->CCER2 |= TIM1_CCER2_CC4P;
9518  001f 721a525d      	bset	21085,#5
9520  0023 2004          	jra	L1653
9521  0025               L7553:
9522                     ; 2365         TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4P);
9524  0025 721b525d      	bres	21085,#5
9525  0029               L1653:
9526                     ; 2369     TIM1->CCER2 |=  TIM1_CCER2_CC4E;
9528  0029 7218525d      	bset	21085,#4
9529                     ; 2370 }
9532  002d 5b03          	addw	sp,#3
9533  002f 81            	ret
9546                     	xdef	_TIM1_ClearITPendingBit
9547                     	xdef	_TIM1_GetITStatus
9548                     	xdef	_TIM1_ClearFlag
9549                     	xdef	_TIM1_GetFlagStatus
9550                     	xdef	_TIM1_GetPrescaler
9551                     	xdef	_TIM1_GetCounter
9552                     	xdef	_TIM1_GetCapture4
9553                     	xdef	_TIM1_GetCapture3
9554                     	xdef	_TIM1_GetCapture2
9555                     	xdef	_TIM1_GetCapture1
9556                     	xdef	_TIM1_SetIC4Prescaler
9557                     	xdef	_TIM1_SetIC3Prescaler
9558                     	xdef	_TIM1_SetIC2Prescaler
9559                     	xdef	_TIM1_SetIC1Prescaler
9560                     	xdef	_TIM1_SetCompare4
9561                     	xdef	_TIM1_SetCompare3
9562                     	xdef	_TIM1_SetCompare2
9563                     	xdef	_TIM1_SetCompare1
9564                     	xdef	_TIM1_SetAutoreload
9565                     	xdef	_TIM1_SetCounter
9566                     	xdef	_TIM1_SelectOCxM
9567                     	xdef	_TIM1_CCxNCmd
9568                     	xdef	_TIM1_CCxCmd
9569                     	xdef	_TIM1_OC4PolarityConfig
9570                     	xdef	_TIM1_OC3NPolarityConfig
9571                     	xdef	_TIM1_OC3PolarityConfig
9572                     	xdef	_TIM1_OC2NPolarityConfig
9573                     	xdef	_TIM1_OC2PolarityConfig
9574                     	xdef	_TIM1_OC1NPolarityConfig
9575                     	xdef	_TIM1_OC1PolarityConfig
9576                     	xdef	_TIM1_GenerateEvent
9577                     	xdef	_TIM1_OC4FastConfig
9578                     	xdef	_TIM1_OC3FastConfig
9579                     	xdef	_TIM1_OC2FastConfig
9580                     	xdef	_TIM1_OC1FastConfig
9581                     	xdef	_TIM1_OC4PreloadConfig
9582                     	xdef	_TIM1_OC3PreloadConfig
9583                     	xdef	_TIM1_OC2PreloadConfig
9584                     	xdef	_TIM1_OC1PreloadConfig
9585                     	xdef	_TIM1_CCPreloadControl
9586                     	xdef	_TIM1_SelectCOM
9587                     	xdef	_TIM1_ARRPreloadConfig
9588                     	xdef	_TIM1_ForcedOC4Config
9589                     	xdef	_TIM1_ForcedOC3Config
9590                     	xdef	_TIM1_ForcedOC2Config
9591                     	xdef	_TIM1_ForcedOC1Config
9592                     	xdef	_TIM1_CounterModeConfig
9593                     	xdef	_TIM1_PrescalerConfig
9594                     	xdef	_TIM1_EncoderInterfaceConfig
9595                     	xdef	_TIM1_SelectMasterSlaveMode
9596                     	xdef	_TIM1_SelectSlaveMode
9597                     	xdef	_TIM1_SelectOutputTrigger
9598                     	xdef	_TIM1_SelectOnePulseMode
9599                     	xdef	_TIM1_SelectHallSensor
9600                     	xdef	_TIM1_UpdateRequestConfig
9601                     	xdef	_TIM1_UpdateDisableConfig
9602                     	xdef	_TIM1_SelectInputTrigger
9603                     	xdef	_TIM1_TIxExternalClockConfig
9604                     	xdef	_TIM1_ETRConfig
9605                     	xdef	_TIM1_ETRClockMode2Config
9606                     	xdef	_TIM1_ETRClockMode1Config
9607                     	xdef	_TIM1_InternalClockConfig
9608                     	xdef	_TIM1_ITConfig
9609                     	xdef	_TIM1_CtrlPWMOutputs
9610                     	xdef	_TIM1_Cmd
9611                     	xdef	_TIM1_PWMIConfig
9612                     	xdef	_TIM1_ICInit
9613                     	xdef	_TIM1_BDTRConfig
9614                     	xdef	_TIM1_OC4Init
9615                     	xdef	_TIM1_OC3Init
9616                     	xdef	_TIM1_OC2Init
9617                     	xdef	_TIM1_OC1Init
9618                     	xdef	_TIM1_TimeBaseInit
9619                     	xdef	_TIM1_DeInit
9620                     	xref	_assert_failed
9621                     .const:	section	.text
9622  0000               L37:
9623  0000 7372635c7374  	dc.b	"src\stm8s_tim1.c",0
9643                     	end

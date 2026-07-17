   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.13.3 - 22 May 2025
   3                     ; Generator (Limited) V4.6.6 - 07 Jan 2026
  44                     ; 46 void TIM5_DeInit(void)
  44                     ; 47 {
  46                     .text:	section	.text,new
  47  0000               _TIM5_DeInit:
  51                     ; 49     TIM5->CR1 = (uint8_t)TIM5_CR1_RESET_VALUE;
  53  0000 725f5300      	clr	21248
  54                     ; 50     TIM5->CR2 = TIM5_CR2_RESET_VALUE;
  56  0004 725f5301      	clr	21249
  57                     ; 51     TIM5->SMCR = TIM5_SMCR_RESET_VALUE;
  59  0008 725f5302      	clr	21250
  60                     ; 52     TIM5->IER = (uint8_t)TIM5_IER_RESET_VALUE;
  62  000c 725f5303      	clr	21251
  63                     ; 53     TIM5->SR2 = (uint8_t)TIM5_SR2_RESET_VALUE;
  65  0010 725f5305      	clr	21253
  66                     ; 56     TIM5->CCER1 = (uint8_t)TIM5_CCER1_RESET_VALUE;
  68  0014 725f530a      	clr	21258
  69                     ; 57     TIM5->CCER2 = (uint8_t)TIM5_CCER2_RESET_VALUE;
  71  0018 725f530b      	clr	21259
  72                     ; 61     TIM5->CCER1 = (uint8_t)TIM5_CCER1_RESET_VALUE;
  74  001c 725f530a      	clr	21258
  75                     ; 62     TIM5->CCER2 = (uint8_t)TIM5_CCER2_RESET_VALUE;
  77  0020 725f530b      	clr	21259
  78                     ; 63     TIM5->CCMR1 = (uint8_t)TIM5_CCMR1_RESET_VALUE;
  80  0024 725f5307      	clr	21255
  81                     ; 64     TIM5->CCMR2 = (uint8_t)TIM5_CCMR2_RESET_VALUE;
  83  0028 725f5308      	clr	21256
  84                     ; 65     TIM5->CCMR3 = (uint8_t)TIM5_CCMR3_RESET_VALUE;
  86  002c 725f5309      	clr	21257
  87                     ; 66     TIM5->CNTRH = (uint8_t)TIM5_CNTRH_RESET_VALUE;
  89  0030 725f530c      	clr	21260
  90                     ; 67     TIM5->CNTRL = (uint8_t)TIM5_CNTRL_RESET_VALUE;
  92  0034 725f530d      	clr	21261
  93                     ; 68     TIM5->PSCR	= (uint8_t)TIM5_PSCR_RESET_VALUE;
  95  0038 725f530e      	clr	21262
  96                     ; 69     TIM5->ARRH 	= (uint8_t)TIM5_ARRH_RESET_VALUE;
  98  003c 35ff530f      	mov	21263,#255
  99                     ; 70     TIM5->ARRL 	= (uint8_t)TIM5_ARRL_RESET_VALUE;
 101  0040 35ff5310      	mov	21264,#255
 102                     ; 71     TIM5->CCR1H = (uint8_t)TIM5_CCR1H_RESET_VALUE;
 104  0044 725f5311      	clr	21265
 105                     ; 72     TIM5->CCR1L = (uint8_t)TIM5_CCR1L_RESET_VALUE;
 107  0048 725f5312      	clr	21266
 108                     ; 73     TIM5->CCR2H = (uint8_t)TIM5_CCR2H_RESET_VALUE;
 110  004c 725f5313      	clr	21267
 111                     ; 74     TIM5->CCR2L = (uint8_t)TIM5_CCR2L_RESET_VALUE;
 113  0050 725f5314      	clr	21268
 114                     ; 75     TIM5->CCR3H = (uint8_t)TIM5_CCR3H_RESET_VALUE;
 116  0054 725f5315      	clr	21269
 117                     ; 76     TIM5->CCR3L = (uint8_t)TIM5_CCR3L_RESET_VALUE;
 119  0058 725f5316      	clr	21270
 120                     ; 77     TIM5->SR1 = (uint8_t)TIM5_SR1_RESET_VALUE;
 122  005c 725f5304      	clr	21252
 123                     ; 78 }
 126  0060 81            	ret
 292                     ; 87 void TIM5_TimeBaseInit( TIM5_Prescaler_TypeDef TIM5_Prescaler,
 292                     ; 88                         uint16_t TIM5_Period)
 292                     ; 89 {
 293                     .text:	section	.text,new
 294  0000               _TIM5_TimeBaseInit:
 296  0000 88            	push	a
 297       00000000      OFST:	set	0
 300                     ; 91     TIM5->PSCR = (uint8_t)(TIM5_Prescaler);
 302  0001 c7530e        	ld	21262,a
 303                     ; 93     TIM5->ARRH = (uint8_t)(TIM5_Period >> 8) ;
 305  0004 7b04          	ld	a,(OFST+4,sp)
 306  0006 c7530f        	ld	21263,a
 307                     ; 94     TIM5->ARRL = (uint8_t)(TIM5_Period);
 309  0009 7b05          	ld	a,(OFST+5,sp)
 310  000b c75310        	ld	21264,a
 311                     ; 95 }
 314  000e 84            	pop	a
 315  000f 81            	ret
 471                     ; 106 void TIM5_OC1Init(TIM5_OCMode_TypeDef TIM5_OCMode,
 471                     ; 107                   TIM5_OutputState_TypeDef TIM5_OutputState,
 471                     ; 108                   uint16_t TIM5_Pulse,
 471                     ; 109                   TIM5_OCPolarity_TypeDef TIM5_OCPolarity)
 471                     ; 110 {
 472                     .text:	section	.text,new
 473  0000               _TIM5_OC1Init:
 475  0000 89            	pushw	x
 476  0001 88            	push	a
 477       00000001      OFST:	set	1
 480                     ; 112     assert_param(IS_TIM5_OC_MODE_OK(TIM5_OCMode));
 482  0002 9e            	ld	a,xh
 483  0003 4d            	tnz	a
 484  0004 2719          	jreq	L41
 485  0006 9e            	ld	a,xh
 486  0007 a110          	cp	a,#16
 487  0009 2714          	jreq	L41
 488  000b 9e            	ld	a,xh
 489  000c a120          	cp	a,#32
 490  000e 270f          	jreq	L41
 491  0010 9e            	ld	a,xh
 492  0011 a130          	cp	a,#48
 493  0013 270a          	jreq	L41
 494  0015 9e            	ld	a,xh
 495  0016 a160          	cp	a,#96
 496  0018 2705          	jreq	L41
 497  001a 9e            	ld	a,xh
 498  001b a170          	cp	a,#112
 499  001d 2603          	jrne	L21
 500  001f               L41:
 501  001f 4f            	clr	a
 502  0020 2010          	jra	L61
 503  0022               L21:
 504  0022 ae0070        	ldw	x,#112
 505  0025 89            	pushw	x
 506  0026 ae0000        	ldw	x,#0
 507  0029 89            	pushw	x
 508  002a ae0000        	ldw	x,#L302
 509  002d cd0000        	call	_assert_failed
 511  0030 5b04          	addw	sp,#4
 512  0032               L61:
 513                     ; 113     assert_param(IS_TIM5_OUTPUT_STATE_OK(TIM5_OutputState));
 515  0032 0d03          	tnz	(OFST+2,sp)
 516  0034 2706          	jreq	L22
 517  0036 7b03          	ld	a,(OFST+2,sp)
 518  0038 a111          	cp	a,#17
 519  003a 2603          	jrne	L02
 520  003c               L22:
 521  003c 4f            	clr	a
 522  003d 2010          	jra	L42
 523  003f               L02:
 524  003f ae0071        	ldw	x,#113
 525  0042 89            	pushw	x
 526  0043 ae0000        	ldw	x,#0
 527  0046 89            	pushw	x
 528  0047 ae0000        	ldw	x,#L302
 529  004a cd0000        	call	_assert_failed
 531  004d 5b04          	addw	sp,#4
 532  004f               L42:
 533                     ; 114     assert_param(IS_TIM5_OC_POLARITY_OK(TIM5_OCPolarity));
 535  004f 0d08          	tnz	(OFST+7,sp)
 536  0051 2706          	jreq	L03
 537  0053 7b08          	ld	a,(OFST+7,sp)
 538  0055 a122          	cp	a,#34
 539  0057 2603          	jrne	L62
 540  0059               L03:
 541  0059 4f            	clr	a
 542  005a 2010          	jra	L23
 543  005c               L62:
 544  005c ae0072        	ldw	x,#114
 545  005f 89            	pushw	x
 546  0060 ae0000        	ldw	x,#0
 547  0063 89            	pushw	x
 548  0064 ae0000        	ldw	x,#L302
 549  0067 cd0000        	call	_assert_failed
 551  006a 5b04          	addw	sp,#4
 552  006c               L23:
 553                     ; 117     TIM5->CCER1 &= (uint8_t)(~( TIM5_CCER1_CC1E | TIM5_CCER1_CC1P));
 555  006c c6530a        	ld	a,21258
 556  006f a4fc          	and	a,#252
 557  0071 c7530a        	ld	21258,a
 558                     ; 119     TIM5->CCER1 |= (uint8_t)((uint8_t)(TIM5_OutputState & TIM5_CCER1_CC1E )| 
 558                     ; 120                              (uint8_t)(TIM5_OCPolarity & TIM5_CCER1_CC1P));
 560  0074 7b08          	ld	a,(OFST+7,sp)
 561  0076 a402          	and	a,#2
 562  0078 6b01          	ld	(OFST+0,sp),a
 564  007a 7b03          	ld	a,(OFST+2,sp)
 565  007c a401          	and	a,#1
 566  007e 1a01          	or	a,(OFST+0,sp)
 567  0080 ca530a        	or	a,21258
 568  0083 c7530a        	ld	21258,a
 569                     ; 123     TIM5->CCMR1 = (uint8_t)((uint8_t)(TIM5->CCMR1 & (uint8_t)(~TIM5_CCMR_OCM)) | 
 569                     ; 124                             (uint8_t)TIM5_OCMode);
 571  0086 c65307        	ld	a,21255
 572  0089 a48f          	and	a,#143
 573  008b 1a02          	or	a,(OFST+1,sp)
 574  008d c75307        	ld	21255,a
 575                     ; 127     TIM5->CCR1H = (uint8_t)(TIM5_Pulse >> 8);
 577  0090 7b06          	ld	a,(OFST+5,sp)
 578  0092 c75311        	ld	21265,a
 579                     ; 128     TIM5->CCR1L = (uint8_t)(TIM5_Pulse);
 581  0095 7b07          	ld	a,(OFST+6,sp)
 582  0097 c75312        	ld	21266,a
 583                     ; 129 }
 586  009a 5b03          	addw	sp,#3
 587  009c 81            	ret
 650                     ; 140 void TIM5_OC2Init(TIM5_OCMode_TypeDef TIM5_OCMode,
 650                     ; 141                   TIM5_OutputState_TypeDef TIM5_OutputState,
 650                     ; 142                   uint16_t TIM5_Pulse,
 650                     ; 143                   TIM5_OCPolarity_TypeDef TIM5_OCPolarity)
 650                     ; 144 {
 651                     .text:	section	.text,new
 652  0000               _TIM5_OC2Init:
 654  0000 89            	pushw	x
 655  0001 88            	push	a
 656       00000001      OFST:	set	1
 659                     ; 146     assert_param(IS_TIM5_OC_MODE_OK(TIM5_OCMode));
 661  0002 9e            	ld	a,xh
 662  0003 4d            	tnz	a
 663  0004 2719          	jreq	L04
 664  0006 9e            	ld	a,xh
 665  0007 a110          	cp	a,#16
 666  0009 2714          	jreq	L04
 667  000b 9e            	ld	a,xh
 668  000c a120          	cp	a,#32
 669  000e 270f          	jreq	L04
 670  0010 9e            	ld	a,xh
 671  0011 a130          	cp	a,#48
 672  0013 270a          	jreq	L04
 673  0015 9e            	ld	a,xh
 674  0016 a160          	cp	a,#96
 675  0018 2705          	jreq	L04
 676  001a 9e            	ld	a,xh
 677  001b a170          	cp	a,#112
 678  001d 2603          	jrne	L63
 679  001f               L04:
 680  001f 4f            	clr	a
 681  0020 2010          	jra	L24
 682  0022               L63:
 683  0022 ae0092        	ldw	x,#146
 684  0025 89            	pushw	x
 685  0026 ae0000        	ldw	x,#0
 686  0029 89            	pushw	x
 687  002a ae0000        	ldw	x,#L302
 688  002d cd0000        	call	_assert_failed
 690  0030 5b04          	addw	sp,#4
 691  0032               L24:
 692                     ; 147     assert_param(IS_TIM5_OUTPUT_STATE_OK(TIM5_OutputState));
 694  0032 0d03          	tnz	(OFST+2,sp)
 695  0034 2706          	jreq	L64
 696  0036 7b03          	ld	a,(OFST+2,sp)
 697  0038 a111          	cp	a,#17
 698  003a 2603          	jrne	L44
 699  003c               L64:
 700  003c 4f            	clr	a
 701  003d 2010          	jra	L05
 702  003f               L44:
 703  003f ae0093        	ldw	x,#147
 704  0042 89            	pushw	x
 705  0043 ae0000        	ldw	x,#0
 706  0046 89            	pushw	x
 707  0047 ae0000        	ldw	x,#L302
 708  004a cd0000        	call	_assert_failed
 710  004d 5b04          	addw	sp,#4
 711  004f               L05:
 712                     ; 148     assert_param(IS_TIM5_OC_POLARITY_OK(TIM5_OCPolarity));
 714  004f 0d08          	tnz	(OFST+7,sp)
 715  0051 2706          	jreq	L45
 716  0053 7b08          	ld	a,(OFST+7,sp)
 717  0055 a122          	cp	a,#34
 718  0057 2603          	jrne	L25
 719  0059               L45:
 720  0059 4f            	clr	a
 721  005a 2010          	jra	L65
 722  005c               L25:
 723  005c ae0094        	ldw	x,#148
 724  005f 89            	pushw	x
 725  0060 ae0000        	ldw	x,#0
 726  0063 89            	pushw	x
 727  0064 ae0000        	ldw	x,#L302
 728  0067 cd0000        	call	_assert_failed
 730  006a 5b04          	addw	sp,#4
 731  006c               L65:
 732                     ; 152     TIM5->CCER1 &= (uint8_t)(~( TIM5_CCER1_CC2E |  TIM5_CCER1_CC2P ));
 734  006c c6530a        	ld	a,21258
 735  006f a4cf          	and	a,#207
 736  0071 c7530a        	ld	21258,a
 737                     ; 154     TIM5->CCER1 |= (uint8_t)((uint8_t)(TIM5_OutputState  & TIM5_CCER1_CC2E )| \
 737                     ; 155                         (uint8_t)(TIM5_OCPolarity & TIM5_CCER1_CC2P));
 739  0074 7b08          	ld	a,(OFST+7,sp)
 740  0076 a420          	and	a,#32
 741  0078 6b01          	ld	(OFST+0,sp),a
 743  007a 7b03          	ld	a,(OFST+2,sp)
 744  007c a410          	and	a,#16
 745  007e 1a01          	or	a,(OFST+0,sp)
 746  0080 ca530a        	or	a,21258
 747  0083 c7530a        	ld	21258,a
 748                     ; 159     TIM5->CCMR2 = (uint8_t)((uint8_t)(TIM5->CCMR2 & (uint8_t)(~TIM5_CCMR_OCM)) |
 748                     ; 160                             (uint8_t)TIM5_OCMode);
 750  0086 c65308        	ld	a,21256
 751  0089 a48f          	and	a,#143
 752  008b 1a02          	or	a,(OFST+1,sp)
 753  008d c75308        	ld	21256,a
 754                     ; 164     TIM5->CCR2H = (uint8_t)(TIM5_Pulse >> 8);
 756  0090 7b06          	ld	a,(OFST+5,sp)
 757  0092 c75313        	ld	21267,a
 758                     ; 165     TIM5->CCR2L = (uint8_t)(TIM5_Pulse);
 760  0095 7b07          	ld	a,(OFST+6,sp)
 761  0097 c75314        	ld	21268,a
 762                     ; 166 }
 765  009a 5b03          	addw	sp,#3
 766  009c 81            	ret
 829                     ; 177 void TIM5_OC3Init(TIM5_OCMode_TypeDef TIM5_OCMode,
 829                     ; 178                   TIM5_OutputState_TypeDef TIM5_OutputState,
 829                     ; 179                   uint16_t TIM5_Pulse,
 829                     ; 180                   TIM5_OCPolarity_TypeDef TIM5_OCPolarity)
 829                     ; 181 {
 830                     .text:	section	.text,new
 831  0000               _TIM5_OC3Init:
 833  0000 89            	pushw	x
 834  0001 88            	push	a
 835       00000001      OFST:	set	1
 838                     ; 183     assert_param(IS_TIM5_OC_MODE_OK(TIM5_OCMode));
 840  0002 9e            	ld	a,xh
 841  0003 4d            	tnz	a
 842  0004 2719          	jreq	L46
 843  0006 9e            	ld	a,xh
 844  0007 a110          	cp	a,#16
 845  0009 2714          	jreq	L46
 846  000b 9e            	ld	a,xh
 847  000c a120          	cp	a,#32
 848  000e 270f          	jreq	L46
 849  0010 9e            	ld	a,xh
 850  0011 a130          	cp	a,#48
 851  0013 270a          	jreq	L46
 852  0015 9e            	ld	a,xh
 853  0016 a160          	cp	a,#96
 854  0018 2705          	jreq	L46
 855  001a 9e            	ld	a,xh
 856  001b a170          	cp	a,#112
 857  001d 2603          	jrne	L26
 858  001f               L46:
 859  001f 4f            	clr	a
 860  0020 2010          	jra	L66
 861  0022               L26:
 862  0022 ae00b7        	ldw	x,#183
 863  0025 89            	pushw	x
 864  0026 ae0000        	ldw	x,#0
 865  0029 89            	pushw	x
 866  002a ae0000        	ldw	x,#L302
 867  002d cd0000        	call	_assert_failed
 869  0030 5b04          	addw	sp,#4
 870  0032               L66:
 871                     ; 184     assert_param(IS_TIM5_OUTPUT_STATE_OK(TIM5_OutputState));
 873  0032 0d03          	tnz	(OFST+2,sp)
 874  0034 2706          	jreq	L27
 875  0036 7b03          	ld	a,(OFST+2,sp)
 876  0038 a111          	cp	a,#17
 877  003a 2603          	jrne	L07
 878  003c               L27:
 879  003c 4f            	clr	a
 880  003d 2010          	jra	L47
 881  003f               L07:
 882  003f ae00b8        	ldw	x,#184
 883  0042 89            	pushw	x
 884  0043 ae0000        	ldw	x,#0
 885  0046 89            	pushw	x
 886  0047 ae0000        	ldw	x,#L302
 887  004a cd0000        	call	_assert_failed
 889  004d 5b04          	addw	sp,#4
 890  004f               L47:
 891                     ; 185     assert_param(IS_TIM5_OC_POLARITY_OK(TIM5_OCPolarity));
 893  004f 0d08          	tnz	(OFST+7,sp)
 894  0051 2706          	jreq	L001
 895  0053 7b08          	ld	a,(OFST+7,sp)
 896  0055 a122          	cp	a,#34
 897  0057 2603          	jrne	L67
 898  0059               L001:
 899  0059 4f            	clr	a
 900  005a 2010          	jra	L201
 901  005c               L67:
 902  005c ae00b9        	ldw	x,#185
 903  005f 89            	pushw	x
 904  0060 ae0000        	ldw	x,#0
 905  0063 89            	pushw	x
 906  0064 ae0000        	ldw	x,#L302
 907  0067 cd0000        	call	_assert_failed
 909  006a 5b04          	addw	sp,#4
 910  006c               L201:
 911                     ; 187     TIM5->CCER2 &= (uint8_t)(~( TIM5_CCER2_CC3E  | TIM5_CCER2_CC3P));
 913  006c c6530b        	ld	a,21259
 914  006f a4fc          	and	a,#252
 915  0071 c7530b        	ld	21259,a
 916                     ; 189     TIM5->CCER2 |= (uint8_t)((uint8_t)(TIM5_OutputState  & TIM5_CCER2_CC3E   )|
 916                     ; 190                              (uint8_t)(TIM5_OCPolarity   & TIM5_CCER2_CC3P   ));
 918  0074 7b08          	ld	a,(OFST+7,sp)
 919  0076 a402          	and	a,#2
 920  0078 6b01          	ld	(OFST+0,sp),a
 922  007a 7b03          	ld	a,(OFST+2,sp)
 923  007c a401          	and	a,#1
 924  007e 1a01          	or	a,(OFST+0,sp)
 925  0080 ca530b        	or	a,21259
 926  0083 c7530b        	ld	21259,a
 927                     ; 193     TIM5->CCMR3 = (uint8_t)((uint8_t)(TIM5->CCMR3 & (uint8_t)(~TIM5_CCMR_OCM)) | (uint8_t)TIM5_OCMode);
 929  0086 c65309        	ld	a,21257
 930  0089 a48f          	and	a,#143
 931  008b 1a02          	or	a,(OFST+1,sp)
 932  008d c75309        	ld	21257,a
 933                     ; 196     TIM5->CCR3H = (uint8_t)(TIM5_Pulse >> 8);
 935  0090 7b06          	ld	a,(OFST+5,sp)
 936  0092 c75315        	ld	21269,a
 937                     ; 197     TIM5->CCR3L = (uint8_t)(TIM5_Pulse);
 939  0095 7b07          	ld	a,(OFST+6,sp)
 940  0097 c75316        	ld	21270,a
 941                     ; 199 }
 944  009a 5b03          	addw	sp,#3
 945  009c 81            	ret
1137                     ; 211 void TIM5_ICInit(TIM5_Channel_TypeDef TIM5_Channel,
1137                     ; 212                  TIM5_ICPolarity_TypeDef TIM5_ICPolarity,
1137                     ; 213                  TIM5_ICSelection_TypeDef TIM5_ICSelection,
1137                     ; 214                  TIM5_ICPSC_TypeDef TIM5_ICPrescaler,
1137                     ; 215                  uint8_t TIM5_ICFilter)
1137                     ; 216 {
1138                     .text:	section	.text,new
1139  0000               _TIM5_ICInit:
1141  0000 89            	pushw	x
1142       00000000      OFST:	set	0
1145                     ; 218     assert_param(IS_TIM5_CHANNEL_OK(TIM5_Channel));
1147  0001 9e            	ld	a,xh
1148  0002 4d            	tnz	a
1149  0003 270a          	jreq	L011
1150  0005 9e            	ld	a,xh
1151  0006 a101          	cp	a,#1
1152  0008 2705          	jreq	L011
1153  000a 9e            	ld	a,xh
1154  000b a102          	cp	a,#2
1155  000d 2603          	jrne	L601
1156  000f               L011:
1157  000f 4f            	clr	a
1158  0010 2010          	jra	L211
1159  0012               L601:
1160  0012 ae00da        	ldw	x,#218
1161  0015 89            	pushw	x
1162  0016 ae0000        	ldw	x,#0
1163  0019 89            	pushw	x
1164  001a ae0000        	ldw	x,#L302
1165  001d cd0000        	call	_assert_failed
1167  0020 5b04          	addw	sp,#4
1168  0022               L211:
1169                     ; 219     assert_param(IS_TIM5_IC_POLARITY_OK(TIM5_ICPolarity));
1171  0022 0d02          	tnz	(OFST+2,sp)
1172  0024 2706          	jreq	L611
1173  0026 7b02          	ld	a,(OFST+2,sp)
1174  0028 a144          	cp	a,#68
1175  002a 2603          	jrne	L411
1176  002c               L611:
1177  002c 4f            	clr	a
1178  002d 2010          	jra	L021
1179  002f               L411:
1180  002f ae00db        	ldw	x,#219
1181  0032 89            	pushw	x
1182  0033 ae0000        	ldw	x,#0
1183  0036 89            	pushw	x
1184  0037 ae0000        	ldw	x,#L302
1185  003a cd0000        	call	_assert_failed
1187  003d 5b04          	addw	sp,#4
1188  003f               L021:
1189                     ; 220     assert_param(IS_TIM5_IC_SELECTION_OK(TIM5_ICSelection));
1191  003f 7b05          	ld	a,(OFST+5,sp)
1192  0041 a101          	cp	a,#1
1193  0043 270c          	jreq	L421
1194  0045 7b05          	ld	a,(OFST+5,sp)
1195  0047 a102          	cp	a,#2
1196  0049 2706          	jreq	L421
1197  004b 7b05          	ld	a,(OFST+5,sp)
1198  004d a103          	cp	a,#3
1199  004f 2603          	jrne	L221
1200  0051               L421:
1201  0051 4f            	clr	a
1202  0052 2010          	jra	L621
1203  0054               L221:
1204  0054 ae00dc        	ldw	x,#220
1205  0057 89            	pushw	x
1206  0058 ae0000        	ldw	x,#0
1207  005b 89            	pushw	x
1208  005c ae0000        	ldw	x,#L302
1209  005f cd0000        	call	_assert_failed
1211  0062 5b04          	addw	sp,#4
1212  0064               L621:
1213                     ; 221     assert_param(IS_TIM5_IC_PRESCALER_OK(TIM5_ICPrescaler));
1215  0064 0d06          	tnz	(OFST+6,sp)
1216  0066 2712          	jreq	L231
1217  0068 7b06          	ld	a,(OFST+6,sp)
1218  006a a104          	cp	a,#4
1219  006c 270c          	jreq	L231
1220  006e 7b06          	ld	a,(OFST+6,sp)
1221  0070 a108          	cp	a,#8
1222  0072 2706          	jreq	L231
1223  0074 7b06          	ld	a,(OFST+6,sp)
1224  0076 a10c          	cp	a,#12
1225  0078 2603          	jrne	L031
1226  007a               L231:
1227  007a 4f            	clr	a
1228  007b 2010          	jra	L431
1229  007d               L031:
1230  007d ae00dd        	ldw	x,#221
1231  0080 89            	pushw	x
1232  0081 ae0000        	ldw	x,#0
1233  0084 89            	pushw	x
1234  0085 ae0000        	ldw	x,#L302
1235  0088 cd0000        	call	_assert_failed
1237  008b 5b04          	addw	sp,#4
1238  008d               L431:
1239                     ; 222     assert_param(IS_TIM5_IC_FILTER_OK(TIM5_ICFilter));
1241  008d 7b07          	ld	a,(OFST+7,sp)
1242  008f a110          	cp	a,#16
1243  0091 2403          	jruge	L631
1244  0093 4f            	clr	a
1245  0094 2010          	jra	L041
1246  0096               L631:
1247  0096 ae00de        	ldw	x,#222
1248  0099 89            	pushw	x
1249  009a ae0000        	ldw	x,#0
1250  009d 89            	pushw	x
1251  009e ae0000        	ldw	x,#L302
1252  00a1 cd0000        	call	_assert_failed
1254  00a4 5b04          	addw	sp,#4
1255  00a6               L041:
1256                     ; 224     if (TIM5_Channel == TIM5_CHANNEL_1)
1258  00a6 0d01          	tnz	(OFST+1,sp)
1259  00a8 2614          	jrne	L173
1260                     ; 227         TI1_Config((uint8_t)TIM5_ICPolarity,
1260                     ; 228                    (uint8_t)TIM5_ICSelection,
1260                     ; 229                    (uint8_t)TIM5_ICFilter);
1262  00aa 7b07          	ld	a,(OFST+7,sp)
1263  00ac 88            	push	a
1264  00ad 7b06          	ld	a,(OFST+6,sp)
1265  00af 97            	ld	xl,a
1266  00b0 7b03          	ld	a,(OFST+3,sp)
1267  00b2 95            	ld	xh,a
1268  00b3 cd0000        	call	L3_TI1_Config
1270  00b6 84            	pop	a
1271                     ; 232         TIM5_SetIC1Prescaler(TIM5_ICPrescaler);
1273  00b7 7b06          	ld	a,(OFST+6,sp)
1274  00b9 cd0000        	call	_TIM5_SetIC1Prescaler
1277  00bc 202c          	jra	L373
1278  00be               L173:
1279                     ; 234     else if (TIM5_Channel == TIM5_CHANNEL_2)
1281  00be 7b01          	ld	a,(OFST+1,sp)
1282  00c0 a101          	cp	a,#1
1283  00c2 2614          	jrne	L573
1284                     ; 237         TI2_Config((uint8_t)TIM5_ICPolarity,
1284                     ; 238                    (uint8_t)TIM5_ICSelection,
1284                     ; 239                    (uint8_t)TIM5_ICFilter);
1286  00c4 7b07          	ld	a,(OFST+7,sp)
1287  00c6 88            	push	a
1288  00c7 7b06          	ld	a,(OFST+6,sp)
1289  00c9 97            	ld	xl,a
1290  00ca 7b03          	ld	a,(OFST+3,sp)
1291  00cc 95            	ld	xh,a
1292  00cd cd0000        	call	L5_TI2_Config
1294  00d0 84            	pop	a
1295                     ; 242         TIM5_SetIC2Prescaler(TIM5_ICPrescaler);
1297  00d1 7b06          	ld	a,(OFST+6,sp)
1298  00d3 cd0000        	call	_TIM5_SetIC2Prescaler
1301  00d6 2012          	jra	L373
1302  00d8               L573:
1303                     ; 247         TI3_Config((uint8_t)TIM5_ICPolarity,
1303                     ; 248                    (uint8_t)TIM5_ICSelection,
1303                     ; 249                    (uint8_t)TIM5_ICFilter);
1305  00d8 7b07          	ld	a,(OFST+7,sp)
1306  00da 88            	push	a
1307  00db 7b06          	ld	a,(OFST+6,sp)
1308  00dd 97            	ld	xl,a
1309  00de 7b03          	ld	a,(OFST+3,sp)
1310  00e0 95            	ld	xh,a
1311  00e1 cd0000        	call	L7_TI3_Config
1313  00e4 84            	pop	a
1314                     ; 252         TIM5_SetIC3Prescaler(TIM5_ICPrescaler);
1316  00e5 7b06          	ld	a,(OFST+6,sp)
1317  00e7 cd0000        	call	_TIM5_SetIC3Prescaler
1319  00ea               L373:
1320                     ; 254 }
1323  00ea 85            	popw	x
1324  00eb 81            	ret
1415                     ; 266 void TIM5_PWMIConfig(TIM5_Channel_TypeDef TIM5_Channel,
1415                     ; 267                      TIM5_ICPolarity_TypeDef TIM5_ICPolarity,
1415                     ; 268                      TIM5_ICSelection_TypeDef TIM5_ICSelection,
1415                     ; 269                      TIM5_ICPSC_TypeDef TIM5_ICPrescaler,
1415                     ; 270                      uint8_t TIM5_ICFilter)
1415                     ; 271 {
1416                     .text:	section	.text,new
1417  0000               _TIM5_PWMIConfig:
1419  0000 89            	pushw	x
1420  0001 89            	pushw	x
1421       00000002      OFST:	set	2
1424                     ; 272     uint8_t icpolarity = (uint8_t)TIM5_ICPOLARITY_RISING;
1426                     ; 273     uint8_t icselection = (uint8_t)TIM5_ICSELECTION_DIRECTTI;
1428                     ; 276     assert_param(IS_TIM5_PWMI_CHANNEL_OK(TIM5_Channel));
1430  0002 9e            	ld	a,xh
1431  0003 4d            	tnz	a
1432  0004 2705          	jreq	L641
1433  0006 9e            	ld	a,xh
1434  0007 a101          	cp	a,#1
1435  0009 2603          	jrne	L441
1436  000b               L641:
1437  000b 4f            	clr	a
1438  000c 2010          	jra	L051
1439  000e               L441:
1440  000e ae0114        	ldw	x,#276
1441  0011 89            	pushw	x
1442  0012 ae0000        	ldw	x,#0
1443  0015 89            	pushw	x
1444  0016 ae0000        	ldw	x,#L302
1445  0019 cd0000        	call	_assert_failed
1447  001c 5b04          	addw	sp,#4
1448  001e               L051:
1449                     ; 277     assert_param(IS_TIM5_IC_POLARITY_OK(TIM5_ICPolarity));
1451  001e 0d04          	tnz	(OFST+2,sp)
1452  0020 2706          	jreq	L451
1453  0022 7b04          	ld	a,(OFST+2,sp)
1454  0024 a144          	cp	a,#68
1455  0026 2603          	jrne	L251
1456  0028               L451:
1457  0028 4f            	clr	a
1458  0029 2010          	jra	L651
1459  002b               L251:
1460  002b ae0115        	ldw	x,#277
1461  002e 89            	pushw	x
1462  002f ae0000        	ldw	x,#0
1463  0032 89            	pushw	x
1464  0033 ae0000        	ldw	x,#L302
1465  0036 cd0000        	call	_assert_failed
1467  0039 5b04          	addw	sp,#4
1468  003b               L651:
1469                     ; 278     assert_param(IS_TIM5_IC_SELECTION_OK(TIM5_ICSelection));
1471  003b 7b07          	ld	a,(OFST+5,sp)
1472  003d a101          	cp	a,#1
1473  003f 270c          	jreq	L261
1474  0041 7b07          	ld	a,(OFST+5,sp)
1475  0043 a102          	cp	a,#2
1476  0045 2706          	jreq	L261
1477  0047 7b07          	ld	a,(OFST+5,sp)
1478  0049 a103          	cp	a,#3
1479  004b 2603          	jrne	L061
1480  004d               L261:
1481  004d 4f            	clr	a
1482  004e 2010          	jra	L461
1483  0050               L061:
1484  0050 ae0116        	ldw	x,#278
1485  0053 89            	pushw	x
1486  0054 ae0000        	ldw	x,#0
1487  0057 89            	pushw	x
1488  0058 ae0000        	ldw	x,#L302
1489  005b cd0000        	call	_assert_failed
1491  005e 5b04          	addw	sp,#4
1492  0060               L461:
1493                     ; 279     assert_param(IS_TIM5_IC_PRESCALER_OK(TIM5_ICPrescaler));
1495  0060 0d08          	tnz	(OFST+6,sp)
1496  0062 2712          	jreq	L071
1497  0064 7b08          	ld	a,(OFST+6,sp)
1498  0066 a104          	cp	a,#4
1499  0068 270c          	jreq	L071
1500  006a 7b08          	ld	a,(OFST+6,sp)
1501  006c a108          	cp	a,#8
1502  006e 2706          	jreq	L071
1503  0070 7b08          	ld	a,(OFST+6,sp)
1504  0072 a10c          	cp	a,#12
1505  0074 2603          	jrne	L661
1506  0076               L071:
1507  0076 4f            	clr	a
1508  0077 2010          	jra	L271
1509  0079               L661:
1510  0079 ae0117        	ldw	x,#279
1511  007c 89            	pushw	x
1512  007d ae0000        	ldw	x,#0
1513  0080 89            	pushw	x
1514  0081 ae0000        	ldw	x,#L302
1515  0084 cd0000        	call	_assert_failed
1517  0087 5b04          	addw	sp,#4
1518  0089               L271:
1519                     ; 282     if (TIM5_ICPolarity != TIM5_ICPOLARITY_FALLING)
1521  0089 7b04          	ld	a,(OFST+2,sp)
1522  008b a144          	cp	a,#68
1523  008d 2706          	jreq	L144
1524                     ; 284         icpolarity = (uint8_t)TIM5_ICPOLARITY_FALLING;
1526  008f a644          	ld	a,#68
1527  0091 6b01          	ld	(OFST-1,sp),a
1530  0093 2002          	jra	L344
1531  0095               L144:
1532                     ; 288         icpolarity = (uint8_t)TIM5_ICPOLARITY_RISING;
1534  0095 0f01          	clr	(OFST-1,sp)
1536  0097               L344:
1537                     ; 292     if (TIM5_ICSelection == TIM5_ICSELECTION_DIRECTTI)
1539  0097 7b07          	ld	a,(OFST+5,sp)
1540  0099 a101          	cp	a,#1
1541  009b 2606          	jrne	L544
1542                     ; 294         icselection = (uint8_t)TIM5_ICSELECTION_INDIRECTTI;
1544  009d a602          	ld	a,#2
1545  009f 6b02          	ld	(OFST+0,sp),a
1548  00a1 2004          	jra	L744
1549  00a3               L544:
1550                     ; 298         icselection = (uint8_t)TIM5_ICSELECTION_DIRECTTI;
1552  00a3 a601          	ld	a,#1
1553  00a5 6b02          	ld	(OFST+0,sp),a
1555  00a7               L744:
1556                     ; 301     if (TIM5_Channel == TIM5_CHANNEL_1)
1558  00a7 0d03          	tnz	(OFST+1,sp)
1559  00a9 2626          	jrne	L154
1560                     ; 304         TI1_Config((uint8_t)TIM5_ICPolarity, (uint8_t)TIM5_ICSelection,
1560                     ; 305                    (uint8_t)TIM5_ICFilter);
1562  00ab 7b09          	ld	a,(OFST+7,sp)
1563  00ad 88            	push	a
1564  00ae 7b08          	ld	a,(OFST+6,sp)
1565  00b0 97            	ld	xl,a
1566  00b1 7b05          	ld	a,(OFST+3,sp)
1567  00b3 95            	ld	xh,a
1568  00b4 cd0000        	call	L3_TI1_Config
1570  00b7 84            	pop	a
1571                     ; 308         TIM5_SetIC1Prescaler(TIM5_ICPrescaler);
1573  00b8 7b08          	ld	a,(OFST+6,sp)
1574  00ba cd0000        	call	_TIM5_SetIC1Prescaler
1576                     ; 311         TI2_Config((uint8_t)icpolarity, (uint8_t)icselection, (uint8_t)TIM5_ICFilter);
1578  00bd 7b09          	ld	a,(OFST+7,sp)
1579  00bf 88            	push	a
1580  00c0 7b03          	ld	a,(OFST+1,sp)
1581  00c2 97            	ld	xl,a
1582  00c3 7b02          	ld	a,(OFST+0,sp)
1583  00c5 95            	ld	xh,a
1584  00c6 cd0000        	call	L5_TI2_Config
1586  00c9 84            	pop	a
1587                     ; 314         TIM5_SetIC2Prescaler(TIM5_ICPrescaler);
1589  00ca 7b08          	ld	a,(OFST+6,sp)
1590  00cc cd0000        	call	_TIM5_SetIC2Prescaler
1593  00cf 2024          	jra	L354
1594  00d1               L154:
1595                     ; 319         TI2_Config((uint8_t)TIM5_ICPolarity, (uint8_t)TIM5_ICSelection,
1595                     ; 320                    (uint8_t)TIM5_ICFilter);
1597  00d1 7b09          	ld	a,(OFST+7,sp)
1598  00d3 88            	push	a
1599  00d4 7b08          	ld	a,(OFST+6,sp)
1600  00d6 97            	ld	xl,a
1601  00d7 7b05          	ld	a,(OFST+3,sp)
1602  00d9 95            	ld	xh,a
1603  00da cd0000        	call	L5_TI2_Config
1605  00dd 84            	pop	a
1606                     ; 323         TIM5_SetIC2Prescaler(TIM5_ICPrescaler);
1608  00de 7b08          	ld	a,(OFST+6,sp)
1609  00e0 cd0000        	call	_TIM5_SetIC2Prescaler
1611                     ; 326         TI1_Config((uint8_t)icpolarity, (uint8_t)icselection, (uint8_t)TIM5_ICFilter);
1613  00e3 7b09          	ld	a,(OFST+7,sp)
1614  00e5 88            	push	a
1615  00e6 7b03          	ld	a,(OFST+1,sp)
1616  00e8 97            	ld	xl,a
1617  00e9 7b02          	ld	a,(OFST+0,sp)
1618  00eb 95            	ld	xh,a
1619  00ec cd0000        	call	L3_TI1_Config
1621  00ef 84            	pop	a
1622                     ; 329         TIM5_SetIC1Prescaler(TIM5_ICPrescaler);
1624  00f0 7b08          	ld	a,(OFST+6,sp)
1625  00f2 cd0000        	call	_TIM5_SetIC1Prescaler
1627  00f5               L354:
1628                     ; 331 }
1631  00f5 5b04          	addw	sp,#4
1632  00f7 81            	ret
1688                     ; 340 void TIM5_Cmd(FunctionalState NewState)
1688                     ; 341 {
1689                     .text:	section	.text,new
1690  0000               _TIM5_Cmd:
1692  0000 88            	push	a
1693       00000000      OFST:	set	0
1696                     ; 343     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1698  0001 4d            	tnz	a
1699  0002 2704          	jreq	L002
1700  0004 a101          	cp	a,#1
1701  0006 2603          	jrne	L671
1702  0008               L002:
1703  0008 4f            	clr	a
1704  0009 2010          	jra	L202
1705  000b               L671:
1706  000b ae0157        	ldw	x,#343
1707  000e 89            	pushw	x
1708  000f ae0000        	ldw	x,#0
1709  0012 89            	pushw	x
1710  0013 ae0000        	ldw	x,#L302
1711  0016 cd0000        	call	_assert_failed
1713  0019 5b04          	addw	sp,#4
1714  001b               L202:
1715                     ; 346     if (NewState != DISABLE)
1717  001b 0d01          	tnz	(OFST+1,sp)
1718  001d 2706          	jreq	L305
1719                     ; 348         TIM5->CR1 |= TIM5_CR1_CEN ;
1721  001f 72105300      	bset	21248,#0
1723  0023 2004          	jra	L505
1724  0025               L305:
1725                     ; 352         TIM5->CR1 &= (uint8_t)(~TIM5_CR1_CEN) ;
1727  0025 72115300      	bres	21248,#0
1728  0029               L505:
1729                     ; 354 }
1732  0029 84            	pop	a
1733  002a 81            	ret
1820                     ; 370 void TIM5_ITConfig(TIM5_IT_TypeDef TIM5_IT, FunctionalState NewState)
1820                     ; 371 {
1821                     .text:	section	.text,new
1822  0000               _TIM5_ITConfig:
1824  0000 89            	pushw	x
1825       00000000      OFST:	set	0
1828                     ; 373     assert_param(IS_TIM5_IT_OK(TIM5_IT));
1830  0001 9e            	ld	a,xh
1831  0002 4d            	tnz	a
1832  0003 2708          	jreq	L602
1833  0005 9e            	ld	a,xh
1834  0006 a150          	cp	a,#80
1835  0008 2403          	jruge	L602
1836  000a 4f            	clr	a
1837  000b 2010          	jra	L012
1838  000d               L602:
1839  000d ae0175        	ldw	x,#373
1840  0010 89            	pushw	x
1841  0011 ae0000        	ldw	x,#0
1842  0014 89            	pushw	x
1843  0015 ae0000        	ldw	x,#L302
1844  0018 cd0000        	call	_assert_failed
1846  001b 5b04          	addw	sp,#4
1847  001d               L012:
1848                     ; 374     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1850  001d 0d02          	tnz	(OFST+2,sp)
1851  001f 2706          	jreq	L412
1852  0021 7b02          	ld	a,(OFST+2,sp)
1853  0023 a101          	cp	a,#1
1854  0025 2603          	jrne	L212
1855  0027               L412:
1856  0027 4f            	clr	a
1857  0028 2010          	jra	L612
1858  002a               L212:
1859  002a ae0176        	ldw	x,#374
1860  002d 89            	pushw	x
1861  002e ae0000        	ldw	x,#0
1862  0031 89            	pushw	x
1863  0032 ae0000        	ldw	x,#L302
1864  0035 cd0000        	call	_assert_failed
1866  0038 5b04          	addw	sp,#4
1867  003a               L612:
1868                     ; 376     if (NewState != DISABLE)
1870  003a 0d02          	tnz	(OFST+2,sp)
1871  003c 270a          	jreq	L745
1872                     ; 379         TIM5->IER |= (uint8_t)TIM5_IT;
1874  003e c65303        	ld	a,21251
1875  0041 1a01          	or	a,(OFST+1,sp)
1876  0043 c75303        	ld	21251,a
1878  0046 2009          	jra	L155
1879  0048               L745:
1880                     ; 384         TIM5->IER &= (uint8_t)(~TIM5_IT);
1882  0048 7b01          	ld	a,(OFST+1,sp)
1883  004a 43            	cpl	a
1884  004b c45303        	and	a,21251
1885  004e c75303        	ld	21251,a
1886  0051               L155:
1887                     ; 386 }
1890  0051 85            	popw	x
1891  0052 81            	ret
1928                     ; 395 void TIM5_UpdateDisableConfig(FunctionalState NewState)
1928                     ; 396 {
1929                     .text:	section	.text,new
1930  0000               _TIM5_UpdateDisableConfig:
1932  0000 88            	push	a
1933       00000000      OFST:	set	0
1936                     ; 398     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1938  0001 4d            	tnz	a
1939  0002 2704          	jreq	L422
1940  0004 a101          	cp	a,#1
1941  0006 2603          	jrne	L222
1942  0008               L422:
1943  0008 4f            	clr	a
1944  0009 2010          	jra	L622
1945  000b               L222:
1946  000b ae018e        	ldw	x,#398
1947  000e 89            	pushw	x
1948  000f ae0000        	ldw	x,#0
1949  0012 89            	pushw	x
1950  0013 ae0000        	ldw	x,#L302
1951  0016 cd0000        	call	_assert_failed
1953  0019 5b04          	addw	sp,#4
1954  001b               L622:
1955                     ; 401     if (NewState != DISABLE)
1957  001b 0d01          	tnz	(OFST+1,sp)
1958  001d 2706          	jreq	L175
1959                     ; 403         TIM5->CR1 |= TIM5_CR1_UDIS ;
1961  001f 72125300      	bset	21248,#1
1963  0023 2004          	jra	L375
1964  0025               L175:
1965                     ; 407         TIM5->CR1 &= (uint8_t)(~TIM5_CR1_UDIS) ;
1967  0025 72135300      	bres	21248,#1
1968  0029               L375:
1969                     ; 409 }
1972  0029 84            	pop	a
1973  002a 81            	ret
2032                     ; 419 void TIM5_UpdateRequestConfig(TIM5_UpdateSource_TypeDef TIM5_UpdateSource)
2032                     ; 420 {
2033                     .text:	section	.text,new
2034  0000               _TIM5_UpdateRequestConfig:
2036  0000 88            	push	a
2037       00000000      OFST:	set	0
2040                     ; 422     assert_param(IS_TIM5_UPDATE_SOURCE_OK(TIM5_UpdateSource));
2042  0001 4d            	tnz	a
2043  0002 2704          	jreq	L432
2044  0004 a101          	cp	a,#1
2045  0006 2603          	jrne	L232
2046  0008               L432:
2047  0008 4f            	clr	a
2048  0009 2010          	jra	L632
2049  000b               L232:
2050  000b ae01a6        	ldw	x,#422
2051  000e 89            	pushw	x
2052  000f ae0000        	ldw	x,#0
2053  0012 89            	pushw	x
2054  0013 ae0000        	ldw	x,#L302
2055  0016 cd0000        	call	_assert_failed
2057  0019 5b04          	addw	sp,#4
2058  001b               L632:
2059                     ; 425     if (TIM5_UpdateSource != TIM5_UPDATESOURCE_GLOBAL)
2061  001b 0d01          	tnz	(OFST+1,sp)
2062  001d 2706          	jreq	L326
2063                     ; 427         TIM5->CR1 |= TIM5_CR1_URS ;
2065  001f 72145300      	bset	21248,#2
2067  0023 2004          	jra	L526
2068  0025               L326:
2069                     ; 431         TIM5->CR1 &= (uint8_t)(~TIM5_CR1_URS) ;
2071  0025 72155300      	bres	21248,#2
2072  0029               L526:
2073                     ; 433 }
2076  0029 84            	pop	a
2077  002a 81            	ret
2135                     ; 444 void TIM5_SelectOnePulseMode(TIM5_OPMode_TypeDef TIM5_OPMode)
2135                     ; 445 {
2136                     .text:	section	.text,new
2137  0000               _TIM5_SelectOnePulseMode:
2139  0000 88            	push	a
2140       00000000      OFST:	set	0
2143                     ; 447     assert_param(IS_TIM5_OPM_MODE_OK(TIM5_OPMode));
2145  0001 a101          	cp	a,#1
2146  0003 2703          	jreq	L442
2147  0005 4d            	tnz	a
2148  0006 2603          	jrne	L242
2149  0008               L442:
2150  0008 4f            	clr	a
2151  0009 2010          	jra	L642
2152  000b               L242:
2153  000b ae01bf        	ldw	x,#447
2154  000e 89            	pushw	x
2155  000f ae0000        	ldw	x,#0
2156  0012 89            	pushw	x
2157  0013 ae0000        	ldw	x,#L302
2158  0016 cd0000        	call	_assert_failed
2160  0019 5b04          	addw	sp,#4
2161  001b               L642:
2162                     ; 450     if (TIM5_OPMode != TIM5_OPMODE_REPETITIVE)
2164  001b 0d01          	tnz	(OFST+1,sp)
2165  001d 2706          	jreq	L556
2166                     ; 452         TIM5->CR1 |= TIM5_CR1_OPM ;
2168  001f 72165300      	bset	21248,#3
2170  0023 2004          	jra	L756
2171  0025               L556:
2172                     ; 456         TIM5->CR1 &= (uint8_t)(~TIM5_CR1_OPM) ;
2174  0025 72175300      	bres	21248,#3
2175  0029               L756:
2176                     ; 459 }
2179  0029 84            	pop	a
2180  002a 81            	ret
2249                     ; 490 void TIM5_PrescalerConfig(TIM5_Prescaler_TypeDef Prescaler,
2249                     ; 491                           TIM5_PSCReloadMode_TypeDef TIM5_PSCReloadMode)
2249                     ; 492 {
2250                     .text:	section	.text,new
2251  0000               _TIM5_PrescalerConfig:
2253  0000 89            	pushw	x
2254       00000000      OFST:	set	0
2257                     ; 494     assert_param(IS_TIM5_PRESCALER_RELOAD_OK(TIM5_PSCReloadMode));
2259  0001 9f            	ld	a,xl
2260  0002 4d            	tnz	a
2261  0003 2705          	jreq	L452
2262  0005 9f            	ld	a,xl
2263  0006 a101          	cp	a,#1
2264  0008 2603          	jrne	L252
2265  000a               L452:
2266  000a 4f            	clr	a
2267  000b 2010          	jra	L652
2268  000d               L252:
2269  000d ae01ee        	ldw	x,#494
2270  0010 89            	pushw	x
2271  0011 ae0000        	ldw	x,#0
2272  0014 89            	pushw	x
2273  0015 ae0000        	ldw	x,#L302
2274  0018 cd0000        	call	_assert_failed
2276  001b 5b04          	addw	sp,#4
2277  001d               L652:
2278                     ; 495     assert_param(IS_TIM5_PRESCALER_OK(Prescaler));
2280  001d 0d01          	tnz	(OFST+1,sp)
2281  001f 275a          	jreq	L262
2282  0021 7b01          	ld	a,(OFST+1,sp)
2283  0023 a101          	cp	a,#1
2284  0025 2754          	jreq	L262
2285  0027 7b01          	ld	a,(OFST+1,sp)
2286  0029 a102          	cp	a,#2
2287  002b 274e          	jreq	L262
2288  002d 7b01          	ld	a,(OFST+1,sp)
2289  002f a103          	cp	a,#3
2290  0031 2748          	jreq	L262
2291  0033 7b01          	ld	a,(OFST+1,sp)
2292  0035 a104          	cp	a,#4
2293  0037 2742          	jreq	L262
2294  0039 7b01          	ld	a,(OFST+1,sp)
2295  003b a105          	cp	a,#5
2296  003d 273c          	jreq	L262
2297  003f 7b01          	ld	a,(OFST+1,sp)
2298  0041 a106          	cp	a,#6
2299  0043 2736          	jreq	L262
2300  0045 7b01          	ld	a,(OFST+1,sp)
2301  0047 a107          	cp	a,#7
2302  0049 2730          	jreq	L262
2303  004b 7b01          	ld	a,(OFST+1,sp)
2304  004d a108          	cp	a,#8
2305  004f 272a          	jreq	L262
2306  0051 7b01          	ld	a,(OFST+1,sp)
2307  0053 a109          	cp	a,#9
2308  0055 2724          	jreq	L262
2309  0057 7b01          	ld	a,(OFST+1,sp)
2310  0059 a10a          	cp	a,#10
2311  005b 271e          	jreq	L262
2312  005d 7b01          	ld	a,(OFST+1,sp)
2313  005f a10b          	cp	a,#11
2314  0061 2718          	jreq	L262
2315  0063 7b01          	ld	a,(OFST+1,sp)
2316  0065 a10c          	cp	a,#12
2317  0067 2712          	jreq	L262
2318  0069 7b01          	ld	a,(OFST+1,sp)
2319  006b a10d          	cp	a,#13
2320  006d 270c          	jreq	L262
2321  006f 7b01          	ld	a,(OFST+1,sp)
2322  0071 a10e          	cp	a,#14
2323  0073 2706          	jreq	L262
2324  0075 7b01          	ld	a,(OFST+1,sp)
2325  0077 a10f          	cp	a,#15
2326  0079 2603          	jrne	L062
2327  007b               L262:
2328  007b 4f            	clr	a
2329  007c 2010          	jra	L462
2330  007e               L062:
2331  007e ae01ef        	ldw	x,#495
2332  0081 89            	pushw	x
2333  0082 ae0000        	ldw	x,#0
2334  0085 89            	pushw	x
2335  0086 ae0000        	ldw	x,#L302
2336  0089 cd0000        	call	_assert_failed
2338  008c 5b04          	addw	sp,#4
2339  008e               L462:
2340                     ; 498     TIM5->PSCR = (uint8_t)Prescaler;
2342  008e 7b01          	ld	a,(OFST+1,sp)
2343  0090 c7530e        	ld	21262,a
2344                     ; 501     TIM5->EGR = (uint8_t)TIM5_PSCReloadMode ;
2346  0093 7b02          	ld	a,(OFST+2,sp)
2347  0095 c75306        	ld	21254,a
2348                     ; 502 }
2351  0098 85            	popw	x
2352  0099 81            	ret
2411                     ; 513 void TIM5_ForcedOC1Config(TIM5_ForcedAction_TypeDef TIM5_ForcedAction)
2411                     ; 514 {
2412                     .text:	section	.text,new
2413  0000               _TIM5_ForcedOC1Config:
2415  0000 88            	push	a
2416       00000000      OFST:	set	0
2419                     ; 516     assert_param(IS_TIM5_FORCED_ACTION_OK(TIM5_ForcedAction));
2421  0001 a150          	cp	a,#80
2422  0003 2704          	jreq	L272
2423  0005 a140          	cp	a,#64
2424  0007 2603          	jrne	L072
2425  0009               L272:
2426  0009 4f            	clr	a
2427  000a 2010          	jra	L472
2428  000c               L072:
2429  000c ae0204        	ldw	x,#516
2430  000f 89            	pushw	x
2431  0010 ae0000        	ldw	x,#0
2432  0013 89            	pushw	x
2433  0014 ae0000        	ldw	x,#L302
2434  0017 cd0000        	call	_assert_failed
2436  001a 5b04          	addw	sp,#4
2437  001c               L472:
2438                     ; 519     TIM5->CCMR1  =  (uint8_t)((uint8_t)(TIM5->CCMR1 & (uint8_t)(~TIM5_CCMR_OCM))
2438                     ; 520                               | (uint8_t)TIM5_ForcedAction);
2440  001c c65307        	ld	a,21255
2441  001f a48f          	and	a,#143
2442  0021 1a01          	or	a,(OFST+1,sp)
2443  0023 c75307        	ld	21255,a
2444                     ; 521 }
2447  0026 84            	pop	a
2448  0027 81            	ret
2485                     ; 532 void TIM5_ForcedOC2Config(TIM5_ForcedAction_TypeDef TIM5_ForcedAction)
2485                     ; 533 {
2486                     .text:	section	.text,new
2487  0000               _TIM5_ForcedOC2Config:
2489  0000 88            	push	a
2490       00000000      OFST:	set	0
2493                     ; 535     assert_param(IS_TIM5_FORCED_ACTION_OK(TIM5_ForcedAction));
2495  0001 a150          	cp	a,#80
2496  0003 2704          	jreq	L203
2497  0005 a140          	cp	a,#64
2498  0007 2603          	jrne	L003
2499  0009               L203:
2500  0009 4f            	clr	a
2501  000a 2010          	jra	L403
2502  000c               L003:
2503  000c ae0217        	ldw	x,#535
2504  000f 89            	pushw	x
2505  0010 ae0000        	ldw	x,#0
2506  0013 89            	pushw	x
2507  0014 ae0000        	ldw	x,#L302
2508  0017 cd0000        	call	_assert_failed
2510  001a 5b04          	addw	sp,#4
2511  001c               L403:
2512                     ; 538     TIM5->CCMR2  =  (uint8_t)((uint8_t)(TIM5->CCMR2 & (uint8_t)(~TIM5_CCMR_OCM))
2512                     ; 539                               | (uint8_t)TIM5_ForcedAction);
2514  001c c65308        	ld	a,21256
2515  001f a48f          	and	a,#143
2516  0021 1a01          	or	a,(OFST+1,sp)
2517  0023 c75308        	ld	21256,a
2518                     ; 540 }
2521  0026 84            	pop	a
2522  0027 81            	ret
2559                     ; 551 void TIM5_ForcedOC3Config(TIM5_ForcedAction_TypeDef TIM5_ForcedAction)
2559                     ; 552 {
2560                     .text:	section	.text,new
2561  0000               _TIM5_ForcedOC3Config:
2563  0000 88            	push	a
2564       00000000      OFST:	set	0
2567                     ; 554     assert_param(IS_TIM5_FORCED_ACTION_OK(TIM5_ForcedAction));
2569  0001 a150          	cp	a,#80
2570  0003 2704          	jreq	L213
2571  0005 a140          	cp	a,#64
2572  0007 2603          	jrne	L013
2573  0009               L213:
2574  0009 4f            	clr	a
2575  000a 2010          	jra	L413
2576  000c               L013:
2577  000c ae022a        	ldw	x,#554
2578  000f 89            	pushw	x
2579  0010 ae0000        	ldw	x,#0
2580  0013 89            	pushw	x
2581  0014 ae0000        	ldw	x,#L302
2582  0017 cd0000        	call	_assert_failed
2584  001a 5b04          	addw	sp,#4
2585  001c               L413:
2586                     ; 557     TIM5->CCMR3  =  (uint8_t)((uint8_t)(TIM5->CCMR3 & (uint8_t)(~TIM5_CCMR_OCM))  
2586                     ; 558                               | (uint8_t)TIM5_ForcedAction);
2588  001c c65309        	ld	a,21257
2589  001f a48f          	and	a,#143
2590  0021 1a01          	or	a,(OFST+1,sp)
2591  0023 c75309        	ld	21257,a
2592                     ; 559 }
2595  0026 84            	pop	a
2596  0027 81            	ret
2633                     ; 568 void TIM5_ARRPreloadConfig(FunctionalState NewState)
2633                     ; 569 {
2634                     .text:	section	.text,new
2635  0000               _TIM5_ARRPreloadConfig:
2637  0000 88            	push	a
2638       00000000      OFST:	set	0
2641                     ; 571     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2643  0001 4d            	tnz	a
2644  0002 2704          	jreq	L223
2645  0004 a101          	cp	a,#1
2646  0006 2603          	jrne	L023
2647  0008               L223:
2648  0008 4f            	clr	a
2649  0009 2010          	jra	L423
2650  000b               L023:
2651  000b ae023b        	ldw	x,#571
2652  000e 89            	pushw	x
2653  000f ae0000        	ldw	x,#0
2654  0012 89            	pushw	x
2655  0013 ae0000        	ldw	x,#L302
2656  0016 cd0000        	call	_assert_failed
2658  0019 5b04          	addw	sp,#4
2659  001b               L423:
2660                     ; 574     if (NewState != DISABLE)
2662  001b 0d01          	tnz	(OFST+1,sp)
2663  001d 2706          	jreq	L3101
2664                     ; 576         TIM5->CR1 |= TIM5_CR1_ARPE ;
2666  001f 721e5300      	bset	21248,#7
2668  0023 2004          	jra	L5101
2669  0025               L3101:
2670                     ; 580         TIM5->CR1 &= (uint8_t)(~TIM5_CR1_ARPE) ;
2672  0025 721f5300      	bres	21248,#7
2673  0029               L5101:
2674                     ; 582 }
2677  0029 84            	pop	a
2678  002a 81            	ret
2715                     ; 591 void TIM5_OC1PreloadConfig(FunctionalState NewState)
2715                     ; 592 {
2716                     .text:	section	.text,new
2717  0000               _TIM5_OC1PreloadConfig:
2719  0000 88            	push	a
2720       00000000      OFST:	set	0
2723                     ; 594     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2725  0001 4d            	tnz	a
2726  0002 2704          	jreq	L233
2727  0004 a101          	cp	a,#1
2728  0006 2603          	jrne	L033
2729  0008               L233:
2730  0008 4f            	clr	a
2731  0009 2010          	jra	L433
2732  000b               L033:
2733  000b ae0252        	ldw	x,#594
2734  000e 89            	pushw	x
2735  000f ae0000        	ldw	x,#0
2736  0012 89            	pushw	x
2737  0013 ae0000        	ldw	x,#L302
2738  0016 cd0000        	call	_assert_failed
2740  0019 5b04          	addw	sp,#4
2741  001b               L433:
2742                     ; 597     if (NewState != DISABLE)
2744  001b 0d01          	tnz	(OFST+1,sp)
2745  001d 2706          	jreq	L5301
2746                     ; 599         TIM5->CCMR1 |= TIM5_CCMR_OCxPE ;
2748  001f 72165307      	bset	21255,#3
2750  0023 2004          	jra	L7301
2751  0025               L5301:
2752                     ; 603         TIM5->CCMR1 &= (uint8_t)(~TIM5_CCMR_OCxPE) ;
2754  0025 72175307      	bres	21255,#3
2755  0029               L7301:
2756                     ; 605 }
2759  0029 84            	pop	a
2760  002a 81            	ret
2797                     ; 614 void TIM5_OC2PreloadConfig(FunctionalState NewState)
2797                     ; 615 {
2798                     .text:	section	.text,new
2799  0000               _TIM5_OC2PreloadConfig:
2801  0000 88            	push	a
2802       00000000      OFST:	set	0
2805                     ; 617     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2807  0001 4d            	tnz	a
2808  0002 2704          	jreq	L243
2809  0004 a101          	cp	a,#1
2810  0006 2603          	jrne	L043
2811  0008               L243:
2812  0008 4f            	clr	a
2813  0009 2010          	jra	L443
2814  000b               L043:
2815  000b ae0269        	ldw	x,#617
2816  000e 89            	pushw	x
2817  000f ae0000        	ldw	x,#0
2818  0012 89            	pushw	x
2819  0013 ae0000        	ldw	x,#L302
2820  0016 cd0000        	call	_assert_failed
2822  0019 5b04          	addw	sp,#4
2823  001b               L443:
2824                     ; 620     if (NewState != DISABLE)
2826  001b 0d01          	tnz	(OFST+1,sp)
2827  001d 2706          	jreq	L7501
2828                     ; 622         TIM5->CCMR2 |= TIM5_CCMR_OCxPE ;
2830  001f 72165308      	bset	21256,#3
2832  0023 2004          	jra	L1601
2833  0025               L7501:
2834                     ; 626         TIM5->CCMR2 &= (uint8_t)(~TIM5_CCMR_OCxPE) ;
2836  0025 72175308      	bres	21256,#3
2837  0029               L1601:
2838                     ; 628 }
2841  0029 84            	pop	a
2842  002a 81            	ret
2879                     ; 637 void TIM5_OC3PreloadConfig(FunctionalState NewState)
2879                     ; 638 {
2880                     .text:	section	.text,new
2881  0000               _TIM5_OC3PreloadConfig:
2883  0000 88            	push	a
2884       00000000      OFST:	set	0
2887                     ; 640     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2889  0001 4d            	tnz	a
2890  0002 2704          	jreq	L253
2891  0004 a101          	cp	a,#1
2892  0006 2603          	jrne	L053
2893  0008               L253:
2894  0008 4f            	clr	a
2895  0009 2010          	jra	L453
2896  000b               L053:
2897  000b ae0280        	ldw	x,#640
2898  000e 89            	pushw	x
2899  000f ae0000        	ldw	x,#0
2900  0012 89            	pushw	x
2901  0013 ae0000        	ldw	x,#L302
2902  0016 cd0000        	call	_assert_failed
2904  0019 5b04          	addw	sp,#4
2905  001b               L453:
2906                     ; 643     if (NewState != DISABLE)
2908  001b 0d01          	tnz	(OFST+1,sp)
2909  001d 2706          	jreq	L1011
2910                     ; 645         TIM5->CCMR3 |= TIM5_CCMR_OCxPE ;
2912  001f 72165309      	bset	21257,#3
2914  0023 2004          	jra	L3011
2915  0025               L1011:
2916                     ; 649         TIM5->CCMR3 &= (uint8_t)(~TIM5_CCMR_OCxPE) ;
2918  0025 72175309      	bres	21257,#3
2919  0029               L3011:
2920                     ; 651 }
2923  0029 84            	pop	a
2924  002a 81            	ret
3006                     ; 664 void TIM5_GenerateEvent(TIM5_EventSource_TypeDef TIM5_EventSource)
3006                     ; 665 {
3007                     .text:	section	.text,new
3008  0000               _TIM5_GenerateEvent:
3010  0000 88            	push	a
3011       00000000      OFST:	set	0
3014                     ; 667     assert_param(IS_TIM5_EVENT_SOURCE_OK(TIM5_EventSource));
3016  0001 4d            	tnz	a
3017  0002 2703          	jreq	L063
3018  0004 4f            	clr	a
3019  0005 2010          	jra	L263
3020  0007               L063:
3021  0007 ae029b        	ldw	x,#667
3022  000a 89            	pushw	x
3023  000b ae0000        	ldw	x,#0
3024  000e 89            	pushw	x
3025  000f ae0000        	ldw	x,#L302
3026  0012 cd0000        	call	_assert_failed
3028  0015 5b04          	addw	sp,#4
3029  0017               L263:
3030                     ; 670     TIM5->EGR = (uint8_t)TIM5_EventSource;
3032  0017 7b01          	ld	a,(OFST+1,sp)
3033  0019 c75306        	ld	21254,a
3034                     ; 671 }
3037  001c 84            	pop	a
3038  001d 81            	ret
3075                     ; 682 void TIM5_OC1PolarityConfig(TIM5_OCPolarity_TypeDef TIM5_OCPolarity)
3075                     ; 683 {
3076                     .text:	section	.text,new
3077  0000               _TIM5_OC1PolarityConfig:
3079  0000 88            	push	a
3080       00000000      OFST:	set	0
3083                     ; 685     assert_param(IS_TIM5_OC_POLARITY_OK(TIM5_OCPolarity));
3085  0001 4d            	tnz	a
3086  0002 2704          	jreq	L073
3087  0004 a122          	cp	a,#34
3088  0006 2603          	jrne	L663
3089  0008               L073:
3090  0008 4f            	clr	a
3091  0009 2010          	jra	L273
3092  000b               L663:
3093  000b ae02ad        	ldw	x,#685
3094  000e 89            	pushw	x
3095  000f ae0000        	ldw	x,#0
3096  0012 89            	pushw	x
3097  0013 ae0000        	ldw	x,#L302
3098  0016 cd0000        	call	_assert_failed
3100  0019 5b04          	addw	sp,#4
3101  001b               L273:
3102                     ; 688     if (TIM5_OCPolarity != TIM5_OCPOLARITY_HIGH)
3104  001b 0d01          	tnz	(OFST+1,sp)
3105  001d 2706          	jreq	L7511
3106                     ; 690         TIM5->CCER1 |= TIM5_CCER1_CC1P ;
3108  001f 7212530a      	bset	21258,#1
3110  0023 2004          	jra	L1611
3111  0025               L7511:
3112                     ; 694         TIM5->CCER1 &= (uint8_t)(~TIM5_CCER1_CC1P) ;
3114  0025 7213530a      	bres	21258,#1
3115  0029               L1611:
3116                     ; 696 }
3119  0029 84            	pop	a
3120  002a 81            	ret
3157                     ; 707 void TIM5_OC2PolarityConfig(TIM5_OCPolarity_TypeDef TIM5_OCPolarity)
3157                     ; 708 {
3158                     .text:	section	.text,new
3159  0000               _TIM5_OC2PolarityConfig:
3161  0000 88            	push	a
3162       00000000      OFST:	set	0
3165                     ; 710     assert_param(IS_TIM5_OC_POLARITY_OK(TIM5_OCPolarity));
3167  0001 4d            	tnz	a
3168  0002 2704          	jreq	L004
3169  0004 a122          	cp	a,#34
3170  0006 2603          	jrne	L673
3171  0008               L004:
3172  0008 4f            	clr	a
3173  0009 2010          	jra	L204
3174  000b               L673:
3175  000b ae02c6        	ldw	x,#710
3176  000e 89            	pushw	x
3177  000f ae0000        	ldw	x,#0
3178  0012 89            	pushw	x
3179  0013 ae0000        	ldw	x,#L302
3180  0016 cd0000        	call	_assert_failed
3182  0019 5b04          	addw	sp,#4
3183  001b               L204:
3184                     ; 713     if (TIM5_OCPolarity != TIM5_OCPOLARITY_HIGH)
3186  001b 0d01          	tnz	(OFST+1,sp)
3187  001d 2706          	jreq	L1021
3188                     ; 715         TIM5->CCER1 |= TIM5_CCER1_CC2P ;
3190  001f 721a530a      	bset	21258,#5
3192  0023 2004          	jra	L3021
3193  0025               L1021:
3194                     ; 719         TIM5->CCER1 &= (uint8_t)(~TIM5_CCER1_CC2P) ;
3196  0025 721b530a      	bres	21258,#5
3197  0029               L3021:
3198                     ; 721 }
3201  0029 84            	pop	a
3202  002a 81            	ret
3239                     ; 732 void TIM5_OC3PolarityConfig(TIM5_OCPolarity_TypeDef TIM5_OCPolarity)
3239                     ; 733 {
3240                     .text:	section	.text,new
3241  0000               _TIM5_OC3PolarityConfig:
3243  0000 88            	push	a
3244       00000000      OFST:	set	0
3247                     ; 735     assert_param(IS_TIM5_OC_POLARITY_OK(TIM5_OCPolarity));
3249  0001 4d            	tnz	a
3250  0002 2704          	jreq	L014
3251  0004 a122          	cp	a,#34
3252  0006 2603          	jrne	L604
3253  0008               L014:
3254  0008 4f            	clr	a
3255  0009 2010          	jra	L214
3256  000b               L604:
3257  000b ae02df        	ldw	x,#735
3258  000e 89            	pushw	x
3259  000f ae0000        	ldw	x,#0
3260  0012 89            	pushw	x
3261  0013 ae0000        	ldw	x,#L302
3262  0016 cd0000        	call	_assert_failed
3264  0019 5b04          	addw	sp,#4
3265  001b               L214:
3266                     ; 738     if (TIM5_OCPolarity != TIM5_OCPOLARITY_HIGH)
3268  001b 0d01          	tnz	(OFST+1,sp)
3269  001d 2706          	jreq	L3221
3270                     ; 740         TIM5->CCER2 |= TIM5_CCER2_CC3P ;
3272  001f 7212530b      	bset	21259,#1
3274  0023 2004          	jra	L5221
3275  0025               L3221:
3276                     ; 744         TIM5->CCER2 &= (uint8_t)(~TIM5_CCER2_CC3P) ;
3278  0025 7213530b      	bres	21259,#1
3279  0029               L5221:
3280                     ; 746 }
3283  0029 84            	pop	a
3284  002a 81            	ret
3330                     ; 760 void TIM5_CCxCmd(TIM5_Channel_TypeDef TIM5_Channel, FunctionalState NewState)
3330                     ; 761 {
3331                     .text:	section	.text,new
3332  0000               _TIM5_CCxCmd:
3334  0000 89            	pushw	x
3335       00000000      OFST:	set	0
3338                     ; 763     assert_param(IS_TIM5_CHANNEL_OK(TIM5_Channel));
3340  0001 9e            	ld	a,xh
3341  0002 4d            	tnz	a
3342  0003 270a          	jreq	L024
3343  0005 9e            	ld	a,xh
3344  0006 a101          	cp	a,#1
3345  0008 2705          	jreq	L024
3346  000a 9e            	ld	a,xh
3347  000b a102          	cp	a,#2
3348  000d 2603          	jrne	L614
3349  000f               L024:
3350  000f 4f            	clr	a
3351  0010 2010          	jra	L224
3352  0012               L614:
3353  0012 ae02fb        	ldw	x,#763
3354  0015 89            	pushw	x
3355  0016 ae0000        	ldw	x,#0
3356  0019 89            	pushw	x
3357  001a ae0000        	ldw	x,#L302
3358  001d cd0000        	call	_assert_failed
3360  0020 5b04          	addw	sp,#4
3361  0022               L224:
3362                     ; 764     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3364  0022 0d02          	tnz	(OFST+2,sp)
3365  0024 2706          	jreq	L624
3366  0026 7b02          	ld	a,(OFST+2,sp)
3367  0028 a101          	cp	a,#1
3368  002a 2603          	jrne	L424
3369  002c               L624:
3370  002c 4f            	clr	a
3371  002d 2010          	jra	L034
3372  002f               L424:
3373  002f ae02fc        	ldw	x,#764
3374  0032 89            	pushw	x
3375  0033 ae0000        	ldw	x,#0
3376  0036 89            	pushw	x
3377  0037 ae0000        	ldw	x,#L302
3378  003a cd0000        	call	_assert_failed
3380  003d 5b04          	addw	sp,#4
3381  003f               L034:
3382                     ; 766     if (TIM5_Channel == TIM5_CHANNEL_1)
3384  003f 0d01          	tnz	(OFST+1,sp)
3385  0041 2610          	jrne	L1521
3386                     ; 769         if (NewState != DISABLE)
3388  0043 0d02          	tnz	(OFST+2,sp)
3389  0045 2706          	jreq	L3521
3390                     ; 771             TIM5->CCER1 |= TIM5_CCER1_CC1E ;
3392  0047 7210530a      	bset	21258,#0
3394  004b 202a          	jra	L7521
3395  004d               L3521:
3396                     ; 775             TIM5->CCER1 &= (uint8_t)(~TIM5_CCER1_CC1E) ;
3398  004d 7211530a      	bres	21258,#0
3399  0051 2024          	jra	L7521
3400  0053               L1521:
3401                     ; 779     else if (TIM5_Channel == TIM5_CHANNEL_2)
3403  0053 7b01          	ld	a,(OFST+1,sp)
3404  0055 a101          	cp	a,#1
3405  0057 2610          	jrne	L1621
3406                     ; 782         if (NewState != DISABLE)
3408  0059 0d02          	tnz	(OFST+2,sp)
3409  005b 2706          	jreq	L3621
3410                     ; 784             TIM5->CCER1 |= TIM5_CCER1_CC2E;
3412  005d 7218530a      	bset	21258,#4
3414  0061 2014          	jra	L7521
3415  0063               L3621:
3416                     ; 788             TIM5->CCER1 &= (uint8_t)(~TIM5_CCER1_CC2E) ;
3418  0063 7219530a      	bres	21258,#4
3419  0067 200e          	jra	L7521
3420  0069               L1621:
3421                     ; 794         if (NewState != DISABLE)
3423  0069 0d02          	tnz	(OFST+2,sp)
3424  006b 2706          	jreq	L1721
3425                     ; 796             TIM5->CCER2 |= TIM5_CCER2_CC3E;
3427  006d 7210530b      	bset	21259,#0
3429  0071 2004          	jra	L7521
3430  0073               L1721:
3431                     ; 800             TIM5->CCER2 &= (uint8_t)(~TIM5_CCER2_CC3E) ;
3433  0073 7211530b      	bres	21259,#0
3434  0077               L7521:
3435                     ; 803 }
3438  0077 85            	popw	x
3439  0078 81            	ret
3485                     ; 825 void TIM5_SelectOCxM(TIM5_Channel_TypeDef TIM5_Channel, TIM5_OCMode_TypeDef TIM5_OCMode)
3485                     ; 826 {
3486                     .text:	section	.text,new
3487  0000               _TIM5_SelectOCxM:
3489  0000 89            	pushw	x
3490       00000000      OFST:	set	0
3493                     ; 828     assert_param(IS_TIM5_CHANNEL_OK(TIM5_Channel));
3495  0001 9e            	ld	a,xh
3496  0002 4d            	tnz	a
3497  0003 270a          	jreq	L634
3498  0005 9e            	ld	a,xh
3499  0006 a101          	cp	a,#1
3500  0008 2705          	jreq	L634
3501  000a 9e            	ld	a,xh
3502  000b a102          	cp	a,#2
3503  000d 2603          	jrne	L434
3504  000f               L634:
3505  000f 4f            	clr	a
3506  0010 2010          	jra	L044
3507  0012               L434:
3508  0012 ae033c        	ldw	x,#828
3509  0015 89            	pushw	x
3510  0016 ae0000        	ldw	x,#0
3511  0019 89            	pushw	x
3512  001a ae0000        	ldw	x,#L302
3513  001d cd0000        	call	_assert_failed
3515  0020 5b04          	addw	sp,#4
3516  0022               L044:
3517                     ; 829     assert_param(IS_TIM5_OCM_OK(TIM5_OCMode));
3519  0022 0d02          	tnz	(OFST+2,sp)
3520  0024 272a          	jreq	L444
3521  0026 7b02          	ld	a,(OFST+2,sp)
3522  0028 a110          	cp	a,#16
3523  002a 2724          	jreq	L444
3524  002c 7b02          	ld	a,(OFST+2,sp)
3525  002e a120          	cp	a,#32
3526  0030 271e          	jreq	L444
3527  0032 7b02          	ld	a,(OFST+2,sp)
3528  0034 a130          	cp	a,#48
3529  0036 2718          	jreq	L444
3530  0038 7b02          	ld	a,(OFST+2,sp)
3531  003a a160          	cp	a,#96
3532  003c 2712          	jreq	L444
3533  003e 7b02          	ld	a,(OFST+2,sp)
3534  0040 a170          	cp	a,#112
3535  0042 270c          	jreq	L444
3536  0044 7b02          	ld	a,(OFST+2,sp)
3537  0046 a150          	cp	a,#80
3538  0048 2706          	jreq	L444
3539  004a 7b02          	ld	a,(OFST+2,sp)
3540  004c a140          	cp	a,#64
3541  004e 2603          	jrne	L244
3542  0050               L444:
3543  0050 4f            	clr	a
3544  0051 2010          	jra	L644
3545  0053               L244:
3546  0053 ae033d        	ldw	x,#829
3547  0056 89            	pushw	x
3548  0057 ae0000        	ldw	x,#0
3549  005a 89            	pushw	x
3550  005b ae0000        	ldw	x,#L302
3551  005e cd0000        	call	_assert_failed
3553  0061 5b04          	addw	sp,#4
3554  0063               L644:
3555                     ; 831     if (TIM5_Channel == TIM5_CHANNEL_1)
3557  0063 0d01          	tnz	(OFST+1,sp)
3558  0065 2610          	jrne	L7131
3559                     ; 834         TIM5->CCER1 &= (uint8_t)(~TIM5_CCER1_CC1E);
3561  0067 7211530a      	bres	21258,#0
3562                     ; 837         TIM5->CCMR1 = (uint8_t)((uint8_t)(TIM5->CCMR1 & (uint8_t)(~TIM5_CCMR_OCM)) 
3562                     ; 838                                 | (uint8_t)TIM5_OCMode);
3564  006b c65307        	ld	a,21255
3565  006e a48f          	and	a,#143
3566  0070 1a02          	or	a,(OFST+2,sp)
3567  0072 c75307        	ld	21255,a
3569  0075 2024          	jra	L1231
3570  0077               L7131:
3571                     ; 840     else if (TIM5_Channel == TIM5_CHANNEL_2)
3573  0077 7b01          	ld	a,(OFST+1,sp)
3574  0079 a101          	cp	a,#1
3575  007b 2610          	jrne	L3231
3576                     ; 843         TIM5->CCER1 &= (uint8_t)(~TIM5_CCER1_CC2E);
3578  007d 7219530a      	bres	21258,#4
3579                     ; 846         TIM5->CCMR2 = (uint8_t)((uint8_t)(TIM5->CCMR2 & (uint8_t)(~TIM5_CCMR_OCM))
3579                     ; 847                                 | (uint8_t)TIM5_OCMode);
3581  0081 c65308        	ld	a,21256
3582  0084 a48f          	and	a,#143
3583  0086 1a02          	or	a,(OFST+2,sp)
3584  0088 c75308        	ld	21256,a
3586  008b 200e          	jra	L1231
3587  008d               L3231:
3588                     ; 852         TIM5->CCER2 &= (uint8_t)(~TIM5_CCER2_CC3E);
3590  008d 7211530b      	bres	21259,#0
3591                     ; 855         TIM5->CCMR3 = (uint8_t)((uint8_t)(TIM5->CCMR3 & (uint8_t)(~TIM5_CCMR_OCM))
3591                     ; 856                                 | (uint8_t)TIM5_OCMode);
3593  0091 c65309        	ld	a,21257
3594  0094 a48f          	and	a,#143
3595  0096 1a02          	or	a,(OFST+2,sp)
3596  0098 c75309        	ld	21257,a
3597  009b               L1231:
3598                     ; 858 }
3601  009b 85            	popw	x
3602  009c 81            	ret
3634                     ; 867 void TIM5_SetCounter(uint16_t Counter)
3634                     ; 868 {
3635                     .text:	section	.text,new
3636  0000               _TIM5_SetCounter:
3640                     ; 870     TIM5->CNTRH = (uint8_t)(Counter >> 8);
3642  0000 9e            	ld	a,xh
3643  0001 c7530c        	ld	21260,a
3644                     ; 871     TIM5->CNTRL = (uint8_t)(Counter);
3646  0004 9f            	ld	a,xl
3647  0005 c7530d        	ld	21261,a
3648                     ; 873 }
3651  0008 81            	ret
3683                     ; 882 void TIM5_SetAutoreload(uint16_t Autoreload)
3683                     ; 883 {
3684                     .text:	section	.text,new
3685  0000               _TIM5_SetAutoreload:
3689                     ; 886     TIM5->ARRH = (uint8_t)(Autoreload >> 8);
3691  0000 9e            	ld	a,xh
3692  0001 c7530f        	ld	21263,a
3693                     ; 887     TIM5->ARRL = (uint8_t)(Autoreload);
3695  0004 9f            	ld	a,xl
3696  0005 c75310        	ld	21264,a
3697                     ; 889 }
3700  0008 81            	ret
3732                     ; 898 void TIM5_SetCompare1(uint16_t Compare1)
3732                     ; 899 {
3733                     .text:	section	.text,new
3734  0000               _TIM5_SetCompare1:
3738                     ; 901     TIM5->CCR1H = (uint8_t)(Compare1 >> 8);
3740  0000 9e            	ld	a,xh
3741  0001 c75311        	ld	21265,a
3742                     ; 902     TIM5->CCR1L = (uint8_t)(Compare1);
3744  0004 9f            	ld	a,xl
3745  0005 c75312        	ld	21266,a
3746                     ; 904 }
3749  0008 81            	ret
3781                     ; 913 void TIM5_SetCompare2(uint16_t Compare2)
3781                     ; 914 {
3782                     .text:	section	.text,new
3783  0000               _TIM5_SetCompare2:
3787                     ; 916     TIM5->CCR2H = (uint8_t)(Compare2 >> 8);
3789  0000 9e            	ld	a,xh
3790  0001 c75313        	ld	21267,a
3791                     ; 917     TIM5->CCR2L = (uint8_t)(Compare2);
3793  0004 9f            	ld	a,xl
3794  0005 c75314        	ld	21268,a
3795                     ; 919 }
3798  0008 81            	ret
3830                     ; 928 void TIM5_SetCompare3(uint16_t Compare3)
3830                     ; 929 {
3831                     .text:	section	.text,new
3832  0000               _TIM5_SetCompare3:
3836                     ; 931     TIM5->CCR3H = (uint8_t)(Compare3 >> 8);
3838  0000 9e            	ld	a,xh
3839  0001 c75315        	ld	21269,a
3840                     ; 932     TIM5->CCR3L = (uint8_t)(Compare3);
3842  0004 9f            	ld	a,xl
3843  0005 c75316        	ld	21270,a
3844                     ; 934 }
3847  0008 81            	ret
3884                     ; 947 void TIM5_SetIC1Prescaler(TIM5_ICPSC_TypeDef TIM5_IC1Prescaler)
3884                     ; 948 {
3885                     .text:	section	.text,new
3886  0000               _TIM5_SetIC1Prescaler:
3888  0000 88            	push	a
3889       00000000      OFST:	set	0
3892                     ; 950     assert_param(IS_TIM5_IC_PRESCALER_OK(TIM5_IC1Prescaler));
3894  0001 4d            	tnz	a
3895  0002 270c          	jreq	L664
3896  0004 a104          	cp	a,#4
3897  0006 2708          	jreq	L664
3898  0008 a108          	cp	a,#8
3899  000a 2704          	jreq	L664
3900  000c a10c          	cp	a,#12
3901  000e 2603          	jrne	L464
3902  0010               L664:
3903  0010 4f            	clr	a
3904  0011 2010          	jra	L074
3905  0013               L464:
3906  0013 ae03b6        	ldw	x,#950
3907  0016 89            	pushw	x
3908  0017 ae0000        	ldw	x,#0
3909  001a 89            	pushw	x
3910  001b ae0000        	ldw	x,#L302
3911  001e cd0000        	call	_assert_failed
3913  0021 5b04          	addw	sp,#4
3914  0023               L074:
3915                     ; 953     TIM5->CCMR1 = (uint8_t)((uint8_t)(TIM5->CCMR1 & (uint8_t)(~TIM5_CCMR_ICxPSC))|
3915                     ; 954                             (uint8_t)TIM5_IC1Prescaler);
3917  0023 c65307        	ld	a,21255
3918  0026 a4f3          	and	a,#243
3919  0028 1a01          	or	a,(OFST+1,sp)
3920  002a c75307        	ld	21255,a
3921                     ; 955 }
3924  002d 84            	pop	a
3925  002e 81            	ret
3962                     ; 967 void TIM5_SetIC2Prescaler(TIM5_ICPSC_TypeDef TIM5_IC2Prescaler)
3962                     ; 968 {
3963                     .text:	section	.text,new
3964  0000               _TIM5_SetIC2Prescaler:
3966  0000 88            	push	a
3967       00000000      OFST:	set	0
3970                     ; 970     assert_param(IS_TIM5_IC_PRESCALER_OK(TIM5_IC2Prescaler));
3972  0001 4d            	tnz	a
3973  0002 270c          	jreq	L674
3974  0004 a104          	cp	a,#4
3975  0006 2708          	jreq	L674
3976  0008 a108          	cp	a,#8
3977  000a 2704          	jreq	L674
3978  000c a10c          	cp	a,#12
3979  000e 2603          	jrne	L474
3980  0010               L674:
3981  0010 4f            	clr	a
3982  0011 2010          	jra	L005
3983  0013               L474:
3984  0013 ae03ca        	ldw	x,#970
3985  0016 89            	pushw	x
3986  0017 ae0000        	ldw	x,#0
3987  001a 89            	pushw	x
3988  001b ae0000        	ldw	x,#L302
3989  001e cd0000        	call	_assert_failed
3991  0021 5b04          	addw	sp,#4
3992  0023               L005:
3993                     ; 973     TIM5->CCMR2 = (uint8_t)((uint8_t)(TIM5->CCMR2 & (uint8_t)(~TIM5_CCMR_ICxPSC))
3993                     ; 974                             | (uint8_t)TIM5_IC2Prescaler);
3995  0023 c65308        	ld	a,21256
3996  0026 a4f3          	and	a,#243
3997  0028 1a01          	or	a,(OFST+1,sp)
3998  002a c75308        	ld	21256,a
3999                     ; 975 }
4002  002d 84            	pop	a
4003  002e 81            	ret
4040                     ; 987 void TIM5_SetIC3Prescaler(TIM5_ICPSC_TypeDef TIM5_IC3Prescaler)
4040                     ; 988 {
4041                     .text:	section	.text,new
4042  0000               _TIM5_SetIC3Prescaler:
4044  0000 88            	push	a
4045       00000000      OFST:	set	0
4048                     ; 991     assert_param(IS_TIM5_IC_PRESCALER_OK(TIM5_IC3Prescaler));
4050  0001 4d            	tnz	a
4051  0002 270c          	jreq	L605
4052  0004 a104          	cp	a,#4
4053  0006 2708          	jreq	L605
4054  0008 a108          	cp	a,#8
4055  000a 2704          	jreq	L605
4056  000c a10c          	cp	a,#12
4057  000e 2603          	jrne	L405
4058  0010               L605:
4059  0010 4f            	clr	a
4060  0011 2010          	jra	L015
4061  0013               L405:
4062  0013 ae03df        	ldw	x,#991
4063  0016 89            	pushw	x
4064  0017 ae0000        	ldw	x,#0
4065  001a 89            	pushw	x
4066  001b ae0000        	ldw	x,#L302
4067  001e cd0000        	call	_assert_failed
4069  0021 5b04          	addw	sp,#4
4070  0023               L015:
4071                     ; 993     TIM5->CCMR3 = (uint8_t)((uint8_t)(TIM5->CCMR3 & (uint8_t)(~TIM5_CCMR_ICxPSC)) |
4071                     ; 994                             (uint8_t)TIM5_IC3Prescaler);
4073  0023 c65309        	ld	a,21257
4074  0026 a4f3          	and	a,#243
4075  0028 1a01          	or	a,(OFST+1,sp)
4076  002a c75309        	ld	21257,a
4077                     ; 995 }
4080  002d 84            	pop	a
4081  002e 81            	ret
4113                     ; 1002 uint16_t TIM5_GetCapture1(void)
4113                     ; 1003 {
4114                     .text:	section	.text,new
4115  0000               _TIM5_GetCapture1:
4117  0000 89            	pushw	x
4118       00000002      OFST:	set	2
4121                     ; 1004    uint16_t temp = 0; 
4123                     ; 1006    temp = ((uint16_t)TIM5->CCR1H << 8); 
4125  0001 c65311        	ld	a,21265
4126  0004 5f            	clrw	x
4127  0005 97            	ld	xl,a
4128  0006 4f            	clr	a
4129  0007 02            	rlwa	x,a
4130  0008 1f01          	ldw	(OFST-1,sp),x
4132                     ; 1009     return (uint16_t)(temp | (uint16_t)(TIM5->CCR1L));
4134  000a c65312        	ld	a,21266
4135  000d 5f            	clrw	x
4136  000e 97            	ld	xl,a
4137  000f 01            	rrwa	x,a
4138  0010 1a02          	or	a,(OFST+0,sp)
4139  0012 01            	rrwa	x,a
4140  0013 1a01          	or	a,(OFST-1,sp)
4141  0015 01            	rrwa	x,a
4144  0016 5b02          	addw	sp,#2
4145  0018 81            	ret
4177                     ; 1017 uint16_t TIM5_GetCapture2(void)
4177                     ; 1018 {
4178                     .text:	section	.text,new
4179  0000               _TIM5_GetCapture2:
4181  0000 89            	pushw	x
4182       00000002      OFST:	set	2
4185                     ; 1019   uint16_t temp = 0; 
4187                     ; 1021    temp = ((uint16_t)TIM5->CCR2H << 8);  
4189  0001 c65313        	ld	a,21267
4190  0004 5f            	clrw	x
4191  0005 97            	ld	xl,a
4192  0006 4f            	clr	a
4193  0007 02            	rlwa	x,a
4194  0008 1f01          	ldw	(OFST-1,sp),x
4196                     ; 1024     return (uint16_t)(temp | (uint16_t)(TIM5->CCR2L));
4198  000a c65314        	ld	a,21268
4199  000d 5f            	clrw	x
4200  000e 97            	ld	xl,a
4201  000f 01            	rrwa	x,a
4202  0010 1a02          	or	a,(OFST+0,sp)
4203  0012 01            	rrwa	x,a
4204  0013 1a01          	or	a,(OFST-1,sp)
4205  0015 01            	rrwa	x,a
4208  0016 5b02          	addw	sp,#2
4209  0018 81            	ret
4241                     ; 1032 uint16_t TIM5_GetCapture3(void)
4241                     ; 1033 {
4242                     .text:	section	.text,new
4243  0000               _TIM5_GetCapture3:
4245  0000 89            	pushw	x
4246       00000002      OFST:	set	2
4249                     ; 1034    uint16_t temp = 0; 
4251                     ; 1036    temp = ((uint16_t)TIM5->CCR3H << 8);
4253  0001 c65315        	ld	a,21269
4254  0004 5f            	clrw	x
4255  0005 97            	ld	xl,a
4256  0006 4f            	clr	a
4257  0007 02            	rlwa	x,a
4258  0008 1f01          	ldw	(OFST-1,sp),x
4260                     ; 1038     return (uint16_t)(temp | (uint16_t)(TIM5->CCR3L));
4262  000a c65316        	ld	a,21270
4263  000d 5f            	clrw	x
4264  000e 97            	ld	xl,a
4265  000f 01            	rrwa	x,a
4266  0010 1a02          	or	a,(OFST+0,sp)
4267  0012 01            	rrwa	x,a
4268  0013 1a01          	or	a,(OFST-1,sp)
4269  0015 01            	rrwa	x,a
4272  0016 5b02          	addw	sp,#2
4273  0018 81            	ret
4305                     ; 1046 uint16_t TIM5_GetCounter(void)
4305                     ; 1047 {
4306                     .text:	section	.text,new
4307  0000               _TIM5_GetCounter:
4309  0000 89            	pushw	x
4310       00000002      OFST:	set	2
4313                     ; 1048   uint16_t tmpcntr = 0;
4315                     ; 1050   tmpcntr = ((uint16_t)TIM5->CNTRH << 8); 
4317  0001 c6530c        	ld	a,21260
4318  0004 5f            	clrw	x
4319  0005 97            	ld	xl,a
4320  0006 4f            	clr	a
4321  0007 02            	rlwa	x,a
4322  0008 1f01          	ldw	(OFST-1,sp),x
4324                     ; 1052     return (uint16_t)(tmpcntr | (uint16_t)(TIM5->CNTRL));
4326  000a c6530d        	ld	a,21261
4327  000d 5f            	clrw	x
4328  000e 97            	ld	xl,a
4329  000f 01            	rrwa	x,a
4330  0010 1a02          	or	a,(OFST+0,sp)
4331  0012 01            	rrwa	x,a
4332  0013 1a01          	or	a,(OFST-1,sp)
4333  0015 01            	rrwa	x,a
4336  0016 5b02          	addw	sp,#2
4337  0018 81            	ret
4361                     ; 1061 TIM5_Prescaler_TypeDef TIM5_GetPrescaler(void)
4361                     ; 1062 {
4362                     .text:	section	.text,new
4363  0000               _TIM5_GetPrescaler:
4367                     ; 1064     return (TIM5_Prescaler_TypeDef)(TIM5->PSCR);
4369  0000 c6530e        	ld	a,21262
4372  0003 81            	ret
4515                     ; 1082 FlagStatus TIM5_GetFlagStatus(TIM5_FLAG_TypeDef TIM5_FLAG)
4515                     ; 1083 {
4516                     .text:	section	.text,new
4517  0000               _TIM5_GetFlagStatus:
4519  0000 89            	pushw	x
4520  0001 89            	pushw	x
4521       00000002      OFST:	set	2
4524                     ; 1084     FlagStatus bitstatus = RESET;
4526                     ; 1088     assert_param(IS_TIM5_GET_FLAG_OK(TIM5_FLAG));
4528  0002 a30001        	cpw	x,#1
4529  0005 2723          	jreq	L035
4530  0007 a30002        	cpw	x,#2
4531  000a 271e          	jreq	L035
4532  000c a30004        	cpw	x,#4
4533  000f 2719          	jreq	L035
4534  0011 a30008        	cpw	x,#8
4535  0014 2714          	jreq	L035
4536  0016 a30040        	cpw	x,#64
4537  0019 270f          	jreq	L035
4538  001b a30200        	cpw	x,#512
4539  001e 270a          	jreq	L035
4540  0020 a30400        	cpw	x,#1024
4541  0023 2705          	jreq	L035
4542  0025 a30800        	cpw	x,#2048
4543  0028 2603          	jrne	L625
4544  002a               L035:
4545  002a 4f            	clr	a
4546  002b 2010          	jra	L235
4547  002d               L625:
4548  002d ae0440        	ldw	x,#1088
4549  0030 89            	pushw	x
4550  0031 ae0000        	ldw	x,#0
4551  0034 89            	pushw	x
4552  0035 ae0000        	ldw	x,#L302
4553  0038 cd0000        	call	_assert_failed
4555  003b 5b04          	addw	sp,#4
4556  003d               L235:
4557                     ; 1090     tim5_flag_l= (uint8_t)(TIM5->SR1 & (uint8_t)TIM5_FLAG);
4559  003d c65304        	ld	a,21252
4560  0040 1404          	and	a,(OFST+2,sp)
4561  0042 6b01          	ld	(OFST-1,sp),a
4563                     ; 1091     tim5_flag_h= (uint8_t)((uint16_t)TIM5_FLAG >> 8);
4565  0044 7b03          	ld	a,(OFST+1,sp)
4566  0046 6b02          	ld	(OFST+0,sp),a
4568                     ; 1093     if (((tim5_flag_l)|(uint8_t)(TIM5->SR2 & tim5_flag_h)) != RESET )
4570  0048 c65305        	ld	a,21253
4571  004b 1402          	and	a,(OFST+0,sp)
4572  004d 1a01          	or	a,(OFST-1,sp)
4573  004f 2706          	jreq	L7461
4574                     ; 1095         bitstatus = SET;
4576  0051 a601          	ld	a,#1
4577  0053 6b02          	ld	(OFST+0,sp),a
4580  0055 2002          	jra	L1561
4581  0057               L7461:
4582                     ; 1099         bitstatus = RESET;
4584  0057 0f02          	clr	(OFST+0,sp)
4586  0059               L1561:
4587                     ; 1101     return (FlagStatus)bitstatus;
4589  0059 7b02          	ld	a,(OFST+0,sp)
4592  005b 5b04          	addw	sp,#4
4593  005d 81            	ret
4629                     ; 1118 void TIM5_ClearFlag(TIM5_FLAG_TypeDef TIM5_FLAG)
4629                     ; 1119 {
4630                     .text:	section	.text,new
4631  0000               _TIM5_ClearFlag:
4633  0000 89            	pushw	x
4634       00000000      OFST:	set	0
4637                     ; 1121     assert_param(IS_TIM5_CLEAR_FLAG_OK(TIM5_FLAG));
4639  0001 01            	rrwa	x,a
4640  0002 a4f0          	and	a,#240
4641  0004 01            	rrwa	x,a
4642  0005 a4f1          	and	a,#241
4643  0007 01            	rrwa	x,a
4644  0008 a30000        	cpw	x,#0
4645  000b 2607          	jrne	L635
4646  000d 1e01          	ldw	x,(OFST+1,sp)
4647  000f 2703          	jreq	L635
4648  0011 4f            	clr	a
4649  0012 2010          	jra	L045
4650  0014               L635:
4651  0014 ae0461        	ldw	x,#1121
4652  0017 89            	pushw	x
4653  0018 ae0000        	ldw	x,#0
4654  001b 89            	pushw	x
4655  001c ae0000        	ldw	x,#L302
4656  001f cd0000        	call	_assert_failed
4658  0022 5b04          	addw	sp,#4
4659  0024               L045:
4660                     ; 1124     TIM5->SR1 = (uint8_t)(~((uint8_t)(TIM5_FLAG)));
4662  0024 7b02          	ld	a,(OFST+2,sp)
4663  0026 43            	cpl	a
4664  0027 c75304        	ld	21252,a
4665                     ; 1125     TIM5->SR2 &= (uint8_t)(~((uint8_t)((uint16_t)TIM5_FLAG >> 8)));
4667  002a 7b01          	ld	a,(OFST+1,sp)
4668  002c 43            	cpl	a
4669  002d c45305        	and	a,21253
4670  0030 c75305        	ld	21253,a
4671                     ; 1126 }
4674  0033 85            	popw	x
4675  0034 81            	ret
4736                     ; 1140 ITStatus TIM5_GetITStatus(TIM5_IT_TypeDef TIM5_IT)
4736                     ; 1141 {
4737                     .text:	section	.text,new
4738  0000               _TIM5_GetITStatus:
4740  0000 88            	push	a
4741  0001 89            	pushw	x
4742       00000002      OFST:	set	2
4745                     ; 1142     ITStatus bitstatus = RESET;
4747                     ; 1143     uint8_t TIM5_itStatus = 0, TIM5_itEnable = 0;
4751                     ; 1146     assert_param(IS_TIM5_GET_IT_OK(TIM5_IT));
4753  0002 a101          	cp	a,#1
4754  0004 2710          	jreq	L645
4755  0006 a102          	cp	a,#2
4756  0008 270c          	jreq	L645
4757  000a a104          	cp	a,#4
4758  000c 2708          	jreq	L645
4759  000e a108          	cp	a,#8
4760  0010 2704          	jreq	L645
4761  0012 a140          	cp	a,#64
4762  0014 2603          	jrne	L445
4763  0016               L645:
4764  0016 4f            	clr	a
4765  0017 2010          	jra	L055
4766  0019               L445:
4767  0019 ae047a        	ldw	x,#1146
4768  001c 89            	pushw	x
4769  001d ae0000        	ldw	x,#0
4770  0020 89            	pushw	x
4771  0021 ae0000        	ldw	x,#L302
4772  0024 cd0000        	call	_assert_failed
4774  0027 5b04          	addw	sp,#4
4775  0029               L055:
4776                     ; 1148     TIM5_itStatus = (uint8_t)(TIM5->SR1 & TIM5_IT);
4778  0029 c65304        	ld	a,21252
4779  002c 1403          	and	a,(OFST+1,sp)
4780  002e 6b01          	ld	(OFST-1,sp),a
4782                     ; 1150     TIM5_itEnable = (uint8_t)(TIM5->IER & TIM5_IT);
4784  0030 c65303        	ld	a,21251
4785  0033 1403          	and	a,(OFST+1,sp)
4786  0035 6b02          	ld	(OFST+0,sp),a
4788                     ; 1152     if ((TIM5_itStatus != (uint8_t)RESET ) && (TIM5_itEnable != (uint8_t)RESET ))
4790  0037 0d01          	tnz	(OFST-1,sp)
4791  0039 270a          	jreq	L7171
4793  003b 0d02          	tnz	(OFST+0,sp)
4794  003d 2706          	jreq	L7171
4795                     ; 1154         bitstatus = SET;
4797  003f a601          	ld	a,#1
4798  0041 6b02          	ld	(OFST+0,sp),a
4801  0043 2002          	jra	L1271
4802  0045               L7171:
4803                     ; 1158         bitstatus = RESET;
4805  0045 0f02          	clr	(OFST+0,sp)
4807  0047               L1271:
4808                     ; 1160     return (ITStatus)(bitstatus);
4810  0047 7b02          	ld	a,(OFST+0,sp)
4813  0049 5b03          	addw	sp,#3
4814  004b 81            	ret
4851                     ; 1174 void TIM5_ClearITPendingBit(TIM5_IT_TypeDef TIM5_IT)
4851                     ; 1175 {
4852                     .text:	section	.text,new
4853  0000               _TIM5_ClearITPendingBit:
4855  0000 88            	push	a
4856       00000000      OFST:	set	0
4859                     ; 1177     assert_param(IS_TIM5_IT_OK(TIM5_IT));
4861  0001 4d            	tnz	a
4862  0002 2707          	jreq	L455
4863  0004 a150          	cp	a,#80
4864  0006 2403          	jruge	L455
4865  0008 4f            	clr	a
4866  0009 2010          	jra	L655
4867  000b               L455:
4868  000b ae0499        	ldw	x,#1177
4869  000e 89            	pushw	x
4870  000f ae0000        	ldw	x,#0
4871  0012 89            	pushw	x
4872  0013 ae0000        	ldw	x,#L302
4873  0016 cd0000        	call	_assert_failed
4875  0019 5b04          	addw	sp,#4
4876  001b               L655:
4877                     ; 1180     TIM5->SR1 = (uint8_t)(~TIM5_IT);
4879  001b 7b01          	ld	a,(OFST+1,sp)
4880  001d 43            	cpl	a
4881  001e c75304        	ld	21252,a
4882                     ; 1181 }
4885  0021 84            	pop	a
4886  0022 81            	ret
4932                     ; 1200 static void TI1_Config(uint8_t TIM5_ICPolarity,
4932                     ; 1201                        uint8_t TIM5_ICSelection,
4932                     ; 1202                        uint8_t TIM5_ICFilter)
4932                     ; 1203 {
4933                     .text:	section	.text,new
4934  0000               L3_TI1_Config:
4936  0000 89            	pushw	x
4937  0001 88            	push	a
4938       00000001      OFST:	set	1
4941                     ; 1205     TIM5->CCER1 &= (uint8_t)(~TIM5_CCER1_CC1E);
4943  0002 7211530a      	bres	21258,#0
4944                     ; 1208     TIM5->CCMR1  = (uint8_t)((uint8_t)(TIM5->CCMR1 & (uint8_t)(~( TIM5_CCMR_CCxS | TIM5_CCMR_ICxF )))
4944                     ; 1209                              | (uint8_t)(( (TIM5_ICSelection)) | ((uint8_t)( TIM5_ICFilter << 4))));
4946  0006 7b06          	ld	a,(OFST+5,sp)
4947  0008 97            	ld	xl,a
4948  0009 a610          	ld	a,#16
4949  000b 42            	mul	x,a
4950  000c 9f            	ld	a,xl
4951  000d 1a03          	or	a,(OFST+2,sp)
4952  000f 6b01          	ld	(OFST+0,sp),a
4954  0011 c65307        	ld	a,21255
4955  0014 a40c          	and	a,#12
4956  0016 1a01          	or	a,(OFST+0,sp)
4957  0018 c75307        	ld	21255,a
4958                     ; 1212     if (TIM5_ICPolarity != TIM5_ICPOLARITY_RISING)
4960  001b 0d02          	tnz	(OFST+1,sp)
4961  001d 2706          	jreq	L1671
4962                     ; 1214         TIM5->CCER1 |= TIM5_CCER1_CC1P ;
4964  001f 7212530a      	bset	21258,#1
4966  0023 2004          	jra	L3671
4967  0025               L1671:
4968                     ; 1218         TIM5->CCER1 &= (uint8_t)(~TIM5_CCER1_CC1P) ;
4970  0025 7213530a      	bres	21258,#1
4971  0029               L3671:
4972                     ; 1221     TIM5->CCER1 |=  TIM5_CCER1_CC1E;
4974  0029 7210530a      	bset	21258,#0
4975                     ; 1222 }
4978  002d 5b03          	addw	sp,#3
4979  002f 81            	ret
5025                     ; 1241 static void TI2_Config(uint8_t TIM5_ICPolarity,
5025                     ; 1242                        uint8_t TIM5_ICSelection,
5025                     ; 1243                        uint8_t TIM5_ICFilter)
5025                     ; 1244 {
5026                     .text:	section	.text,new
5027  0000               L5_TI2_Config:
5029  0000 89            	pushw	x
5030  0001 88            	push	a
5031       00000001      OFST:	set	1
5034                     ; 1246     TIM5->CCER1 &=  (uint8_t)(~TIM5_CCER1_CC2E);
5036  0002 7219530a      	bres	21258,#4
5037                     ; 1249     TIM5->CCMR2  = (uint8_t)((uint8_t)(TIM5->CCMR2 & (uint8_t)(~( TIM5_CCMR_CCxS | TIM5_CCMR_ICxF)))
5037                     ; 1250                              | (uint8_t)(( (TIM5_ICSelection)) | ((uint8_t)( TIM5_ICFilter << 4))));
5039  0006 7b06          	ld	a,(OFST+5,sp)
5040  0008 97            	ld	xl,a
5041  0009 a610          	ld	a,#16
5042  000b 42            	mul	x,a
5043  000c 9f            	ld	a,xl
5044  000d 1a03          	or	a,(OFST+2,sp)
5045  000f 6b01          	ld	(OFST+0,sp),a
5047  0011 c65308        	ld	a,21256
5048  0014 a40c          	and	a,#12
5049  0016 1a01          	or	a,(OFST+0,sp)
5050  0018 c75308        	ld	21256,a
5051                     ; 1254     if (TIM5_ICPolarity != TIM5_ICPOLARITY_RISING)
5053  001b 0d02          	tnz	(OFST+1,sp)
5054  001d 2706          	jreq	L5002
5055                     ; 1256         TIM5->CCER1 |= TIM5_CCER1_CC2P ;
5057  001f 721a530a      	bset	21258,#5
5059  0023 2004          	jra	L7002
5060  0025               L5002:
5061                     ; 1260         TIM5->CCER1 &= (uint8_t)(~TIM5_CCER1_CC2P) ;
5063  0025 721b530a      	bres	21258,#5
5064  0029               L7002:
5065                     ; 1264     TIM5->CCER1 |=  TIM5_CCER1_CC2E;
5067  0029 7218530a      	bset	21258,#4
5068                     ; 1266 }
5071  002d 5b03          	addw	sp,#3
5072  002f 81            	ret
5118                     ; 1282 static void TI3_Config(uint8_t TIM5_ICPolarity, uint8_t TIM5_ICSelection,
5118                     ; 1283                        uint8_t TIM5_ICFilter)
5118                     ; 1284 {
5119                     .text:	section	.text,new
5120  0000               L7_TI3_Config:
5122  0000 89            	pushw	x
5123  0001 88            	push	a
5124       00000001      OFST:	set	1
5127                     ; 1286     TIM5->CCER2 &=  (uint8_t)(~TIM5_CCER2_CC3E);
5129  0002 7211530b      	bres	21259,#0
5130                     ; 1289     TIM5->CCMR3 = (uint8_t)((uint8_t)(TIM5->CCMR3 & (uint8_t)(~( TIM5_CCMR_CCxS | TIM5_CCMR_ICxF))) 
5130                     ; 1290                             | (uint8_t)(( (TIM5_ICSelection)) | ((uint8_t)( TIM5_ICFilter << 4))));
5132  0006 7b06          	ld	a,(OFST+5,sp)
5133  0008 97            	ld	xl,a
5134  0009 a610          	ld	a,#16
5135  000b 42            	mul	x,a
5136  000c 9f            	ld	a,xl
5137  000d 1a03          	or	a,(OFST+2,sp)
5138  000f 6b01          	ld	(OFST+0,sp),a
5140  0011 c65309        	ld	a,21257
5141  0014 a40c          	and	a,#12
5142  0016 1a01          	or	a,(OFST+0,sp)
5143  0018 c75309        	ld	21257,a
5144                     ; 1294     if (TIM5_ICPolarity != TIM5_ICPOLARITY_RISING)
5146  001b 0d02          	tnz	(OFST+1,sp)
5147  001d 2706          	jreq	L1302
5148                     ; 1296         TIM5->CCER2 |= TIM5_CCER2_CC3P ;
5150  001f 7212530b      	bset	21259,#1
5152  0023 2004          	jra	L3302
5153  0025               L1302:
5154                     ; 1300         TIM5->CCER2 &= (uint8_t)(~TIM5_CCER2_CC3P) ;
5156  0025 7213530b      	bres	21259,#1
5157  0029               L3302:
5158                     ; 1303     TIM5->CCER2 |=  TIM5_CCER2_CC3E;
5160  0029 7210530b      	bset	21259,#0
5161                     ; 1304 }
5164  002d 5b03          	addw	sp,#3
5165  002f 81            	ret
5189                     ; 1311 void TIM5_InternalClockConfig(void)
5189                     ; 1312 {
5190                     .text:	section	.text,new
5191  0000               _TIM5_InternalClockConfig:
5195                     ; 1314     TIM5->SMCR &=  (uint8_t)(~TIM5_SMCR_SMS);
5197  0000 c65302        	ld	a,21250
5198  0003 a4f8          	and	a,#248
5199  0005 c75302        	ld	21250,a
5200                     ; 1315 }
5203  0008 81            	ret
5301                     ; 1323 void TIM5_SelectOutputTrigger(TIM5_TRGOSource_TypeDef TIM5_TRGOSource)
5301                     ; 1324 {
5302                     .text:	section	.text,new
5303  0000               _TIM5_SelectOutputTrigger:
5305  0000 88            	push	a
5306  0001 88            	push	a
5307       00000001      OFST:	set	1
5310                     ; 1325     uint8_t tmpcr2 = 0;
5312                     ; 1328     assert_param(IS_TIM5_TRGO_SOURCE_OK(TIM5_TRGOSource));
5314  0002 4d            	tnz	a
5315  0003 2714          	jreq	L475
5316  0005 a110          	cp	a,#16
5317  0007 2710          	jreq	L475
5318  0009 a120          	cp	a,#32
5319  000b 270c          	jreq	L475
5320  000d a130          	cp	a,#48
5321  000f 2708          	jreq	L475
5322  0011 a140          	cp	a,#64
5323  0013 2704          	jreq	L475
5324  0015 a150          	cp	a,#80
5325  0017 2603          	jrne	L275
5326  0019               L475:
5327  0019 4f            	clr	a
5328  001a 2010          	jra	L675
5329  001c               L275:
5330  001c ae0530        	ldw	x,#1328
5331  001f 89            	pushw	x
5332  0020 ae0000        	ldw	x,#0
5333  0023 89            	pushw	x
5334  0024 ae0000        	ldw	x,#L302
5335  0027 cd0000        	call	_assert_failed
5337  002a 5b04          	addw	sp,#4
5338  002c               L675:
5339                     ; 1330     tmpcr2 = TIM5->CR2;
5341  002c c65301        	ld	a,21249
5342  002f 6b01          	ld	(OFST+0,sp),a
5344                     ; 1333     tmpcr2 &= (uint8_t)(~TIM5_CR2_MMS);
5346  0031 7b01          	ld	a,(OFST+0,sp)
5347  0033 a48f          	and	a,#143
5348  0035 6b01          	ld	(OFST+0,sp),a
5350                     ; 1336     tmpcr2 |=  (uint8_t)TIM5_TRGOSource;
5352  0037 7b01          	ld	a,(OFST+0,sp)
5353  0039 1a02          	or	a,(OFST+1,sp)
5354  003b 6b01          	ld	(OFST+0,sp),a
5356                     ; 1338     TIM5->CR2 = tmpcr2;
5358  003d 7b01          	ld	a,(OFST+0,sp)
5359  003f c75301        	ld	21249,a
5360                     ; 1339 }
5363  0042 85            	popw	x
5364  0043 81            	ret
5446                     ; 1346 void TIM5_SelectSlaveMode(TIM5_SlaveMode_TypeDef TIM5_SlaveMode)
5446                     ; 1347 {
5447                     .text:	section	.text,new
5448  0000               _TIM5_SelectSlaveMode:
5450  0000 88            	push	a
5451  0001 88            	push	a
5452       00000001      OFST:	set	1
5455                     ; 1348     uint8_t tmpsmcr = 0;
5457                     ; 1351     assert_param(IS_TIM5_SLAVE_MODE_OK(TIM5_SlaveMode));
5459  0002 a104          	cp	a,#4
5460  0004 270c          	jreq	L406
5461  0006 a105          	cp	a,#5
5462  0008 2708          	jreq	L406
5463  000a a106          	cp	a,#6
5464  000c 2704          	jreq	L406
5465  000e a107          	cp	a,#7
5466  0010 2603          	jrne	L206
5467  0012               L406:
5468  0012 4f            	clr	a
5469  0013 2010          	jra	L606
5470  0015               L206:
5471  0015 ae0547        	ldw	x,#1351
5472  0018 89            	pushw	x
5473  0019 ae0000        	ldw	x,#0
5474  001c 89            	pushw	x
5475  001d ae0000        	ldw	x,#L302
5476  0020 cd0000        	call	_assert_failed
5478  0023 5b04          	addw	sp,#4
5479  0025               L606:
5480                     ; 1353     tmpsmcr = TIM5->SMCR;
5482  0025 c65302        	ld	a,21250
5483  0028 6b01          	ld	(OFST+0,sp),a
5485                     ; 1356     tmpsmcr &= (uint8_t)(~TIM5_SMCR_SMS);
5487  002a 7b01          	ld	a,(OFST+0,sp)
5488  002c a4f8          	and	a,#248
5489  002e 6b01          	ld	(OFST+0,sp),a
5491                     ; 1359     tmpsmcr |= (uint8_t)TIM5_SlaveMode;
5493  0030 7b01          	ld	a,(OFST+0,sp)
5494  0032 1a02          	or	a,(OFST+1,sp)
5495  0034 6b01          	ld	(OFST+0,sp),a
5497                     ; 1361     TIM5->SMCR = tmpsmcr;
5499  0036 7b01          	ld	a,(OFST+0,sp)
5500  0038 c75302        	ld	21250,a
5501                     ; 1362 }
5504  003b 85            	popw	x
5505  003c 81            	ret
5570                     ; 1369 void TIM5_SelectInputTrigger(TIM5_TS_TypeDef TIM5_InputTriggerSource)
5570                     ; 1370 {
5571                     .text:	section	.text,new
5572  0000               _TIM5_SelectInputTrigger:
5574  0000 88            	push	a
5575  0001 88            	push	a
5576       00000001      OFST:	set	1
5579                     ; 1371     uint8_t tmpsmcr = 0;
5581                     ; 1374     assert_param(IS_TIM5_TRIGGER_SELECTION_OK(TIM5_InputTriggerSource));
5583  0002 4d            	tnz	a
5584  0003 2704          	jreq	L416
5585  0005 a103          	cp	a,#3
5586  0007 2603          	jrne	L216
5587  0009               L416:
5588  0009 4f            	clr	a
5589  000a 2010          	jra	L616
5590  000c               L216:
5591  000c ae055e        	ldw	x,#1374
5592  000f 89            	pushw	x
5593  0010 ae0000        	ldw	x,#0
5594  0013 89            	pushw	x
5595  0014 ae0000        	ldw	x,#L302
5596  0017 cd0000        	call	_assert_failed
5598  001a 5b04          	addw	sp,#4
5599  001c               L616:
5600                     ; 1376     tmpsmcr = TIM5->SMCR;
5602  001c c65302        	ld	a,21250
5603  001f 6b01          	ld	(OFST+0,sp),a
5605                     ; 1379     tmpsmcr &= (uint8_t)(~TIM5_SMCR_TS);
5607  0021 7b01          	ld	a,(OFST+0,sp)
5608  0023 a48f          	and	a,#143
5609  0025 6b01          	ld	(OFST+0,sp),a
5611                     ; 1380     tmpsmcr |= (uint8_t)TIM5_InputTriggerSource;
5613  0027 7b01          	ld	a,(OFST+0,sp)
5614  0029 1a02          	or	a,(OFST+1,sp)
5615  002b 6b01          	ld	(OFST+0,sp),a
5617                     ; 1382     TIM5->SMCR = (uint8_t)tmpsmcr;
5619  002d 7b01          	ld	a,(OFST+0,sp)
5620  002f c75302        	ld	21250,a
5621                     ; 1383 }
5624  0032 85            	popw	x
5625  0033 81            	ret
5733                     ; 1394 void TIM5_EncoderInterfaceConfig(TIM5_EncoderMode_TypeDef TIM5_EncoderMode,
5733                     ; 1395                                  TIM5_ICPolarity_TypeDef TIM5_IC1Polarity,
5733                     ; 1396                                  TIM5_ICPolarity_TypeDef TIM5_IC2Polarity)
5733                     ; 1397 {
5734                     .text:	section	.text,new
5735  0000               _TIM5_EncoderInterfaceConfig:
5737  0000 89            	pushw	x
5738  0001 5203          	subw	sp,#3
5739       00000003      OFST:	set	3
5742                     ; 1398     uint8_t tmpsmcr = 0;
5744                     ; 1399     uint8_t tmpccmr1 = 0;
5746                     ; 1400     uint8_t tmpccmr2 = 0;
5748                     ; 1403     assert_param(IS_TIM5_ENCODER_MODE_OK(TIM5_EncoderMode));
5750  0003 9e            	ld	a,xh
5751  0004 a101          	cp	a,#1
5752  0006 270a          	jreq	L426
5753  0008 9e            	ld	a,xh
5754  0009 a102          	cp	a,#2
5755  000b 2705          	jreq	L426
5756  000d 9e            	ld	a,xh
5757  000e a103          	cp	a,#3
5758  0010 2603          	jrne	L226
5759  0012               L426:
5760  0012 4f            	clr	a
5761  0013 2010          	jra	L626
5762  0015               L226:
5763  0015 ae057b        	ldw	x,#1403
5764  0018 89            	pushw	x
5765  0019 ae0000        	ldw	x,#0
5766  001c 89            	pushw	x
5767  001d ae0000        	ldw	x,#L302
5768  0020 cd0000        	call	_assert_failed
5770  0023 5b04          	addw	sp,#4
5771  0025               L626:
5772                     ; 1404     assert_param(IS_TIM5_IC_POLARITY_OK(TIM5_IC1Polarity));
5774  0025 0d05          	tnz	(OFST+2,sp)
5775  0027 2706          	jreq	L236
5776  0029 7b05          	ld	a,(OFST+2,sp)
5777  002b a144          	cp	a,#68
5778  002d 2603          	jrne	L036
5779  002f               L236:
5780  002f 4f            	clr	a
5781  0030 2010          	jra	L436
5782  0032               L036:
5783  0032 ae057c        	ldw	x,#1404
5784  0035 89            	pushw	x
5785  0036 ae0000        	ldw	x,#0
5786  0039 89            	pushw	x
5787  003a ae0000        	ldw	x,#L302
5788  003d cd0000        	call	_assert_failed
5790  0040 5b04          	addw	sp,#4
5791  0042               L436:
5792                     ; 1405     assert_param(IS_TIM5_IC_POLARITY_OK(TIM5_IC2Polarity));
5794  0042 0d08          	tnz	(OFST+5,sp)
5795  0044 2706          	jreq	L046
5796  0046 7b08          	ld	a,(OFST+5,sp)
5797  0048 a144          	cp	a,#68
5798  004a 2603          	jrne	L636
5799  004c               L046:
5800  004c 4f            	clr	a
5801  004d 2010          	jra	L246
5802  004f               L636:
5803  004f ae057d        	ldw	x,#1405
5804  0052 89            	pushw	x
5805  0053 ae0000        	ldw	x,#0
5806  0056 89            	pushw	x
5807  0057 ae0000        	ldw	x,#L302
5808  005a cd0000        	call	_assert_failed
5810  005d 5b04          	addw	sp,#4
5811  005f               L246:
5812                     ; 1407     tmpsmcr = TIM5->SMCR;
5814  005f c65302        	ld	a,21250
5815  0062 6b01          	ld	(OFST-2,sp),a
5817                     ; 1408     tmpccmr1 = TIM5->CCMR1;
5819  0064 c65307        	ld	a,21255
5820  0067 6b02          	ld	(OFST-1,sp),a
5822                     ; 1409     tmpccmr2 = TIM5->CCMR2;
5824  0069 c65308        	ld	a,21256
5825  006c 6b03          	ld	(OFST+0,sp),a
5827                     ; 1412     tmpsmcr &= (uint8_t)(TIM5_SMCR_MSM | TIM5_SMCR_TS)  ;
5829  006e 7b01          	ld	a,(OFST-2,sp)
5830  0070 a4f0          	and	a,#240
5831  0072 6b01          	ld	(OFST-2,sp),a
5833                     ; 1413     tmpsmcr |= (uint8_t)TIM5_EncoderMode;
5835  0074 7b01          	ld	a,(OFST-2,sp)
5836  0076 1a04          	or	a,(OFST+1,sp)
5837  0078 6b01          	ld	(OFST-2,sp),a
5839                     ; 1416     tmpccmr1 &= (uint8_t)(~TIM5_CCMR_CCxS);
5841  007a 7b02          	ld	a,(OFST-1,sp)
5842  007c a4fc          	and	a,#252
5843  007e 6b02          	ld	(OFST-1,sp),a
5845                     ; 1417     tmpccmr2 &= (uint8_t)(~TIM5_CCMR_CCxS);
5847  0080 7b03          	ld	a,(OFST+0,sp)
5848  0082 a4fc          	and	a,#252
5849  0084 6b03          	ld	(OFST+0,sp),a
5851                     ; 1418     tmpccmr1 |= TIM5_CCMR_TIxDirect_Set;
5853  0086 7b02          	ld	a,(OFST-1,sp)
5854  0088 aa01          	or	a,#1
5855  008a 6b02          	ld	(OFST-1,sp),a
5857                     ; 1419     tmpccmr2 |= TIM5_CCMR_TIxDirect_Set;
5859  008c 7b03          	ld	a,(OFST+0,sp)
5860  008e aa01          	or	a,#1
5861  0090 6b03          	ld	(OFST+0,sp),a
5863                     ; 1422     if (TIM5_IC1Polarity == TIM5_ICPOLARITY_FALLING)
5865  0092 7b05          	ld	a,(OFST+2,sp)
5866  0094 a144          	cp	a,#68
5867  0096 2606          	jrne	L7322
5868                     ; 1424         TIM5->CCER1 |= TIM5_CCER1_CC1P ;
5870  0098 7212530a      	bset	21258,#1
5872  009c 2004          	jra	L1422
5873  009e               L7322:
5874                     ; 1428         TIM5->CCER1 &= (uint8_t)(~TIM5_CCER1_CC1P) ;
5876  009e 7213530a      	bres	21258,#1
5877  00a2               L1422:
5878                     ; 1431     if (TIM5_IC2Polarity == TIM5_ICPOLARITY_FALLING)
5880  00a2 7b08          	ld	a,(OFST+5,sp)
5881  00a4 a144          	cp	a,#68
5882  00a6 2606          	jrne	L3422
5883                     ; 1433         TIM5->CCER1 |= TIM5_CCER1_CC2P ;
5885  00a8 721a530a      	bset	21258,#5
5887  00ac 2004          	jra	L5422
5888  00ae               L3422:
5889                     ; 1437         TIM5->CCER1 &= (uint8_t)(~TIM5_CCER1_CC2P) ;
5891  00ae 721b530a      	bres	21258,#5
5892  00b2               L5422:
5893                     ; 1440     TIM5->SMCR = tmpsmcr;
5895  00b2 7b01          	ld	a,(OFST-2,sp)
5896  00b4 c75302        	ld	21250,a
5897                     ; 1441     TIM5->CCMR1 = tmpccmr1;
5899  00b7 7b02          	ld	a,(OFST-1,sp)
5900  00b9 c75307        	ld	21255,a
5901                     ; 1442     TIM5->CCMR2 = tmpccmr2;
5903  00bc 7b03          	ld	a,(OFST+0,sp)
5904  00be c75308        	ld	21256,a
5905                     ; 1443 }
5908  00c1 5b05          	addw	sp,#5
5909  00c3 81            	ret
5922                     	xdef	_TIM5_EncoderInterfaceConfig
5923                     	xdef	_TIM5_SelectSlaveMode
5924                     	xdef	_TIM5_SelectInputTrigger
5925                     	xdef	_TIM5_ClearITPendingBit
5926                     	xdef	_TIM5_GetITStatus
5927                     	xdef	_TIM5_ClearFlag
5928                     	xdef	_TIM5_GetFlagStatus
5929                     	xdef	_TIM5_GetPrescaler
5930                     	xdef	_TIM5_GetCounter
5931                     	xdef	_TIM5_GetCapture3
5932                     	xdef	_TIM5_GetCapture2
5933                     	xdef	_TIM5_GetCapture1
5934                     	xdef	_TIM5_SetIC3Prescaler
5935                     	xdef	_TIM5_SetIC2Prescaler
5936                     	xdef	_TIM5_SetIC1Prescaler
5937                     	xdef	_TIM5_SetCompare3
5938                     	xdef	_TIM5_SetCompare2
5939                     	xdef	_TIM5_SetCompare1
5940                     	xdef	_TIM5_SetAutoreload
5941                     	xdef	_TIM5_SetCounter
5942                     	xdef	_TIM5_SelectOCxM
5943                     	xdef	_TIM5_CCxCmd
5944                     	xdef	_TIM5_OC3PolarityConfig
5945                     	xdef	_TIM5_OC2PolarityConfig
5946                     	xdef	_TIM5_OC1PolarityConfig
5947                     	xdef	_TIM5_GenerateEvent
5948                     	xdef	_TIM5_OC3PreloadConfig
5949                     	xdef	_TIM5_OC2PreloadConfig
5950                     	xdef	_TIM5_OC1PreloadConfig
5951                     	xdef	_TIM5_ARRPreloadConfig
5952                     	xdef	_TIM5_ForcedOC3Config
5953                     	xdef	_TIM5_ForcedOC2Config
5954                     	xdef	_TIM5_ForcedOC1Config
5955                     	xdef	_TIM5_SelectOutputTrigger
5956                     	xdef	_TIM5_PrescalerConfig
5957                     	xdef	_TIM5_SelectOnePulseMode
5958                     	xdef	_TIM5_UpdateRequestConfig
5959                     	xdef	_TIM5_UpdateDisableConfig
5960                     	xdef	_TIM5_InternalClockConfig
5961                     	xdef	_TIM5_ITConfig
5962                     	xdef	_TIM5_Cmd
5963                     	xdef	_TIM5_PWMIConfig
5964                     	xdef	_TIM5_ICInit
5965                     	xdef	_TIM5_OC3Init
5966                     	xdef	_TIM5_OC2Init
5967                     	xdef	_TIM5_OC1Init
5968                     	xdef	_TIM5_TimeBaseInit
5969                     	xdef	_TIM5_DeInit
5970                     	xref	_assert_failed
5971                     .const:	section	.text
5972  0000               L302:
5973  0000 7372635c7374  	dc.b	"src\stm8s_tim5.c",0
5993                     	end

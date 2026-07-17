   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.13.3 - 22 May 2025
   3                     ; Generator (Limited) V4.6.6 - 07 Jan 2026
  44                     ; 48 void ADC1_DeInit(void)
  44                     ; 49 {
  46                     .text:	section	.text,new
  47  0000               _ADC1_DeInit:
  51                     ; 50     ADC1->CSR  = ADC1_CSR_RESET_VALUE;
  53  0000 725f5400      	clr	21504
  54                     ; 51     ADC1->CR1  = ADC1_CR1_RESET_VALUE;
  56  0004 725f5401      	clr	21505
  57                     ; 52     ADC1->CR2  = ADC1_CR2_RESET_VALUE;
  59  0008 725f5402      	clr	21506
  60                     ; 53     ADC1->CR3  = ADC1_CR3_RESET_VALUE;
  62  000c 725f5403      	clr	21507
  63                     ; 54     ADC1->TDRH = ADC1_TDRH_RESET_VALUE;
  65  0010 725f5406      	clr	21510
  66                     ; 55     ADC1->TDRL = ADC1_TDRL_RESET_VALUE;
  68  0014 725f5407      	clr	21511
  69                     ; 56     ADC1->HTRH = ADC1_HTRH_RESET_VALUE;
  71  0018 35ff5408      	mov	21512,#255
  72                     ; 57     ADC1->HTRL = ADC1_HTRL_RESET_VALUE;
  74  001c 35035409      	mov	21513,#3
  75                     ; 58     ADC1->LTRH = ADC1_LTRH_RESET_VALUE;
  77  0020 725f540a      	clr	21514
  78                     ; 59     ADC1->LTRL = ADC1_LTRL_RESET_VALUE;
  80  0024 725f540b      	clr	21515
  81                     ; 60     ADC1->AWCRH = ADC1_AWCRH_RESET_VALUE;
  83  0028 725f540e      	clr	21518
  84                     ; 61     ADC1->AWCRL = ADC1_AWCRL_RESET_VALUE;
  86  002c 725f540f      	clr	21519
  87                     ; 62 }
  90  0030 81            	ret
 542                     ; 85 void ADC1_Init(ADC1_ConvMode_TypeDef ADC1_ConversionMode, ADC1_Channel_TypeDef ADC1_Channel, ADC1_PresSel_TypeDef ADC1_PrescalerSelection, ADC1_ExtTrig_TypeDef ADC1_ExtTrigger, FunctionalState ADC1_ExtTriggerState, ADC1_Align_TypeDef ADC1_Align, ADC1_SchmittTrigg_TypeDef ADC1_SchmittTriggerChannel, FunctionalState ADC1_SchmittTriggerState)
 542                     ; 86 {
 543                     .text:	section	.text,new
 544  0000               _ADC1_Init:
 546  0000 89            	pushw	x
 547       00000000      OFST:	set	0
 550                     ; 89     assert_param(IS_ADC1_CONVERSIONMODE_OK(ADC1_ConversionMode));
 552  0001 9e            	ld	a,xh
 553  0002 4d            	tnz	a
 554  0003 2705          	jreq	L21
 555  0005 9e            	ld	a,xh
 556  0006 a101          	cp	a,#1
 557  0008 2603          	jrne	L01
 558  000a               L21:
 559  000a 4f            	clr	a
 560  000b 2010          	jra	L41
 561  000d               L01:
 562  000d ae0059        	ldw	x,#89
 563  0010 89            	pushw	x
 564  0011 ae0000        	ldw	x,#0
 565  0014 89            	pushw	x
 566  0015 ae0000        	ldw	x,#L542
 567  0018 cd0000        	call	_assert_failed
 569  001b 5b04          	addw	sp,#4
 570  001d               L41:
 571                     ; 90     assert_param(IS_ADC1_CHANNEL_OK(ADC1_Channel));
 573  001d 0d02          	tnz	(OFST+2,sp)
 574  001f 273c          	jreq	L02
 575  0021 7b02          	ld	a,(OFST+2,sp)
 576  0023 a101          	cp	a,#1
 577  0025 2736          	jreq	L02
 578  0027 7b02          	ld	a,(OFST+2,sp)
 579  0029 a102          	cp	a,#2
 580  002b 2730          	jreq	L02
 581  002d 7b02          	ld	a,(OFST+2,sp)
 582  002f a103          	cp	a,#3
 583  0031 272a          	jreq	L02
 584  0033 7b02          	ld	a,(OFST+2,sp)
 585  0035 a104          	cp	a,#4
 586  0037 2724          	jreq	L02
 587  0039 7b02          	ld	a,(OFST+2,sp)
 588  003b a105          	cp	a,#5
 589  003d 271e          	jreq	L02
 590  003f 7b02          	ld	a,(OFST+2,sp)
 591  0041 a106          	cp	a,#6
 592  0043 2718          	jreq	L02
 593  0045 7b02          	ld	a,(OFST+2,sp)
 594  0047 a107          	cp	a,#7
 595  0049 2712          	jreq	L02
 596  004b 7b02          	ld	a,(OFST+2,sp)
 597  004d a108          	cp	a,#8
 598  004f 270c          	jreq	L02
 599  0051 7b02          	ld	a,(OFST+2,sp)
 600  0053 a10c          	cp	a,#12
 601  0055 2706          	jreq	L02
 602  0057 7b02          	ld	a,(OFST+2,sp)
 603  0059 a109          	cp	a,#9
 604  005b 2603          	jrne	L61
 605  005d               L02:
 606  005d 4f            	clr	a
 607  005e 2010          	jra	L22
 608  0060               L61:
 609  0060 ae005a        	ldw	x,#90
 610  0063 89            	pushw	x
 611  0064 ae0000        	ldw	x,#0
 612  0067 89            	pushw	x
 613  0068 ae0000        	ldw	x,#L542
 614  006b cd0000        	call	_assert_failed
 616  006e 5b04          	addw	sp,#4
 617  0070               L22:
 618                     ; 91     assert_param(IS_ADC1_PRESSEL_OK(ADC1_PrescalerSelection));
 620  0070 0d05          	tnz	(OFST+5,sp)
 621  0072 272a          	jreq	L62
 622  0074 7b05          	ld	a,(OFST+5,sp)
 623  0076 a110          	cp	a,#16
 624  0078 2724          	jreq	L62
 625  007a 7b05          	ld	a,(OFST+5,sp)
 626  007c a120          	cp	a,#32
 627  007e 271e          	jreq	L62
 628  0080 7b05          	ld	a,(OFST+5,sp)
 629  0082 a130          	cp	a,#48
 630  0084 2718          	jreq	L62
 631  0086 7b05          	ld	a,(OFST+5,sp)
 632  0088 a140          	cp	a,#64
 633  008a 2712          	jreq	L62
 634  008c 7b05          	ld	a,(OFST+5,sp)
 635  008e a150          	cp	a,#80
 636  0090 270c          	jreq	L62
 637  0092 7b05          	ld	a,(OFST+5,sp)
 638  0094 a160          	cp	a,#96
 639  0096 2706          	jreq	L62
 640  0098 7b05          	ld	a,(OFST+5,sp)
 641  009a a170          	cp	a,#112
 642  009c 2603          	jrne	L42
 643  009e               L62:
 644  009e 4f            	clr	a
 645  009f 2010          	jra	L03
 646  00a1               L42:
 647  00a1 ae005b        	ldw	x,#91
 648  00a4 89            	pushw	x
 649  00a5 ae0000        	ldw	x,#0
 650  00a8 89            	pushw	x
 651  00a9 ae0000        	ldw	x,#L542
 652  00ac cd0000        	call	_assert_failed
 654  00af 5b04          	addw	sp,#4
 655  00b1               L03:
 656                     ; 92     assert_param(IS_ADC1_EXTTRIG_OK(ADC1_ExtTrigger));
 658  00b1 0d06          	tnz	(OFST+6,sp)
 659  00b3 2706          	jreq	L43
 660  00b5 7b06          	ld	a,(OFST+6,sp)
 661  00b7 a110          	cp	a,#16
 662  00b9 2603          	jrne	L23
 663  00bb               L43:
 664  00bb 4f            	clr	a
 665  00bc 2010          	jra	L63
 666  00be               L23:
 667  00be ae005c        	ldw	x,#92
 668  00c1 89            	pushw	x
 669  00c2 ae0000        	ldw	x,#0
 670  00c5 89            	pushw	x
 671  00c6 ae0000        	ldw	x,#L542
 672  00c9 cd0000        	call	_assert_failed
 674  00cc 5b04          	addw	sp,#4
 675  00ce               L63:
 676                     ; 93     assert_param(IS_FUNCTIONALSTATE_OK(((ADC1_ExtTriggerState))));
 678  00ce 0d07          	tnz	(OFST+7,sp)
 679  00d0 2706          	jreq	L24
 680  00d2 7b07          	ld	a,(OFST+7,sp)
 681  00d4 a101          	cp	a,#1
 682  00d6 2603          	jrne	L04
 683  00d8               L24:
 684  00d8 4f            	clr	a
 685  00d9 2010          	jra	L44
 686  00db               L04:
 687  00db ae005d        	ldw	x,#93
 688  00de 89            	pushw	x
 689  00df ae0000        	ldw	x,#0
 690  00e2 89            	pushw	x
 691  00e3 ae0000        	ldw	x,#L542
 692  00e6 cd0000        	call	_assert_failed
 694  00e9 5b04          	addw	sp,#4
 695  00eb               L44:
 696                     ; 94     assert_param(IS_ADC1_ALIGN_OK(ADC1_Align));
 698  00eb 0d08          	tnz	(OFST+8,sp)
 699  00ed 2706          	jreq	L05
 700  00ef 7b08          	ld	a,(OFST+8,sp)
 701  00f1 a108          	cp	a,#8
 702  00f3 2603          	jrne	L64
 703  00f5               L05:
 704  00f5 4f            	clr	a
 705  00f6 2010          	jra	L25
 706  00f8               L64:
 707  00f8 ae005e        	ldw	x,#94
 708  00fb 89            	pushw	x
 709  00fc ae0000        	ldw	x,#0
 710  00ff 89            	pushw	x
 711  0100 ae0000        	ldw	x,#L542
 712  0103 cd0000        	call	_assert_failed
 714  0106 5b04          	addw	sp,#4
 715  0108               L25:
 716                     ; 95     assert_param(IS_ADC1_SCHMITTTRIG_OK(ADC1_SchmittTriggerChannel));
 718  0108 0d09          	tnz	(OFST+9,sp)
 719  010a 2742          	jreq	L65
 720  010c 7b09          	ld	a,(OFST+9,sp)
 721  010e a101          	cp	a,#1
 722  0110 273c          	jreq	L65
 723  0112 7b09          	ld	a,(OFST+9,sp)
 724  0114 a102          	cp	a,#2
 725  0116 2736          	jreq	L65
 726  0118 7b09          	ld	a,(OFST+9,sp)
 727  011a a103          	cp	a,#3
 728  011c 2730          	jreq	L65
 729  011e 7b09          	ld	a,(OFST+9,sp)
 730  0120 a104          	cp	a,#4
 731  0122 272a          	jreq	L65
 732  0124 7b09          	ld	a,(OFST+9,sp)
 733  0126 a105          	cp	a,#5
 734  0128 2724          	jreq	L65
 735  012a 7b09          	ld	a,(OFST+9,sp)
 736  012c a106          	cp	a,#6
 737  012e 271e          	jreq	L65
 738  0130 7b09          	ld	a,(OFST+9,sp)
 739  0132 a107          	cp	a,#7
 740  0134 2718          	jreq	L65
 741  0136 7b09          	ld	a,(OFST+9,sp)
 742  0138 a108          	cp	a,#8
 743  013a 2712          	jreq	L65
 744  013c 7b09          	ld	a,(OFST+9,sp)
 745  013e a10c          	cp	a,#12
 746  0140 270c          	jreq	L65
 747  0142 7b09          	ld	a,(OFST+9,sp)
 748  0144 a1ff          	cp	a,#255
 749  0146 2706          	jreq	L65
 750  0148 7b09          	ld	a,(OFST+9,sp)
 751  014a a109          	cp	a,#9
 752  014c 2603          	jrne	L45
 753  014e               L65:
 754  014e 4f            	clr	a
 755  014f 2010          	jra	L06
 756  0151               L45:
 757  0151 ae005f        	ldw	x,#95
 758  0154 89            	pushw	x
 759  0155 ae0000        	ldw	x,#0
 760  0158 89            	pushw	x
 761  0159 ae0000        	ldw	x,#L542
 762  015c cd0000        	call	_assert_failed
 764  015f 5b04          	addw	sp,#4
 765  0161               L06:
 766                     ; 96     assert_param(IS_FUNCTIONALSTATE_OK(ADC1_SchmittTriggerState));
 768  0161 0d0a          	tnz	(OFST+10,sp)
 769  0163 2706          	jreq	L46
 770  0165 7b0a          	ld	a,(OFST+10,sp)
 771  0167 a101          	cp	a,#1
 772  0169 2603          	jrne	L26
 773  016b               L46:
 774  016b 4f            	clr	a
 775  016c 2010          	jra	L66
 776  016e               L26:
 777  016e ae0060        	ldw	x,#96
 778  0171 89            	pushw	x
 779  0172 ae0000        	ldw	x,#0
 780  0175 89            	pushw	x
 781  0176 ae0000        	ldw	x,#L542
 782  0179 cd0000        	call	_assert_failed
 784  017c 5b04          	addw	sp,#4
 785  017e               L66:
 786                     ; 101     ADC1_ConversionConfig(ADC1_ConversionMode, ADC1_Channel, ADC1_Align);
 788  017e 7b08          	ld	a,(OFST+8,sp)
 789  0180 88            	push	a
 790  0181 7b03          	ld	a,(OFST+3,sp)
 791  0183 97            	ld	xl,a
 792  0184 7b02          	ld	a,(OFST+2,sp)
 793  0186 95            	ld	xh,a
 794  0187 cd0000        	call	_ADC1_ConversionConfig
 796  018a 84            	pop	a
 797                     ; 103     ADC1_PrescalerConfig(ADC1_PrescalerSelection);
 799  018b 7b05          	ld	a,(OFST+5,sp)
 800  018d cd0000        	call	_ADC1_PrescalerConfig
 802                     ; 108     ADC1_ExternalTriggerConfig(ADC1_ExtTrigger, ADC1_ExtTriggerState);
 804  0190 7b07          	ld	a,(OFST+7,sp)
 805  0192 97            	ld	xl,a
 806  0193 7b06          	ld	a,(OFST+6,sp)
 807  0195 95            	ld	xh,a
 808  0196 cd0000        	call	_ADC1_ExternalTriggerConfig
 810                     ; 113     ADC1_SchmittTriggerConfig(ADC1_SchmittTriggerChannel, ADC1_SchmittTriggerState);
 812  0199 7b0a          	ld	a,(OFST+10,sp)
 813  019b 97            	ld	xl,a
 814  019c 7b09          	ld	a,(OFST+9,sp)
 815  019e 95            	ld	xh,a
 816  019f cd0000        	call	_ADC1_SchmittTriggerConfig
 818                     ; 116     ADC1->CR1 |= ADC1_CR1_ADON;
 820  01a2 72105401      	bset	21505,#0
 821                     ; 118 }
 824  01a6 85            	popw	x
 825  01a7 81            	ret
 861                     ; 126 void ADC1_Cmd(FunctionalState NewState)
 861                     ; 127 {
 862                     .text:	section	.text,new
 863  0000               _ADC1_Cmd:
 865  0000 88            	push	a
 866       00000000      OFST:	set	0
 869                     ; 130     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 871  0001 4d            	tnz	a
 872  0002 2704          	jreq	L47
 873  0004 a101          	cp	a,#1
 874  0006 2603          	jrne	L27
 875  0008               L47:
 876  0008 4f            	clr	a
 877  0009 2010          	jra	L67
 878  000b               L27:
 879  000b ae0082        	ldw	x,#130
 880  000e 89            	pushw	x
 881  000f ae0000        	ldw	x,#0
 882  0012 89            	pushw	x
 883  0013 ae0000        	ldw	x,#L542
 884  0016 cd0000        	call	_assert_failed
 886  0019 5b04          	addw	sp,#4
 887  001b               L67:
 888                     ; 132     if (NewState != DISABLE)
 890  001b 0d01          	tnz	(OFST+1,sp)
 891  001d 2706          	jreq	L562
 892                     ; 134         ADC1->CR1 |= ADC1_CR1_ADON;
 894  001f 72105401      	bset	21505,#0
 896  0023 2004          	jra	L762
 897  0025               L562:
 898                     ; 138         ADC1->CR1 &= (uint8_t)(~ADC1_CR1_ADON);
 900  0025 72115401      	bres	21505,#0
 901  0029               L762:
 902                     ; 141 }
 905  0029 84            	pop	a
 906  002a 81            	ret
 942                     ; 148 void ADC1_ScanModeCmd(FunctionalState NewState)
 942                     ; 149 {
 943                     .text:	section	.text,new
 944  0000               _ADC1_ScanModeCmd:
 946  0000 88            	push	a
 947       00000000      OFST:	set	0
 950                     ; 152     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 952  0001 4d            	tnz	a
 953  0002 2704          	jreq	L401
 954  0004 a101          	cp	a,#1
 955  0006 2603          	jrne	L201
 956  0008               L401:
 957  0008 4f            	clr	a
 958  0009 2010          	jra	L601
 959  000b               L201:
 960  000b ae0098        	ldw	x,#152
 961  000e 89            	pushw	x
 962  000f ae0000        	ldw	x,#0
 963  0012 89            	pushw	x
 964  0013 ae0000        	ldw	x,#L542
 965  0016 cd0000        	call	_assert_failed
 967  0019 5b04          	addw	sp,#4
 968  001b               L601:
 969                     ; 154     if (NewState != DISABLE)
 971  001b 0d01          	tnz	(OFST+1,sp)
 972  001d 2706          	jreq	L703
 973                     ; 156         ADC1->CR2 |= ADC1_CR2_SCAN;
 975  001f 72125402      	bset	21506,#1
 977  0023 2004          	jra	L113
 978  0025               L703:
 979                     ; 160         ADC1->CR2 &= (uint8_t)(~ADC1_CR2_SCAN);
 981  0025 72135402      	bres	21506,#1
 982  0029               L113:
 983                     ; 163 }
 986  0029 84            	pop	a
 987  002a 81            	ret
1023                     ; 170 void ADC1_DataBufferCmd(FunctionalState NewState)
1023                     ; 171 {
1024                     .text:	section	.text,new
1025  0000               _ADC1_DataBufferCmd:
1027  0000 88            	push	a
1028       00000000      OFST:	set	0
1031                     ; 174     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1033  0001 4d            	tnz	a
1034  0002 2704          	jreq	L411
1035  0004 a101          	cp	a,#1
1036  0006 2603          	jrne	L211
1037  0008               L411:
1038  0008 4f            	clr	a
1039  0009 2010          	jra	L611
1040  000b               L211:
1041  000b ae00ae        	ldw	x,#174
1042  000e 89            	pushw	x
1043  000f ae0000        	ldw	x,#0
1044  0012 89            	pushw	x
1045  0013 ae0000        	ldw	x,#L542
1046  0016 cd0000        	call	_assert_failed
1048  0019 5b04          	addw	sp,#4
1049  001b               L611:
1050                     ; 176     if (NewState != DISABLE)
1052  001b 0d01          	tnz	(OFST+1,sp)
1053  001d 2706          	jreq	L133
1054                     ; 178         ADC1->CR3 |= ADC1_CR3_DBUF;
1056  001f 721e5403      	bset	21507,#7
1058  0023 2004          	jra	L333
1059  0025               L133:
1060                     ; 182         ADC1->CR3 &= (uint8_t)(~ADC1_CR3_DBUF);
1062  0025 721f5403      	bres	21507,#7
1063  0029               L333:
1064                     ; 185 }
1067  0029 84            	pop	a
1068  002a 81            	ret
1225                     ; 196 void ADC1_ITConfig(ADC1_IT_TypeDef ADC1_IT, FunctionalState NewState)
1225                     ; 197 {
1226                     .text:	section	.text,new
1227  0000               _ADC1_ITConfig:
1229  0000 89            	pushw	x
1230       00000000      OFST:	set	0
1233                     ; 200     assert_param(IS_ADC1_IT_OK(ADC1_IT));
1235  0001 a30020        	cpw	x,#32
1236  0004 2705          	jreq	L421
1237  0006 a30010        	cpw	x,#16
1238  0009 2603          	jrne	L221
1239  000b               L421:
1240  000b 4f            	clr	a
1241  000c 2010          	jra	L621
1242  000e               L221:
1243  000e ae00c8        	ldw	x,#200
1244  0011 89            	pushw	x
1245  0012 ae0000        	ldw	x,#0
1246  0015 89            	pushw	x
1247  0016 ae0000        	ldw	x,#L542
1248  0019 cd0000        	call	_assert_failed
1250  001c 5b04          	addw	sp,#4
1251  001e               L621:
1252                     ; 201     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1254  001e 0d05          	tnz	(OFST+5,sp)
1255  0020 2706          	jreq	L231
1256  0022 7b05          	ld	a,(OFST+5,sp)
1257  0024 a101          	cp	a,#1
1258  0026 2603          	jrne	L031
1259  0028               L231:
1260  0028 4f            	clr	a
1261  0029 2010          	jra	L431
1262  002b               L031:
1263  002b ae00c9        	ldw	x,#201
1264  002e 89            	pushw	x
1265  002f ae0000        	ldw	x,#0
1266  0032 89            	pushw	x
1267  0033 ae0000        	ldw	x,#L542
1268  0036 cd0000        	call	_assert_failed
1270  0039 5b04          	addw	sp,#4
1271  003b               L431:
1272                     ; 203     if (NewState != DISABLE)
1274  003b 0d05          	tnz	(OFST+5,sp)
1275  003d 270a          	jreq	L124
1276                     ; 206         ADC1->CSR |= (uint8_t)ADC1_IT;
1278  003f c65400        	ld	a,21504
1279  0042 1a02          	or	a,(OFST+2,sp)
1280  0044 c75400        	ld	21504,a
1282  0047 2009          	jra	L324
1283  0049               L124:
1284                     ; 211         ADC1->CSR &= (uint8_t)((uint16_t)~(uint16_t)ADC1_IT);
1286  0049 7b02          	ld	a,(OFST+2,sp)
1287  004b 43            	cpl	a
1288  004c c45400        	and	a,21504
1289  004f c75400        	ld	21504,a
1290  0052               L324:
1291                     ; 214 }
1294  0052 85            	popw	x
1295  0053 81            	ret
1332                     ; 222 void ADC1_PrescalerConfig(ADC1_PresSel_TypeDef ADC1_Prescaler)
1332                     ; 223 {
1333                     .text:	section	.text,new
1334  0000               _ADC1_PrescalerConfig:
1336  0000 88            	push	a
1337       00000000      OFST:	set	0
1340                     ; 226     assert_param(IS_ADC1_PRESSEL_OK(ADC1_Prescaler));
1342  0001 4d            	tnz	a
1343  0002 271c          	jreq	L241
1344  0004 a110          	cp	a,#16
1345  0006 2718          	jreq	L241
1346  0008 a120          	cp	a,#32
1347  000a 2714          	jreq	L241
1348  000c a130          	cp	a,#48
1349  000e 2710          	jreq	L241
1350  0010 a140          	cp	a,#64
1351  0012 270c          	jreq	L241
1352  0014 a150          	cp	a,#80
1353  0016 2708          	jreq	L241
1354  0018 a160          	cp	a,#96
1355  001a 2704          	jreq	L241
1356  001c a170          	cp	a,#112
1357  001e 2603          	jrne	L041
1358  0020               L241:
1359  0020 4f            	clr	a
1360  0021 2010          	jra	L441
1361  0023               L041:
1362  0023 ae00e2        	ldw	x,#226
1363  0026 89            	pushw	x
1364  0027 ae0000        	ldw	x,#0
1365  002a 89            	pushw	x
1366  002b ae0000        	ldw	x,#L542
1367  002e cd0000        	call	_assert_failed
1369  0031 5b04          	addw	sp,#4
1370  0033               L441:
1371                     ; 229     ADC1->CR1 &= (uint8_t)(~ADC1_CR1_SPSEL);
1373  0033 c65401        	ld	a,21505
1374  0036 a48f          	and	a,#143
1375  0038 c75401        	ld	21505,a
1376                     ; 231     ADC1->CR1 |= (uint8_t)(ADC1_Prescaler);
1378  003b c65401        	ld	a,21505
1379  003e 1a01          	or	a,(OFST+1,sp)
1380  0040 c75401        	ld	21505,a
1381                     ; 233 }
1384  0043 84            	pop	a
1385  0044 81            	ret
1433                     ; 244 void ADC1_SchmittTriggerConfig(ADC1_SchmittTrigg_TypeDef ADC1_SchmittTriggerChannel, FunctionalState NewState)
1433                     ; 245 {
1434                     .text:	section	.text,new
1435  0000               _ADC1_SchmittTriggerConfig:
1437  0000 89            	pushw	x
1438       00000000      OFST:	set	0
1441                     ; 248     assert_param(IS_ADC1_SCHMITTTRIG_OK(ADC1_SchmittTriggerChannel));
1443  0001 9e            	ld	a,xh
1444  0002 4d            	tnz	a
1445  0003 2737          	jreq	L251
1446  0005 9e            	ld	a,xh
1447  0006 a101          	cp	a,#1
1448  0008 2732          	jreq	L251
1449  000a 9e            	ld	a,xh
1450  000b a102          	cp	a,#2
1451  000d 272d          	jreq	L251
1452  000f 9e            	ld	a,xh
1453  0010 a103          	cp	a,#3
1454  0012 2728          	jreq	L251
1455  0014 9e            	ld	a,xh
1456  0015 a104          	cp	a,#4
1457  0017 2723          	jreq	L251
1458  0019 9e            	ld	a,xh
1459  001a a105          	cp	a,#5
1460  001c 271e          	jreq	L251
1461  001e 9e            	ld	a,xh
1462  001f a106          	cp	a,#6
1463  0021 2719          	jreq	L251
1464  0023 9e            	ld	a,xh
1465  0024 a107          	cp	a,#7
1466  0026 2714          	jreq	L251
1467  0028 9e            	ld	a,xh
1468  0029 a108          	cp	a,#8
1469  002b 270f          	jreq	L251
1470  002d 9e            	ld	a,xh
1471  002e a10c          	cp	a,#12
1472  0030 270a          	jreq	L251
1473  0032 9e            	ld	a,xh
1474  0033 a1ff          	cp	a,#255
1475  0035 2705          	jreq	L251
1476  0037 9e            	ld	a,xh
1477  0038 a109          	cp	a,#9
1478  003a 2603          	jrne	L051
1479  003c               L251:
1480  003c 4f            	clr	a
1481  003d 2010          	jra	L451
1482  003f               L051:
1483  003f ae00f8        	ldw	x,#248
1484  0042 89            	pushw	x
1485  0043 ae0000        	ldw	x,#0
1486  0046 89            	pushw	x
1487  0047 ae0000        	ldw	x,#L542
1488  004a cd0000        	call	_assert_failed
1490  004d 5b04          	addw	sp,#4
1491  004f               L451:
1492                     ; 249     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1494  004f 0d02          	tnz	(OFST+2,sp)
1495  0051 2706          	jreq	L061
1496  0053 7b02          	ld	a,(OFST+2,sp)
1497  0055 a101          	cp	a,#1
1498  0057 2603          	jrne	L651
1499  0059               L061:
1500  0059 4f            	clr	a
1501  005a 2010          	jra	L261
1502  005c               L651:
1503  005c ae00f9        	ldw	x,#249
1504  005f 89            	pushw	x
1505  0060 ae0000        	ldw	x,#0
1506  0063 89            	pushw	x
1507  0064 ae0000        	ldw	x,#L542
1508  0067 cd0000        	call	_assert_failed
1510  006a 5b04          	addw	sp,#4
1511  006c               L261:
1512                     ; 251     if (ADC1_SchmittTriggerChannel == ADC1_SCHMITTTRIG_ALL)
1514  006c 7b01          	ld	a,(OFST+1,sp)
1515  006e a1ff          	cp	a,#255
1516  0070 2620          	jrne	L564
1517                     ; 253         if (NewState != DISABLE)
1519  0072 0d02          	tnz	(OFST+2,sp)
1520  0074 270a          	jreq	L764
1521                     ; 255             ADC1->TDRL &= (uint8_t)0x0;
1523  0076 725f5407      	clr	21511
1524                     ; 256             ADC1->TDRH &= (uint8_t)0x0;
1526  007a 725f5406      	clr	21510
1528  007e 2078          	jra	L374
1529  0080               L764:
1530                     ; 260             ADC1->TDRL |= (uint8_t)0xFF;
1532  0080 c65407        	ld	a,21511
1533  0083 aaff          	or	a,#255
1534  0085 c75407        	ld	21511,a
1535                     ; 261             ADC1->TDRH |= (uint8_t)0xFF;
1537  0088 c65406        	ld	a,21510
1538  008b aaff          	or	a,#255
1539  008d c75406        	ld	21510,a
1540  0090 2066          	jra	L374
1541  0092               L564:
1542                     ; 264     else if (ADC1_SchmittTriggerChannel < ADC1_SCHMITTTRIG_CHANNEL8)
1544  0092 7b01          	ld	a,(OFST+1,sp)
1545  0094 a108          	cp	a,#8
1546  0096 242f          	jruge	L574
1547                     ; 266         if (NewState != DISABLE)
1549  0098 0d02          	tnz	(OFST+2,sp)
1550  009a 2716          	jreq	L774
1551                     ; 268             ADC1->TDRL &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << (uint8_t)ADC1_SchmittTriggerChannel));
1553  009c 7b01          	ld	a,(OFST+1,sp)
1554  009e 5f            	clrw	x
1555  009f 97            	ld	xl,a
1556  00a0 a601          	ld	a,#1
1557  00a2 5d            	tnzw	x
1558  00a3 2704          	jreq	L461
1559  00a5               L661:
1560  00a5 48            	sll	a
1561  00a6 5a            	decw	x
1562  00a7 26fc          	jrne	L661
1563  00a9               L461:
1564  00a9 43            	cpl	a
1565  00aa c45407        	and	a,21511
1566  00ad c75407        	ld	21511,a
1568  00b0 2046          	jra	L374
1569  00b2               L774:
1570                     ; 272             ADC1->TDRL |= (uint8_t)((uint8_t)0x01 << (uint8_t)ADC1_SchmittTriggerChannel);
1572  00b2 7b01          	ld	a,(OFST+1,sp)
1573  00b4 5f            	clrw	x
1574  00b5 97            	ld	xl,a
1575  00b6 a601          	ld	a,#1
1576  00b8 5d            	tnzw	x
1577  00b9 2704          	jreq	L071
1578  00bb               L271:
1579  00bb 48            	sll	a
1580  00bc 5a            	decw	x
1581  00bd 26fc          	jrne	L271
1582  00bf               L071:
1583  00bf ca5407        	or	a,21511
1584  00c2 c75407        	ld	21511,a
1585  00c5 2031          	jra	L374
1586  00c7               L574:
1587                     ; 277         if (NewState != DISABLE)
1589  00c7 0d02          	tnz	(OFST+2,sp)
1590  00c9 2718          	jreq	L505
1591                     ; 279             ADC1->TDRH &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << ((uint8_t)ADC1_SchmittTriggerChannel - (uint8_t)8)));
1593  00cb 7b01          	ld	a,(OFST+1,sp)
1594  00cd a008          	sub	a,#8
1595  00cf 5f            	clrw	x
1596  00d0 97            	ld	xl,a
1597  00d1 a601          	ld	a,#1
1598  00d3 5d            	tnzw	x
1599  00d4 2704          	jreq	L471
1600  00d6               L671:
1601  00d6 48            	sll	a
1602  00d7 5a            	decw	x
1603  00d8 26fc          	jrne	L671
1604  00da               L471:
1605  00da 43            	cpl	a
1606  00db c45406        	and	a,21510
1607  00de c75406        	ld	21510,a
1609  00e1 2015          	jra	L374
1610  00e3               L505:
1611                     ; 283             ADC1->TDRH |= (uint8_t)((uint8_t)0x01 << ((uint8_t)ADC1_SchmittTriggerChannel - (uint8_t)8));
1613  00e3 7b01          	ld	a,(OFST+1,sp)
1614  00e5 a008          	sub	a,#8
1615  00e7 5f            	clrw	x
1616  00e8 97            	ld	xl,a
1617  00e9 a601          	ld	a,#1
1618  00eb 5d            	tnzw	x
1619  00ec 2704          	jreq	L002
1620  00ee               L202:
1621  00ee 48            	sll	a
1622  00ef 5a            	decw	x
1623  00f0 26fc          	jrne	L202
1624  00f2               L002:
1625  00f2 ca5406        	or	a,21510
1626  00f5 c75406        	ld	21510,a
1627  00f8               L374:
1628                     ; 287 }
1631  00f8 85            	popw	x
1632  00f9 81            	ret
1690                     ; 300 void ADC1_ConversionConfig(ADC1_ConvMode_TypeDef ADC1_ConversionMode, ADC1_Channel_TypeDef ADC1_Channel, ADC1_Align_TypeDef ADC1_Align)
1690                     ; 301 {
1691                     .text:	section	.text,new
1692  0000               _ADC1_ConversionConfig:
1694  0000 89            	pushw	x
1695       00000000      OFST:	set	0
1698                     ; 304     assert_param(IS_ADC1_CONVERSIONMODE_OK(ADC1_ConversionMode));
1700  0001 9e            	ld	a,xh
1701  0002 4d            	tnz	a
1702  0003 2705          	jreq	L012
1703  0005 9e            	ld	a,xh
1704  0006 a101          	cp	a,#1
1705  0008 2603          	jrne	L602
1706  000a               L012:
1707  000a 4f            	clr	a
1708  000b 2010          	jra	L212
1709  000d               L602:
1710  000d ae0130        	ldw	x,#304
1711  0010 89            	pushw	x
1712  0011 ae0000        	ldw	x,#0
1713  0014 89            	pushw	x
1714  0015 ae0000        	ldw	x,#L542
1715  0018 cd0000        	call	_assert_failed
1717  001b 5b04          	addw	sp,#4
1718  001d               L212:
1719                     ; 305     assert_param(IS_ADC1_CHANNEL_OK(ADC1_Channel));
1721  001d 0d02          	tnz	(OFST+2,sp)
1722  001f 273c          	jreq	L612
1723  0021 7b02          	ld	a,(OFST+2,sp)
1724  0023 a101          	cp	a,#1
1725  0025 2736          	jreq	L612
1726  0027 7b02          	ld	a,(OFST+2,sp)
1727  0029 a102          	cp	a,#2
1728  002b 2730          	jreq	L612
1729  002d 7b02          	ld	a,(OFST+2,sp)
1730  002f a103          	cp	a,#3
1731  0031 272a          	jreq	L612
1732  0033 7b02          	ld	a,(OFST+2,sp)
1733  0035 a104          	cp	a,#4
1734  0037 2724          	jreq	L612
1735  0039 7b02          	ld	a,(OFST+2,sp)
1736  003b a105          	cp	a,#5
1737  003d 271e          	jreq	L612
1738  003f 7b02          	ld	a,(OFST+2,sp)
1739  0041 a106          	cp	a,#6
1740  0043 2718          	jreq	L612
1741  0045 7b02          	ld	a,(OFST+2,sp)
1742  0047 a107          	cp	a,#7
1743  0049 2712          	jreq	L612
1744  004b 7b02          	ld	a,(OFST+2,sp)
1745  004d a108          	cp	a,#8
1746  004f 270c          	jreq	L612
1747  0051 7b02          	ld	a,(OFST+2,sp)
1748  0053 a10c          	cp	a,#12
1749  0055 2706          	jreq	L612
1750  0057 7b02          	ld	a,(OFST+2,sp)
1751  0059 a109          	cp	a,#9
1752  005b 2603          	jrne	L412
1753  005d               L612:
1754  005d 4f            	clr	a
1755  005e 2010          	jra	L022
1756  0060               L412:
1757  0060 ae0131        	ldw	x,#305
1758  0063 89            	pushw	x
1759  0064 ae0000        	ldw	x,#0
1760  0067 89            	pushw	x
1761  0068 ae0000        	ldw	x,#L542
1762  006b cd0000        	call	_assert_failed
1764  006e 5b04          	addw	sp,#4
1765  0070               L022:
1766                     ; 306     assert_param(IS_ADC1_ALIGN_OK(ADC1_Align));
1768  0070 0d05          	tnz	(OFST+5,sp)
1769  0072 2706          	jreq	L422
1770  0074 7b05          	ld	a,(OFST+5,sp)
1771  0076 a108          	cp	a,#8
1772  0078 2603          	jrne	L222
1773  007a               L422:
1774  007a 4f            	clr	a
1775  007b 2010          	jra	L622
1776  007d               L222:
1777  007d ae0132        	ldw	x,#306
1778  0080 89            	pushw	x
1779  0081 ae0000        	ldw	x,#0
1780  0084 89            	pushw	x
1781  0085 ae0000        	ldw	x,#L542
1782  0088 cd0000        	call	_assert_failed
1784  008b 5b04          	addw	sp,#4
1785  008d               L622:
1786                     ; 309     ADC1->CR2 &= (uint8_t)(~ADC1_CR2_ALIGN);
1788  008d 72175402      	bres	21506,#3
1789                     ; 311     ADC1->CR2 |= (uint8_t)(ADC1_Align);
1791  0091 c65402        	ld	a,21506
1792  0094 1a05          	or	a,(OFST+5,sp)
1793  0096 c75402        	ld	21506,a
1794                     ; 313     if (ADC1_ConversionMode == ADC1_CONVERSIONMODE_CONTINUOUS)
1796  0099 7b01          	ld	a,(OFST+1,sp)
1797  009b a101          	cp	a,#1
1798  009d 2606          	jrne	L735
1799                     ; 316         ADC1->CR1 |= ADC1_CR1_CONT;
1801  009f 72125401      	bset	21505,#1
1803  00a3 2004          	jra	L145
1804  00a5               L735:
1805                     ; 321         ADC1->CR1 &= (uint8_t)(~ADC1_CR1_CONT);
1807  00a5 72135401      	bres	21505,#1
1808  00a9               L145:
1809                     ; 325     ADC1->CSR &= (uint8_t)(~ADC1_CSR_CH);
1811  00a9 c65400        	ld	a,21504
1812  00ac a4f0          	and	a,#240
1813  00ae c75400        	ld	21504,a
1814                     ; 327     ADC1->CSR |= (uint8_t)(ADC1_Channel);
1816  00b1 c65400        	ld	a,21504
1817  00b4 1a02          	or	a,(OFST+2,sp)
1818  00b6 c75400        	ld	21504,a
1819                     ; 329 }
1822  00b9 85            	popw	x
1823  00ba 81            	ret
1870                     ; 342 void ADC1_ExternalTriggerConfig(ADC1_ExtTrig_TypeDef ADC1_ExtTrigger, FunctionalState NewState)
1870                     ; 343 {
1871                     .text:	section	.text,new
1872  0000               _ADC1_ExternalTriggerConfig:
1874  0000 89            	pushw	x
1875       00000000      OFST:	set	0
1878                     ; 346     assert_param(IS_ADC1_EXTTRIG_OK(ADC1_ExtTrigger));
1880  0001 9e            	ld	a,xh
1881  0002 4d            	tnz	a
1882  0003 2705          	jreq	L432
1883  0005 9e            	ld	a,xh
1884  0006 a110          	cp	a,#16
1885  0008 2603          	jrne	L232
1886  000a               L432:
1887  000a 4f            	clr	a
1888  000b 2010          	jra	L632
1889  000d               L232:
1890  000d ae015a        	ldw	x,#346
1891  0010 89            	pushw	x
1892  0011 ae0000        	ldw	x,#0
1893  0014 89            	pushw	x
1894  0015 ae0000        	ldw	x,#L542
1895  0018 cd0000        	call	_assert_failed
1897  001b 5b04          	addw	sp,#4
1898  001d               L632:
1899                     ; 347     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1901  001d 0d02          	tnz	(OFST+2,sp)
1902  001f 2706          	jreq	L242
1903  0021 7b02          	ld	a,(OFST+2,sp)
1904  0023 a101          	cp	a,#1
1905  0025 2603          	jrne	L042
1906  0027               L242:
1907  0027 4f            	clr	a
1908  0028 2010          	jra	L442
1909  002a               L042:
1910  002a ae015b        	ldw	x,#347
1911  002d 89            	pushw	x
1912  002e ae0000        	ldw	x,#0
1913  0031 89            	pushw	x
1914  0032 ae0000        	ldw	x,#L542
1915  0035 cd0000        	call	_assert_failed
1917  0038 5b04          	addw	sp,#4
1918  003a               L442:
1919                     ; 350     ADC1->CR2 &= (uint8_t)(~ADC1_CR2_EXTSEL);
1921  003a c65402        	ld	a,21506
1922  003d a4cf          	and	a,#207
1923  003f c75402        	ld	21506,a
1924                     ; 352     if (NewState != DISABLE)
1926  0042 0d02          	tnz	(OFST+2,sp)
1927  0044 2706          	jreq	L565
1928                     ; 355         ADC1->CR2 |= (uint8_t)(ADC1_CR2_EXTTRIG);
1930  0046 721c5402      	bset	21506,#6
1932  004a 2004          	jra	L765
1933  004c               L565:
1934                     ; 360         ADC1->CR2 &= (uint8_t)(~ADC1_CR2_EXTTRIG);
1936  004c 721d5402      	bres	21506,#6
1937  0050               L765:
1938                     ; 364     ADC1->CR2 |= (uint8_t)(ADC1_ExtTrigger);
1940  0050 c65402        	ld	a,21506
1941  0053 1a01          	or	a,(OFST+1,sp)
1942  0055 c75402        	ld	21506,a
1943                     ; 366 }
1946  0058 85            	popw	x
1947  0059 81            	ret
1971                     ; 378 void ADC1_StartConversion(void)
1971                     ; 379 {
1972                     .text:	section	.text,new
1973  0000               _ADC1_StartConversion:
1977                     ; 380     ADC1->CR1 |= ADC1_CR1_ADON;
1979  0000 72105401      	bset	21505,#0
1980                     ; 381 }
1983  0004 81            	ret
2023                     ; 390 uint16_t ADC1_GetConversionValue(void)
2023                     ; 391 {
2024                     .text:	section	.text,new
2025  0000               _ADC1_GetConversionValue:
2027  0000 5205          	subw	sp,#5
2028       00000005      OFST:	set	5
2031                     ; 393     uint16_t temph = 0;
2033                     ; 394     uint8_t templ = 0;
2035                     ; 396     if ((ADC1->CR2 & ADC1_CR2_ALIGN) != 0) /* Right alignment */
2037  0002 c65402        	ld	a,21506
2038  0005 a508          	bcp	a,#8
2039  0007 2715          	jreq	L716
2040                     ; 399         templ = ADC1->DRL;
2042  0009 c65405        	ld	a,21509
2043  000c 6b03          	ld	(OFST-2,sp),a
2045                     ; 401         temph = ADC1->DRH;
2047  000e c65404        	ld	a,21508
2048  0011 5f            	clrw	x
2049  0012 97            	ld	xl,a
2050  0013 1f04          	ldw	(OFST-1,sp),x
2052                     ; 403         temph = (uint16_t)(templ | (uint16_t)(temph << (uint8_t)8));
2054  0015 1e04          	ldw	x,(OFST-1,sp)
2055  0017 7b03          	ld	a,(OFST-2,sp)
2056  0019 02            	rlwa	x,a
2057  001a 1f04          	ldw	(OFST-1,sp),x
2060  001c 2021          	jra	L126
2061  001e               L716:
2062                     ; 408         temph = ADC1->DRH;
2064  001e c65404        	ld	a,21508
2065  0021 5f            	clrw	x
2066  0022 97            	ld	xl,a
2067  0023 1f04          	ldw	(OFST-1,sp),x
2069                     ; 410         templ = ADC1->DRL;
2071  0025 c65405        	ld	a,21509
2072  0028 6b03          	ld	(OFST-2,sp),a
2074                     ; 412         temph = (uint16_t)((uint16_t)((uint16_t)templ << 6) | (uint16_t)((uint16_t)temph << 8));
2076  002a 1e04          	ldw	x,(OFST-1,sp)
2077  002c 4f            	clr	a
2078  002d 02            	rlwa	x,a
2079  002e 1f01          	ldw	(OFST-4,sp),x
2081  0030 7b03          	ld	a,(OFST-2,sp)
2082  0032 97            	ld	xl,a
2083  0033 a640          	ld	a,#64
2084  0035 42            	mul	x,a
2085  0036 01            	rrwa	x,a
2086  0037 1a02          	or	a,(OFST-3,sp)
2087  0039 01            	rrwa	x,a
2088  003a 1a01          	or	a,(OFST-4,sp)
2089  003c 01            	rrwa	x,a
2090  003d 1f04          	ldw	(OFST-1,sp),x
2092  003f               L126:
2093                     ; 415     return ((uint16_t)temph);
2095  003f 1e04          	ldw	x,(OFST-1,sp)
2098  0041 5b05          	addw	sp,#5
2099  0043 81            	ret
2146                     ; 427 void ADC1_AWDChannelConfig(ADC1_Channel_TypeDef Channel, FunctionalState NewState)
2146                     ; 428 {
2147                     .text:	section	.text,new
2148  0000               _ADC1_AWDChannelConfig:
2150  0000 89            	pushw	x
2151       00000000      OFST:	set	0
2154                     ; 430     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2156  0001 9f            	ld	a,xl
2157  0002 4d            	tnz	a
2158  0003 2705          	jreq	L652
2159  0005 9f            	ld	a,xl
2160  0006 a101          	cp	a,#1
2161  0008 2603          	jrne	L452
2162  000a               L652:
2163  000a 4f            	clr	a
2164  000b 2010          	jra	L062
2165  000d               L452:
2166  000d ae01ae        	ldw	x,#430
2167  0010 89            	pushw	x
2168  0011 ae0000        	ldw	x,#0
2169  0014 89            	pushw	x
2170  0015 ae0000        	ldw	x,#L542
2171  0018 cd0000        	call	_assert_failed
2173  001b 5b04          	addw	sp,#4
2174  001d               L062:
2175                     ; 431     assert_param(IS_ADC1_CHANNEL_OK(Channel));
2177  001d 0d01          	tnz	(OFST+1,sp)
2178  001f 273c          	jreq	L462
2179  0021 7b01          	ld	a,(OFST+1,sp)
2180  0023 a101          	cp	a,#1
2181  0025 2736          	jreq	L462
2182  0027 7b01          	ld	a,(OFST+1,sp)
2183  0029 a102          	cp	a,#2
2184  002b 2730          	jreq	L462
2185  002d 7b01          	ld	a,(OFST+1,sp)
2186  002f a103          	cp	a,#3
2187  0031 272a          	jreq	L462
2188  0033 7b01          	ld	a,(OFST+1,sp)
2189  0035 a104          	cp	a,#4
2190  0037 2724          	jreq	L462
2191  0039 7b01          	ld	a,(OFST+1,sp)
2192  003b a105          	cp	a,#5
2193  003d 271e          	jreq	L462
2194  003f 7b01          	ld	a,(OFST+1,sp)
2195  0041 a106          	cp	a,#6
2196  0043 2718          	jreq	L462
2197  0045 7b01          	ld	a,(OFST+1,sp)
2198  0047 a107          	cp	a,#7
2199  0049 2712          	jreq	L462
2200  004b 7b01          	ld	a,(OFST+1,sp)
2201  004d a108          	cp	a,#8
2202  004f 270c          	jreq	L462
2203  0051 7b01          	ld	a,(OFST+1,sp)
2204  0053 a10c          	cp	a,#12
2205  0055 2706          	jreq	L462
2206  0057 7b01          	ld	a,(OFST+1,sp)
2207  0059 a109          	cp	a,#9
2208  005b 2603          	jrne	L262
2209  005d               L462:
2210  005d 4f            	clr	a
2211  005e 2010          	jra	L662
2212  0060               L262:
2213  0060 ae01af        	ldw	x,#431
2214  0063 89            	pushw	x
2215  0064 ae0000        	ldw	x,#0
2216  0067 89            	pushw	x
2217  0068 ae0000        	ldw	x,#L542
2218  006b cd0000        	call	_assert_failed
2220  006e 5b04          	addw	sp,#4
2221  0070               L662:
2222                     ; 433     if (Channel < (uint8_t)8)
2224  0070 7b01          	ld	a,(OFST+1,sp)
2225  0072 a108          	cp	a,#8
2226  0074 242f          	jruge	L546
2227                     ; 435         if (NewState != DISABLE)
2229  0076 0d02          	tnz	(OFST+2,sp)
2230  0078 2715          	jreq	L746
2231                     ; 437             ADC1->AWCRL |= (uint8_t)((uint8_t)1 << Channel);
2233  007a 7b01          	ld	a,(OFST+1,sp)
2234  007c 5f            	clrw	x
2235  007d 97            	ld	xl,a
2236  007e a601          	ld	a,#1
2237  0080 5d            	tnzw	x
2238  0081 2704          	jreq	L072
2239  0083               L272:
2240  0083 48            	sll	a
2241  0084 5a            	decw	x
2242  0085 26fc          	jrne	L272
2243  0087               L072:
2244  0087 ca540f        	or	a,21519
2245  008a c7540f        	ld	21519,a
2247  008d 2047          	jra	L356
2248  008f               L746:
2249                     ; 441             ADC1->AWCRL &= (uint8_t)~(uint8_t)((uint8_t)1 << Channel);
2251  008f 7b01          	ld	a,(OFST+1,sp)
2252  0091 5f            	clrw	x
2253  0092 97            	ld	xl,a
2254  0093 a601          	ld	a,#1
2255  0095 5d            	tnzw	x
2256  0096 2704          	jreq	L472
2257  0098               L672:
2258  0098 48            	sll	a
2259  0099 5a            	decw	x
2260  009a 26fc          	jrne	L672
2261  009c               L472:
2262  009c 43            	cpl	a
2263  009d c4540f        	and	a,21519
2264  00a0 c7540f        	ld	21519,a
2265  00a3 2031          	jra	L356
2266  00a5               L546:
2267                     ; 446         if (NewState != DISABLE)
2269  00a5 0d02          	tnz	(OFST+2,sp)
2270  00a7 2717          	jreq	L556
2271                     ; 448             ADC1->AWCRH |= (uint8_t)((uint8_t)1 << (Channel - (uint8_t)8));
2273  00a9 7b01          	ld	a,(OFST+1,sp)
2274  00ab a008          	sub	a,#8
2275  00ad 5f            	clrw	x
2276  00ae 97            	ld	xl,a
2277  00af a601          	ld	a,#1
2278  00b1 5d            	tnzw	x
2279  00b2 2704          	jreq	L003
2280  00b4               L203:
2281  00b4 48            	sll	a
2282  00b5 5a            	decw	x
2283  00b6 26fc          	jrne	L203
2284  00b8               L003:
2285  00b8 ca540e        	or	a,21518
2286  00bb c7540e        	ld	21518,a
2288  00be 2016          	jra	L356
2289  00c0               L556:
2290                     ; 452             ADC1->AWCRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (uint8_t)(Channel - (uint8_t)8));
2292  00c0 7b01          	ld	a,(OFST+1,sp)
2293  00c2 a008          	sub	a,#8
2294  00c4 5f            	clrw	x
2295  00c5 97            	ld	xl,a
2296  00c6 a601          	ld	a,#1
2297  00c8 5d            	tnzw	x
2298  00c9 2704          	jreq	L403
2299  00cb               L603:
2300  00cb 48            	sll	a
2301  00cc 5a            	decw	x
2302  00cd 26fc          	jrne	L603
2303  00cf               L403:
2304  00cf 43            	cpl	a
2305  00d0 c4540e        	and	a,21518
2306  00d3 c7540e        	ld	21518,a
2307  00d6               L356:
2308                     ; 455 }
2311  00d6 85            	popw	x
2312  00d7 81            	ret
2345                     ; 463 void ADC1_SetHighThreshold(uint16_t Threshold)
2345                     ; 464 {
2346                     .text:	section	.text,new
2347  0000               _ADC1_SetHighThreshold:
2349  0000 89            	pushw	x
2350       00000000      OFST:	set	0
2353                     ; 465     ADC1->HTRH = (uint8_t)(Threshold >> (uint8_t)2);
2355  0001 54            	srlw	x
2356  0002 54            	srlw	x
2357  0003 9f            	ld	a,xl
2358  0004 c75408        	ld	21512,a
2359                     ; 466     ADC1->HTRL = (uint8_t)Threshold;
2361  0007 7b02          	ld	a,(OFST+2,sp)
2362  0009 c75409        	ld	21513,a
2363                     ; 467 }
2366  000c 85            	popw	x
2367  000d 81            	ret
2400                     ; 475 void ADC1_SetLowThreshold(uint16_t Threshold)
2400                     ; 476 {
2401                     .text:	section	.text,new
2402  0000               _ADC1_SetLowThreshold:
2406                     ; 477     ADC1->LTRL = (uint8_t)Threshold;
2408  0000 9f            	ld	a,xl
2409  0001 c7540b        	ld	21515,a
2410                     ; 478     ADC1->LTRH = (uint8_t)(Threshold >> (uint8_t)2);
2412  0004 54            	srlw	x
2413  0005 54            	srlw	x
2414  0006 9f            	ld	a,xl
2415  0007 c7540a        	ld	21514,a
2416                     ; 479 }
2419  000a 81            	ret
2467                     ; 488 uint16_t ADC1_GetBufferValue(uint8_t Buffer)
2467                     ; 489 {
2468                     .text:	section	.text,new
2469  0000               _ADC1_GetBufferValue:
2471  0000 88            	push	a
2472  0001 5205          	subw	sp,#5
2473       00000005      OFST:	set	5
2476                     ; 491     uint16_t temph = 0;
2478                     ; 492     uint8_t templ = 0;
2480                     ; 495     assert_param(IS_ADC1_BUFFER_OK(Buffer));
2482  0003 a10a          	cp	a,#10
2483  0005 2403          	jruge	L613
2484  0007 4f            	clr	a
2485  0008 2010          	jra	L023
2486  000a               L613:
2487  000a ae01ef        	ldw	x,#495
2488  000d 89            	pushw	x
2489  000e ae0000        	ldw	x,#0
2490  0011 89            	pushw	x
2491  0012 ae0000        	ldw	x,#L542
2492  0015 cd0000        	call	_assert_failed
2494  0018 5b04          	addw	sp,#4
2495  001a               L023:
2496                     ; 497     if ((ADC1->CR2 & ADC1_CR2_ALIGN) != 0) /* Right alignment */
2498  001a c65402        	ld	a,21506
2499  001d a508          	bcp	a,#8
2500  001f 271f          	jreq	L137
2501                     ; 500         templ = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1) + 1);
2503  0021 7b06          	ld	a,(OFST+1,sp)
2504  0023 48            	sll	a
2505  0024 5f            	clrw	x
2506  0025 97            	ld	xl,a
2507  0026 d653e1        	ld	a,(21473,x)
2508  0029 6b03          	ld	(OFST-2,sp),a
2510                     ; 502         temph = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1));
2512  002b 7b06          	ld	a,(OFST+1,sp)
2513  002d 48            	sll	a
2514  002e 5f            	clrw	x
2515  002f 97            	ld	xl,a
2516  0030 d653e0        	ld	a,(21472,x)
2517  0033 5f            	clrw	x
2518  0034 97            	ld	xl,a
2519  0035 1f04          	ldw	(OFST-1,sp),x
2521                     ; 504         temph = (uint16_t)(templ | (uint16_t)(temph << (uint8_t)8));
2523  0037 1e04          	ldw	x,(OFST-1,sp)
2524  0039 7b03          	ld	a,(OFST-2,sp)
2525  003b 02            	rlwa	x,a
2526  003c 1f04          	ldw	(OFST-1,sp),x
2529  003e 202b          	jra	L337
2530  0040               L137:
2531                     ; 509         temph = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1));
2533  0040 7b06          	ld	a,(OFST+1,sp)
2534  0042 48            	sll	a
2535  0043 5f            	clrw	x
2536  0044 97            	ld	xl,a
2537  0045 d653e0        	ld	a,(21472,x)
2538  0048 5f            	clrw	x
2539  0049 97            	ld	xl,a
2540  004a 1f04          	ldw	(OFST-1,sp),x
2542                     ; 511         templ = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1) + 1);
2544  004c 7b06          	ld	a,(OFST+1,sp)
2545  004e 48            	sll	a
2546  004f 5f            	clrw	x
2547  0050 97            	ld	xl,a
2548  0051 d653e1        	ld	a,(21473,x)
2549  0054 6b03          	ld	(OFST-2,sp),a
2551                     ; 513         temph = (uint16_t)((uint16_t)((uint16_t)templ << 6) | (uint16_t)(temph << 8));
2553  0056 1e04          	ldw	x,(OFST-1,sp)
2554  0058 4f            	clr	a
2555  0059 02            	rlwa	x,a
2556  005a 1f01          	ldw	(OFST-4,sp),x
2558  005c 7b03          	ld	a,(OFST-2,sp)
2559  005e 97            	ld	xl,a
2560  005f a640          	ld	a,#64
2561  0061 42            	mul	x,a
2562  0062 01            	rrwa	x,a
2563  0063 1a02          	or	a,(OFST-3,sp)
2564  0065 01            	rrwa	x,a
2565  0066 1a01          	or	a,(OFST-4,sp)
2566  0068 01            	rrwa	x,a
2567  0069 1f04          	ldw	(OFST-1,sp),x
2569  006b               L337:
2570                     ; 516     return ((uint16_t)temph);
2572  006b 1e04          	ldw	x,(OFST-1,sp)
2575  006d 5b06          	addw	sp,#6
2576  006f 81            	ret
2641                     ; 526 FlagStatus ADC1_GetAWDChannelStatus(ADC1_Channel_TypeDef Channel)
2641                     ; 527 {
2642                     .text:	section	.text,new
2643  0000               _ADC1_GetAWDChannelStatus:
2645  0000 88            	push	a
2646  0001 88            	push	a
2647       00000001      OFST:	set	1
2650                     ; 528     uint8_t status = 0;
2652                     ; 531     assert_param(IS_ADC1_CHANNEL_OK(Channel));
2654  0002 4d            	tnz	a
2655  0003 2728          	jreq	L623
2656  0005 a101          	cp	a,#1
2657  0007 2724          	jreq	L623
2658  0009 a102          	cp	a,#2
2659  000b 2720          	jreq	L623
2660  000d a103          	cp	a,#3
2661  000f 271c          	jreq	L623
2662  0011 a104          	cp	a,#4
2663  0013 2718          	jreq	L623
2664  0015 a105          	cp	a,#5
2665  0017 2714          	jreq	L623
2666  0019 a106          	cp	a,#6
2667  001b 2710          	jreq	L623
2668  001d a107          	cp	a,#7
2669  001f 270c          	jreq	L623
2670  0021 a108          	cp	a,#8
2671  0023 2708          	jreq	L623
2672  0025 a10c          	cp	a,#12
2673  0027 2704          	jreq	L623
2674  0029 a109          	cp	a,#9
2675  002b 2603          	jrne	L423
2676  002d               L623:
2677  002d 4f            	clr	a
2678  002e 2010          	jra	L033
2679  0030               L423:
2680  0030 ae0213        	ldw	x,#531
2681  0033 89            	pushw	x
2682  0034 ae0000        	ldw	x,#0
2683  0037 89            	pushw	x
2684  0038 ae0000        	ldw	x,#L542
2685  003b cd0000        	call	_assert_failed
2687  003e 5b04          	addw	sp,#4
2688  0040               L033:
2689                     ; 533     if (Channel < (uint8_t)8)
2691  0040 7b02          	ld	a,(OFST+1,sp)
2692  0042 a108          	cp	a,#8
2693  0044 2414          	jruge	L567
2694                     ; 535         status = (uint8_t)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << Channel));
2696  0046 7b02          	ld	a,(OFST+1,sp)
2697  0048 5f            	clrw	x
2698  0049 97            	ld	xl,a
2699  004a a601          	ld	a,#1
2700  004c 5d            	tnzw	x
2701  004d 2704          	jreq	L233
2702  004f               L433:
2703  004f 48            	sll	a
2704  0050 5a            	decw	x
2705  0051 26fc          	jrne	L433
2706  0053               L233:
2707  0053 c4540d        	and	a,21517
2708  0056 6b01          	ld	(OFST+0,sp),a
2711  0058 2014          	jra	L767
2712  005a               L567:
2713                     ; 539         status = (uint8_t)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (Channel - (uint8_t)8)));
2715  005a 7b02          	ld	a,(OFST+1,sp)
2716  005c a008          	sub	a,#8
2717  005e 5f            	clrw	x
2718  005f 97            	ld	xl,a
2719  0060 a601          	ld	a,#1
2720  0062 5d            	tnzw	x
2721  0063 2704          	jreq	L633
2722  0065               L043:
2723  0065 48            	sll	a
2724  0066 5a            	decw	x
2725  0067 26fc          	jrne	L043
2726  0069               L633:
2727  0069 c4540c        	and	a,21516
2728  006c 6b01          	ld	(OFST+0,sp),a
2730  006e               L767:
2731                     ; 542     return ((FlagStatus)status);
2733  006e 7b01          	ld	a,(OFST+0,sp)
2736  0070 85            	popw	x
2737  0071 81            	ret
2892                     ; 551 FlagStatus ADC1_GetFlagStatus(ADC1_Flag_TypeDef Flag)
2892                     ; 552 {
2893                     .text:	section	.text,new
2894  0000               _ADC1_GetFlagStatus:
2896  0000 88            	push	a
2897  0001 88            	push	a
2898       00000001      OFST:	set	1
2901                     ; 553     uint8_t flagstatus = 0;
2903                     ; 554     uint8_t temp = 0;
2905                     ; 557     assert_param(IS_ADC1_FLAG_OK(Flag));
2907  0002 a180          	cp	a,#128
2908  0004 2730          	jreq	L643
2909  0006 a141          	cp	a,#65
2910  0008 272c          	jreq	L643
2911  000a a140          	cp	a,#64
2912  000c 2728          	jreq	L643
2913  000e a110          	cp	a,#16
2914  0010 2724          	jreq	L643
2915  0012 a111          	cp	a,#17
2916  0014 2720          	jreq	L643
2917  0016 a112          	cp	a,#18
2918  0018 271c          	jreq	L643
2919  001a a113          	cp	a,#19
2920  001c 2718          	jreq	L643
2921  001e a114          	cp	a,#20
2922  0020 2714          	jreq	L643
2923  0022 a115          	cp	a,#21
2924  0024 2710          	jreq	L643
2925  0026 a116          	cp	a,#22
2926  0028 270c          	jreq	L643
2927  002a a117          	cp	a,#23
2928  002c 2708          	jreq	L643
2929  002e a118          	cp	a,#24
2930  0030 2704          	jreq	L643
2931  0032 a119          	cp	a,#25
2932  0034 2603          	jrne	L443
2933  0036               L643:
2934  0036 4f            	clr	a
2935  0037 2010          	jra	L053
2936  0039               L443:
2937  0039 ae022d        	ldw	x,#557
2938  003c 89            	pushw	x
2939  003d ae0000        	ldw	x,#0
2940  0040 89            	pushw	x
2941  0041 ae0000        	ldw	x,#L542
2942  0044 cd0000        	call	_assert_failed
2944  0047 5b04          	addw	sp,#4
2945  0049               L053:
2946                     ; 559     if ((Flag & 0x0F) == 0x01)
2948  0049 7b02          	ld	a,(OFST+1,sp)
2949  004b a40f          	and	a,#15
2950  004d a101          	cp	a,#1
2951  004f 2609          	jrne	L3501
2952                     ; 562         flagstatus = (uint8_t)(ADC1->CR3 & ADC1_CR3_OVR);
2954  0051 c65403        	ld	a,21507
2955  0054 a440          	and	a,#64
2956  0056 6b01          	ld	(OFST+0,sp),a
2959  0058 2045          	jra	L5501
2960  005a               L3501:
2961                     ; 564     else if ((Flag & 0xF0) == 0x10)
2963  005a 7b02          	ld	a,(OFST+1,sp)
2964  005c a4f0          	and	a,#240
2965  005e a110          	cp	a,#16
2966  0060 2636          	jrne	L7501
2967                     ; 567         temp = (uint8_t)(Flag & (uint8_t)0x0F);
2969  0062 7b02          	ld	a,(OFST+1,sp)
2970  0064 a40f          	and	a,#15
2971  0066 6b01          	ld	(OFST+0,sp),a
2973                     ; 568         if (temp < 8)
2975  0068 7b01          	ld	a,(OFST+0,sp)
2976  006a a108          	cp	a,#8
2977  006c 2414          	jruge	L1601
2978                     ; 570             flagstatus = (uint8_t)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << temp));
2980  006e 7b01          	ld	a,(OFST+0,sp)
2981  0070 5f            	clrw	x
2982  0071 97            	ld	xl,a
2983  0072 a601          	ld	a,#1
2984  0074 5d            	tnzw	x
2985  0075 2704          	jreq	L253
2986  0077               L453:
2987  0077 48            	sll	a
2988  0078 5a            	decw	x
2989  0079 26fc          	jrne	L453
2990  007b               L253:
2991  007b c4540d        	and	a,21517
2992  007e 6b01          	ld	(OFST+0,sp),a
2995  0080 201d          	jra	L5501
2996  0082               L1601:
2997                     ; 574             flagstatus = (uint8_t)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (temp - 8)));
2999  0082 7b01          	ld	a,(OFST+0,sp)
3000  0084 a008          	sub	a,#8
3001  0086 5f            	clrw	x
3002  0087 97            	ld	xl,a
3003  0088 a601          	ld	a,#1
3004  008a 5d            	tnzw	x
3005  008b 2704          	jreq	L653
3006  008d               L063:
3007  008d 48            	sll	a
3008  008e 5a            	decw	x
3009  008f 26fc          	jrne	L063
3010  0091               L653:
3011  0091 c4540c        	and	a,21516
3012  0094 6b01          	ld	(OFST+0,sp),a
3014  0096 2007          	jra	L5501
3015  0098               L7501:
3016                     ; 579         flagstatus = (uint8_t)(ADC1->CSR & Flag);
3018  0098 c65400        	ld	a,21504
3019  009b 1402          	and	a,(OFST+1,sp)
3020  009d 6b01          	ld	(OFST+0,sp),a
3022  009f               L5501:
3023                     ; 581     return ((FlagStatus)flagstatus);
3025  009f 7b01          	ld	a,(OFST+0,sp)
3028  00a1 85            	popw	x
3029  00a2 81            	ret
3072                     ; 591 void ADC1_ClearFlag(ADC1_Flag_TypeDef Flag)
3072                     ; 592 {
3073                     .text:	section	.text,new
3074  0000               _ADC1_ClearFlag:
3076  0000 88            	push	a
3077  0001 88            	push	a
3078       00000001      OFST:	set	1
3081                     ; 593     uint8_t temp = 0;
3083                     ; 596     assert_param(IS_ADC1_FLAG_OK(Flag));
3085  0002 a180          	cp	a,#128
3086  0004 2730          	jreq	L663
3087  0006 a141          	cp	a,#65
3088  0008 272c          	jreq	L663
3089  000a a140          	cp	a,#64
3090  000c 2728          	jreq	L663
3091  000e a110          	cp	a,#16
3092  0010 2724          	jreq	L663
3093  0012 a111          	cp	a,#17
3094  0014 2720          	jreq	L663
3095  0016 a112          	cp	a,#18
3096  0018 271c          	jreq	L663
3097  001a a113          	cp	a,#19
3098  001c 2718          	jreq	L663
3099  001e a114          	cp	a,#20
3100  0020 2714          	jreq	L663
3101  0022 a115          	cp	a,#21
3102  0024 2710          	jreq	L663
3103  0026 a116          	cp	a,#22
3104  0028 270c          	jreq	L663
3105  002a a117          	cp	a,#23
3106  002c 2708          	jreq	L663
3107  002e a118          	cp	a,#24
3108  0030 2704          	jreq	L663
3109  0032 a119          	cp	a,#25
3110  0034 2603          	jrne	L463
3111  0036               L663:
3112  0036 4f            	clr	a
3113  0037 2010          	jra	L073
3114  0039               L463:
3115  0039 ae0254        	ldw	x,#596
3116  003c 89            	pushw	x
3117  003d ae0000        	ldw	x,#0
3118  0040 89            	pushw	x
3119  0041 ae0000        	ldw	x,#L542
3120  0044 cd0000        	call	_assert_failed
3122  0047 5b04          	addw	sp,#4
3123  0049               L073:
3124                     ; 598     if ((Flag & 0x0F) == 0x01)
3126  0049 7b02          	ld	a,(OFST+1,sp)
3127  004b a40f          	and	a,#15
3128  004d a101          	cp	a,#1
3129  004f 2606          	jrne	L7011
3130                     ; 601         ADC1->CR3 &= (uint8_t)(~ADC1_CR3_OVR);
3132  0051 721d5403      	bres	21507,#6
3134  0055 204b          	jra	L1111
3135  0057               L7011:
3136                     ; 603     else if ((Flag & 0xF0) == 0x10)
3138  0057 7b02          	ld	a,(OFST+1,sp)
3139  0059 a4f0          	and	a,#240
3140  005b a110          	cp	a,#16
3141  005d 263a          	jrne	L3111
3142                     ; 606         temp = (uint8_t)(Flag & (uint8_t)0x0F);
3144  005f 7b02          	ld	a,(OFST+1,sp)
3145  0061 a40f          	and	a,#15
3146  0063 6b01          	ld	(OFST+0,sp),a
3148                     ; 607         if (temp < 8)
3150  0065 7b01          	ld	a,(OFST+0,sp)
3151  0067 a108          	cp	a,#8
3152  0069 2416          	jruge	L5111
3153                     ; 609             ADC1->AWSRL &= (uint8_t)~(uint8_t)((uint8_t)1 << temp);
3155  006b 7b01          	ld	a,(OFST+0,sp)
3156  006d 5f            	clrw	x
3157  006e 97            	ld	xl,a
3158  006f a601          	ld	a,#1
3159  0071 5d            	tnzw	x
3160  0072 2704          	jreq	L273
3161  0074               L473:
3162  0074 48            	sll	a
3163  0075 5a            	decw	x
3164  0076 26fc          	jrne	L473
3165  0078               L273:
3166  0078 43            	cpl	a
3167  0079 c4540d        	and	a,21517
3168  007c c7540d        	ld	21517,a
3170  007f 2021          	jra	L1111
3171  0081               L5111:
3172                     ; 613             ADC1->AWSRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (temp - 8));
3174  0081 7b01          	ld	a,(OFST+0,sp)
3175  0083 a008          	sub	a,#8
3176  0085 5f            	clrw	x
3177  0086 97            	ld	xl,a
3178  0087 a601          	ld	a,#1
3179  0089 5d            	tnzw	x
3180  008a 2704          	jreq	L673
3181  008c               L004:
3182  008c 48            	sll	a
3183  008d 5a            	decw	x
3184  008e 26fc          	jrne	L004
3185  0090               L673:
3186  0090 43            	cpl	a
3187  0091 c4540c        	and	a,21516
3188  0094 c7540c        	ld	21516,a
3189  0097 2009          	jra	L1111
3190  0099               L3111:
3191                     ; 618         ADC1->CSR &= (uint8_t) (~Flag);
3193  0099 7b02          	ld	a,(OFST+1,sp)
3194  009b 43            	cpl	a
3195  009c c45400        	and	a,21504
3196  009f c75400        	ld	21504,a
3197  00a2               L1111:
3198                     ; 620 }
3201  00a2 85            	popw	x
3202  00a3 81            	ret
3256                     ; 640 ITStatus ADC1_GetITStatus(ADC1_IT_TypeDef ITPendingBit)
3256                     ; 641 {
3257                     .text:	section	.text,new
3258  0000               _ADC1_GetITStatus:
3260  0000 89            	pushw	x
3261  0001 88            	push	a
3262       00000001      OFST:	set	1
3265                     ; 642     ITStatus itstatus = RESET;
3267                     ; 643     uint8_t temp = 0;
3269                     ; 646     assert_param(IS_ADC1_ITPENDINGBIT_OK(ITPendingBit));
3271  0002 a30080        	cpw	x,#128
3272  0005 273c          	jreq	L604
3273  0007 a30140        	cpw	x,#320
3274  000a 2737          	jreq	L604
3275  000c a30110        	cpw	x,#272
3276  000f 2732          	jreq	L604
3277  0011 a30111        	cpw	x,#273
3278  0014 272d          	jreq	L604
3279  0016 a30112        	cpw	x,#274
3280  0019 2728          	jreq	L604
3281  001b a30113        	cpw	x,#275
3282  001e 2723          	jreq	L604
3283  0020 a30114        	cpw	x,#276
3284  0023 271e          	jreq	L604
3285  0025 a30115        	cpw	x,#277
3286  0028 2719          	jreq	L604
3287  002a a30116        	cpw	x,#278
3288  002d 2714          	jreq	L604
3289  002f a30117        	cpw	x,#279
3290  0032 270f          	jreq	L604
3291  0034 a30118        	cpw	x,#280
3292  0037 270a          	jreq	L604
3293  0039 a3011c        	cpw	x,#284
3294  003c 2705          	jreq	L604
3295  003e a30119        	cpw	x,#281
3296  0041 2603          	jrne	L404
3297  0043               L604:
3298  0043 4f            	clr	a
3299  0044 2010          	jra	L014
3300  0046               L404:
3301  0046 ae0286        	ldw	x,#646
3302  0049 89            	pushw	x
3303  004a ae0000        	ldw	x,#0
3304  004d 89            	pushw	x
3305  004e ae0000        	ldw	x,#L542
3306  0051 cd0000        	call	_assert_failed
3308  0054 5b04          	addw	sp,#4
3309  0056               L014:
3310                     ; 648     if (((uint16_t)ITPendingBit & 0xF0) == 0x10)
3312  0056 7b02          	ld	a,(OFST+1,sp)
3313  0058 97            	ld	xl,a
3314  0059 7b03          	ld	a,(OFST+2,sp)
3315  005b a4f0          	and	a,#240
3316  005d 5f            	clrw	x
3317  005e 02            	rlwa	x,a
3318  005f a30010        	cpw	x,#16
3319  0062 2636          	jrne	L7411
3320                     ; 651         temp = (uint8_t)((uint16_t)ITPendingBit & 0x0F);
3322  0064 7b03          	ld	a,(OFST+2,sp)
3323  0066 a40f          	and	a,#15
3324  0068 6b01          	ld	(OFST+0,sp),a
3326                     ; 652         if (temp < 8)
3328  006a 7b01          	ld	a,(OFST+0,sp)
3329  006c a108          	cp	a,#8
3330  006e 2414          	jruge	L1511
3331                     ; 654             itstatus = (ITStatus)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << temp));
3333  0070 7b01          	ld	a,(OFST+0,sp)
3334  0072 5f            	clrw	x
3335  0073 97            	ld	xl,a
3336  0074 a601          	ld	a,#1
3337  0076 5d            	tnzw	x
3338  0077 2704          	jreq	L214
3339  0079               L414:
3340  0079 48            	sll	a
3341  007a 5a            	decw	x
3342  007b 26fc          	jrne	L414
3343  007d               L214:
3344  007d c4540d        	and	a,21517
3345  0080 6b01          	ld	(OFST+0,sp),a
3348  0082 201d          	jra	L5511
3349  0084               L1511:
3350                     ; 658             itstatus = (ITStatus)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (temp - 8)));
3352  0084 7b01          	ld	a,(OFST+0,sp)
3353  0086 a008          	sub	a,#8
3354  0088 5f            	clrw	x
3355  0089 97            	ld	xl,a
3356  008a a601          	ld	a,#1
3357  008c 5d            	tnzw	x
3358  008d 2704          	jreq	L614
3359  008f               L024:
3360  008f 48            	sll	a
3361  0090 5a            	decw	x
3362  0091 26fc          	jrne	L024
3363  0093               L614:
3364  0093 c4540c        	and	a,21516
3365  0096 6b01          	ld	(OFST+0,sp),a
3367  0098 2007          	jra	L5511
3368  009a               L7411:
3369                     ; 663         itstatus = (ITStatus)(ADC1->CSR & (uint8_t)ITPendingBit);
3371  009a c65400        	ld	a,21504
3372  009d 1403          	and	a,(OFST+2,sp)
3373  009f 6b01          	ld	(OFST+0,sp),a
3375  00a1               L5511:
3376                     ; 665     return ((ITStatus)itstatus);
3378  00a1 7b01          	ld	a,(OFST+0,sp)
3381  00a3 5b03          	addw	sp,#3
3382  00a5 81            	ret
3426                     ; 687 void ADC1_ClearITPendingBit(ADC1_IT_TypeDef ITPendingBit)
3426                     ; 688 {
3427                     .text:	section	.text,new
3428  0000               _ADC1_ClearITPendingBit:
3430  0000 89            	pushw	x
3431  0001 88            	push	a
3432       00000001      OFST:	set	1
3435                     ; 689     uint8_t temp = 0;
3437                     ; 692     assert_param(IS_ADC1_ITPENDINGBIT_OK(ITPendingBit));
3439  0002 a30080        	cpw	x,#128
3440  0005 273c          	jreq	L624
3441  0007 a30140        	cpw	x,#320
3442  000a 2737          	jreq	L624
3443  000c a30110        	cpw	x,#272
3444  000f 2732          	jreq	L624
3445  0011 a30111        	cpw	x,#273
3446  0014 272d          	jreq	L624
3447  0016 a30112        	cpw	x,#274
3448  0019 2728          	jreq	L624
3449  001b a30113        	cpw	x,#275
3450  001e 2723          	jreq	L624
3451  0020 a30114        	cpw	x,#276
3452  0023 271e          	jreq	L624
3453  0025 a30115        	cpw	x,#277
3454  0028 2719          	jreq	L624
3455  002a a30116        	cpw	x,#278
3456  002d 2714          	jreq	L624
3457  002f a30117        	cpw	x,#279
3458  0032 270f          	jreq	L624
3459  0034 a30118        	cpw	x,#280
3460  0037 270a          	jreq	L624
3461  0039 a3011c        	cpw	x,#284
3462  003c 2705          	jreq	L624
3463  003e a30119        	cpw	x,#281
3464  0041 2603          	jrne	L424
3465  0043               L624:
3466  0043 4f            	clr	a
3467  0044 2010          	jra	L034
3468  0046               L424:
3469  0046 ae02b4        	ldw	x,#692
3470  0049 89            	pushw	x
3471  004a ae0000        	ldw	x,#0
3472  004d 89            	pushw	x
3473  004e ae0000        	ldw	x,#L542
3474  0051 cd0000        	call	_assert_failed
3476  0054 5b04          	addw	sp,#4
3477  0056               L034:
3478                     ; 694     if (((uint16_t)ITPendingBit & 0xF0) == 0x10)
3480  0056 7b02          	ld	a,(OFST+1,sp)
3481  0058 97            	ld	xl,a
3482  0059 7b03          	ld	a,(OFST+2,sp)
3483  005b a4f0          	and	a,#240
3484  005d 5f            	clrw	x
3485  005e 02            	rlwa	x,a
3486  005f a30010        	cpw	x,#16
3487  0062 263a          	jrne	L7711
3488                     ; 697         temp = (uint8_t)((uint16_t)ITPendingBit & 0x0F);
3490  0064 7b03          	ld	a,(OFST+2,sp)
3491  0066 a40f          	and	a,#15
3492  0068 6b01          	ld	(OFST+0,sp),a
3494                     ; 698         if (temp < 8)
3496  006a 7b01          	ld	a,(OFST+0,sp)
3497  006c a108          	cp	a,#8
3498  006e 2416          	jruge	L1021
3499                     ; 700             ADC1->AWSRL &= (uint8_t)~(uint8_t)((uint8_t)1 << temp);
3501  0070 7b01          	ld	a,(OFST+0,sp)
3502  0072 5f            	clrw	x
3503  0073 97            	ld	xl,a
3504  0074 a601          	ld	a,#1
3505  0076 5d            	tnzw	x
3506  0077 2704          	jreq	L234
3507  0079               L434:
3508  0079 48            	sll	a
3509  007a 5a            	decw	x
3510  007b 26fc          	jrne	L434
3511  007d               L234:
3512  007d 43            	cpl	a
3513  007e c4540d        	and	a,21517
3514  0081 c7540d        	ld	21517,a
3516  0084 2021          	jra	L5021
3517  0086               L1021:
3518                     ; 704             ADC1->AWSRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (temp - 8));
3520  0086 7b01          	ld	a,(OFST+0,sp)
3521  0088 a008          	sub	a,#8
3522  008a 5f            	clrw	x
3523  008b 97            	ld	xl,a
3524  008c a601          	ld	a,#1
3525  008e 5d            	tnzw	x
3526  008f 2704          	jreq	L634
3527  0091               L044:
3528  0091 48            	sll	a
3529  0092 5a            	decw	x
3530  0093 26fc          	jrne	L044
3531  0095               L634:
3532  0095 43            	cpl	a
3533  0096 c4540c        	and	a,21516
3534  0099 c7540c        	ld	21516,a
3535  009c 2009          	jra	L5021
3536  009e               L7711:
3537                     ; 709         ADC1->CSR &= (uint8_t)((uint16_t)~(uint16_t)ITPendingBit);
3539  009e 7b03          	ld	a,(OFST+2,sp)
3540  00a0 43            	cpl	a
3541  00a1 c45400        	and	a,21504
3542  00a4 c75400        	ld	21504,a
3543  00a7               L5021:
3544                     ; 711 }
3547  00a7 5b03          	addw	sp,#3
3548  00a9 81            	ret
3561                     	xdef	_ADC1_ClearITPendingBit
3562                     	xdef	_ADC1_GetITStatus
3563                     	xdef	_ADC1_ClearFlag
3564                     	xdef	_ADC1_GetFlagStatus
3565                     	xdef	_ADC1_GetAWDChannelStatus
3566                     	xdef	_ADC1_GetBufferValue
3567                     	xdef	_ADC1_SetLowThreshold
3568                     	xdef	_ADC1_SetHighThreshold
3569                     	xdef	_ADC1_GetConversionValue
3570                     	xdef	_ADC1_StartConversion
3571                     	xdef	_ADC1_AWDChannelConfig
3572                     	xdef	_ADC1_ExternalTriggerConfig
3573                     	xdef	_ADC1_ConversionConfig
3574                     	xdef	_ADC1_SchmittTriggerConfig
3575                     	xdef	_ADC1_PrescalerConfig
3576                     	xdef	_ADC1_ITConfig
3577                     	xdef	_ADC1_DataBufferCmd
3578                     	xdef	_ADC1_ScanModeCmd
3579                     	xdef	_ADC1_Cmd
3580                     	xdef	_ADC1_Init
3581                     	xdef	_ADC1_DeInit
3582                     	xref	_assert_failed
3583                     .const:	section	.text
3584  0000               L542:
3585  0000 7372635c7374  	dc.b	"src\stm8s_adc1.c",0
3605                     	end

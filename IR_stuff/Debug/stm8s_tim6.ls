   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.13.3 - 22 May 2025
   3                     ; Generator (Limited) V4.6.6 - 07 Jan 2026
  44                     ; 51 void TIM6_DeInit(void)
  44                     ; 52 {
  46                     .text:	section	.text,new
  47  0000               _TIM6_DeInit:
  51                     ; 53     TIM6->CR1 	= TIM6_CR1_RESET_VALUE;
  53  0000 725f5340      	clr	21312
  54                     ; 54     TIM6->CR2 	= TIM6_CR2_RESET_VALUE;
  56  0004 725f5341      	clr	21313
  57                     ; 55     TIM6->SMCR 	= TIM6_SMCR_RESET_VALUE;
  59  0008 725f5342      	clr	21314
  60                     ; 56     TIM6->IER 	= TIM6_IER_RESET_VALUE;
  62  000c 725f5343      	clr	21315
  63                     ; 57     TIM6->CNTR 	= TIM6_CNTR_RESET_VALUE;
  65  0010 725f5346      	clr	21318
  66                     ; 58     TIM6->PSCR	= TIM6_PSCR_RESET_VALUE;
  68  0014 725f5347      	clr	21319
  69                     ; 59     TIM6->ARR 	= TIM6_ARR_RESET_VALUE;
  71  0018 35ff5348      	mov	21320,#255
  72                     ; 60     TIM6->SR1 	= TIM6_SR1_RESET_VALUE;
  74  001c 725f5344      	clr	21316
  75                     ; 61 }
  78  0020 81            	ret
 183                     ; 70 void TIM6_TimeBaseInit(TIM6_Prescaler_TypeDef TIM6_Prescaler,
 183                     ; 71                        uint8_t TIM6_Period)
 183                     ; 72 {
 184                     .text:	section	.text,new
 185  0000               _TIM6_TimeBaseInit:
 187  0000 89            	pushw	x
 188       00000000      OFST:	set	0
 191                     ; 74     assert_param(IS_TIM6_PRESCALER_OK(TIM6_Prescaler));
 193  0001 9e            	ld	a,xh
 194  0002 4d            	tnz	a
 195  0003 2723          	jreq	L21
 196  0005 9e            	ld	a,xh
 197  0006 a101          	cp	a,#1
 198  0008 271e          	jreq	L21
 199  000a 9e            	ld	a,xh
 200  000b a102          	cp	a,#2
 201  000d 2719          	jreq	L21
 202  000f 9e            	ld	a,xh
 203  0010 a103          	cp	a,#3
 204  0012 2714          	jreq	L21
 205  0014 9e            	ld	a,xh
 206  0015 a104          	cp	a,#4
 207  0017 270f          	jreq	L21
 208  0019 9e            	ld	a,xh
 209  001a a105          	cp	a,#5
 210  001c 270a          	jreq	L21
 211  001e 9e            	ld	a,xh
 212  001f a106          	cp	a,#6
 213  0021 2705          	jreq	L21
 214  0023 9e            	ld	a,xh
 215  0024 a107          	cp	a,#7
 216  0026 2603          	jrne	L01
 217  0028               L21:
 218  0028 4f            	clr	a
 219  0029 2010          	jra	L41
 220  002b               L01:
 221  002b ae004a        	ldw	x,#74
 222  002e 89            	pushw	x
 223  002f ae0000        	ldw	x,#0
 224  0032 89            	pushw	x
 225  0033 ae0000        	ldw	x,#L56
 226  0036 cd0000        	call	_assert_failed
 228  0039 5b04          	addw	sp,#4
 229  003b               L41:
 230                     ; 76     TIM6->ARR = (uint8_t)(TIM6_Period);
 232  003b 7b02          	ld	a,(OFST+2,sp)
 233  003d c75348        	ld	21320,a
 234                     ; 78     TIM6->PSCR = (uint8_t)(TIM6_Prescaler);
 236  0040 7b01          	ld	a,(OFST+1,sp)
 237  0042 c75347        	ld	21319,a
 238                     ; 79 }
 241  0045 85            	popw	x
 242  0046 81            	ret
 298                     ; 87 void TIM6_Cmd(FunctionalState NewState)
 298                     ; 88 {
 299                     .text:	section	.text,new
 300  0000               _TIM6_Cmd:
 302  0000 88            	push	a
 303       00000000      OFST:	set	0
 306                     ; 90     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 308  0001 4d            	tnz	a
 309  0002 2704          	jreq	L22
 310  0004 a101          	cp	a,#1
 311  0006 2603          	jrne	L02
 312  0008               L22:
 313  0008 4f            	clr	a
 314  0009 2010          	jra	L42
 315  000b               L02:
 316  000b ae005a        	ldw	x,#90
 317  000e 89            	pushw	x
 318  000f ae0000        	ldw	x,#0
 319  0012 89            	pushw	x
 320  0013 ae0000        	ldw	x,#L56
 321  0016 cd0000        	call	_assert_failed
 323  0019 5b04          	addw	sp,#4
 324  001b               L42:
 325                     ; 93     if (NewState == ENABLE)
 327  001b 7b01          	ld	a,(OFST+1,sp)
 328  001d a101          	cp	a,#1
 329  001f 2606          	jrne	L511
 330                     ; 95         TIM6->CR1 |= TIM6_CR1_CEN ;
 332  0021 72105340      	bset	21312,#0
 334  0025 2004          	jra	L711
 335  0027               L511:
 336                     ; 99         TIM6->CR1 &= (uint8_t)(~TIM6_CR1_CEN) ;
 338  0027 72115340      	bres	21312,#0
 339  002b               L711:
 340                     ; 101 }
 343  002b 84            	pop	a
 344  002c 81            	ret
 381                     ; 109 void TIM6_UpdateDisableConfig(FunctionalState NewState)
 381                     ; 110 {
 382                     .text:	section	.text,new
 383  0000               _TIM6_UpdateDisableConfig:
 385  0000 88            	push	a
 386       00000000      OFST:	set	0
 389                     ; 112     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 391  0001 4d            	tnz	a
 392  0002 2704          	jreq	L23
 393  0004 a101          	cp	a,#1
 394  0006 2603          	jrne	L03
 395  0008               L23:
 396  0008 4f            	clr	a
 397  0009 2010          	jra	L43
 398  000b               L03:
 399  000b ae0070        	ldw	x,#112
 400  000e 89            	pushw	x
 401  000f ae0000        	ldw	x,#0
 402  0012 89            	pushw	x
 403  0013 ae0000        	ldw	x,#L56
 404  0016 cd0000        	call	_assert_failed
 406  0019 5b04          	addw	sp,#4
 407  001b               L43:
 408                     ; 115     if (NewState == ENABLE)
 410  001b 7b01          	ld	a,(OFST+1,sp)
 411  001d a101          	cp	a,#1
 412  001f 2606          	jrne	L731
 413                     ; 117         TIM6->CR1 |= TIM6_CR1_UDIS ;
 415  0021 72125340      	bset	21312,#1
 417  0025 2004          	jra	L141
 418  0027               L731:
 419                     ; 121         TIM6->CR1 &= (uint8_t)(~TIM6_CR1_UDIS) ;
 421  0027 72135340      	bres	21312,#1
 422  002b               L141:
 423                     ; 123 }
 426  002b 84            	pop	a
 427  002c 81            	ret
 486                     ; 131 void TIM6_UpdateRequestConfig(TIM6_UpdateSource_TypeDef TIM6_UpdateSource)
 486                     ; 132 {
 487                     .text:	section	.text,new
 488  0000               _TIM6_UpdateRequestConfig:
 490  0000 88            	push	a
 491       00000000      OFST:	set	0
 494                     ; 134     assert_param(IS_TIM6_UPDATE_SOURCE_OK(TIM6_UpdateSource));
 496  0001 4d            	tnz	a
 497  0002 2704          	jreq	L24
 498  0004 a101          	cp	a,#1
 499  0006 2603          	jrne	L04
 500  0008               L24:
 501  0008 4f            	clr	a
 502  0009 2010          	jra	L44
 503  000b               L04:
 504  000b ae0086        	ldw	x,#134
 505  000e 89            	pushw	x
 506  000f ae0000        	ldw	x,#0
 507  0012 89            	pushw	x
 508  0013 ae0000        	ldw	x,#L56
 509  0016 cd0000        	call	_assert_failed
 511  0019 5b04          	addw	sp,#4
 512  001b               L44:
 513                     ; 137     if (TIM6_UpdateSource == TIM6_UPDATESOURCE_REGULAR)
 515  001b 7b01          	ld	a,(OFST+1,sp)
 516  001d a101          	cp	a,#1
 517  001f 2606          	jrne	L171
 518                     ; 139         TIM6->CR1 |= TIM6_CR1_URS ;
 520  0021 72145340      	bset	21312,#2
 522  0025 2004          	jra	L371
 523  0027               L171:
 524                     ; 143         TIM6->CR1 &= (uint8_t)(~TIM6_CR1_URS) ;
 526  0027 72155340      	bres	21312,#2
 527  002b               L371:
 528                     ; 145 }
 531  002b 84            	pop	a
 532  002c 81            	ret
 590                     ; 153 void TIM6_SelectOnePulseMode(TIM6_OPMode_TypeDef TIM6_OPMode)
 590                     ; 154 {
 591                     .text:	section	.text,new
 592  0000               _TIM6_SelectOnePulseMode:
 594  0000 88            	push	a
 595       00000000      OFST:	set	0
 598                     ; 156     assert_param(IS_TIM6_OPM_MODE_OK(TIM6_OPMode));
 600  0001 a101          	cp	a,#1
 601  0003 2703          	jreq	L25
 602  0005 4d            	tnz	a
 603  0006 2603          	jrne	L05
 604  0008               L25:
 605  0008 4f            	clr	a
 606  0009 2010          	jra	L45
 607  000b               L05:
 608  000b ae009c        	ldw	x,#156
 609  000e 89            	pushw	x
 610  000f ae0000        	ldw	x,#0
 611  0012 89            	pushw	x
 612  0013 ae0000        	ldw	x,#L56
 613  0016 cd0000        	call	_assert_failed
 615  0019 5b04          	addw	sp,#4
 616  001b               L45:
 617                     ; 159     if (TIM6_OPMode == TIM6_OPMODE_SINGLE)
 619  001b 7b01          	ld	a,(OFST+1,sp)
 620  001d a101          	cp	a,#1
 621  001f 2606          	jrne	L322
 622                     ; 161         TIM6->CR1 |= TIM6_CR1_OPM ;
 624  0021 72165340      	bset	21312,#3
 626  0025 2004          	jra	L522
 627  0027               L322:
 628                     ; 165         TIM6->CR1 &= (uint8_t)(~TIM6_CR1_OPM) ;
 630  0027 72175340      	bres	21312,#3
 631  002b               L522:
 632                     ; 168 }
 635  002b 84            	pop	a
 636  002c 81            	ret
 705                     ; 178 void TIM6_PrescalerConfig(TIM6_Prescaler_TypeDef Prescaler,
 705                     ; 179                           TIM6_PSCReloadMode_TypeDef TIM6_PSCReloadMode)
 705                     ; 180 {
 706                     .text:	section	.text,new
 707  0000               _TIM6_PrescalerConfig:
 709  0000 89            	pushw	x
 710       00000000      OFST:	set	0
 713                     ; 182     assert_param(IS_TIM6_PRESCALER_RELOAD_OK(TIM6_PSCReloadMode));
 715  0001 9f            	ld	a,xl
 716  0002 4d            	tnz	a
 717  0003 2705          	jreq	L26
 718  0005 9f            	ld	a,xl
 719  0006 a101          	cp	a,#1
 720  0008 2603          	jrne	L06
 721  000a               L26:
 722  000a 4f            	clr	a
 723  000b 2010          	jra	L46
 724  000d               L06:
 725  000d ae00b6        	ldw	x,#182
 726  0010 89            	pushw	x
 727  0011 ae0000        	ldw	x,#0
 728  0014 89            	pushw	x
 729  0015 ae0000        	ldw	x,#L56
 730  0018 cd0000        	call	_assert_failed
 732  001b 5b04          	addw	sp,#4
 733  001d               L46:
 734                     ; 183     assert_param(IS_TIM6_PRESCALER_OK(Prescaler));
 736  001d 0d01          	tnz	(OFST+1,sp)
 737  001f 272a          	jreq	L07
 738  0021 7b01          	ld	a,(OFST+1,sp)
 739  0023 a101          	cp	a,#1
 740  0025 2724          	jreq	L07
 741  0027 7b01          	ld	a,(OFST+1,sp)
 742  0029 a102          	cp	a,#2
 743  002b 271e          	jreq	L07
 744  002d 7b01          	ld	a,(OFST+1,sp)
 745  002f a103          	cp	a,#3
 746  0031 2718          	jreq	L07
 747  0033 7b01          	ld	a,(OFST+1,sp)
 748  0035 a104          	cp	a,#4
 749  0037 2712          	jreq	L07
 750  0039 7b01          	ld	a,(OFST+1,sp)
 751  003b a105          	cp	a,#5
 752  003d 270c          	jreq	L07
 753  003f 7b01          	ld	a,(OFST+1,sp)
 754  0041 a106          	cp	a,#6
 755  0043 2706          	jreq	L07
 756  0045 7b01          	ld	a,(OFST+1,sp)
 757  0047 a107          	cp	a,#7
 758  0049 2603          	jrne	L66
 759  004b               L07:
 760  004b 4f            	clr	a
 761  004c 2010          	jra	L27
 762  004e               L66:
 763  004e ae00b7        	ldw	x,#183
 764  0051 89            	pushw	x
 765  0052 ae0000        	ldw	x,#0
 766  0055 89            	pushw	x
 767  0056 ae0000        	ldw	x,#L56
 768  0059 cd0000        	call	_assert_failed
 770  005c 5b04          	addw	sp,#4
 771  005e               L27:
 772                     ; 186     TIM6->PSCR = (uint8_t)Prescaler;
 774  005e 7b01          	ld	a,(OFST+1,sp)
 775  0060 c75347        	ld	21319,a
 776                     ; 189     if (TIM6_PSCReloadMode == TIM6_PSCRELOADMODE_IMMEDIATE)
 778  0063 7b02          	ld	a,(OFST+2,sp)
 779  0065 a101          	cp	a,#1
 780  0067 2606          	jrne	L162
 781                     ; 191         TIM6->EGR |= TIM6_EGR_UG ;
 783  0069 72105345      	bset	21317,#0
 785  006d 2004          	jra	L362
 786  006f               L162:
 787                     ; 195         TIM6->EGR &= (uint8_t)(~TIM6_EGR_UG) ;
 789  006f 72115345      	bres	21317,#0
 790  0073               L362:
 791                     ; 197 }
 794  0073 85            	popw	x
 795  0074 81            	ret
 832                     ; 205 void TIM6_ARRPreloadConfig(FunctionalState NewState)
 832                     ; 206 {
 833                     .text:	section	.text,new
 834  0000               _TIM6_ARRPreloadConfig:
 836  0000 88            	push	a
 837       00000000      OFST:	set	0
 840                     ; 208     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 842  0001 4d            	tnz	a
 843  0002 2704          	jreq	L001
 844  0004 a101          	cp	a,#1
 845  0006 2603          	jrne	L67
 846  0008               L001:
 847  0008 4f            	clr	a
 848  0009 2010          	jra	L201
 849  000b               L67:
 850  000b ae00d0        	ldw	x,#208
 851  000e 89            	pushw	x
 852  000f ae0000        	ldw	x,#0
 853  0012 89            	pushw	x
 854  0013 ae0000        	ldw	x,#L56
 855  0016 cd0000        	call	_assert_failed
 857  0019 5b04          	addw	sp,#4
 858  001b               L201:
 859                     ; 211     if (NewState == ENABLE)
 861  001b 7b01          	ld	a,(OFST+1,sp)
 862  001d a101          	cp	a,#1
 863  001f 2606          	jrne	L303
 864                     ; 213         TIM6->CR1 |= TIM6_CR1_ARPE ;
 866  0021 721e5340      	bset	21312,#7
 868  0025 2004          	jra	L503
 869  0027               L303:
 870                     ; 217         TIM6->CR1 &= (uint8_t)(~TIM6_CR1_ARPE) ;
 872  0027 721f5340      	bres	21312,#7
 873  002b               L503:
 874                     ; 219 }
 877  002b 84            	pop	a
 878  002c 81            	ret
 910                     ; 227 void TIM6_SetCounter(uint8_t Counter)
 910                     ; 228 {
 911                     .text:	section	.text,new
 912  0000               _TIM6_SetCounter:
 916                     ; 230     TIM6->CNTR = (uint8_t)(Counter);
 918  0000 c75346        	ld	21318,a
 919                     ; 231 }
 922  0003 81            	ret
 954                     ; 239 void TIM6_SetAutoreload(uint8_t Autoreload)
 954                     ; 240 {
 955                     .text:	section	.text,new
 956  0000               _TIM6_SetAutoreload:
 960                     ; 243     TIM6->ARR = (uint8_t)(Autoreload);
 962  0000 c75348        	ld	21320,a
 963                     ; 244 }
 966  0003 81            	ret
 998                     ; 251 uint8_t TIM6_GetCounter(void)
 998                     ; 252 {
 999                     .text:	section	.text,new
1000  0000               _TIM6_GetCounter:
1002  0000 88            	push	a
1003       00000001      OFST:	set	1
1006                     ; 253     uint8_t tmpcntr=0;
1008                     ; 254     tmpcntr = TIM6->CNTR;
1010  0001 c65346        	ld	a,21318
1011  0004 6b01          	ld	(OFST+0,sp),a
1013                     ; 256     return ((uint8_t)tmpcntr);
1015  0006 7b01          	ld	a,(OFST+0,sp)
1018  0008 5b01          	addw	sp,#1
1019  000a 81            	ret
1043                     ; 264 TIM6_Prescaler_TypeDef TIM6_GetPrescaler(void)
1043                     ; 265 {
1044                     .text:	section	.text,new
1045  0000               _TIM6_GetPrescaler:
1049                     ; 267     return ((TIM6_Prescaler_TypeDef)TIM6->PSCR);
1051  0000 c65347        	ld	a,21319
1054  0003 81            	ret
1120                     ; 281 void TIM6_ITConfig(TIM6_IT_TypeDef TIM6_IT, FunctionalState NewState)
1120                     ; 282 {
1121                     .text:	section	.text,new
1122  0000               _TIM6_ITConfig:
1124  0000 89            	pushw	x
1125       00000000      OFST:	set	0
1128                     ; 284     assert_param(IS_TIM6_IT_OK(TIM6_IT));
1130  0001 9e            	ld	a,xh
1131  0002 4d            	tnz	a
1132  0003 2708          	jreq	L611
1133  0005 9e            	ld	a,xh
1134  0006 a5be          	bcp	a,#190
1135  0008 2603          	jrne	L611
1136  000a 4f            	clr	a
1137  000b 2010          	jra	L021
1138  000d               L611:
1139  000d ae011c        	ldw	x,#284
1140  0010 89            	pushw	x
1141  0011 ae0000        	ldw	x,#0
1142  0014 89            	pushw	x
1143  0015 ae0000        	ldw	x,#L56
1144  0018 cd0000        	call	_assert_failed
1146  001b 5b04          	addw	sp,#4
1147  001d               L021:
1148                     ; 285     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1150  001d 0d02          	tnz	(OFST+2,sp)
1151  001f 2706          	jreq	L421
1152  0021 7b02          	ld	a,(OFST+2,sp)
1153  0023 a101          	cp	a,#1
1154  0025 2603          	jrne	L221
1155  0027               L421:
1156  0027 4f            	clr	a
1157  0028 2010          	jra	L621
1158  002a               L221:
1159  002a ae011d        	ldw	x,#285
1160  002d 89            	pushw	x
1161  002e ae0000        	ldw	x,#0
1162  0031 89            	pushw	x
1163  0032 ae0000        	ldw	x,#L56
1164  0035 cd0000        	call	_assert_failed
1166  0038 5b04          	addw	sp,#4
1167  003a               L621:
1168                     ; 287     if (NewState == ENABLE)
1170  003a 7b02          	ld	a,(OFST+2,sp)
1171  003c a101          	cp	a,#1
1172  003e 260a          	jrne	L514
1173                     ; 290         TIM6->IER |= (uint8_t)TIM6_IT;
1175  0040 c65343        	ld	a,21315
1176  0043 1a01          	or	a,(OFST+1,sp)
1177  0045 c75343        	ld	21315,a
1179  0048 2009          	jra	L714
1180  004a               L514:
1181                     ; 295         TIM6->IER &= (uint8_t)(~(uint8_t)TIM6_IT);
1183  004a 7b01          	ld	a,(OFST+1,sp)
1184  004c 43            	cpl	a
1185  004d c45343        	and	a,21315
1186  0050 c75343        	ld	21315,a
1187  0053               L714:
1188                     ; 297 }
1191  0053 85            	popw	x
1192  0054 81            	ret
1248                     ; 305 void TIM6_ClearFlag(TIM6_FLAG_TypeDef TIM6_FLAG)
1248                     ; 306 {
1249                     .text:	section	.text,new
1250  0000               _TIM6_ClearFlag:
1252  0000 88            	push	a
1253       00000000      OFST:	set	0
1256                     ; 308     assert_param(IS_TIM6_CLEAR_FLAG_OK((uint8_t)TIM6_FLAG));
1258  0001 a5be          	bcp	a,#190
1259  0003 2607          	jrne	L231
1260  0005 0d01          	tnz	(OFST+1,sp)
1261  0007 2703          	jreq	L231
1262  0009 4f            	clr	a
1263  000a 2010          	jra	L431
1264  000c               L231:
1265  000c ae0134        	ldw	x,#308
1266  000f 89            	pushw	x
1267  0010 ae0000        	ldw	x,#0
1268  0013 89            	pushw	x
1269  0014 ae0000        	ldw	x,#L56
1270  0017 cd0000        	call	_assert_failed
1272  001a 5b04          	addw	sp,#4
1273  001c               L431:
1274                     ; 310     TIM6->SR1 &= (uint8_t)(~((uint8_t)TIM6_FLAG));
1276  001c 7b01          	ld	a,(OFST+1,sp)
1277  001e 43            	cpl	a
1278  001f c45344        	and	a,21316
1279  0022 c75344        	ld	21316,a
1280                     ; 311 }
1283  0025 84            	pop	a
1284  0026 81            	ret
1365                     ; 321 ITStatus TIM6_GetITStatus(TIM6_IT_TypeDef TIM6_IT)
1365                     ; 322 {
1366                     .text:	section	.text,new
1367  0000               _TIM6_GetITStatus:
1369  0000 88            	push	a
1370  0001 89            	pushw	x
1371       00000002      OFST:	set	2
1374                     ; 323     ITStatus bitstatus = RESET;
1376                     ; 324     uint8_t itStatus = 0, itEnable = 0;
1380                     ; 327     assert_param(IS_TIM6_GET_IT_OK(TIM6_IT));
1382  0002 a101          	cp	a,#1
1383  0004 2704          	jreq	L241
1384  0006 a140          	cp	a,#64
1385  0008 2603          	jrne	L041
1386  000a               L241:
1387  000a 4f            	clr	a
1388  000b 2010          	jra	L441
1389  000d               L041:
1390  000d ae0147        	ldw	x,#327
1391  0010 89            	pushw	x
1392  0011 ae0000        	ldw	x,#0
1393  0014 89            	pushw	x
1394  0015 ae0000        	ldw	x,#L56
1395  0018 cd0000        	call	_assert_failed
1397  001b 5b04          	addw	sp,#4
1398  001d               L441:
1399                     ; 329     itStatus = (uint8_t)(TIM6->SR1 & (uint8_t)TIM6_IT);
1401  001d c65344        	ld	a,21316
1402  0020 1403          	and	a,(OFST+1,sp)
1403  0022 6b01          	ld	(OFST-1,sp),a
1405                     ; 331     itEnable = (uint8_t)(TIM6->IER & (uint8_t)TIM6_IT);
1407  0024 c65343        	ld	a,21315
1408  0027 1403          	and	a,(OFST+1,sp)
1409  0029 6b02          	ld	(OFST+0,sp),a
1411                     ; 333     if ((itStatus != (uint8_t)RESET ) && (itEnable != (uint8_t)RESET ))
1413  002b 0d01          	tnz	(OFST-1,sp)
1414  002d 270a          	jreq	L505
1416  002f 0d02          	tnz	(OFST+0,sp)
1417  0031 2706          	jreq	L505
1418                     ; 335         bitstatus = (ITStatus)SET;
1420  0033 a601          	ld	a,#1
1421  0035 6b02          	ld	(OFST+0,sp),a
1424  0037 2002          	jra	L705
1425  0039               L505:
1426                     ; 339         bitstatus = (ITStatus)RESET;
1428  0039 0f02          	clr	(OFST+0,sp)
1430  003b               L705:
1431                     ; 341     return ((ITStatus)bitstatus);
1433  003b 7b02          	ld	a,(OFST+0,sp)
1436  003d 5b03          	addw	sp,#3
1437  003f 81            	ret
1495                     ; 350 void TIM6_GenerateEvent(TIM6_EventSource_TypeDef TIM6_EventSource)
1495                     ; 351 {
1496                     .text:	section	.text,new
1497  0000               _TIM6_GenerateEvent:
1499  0000 88            	push	a
1500       00000000      OFST:	set	0
1503                     ; 353     assert_param(IS_TIM6_EVENT_SOURCE_OK((uint8_t)TIM6_EventSource));
1505  0001 a5be          	bcp	a,#190
1506  0003 2607          	jrne	L051
1507  0005 0d01          	tnz	(OFST+1,sp)
1508  0007 2703          	jreq	L051
1509  0009 4f            	clr	a
1510  000a 2010          	jra	L251
1511  000c               L051:
1512  000c ae0161        	ldw	x,#353
1513  000f 89            	pushw	x
1514  0010 ae0000        	ldw	x,#0
1515  0013 89            	pushw	x
1516  0014 ae0000        	ldw	x,#L56
1517  0017 cd0000        	call	_assert_failed
1519  001a 5b04          	addw	sp,#4
1520  001c               L251:
1521                     ; 356     TIM6->EGR |= (uint8_t)TIM6_EventSource;
1523  001c c65345        	ld	a,21317
1524  001f 1a01          	or	a,(OFST+1,sp)
1525  0021 c75345        	ld	21317,a
1526                     ; 357 }
1529  0024 84            	pop	a
1530  0025 81            	ret
1577                     ; 366 FlagStatus TIM6_GetFlagStatus(TIM6_FLAG_TypeDef TIM6_FLAG)
1577                     ; 367 {
1578                     .text:	section	.text,new
1579  0000               _TIM6_GetFlagStatus:
1581  0000 88            	push	a
1582  0001 88            	push	a
1583       00000001      OFST:	set	1
1586                     ; 368     volatile FlagStatus bitstatus = RESET;
1588  0002 0f01          	clr	(OFST+0,sp)
1590                     ; 371     assert_param(IS_TIM6_GET_FLAG_OK(TIM6_FLAG));
1592  0004 a101          	cp	a,#1
1593  0006 2704          	jreq	L061
1594  0008 a140          	cp	a,#64
1595  000a 2603          	jrne	L651
1596  000c               L061:
1597  000c 4f            	clr	a
1598  000d 2010          	jra	L261
1599  000f               L651:
1600  000f ae0173        	ldw	x,#371
1601  0012 89            	pushw	x
1602  0013 ae0000        	ldw	x,#0
1603  0016 89            	pushw	x
1604  0017 ae0000        	ldw	x,#L56
1605  001a cd0000        	call	_assert_failed
1607  001d 5b04          	addw	sp,#4
1608  001f               L261:
1609                     ; 373     if ((TIM6->SR1 & (uint8_t)TIM6_FLAG)  != 0)
1611  001f c65344        	ld	a,21316
1612  0022 1502          	bcp	a,(OFST+1,sp)
1613  0024 2706          	jreq	L165
1614                     ; 375         bitstatus = SET;
1616  0026 a601          	ld	a,#1
1617  0028 6b01          	ld	(OFST+0,sp),a
1620  002a 2002          	jra	L365
1621  002c               L165:
1622                     ; 379         bitstatus = RESET;
1624  002c 0f01          	clr	(OFST+0,sp)
1626  002e               L365:
1627                     ; 381     return ((FlagStatus)bitstatus);
1629  002e 7b01          	ld	a,(OFST+0,sp)
1632  0030 85            	popw	x
1633  0031 81            	ret
1670                     ; 390 void TIM6_ClearITPendingBit(TIM6_IT_TypeDef TIM6_IT)
1670                     ; 391 {
1671                     .text:	section	.text,new
1672  0000               _TIM6_ClearITPendingBit:
1674  0000 88            	push	a
1675       00000000      OFST:	set	0
1678                     ; 393     assert_param(IS_TIM6_IT_OK(TIM6_IT));
1680  0001 4d            	tnz	a
1681  0002 2707          	jreq	L661
1682  0004 a5be          	bcp	a,#190
1683  0006 2603          	jrne	L661
1684  0008 4f            	clr	a
1685  0009 2010          	jra	L071
1686  000b               L661:
1687  000b ae0189        	ldw	x,#393
1688  000e 89            	pushw	x
1689  000f ae0000        	ldw	x,#0
1690  0012 89            	pushw	x
1691  0013 ae0000        	ldw	x,#L56
1692  0016 cd0000        	call	_assert_failed
1694  0019 5b04          	addw	sp,#4
1695  001b               L071:
1696                     ; 396     TIM6->SR1 &= (uint8_t)(~(uint8_t)TIM6_IT);
1698  001b 7b01          	ld	a,(OFST+1,sp)
1699  001d 43            	cpl	a
1700  001e c45344        	and	a,21316
1701  0021 c75344        	ld	21316,a
1702                     ; 397 }
1705  0024 84            	pop	a
1706  0025 81            	ret
1780                     ; 405 void TIM6_SelectOutputTrigger(TIM6_TRGOSource_TypeDef TIM6_TRGOSource)
1780                     ; 406 {
1781                     .text:	section	.text,new
1782  0000               _TIM6_SelectOutputTrigger:
1784  0000 88            	push	a
1785  0001 88            	push	a
1786       00000001      OFST:	set	1
1789                     ; 407     uint8_t tmpcr2 = 0;
1791                     ; 410     assert_param(IS_TIM6_TRGO_SOURCE_OK(TIM6_TRGOSource));
1793  0002 4d            	tnz	a
1794  0003 2708          	jreq	L671
1795  0005 a110          	cp	a,#16
1796  0007 2704          	jreq	L671
1797  0009 a120          	cp	a,#32
1798  000b 2603          	jrne	L471
1799  000d               L671:
1800  000d 4f            	clr	a
1801  000e 2010          	jra	L002
1802  0010               L471:
1803  0010 ae019a        	ldw	x,#410
1804  0013 89            	pushw	x
1805  0014 ae0000        	ldw	x,#0
1806  0017 89            	pushw	x
1807  0018 ae0000        	ldw	x,#L56
1808  001b cd0000        	call	_assert_failed
1810  001e 5b04          	addw	sp,#4
1811  0020               L002:
1812                     ; 412     tmpcr2 = TIM6->CR2;
1814  0020 c65341        	ld	a,21313
1815  0023 6b01          	ld	(OFST+0,sp),a
1817                     ; 415     tmpcr2 &= (uint8_t)(~TIM6_CR2_MMS);
1819  0025 7b01          	ld	a,(OFST+0,sp)
1820  0027 a48f          	and	a,#143
1821  0029 6b01          	ld	(OFST+0,sp),a
1823                     ; 418     tmpcr2 |=  (uint8_t)TIM6_TRGOSource;
1825  002b 7b01          	ld	a,(OFST+0,sp)
1826  002d 1a02          	or	a,(OFST+1,sp)
1827  002f 6b01          	ld	(OFST+0,sp),a
1829                     ; 420     TIM6->CR2 = tmpcr2;
1831  0031 7b01          	ld	a,(OFST+0,sp)
1832  0033 c75341        	ld	21313,a
1833                     ; 421 }
1836  0036 85            	popw	x
1837  0037 81            	ret
1874                     ; 430 void TIM6_SelectMasterSlaveMode(FunctionalState NewState)
1874                     ; 431 {
1875                     .text:	section	.text,new
1876  0000               _TIM6_SelectMasterSlaveMode:
1878  0000 88            	push	a
1879       00000000      OFST:	set	0
1882                     ; 433     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1884  0001 4d            	tnz	a
1885  0002 2704          	jreq	L602
1886  0004 a101          	cp	a,#1
1887  0006 2603          	jrne	L402
1888  0008               L602:
1889  0008 4f            	clr	a
1890  0009 2010          	jra	L012
1891  000b               L402:
1892  000b ae01b1        	ldw	x,#433
1893  000e 89            	pushw	x
1894  000f ae0000        	ldw	x,#0
1895  0012 89            	pushw	x
1896  0013 ae0000        	ldw	x,#L56
1897  0016 cd0000        	call	_assert_failed
1899  0019 5b04          	addw	sp,#4
1900  001b               L012:
1901                     ; 436     if (NewState == ENABLE)
1903  001b 7b01          	ld	a,(OFST+1,sp)
1904  001d a101          	cp	a,#1
1905  001f 2606          	jrne	L356
1906                     ; 438         TIM6->SMCR |= TIM6_SMCR_MSM;
1908  0021 721e5342      	bset	21314,#7
1910  0025 2004          	jra	L556
1911  0027               L356:
1912                     ; 442         TIM6->SMCR &= (uint8_t)(~TIM6_SMCR_MSM);
1914  0027 721f5342      	bres	21314,#7
1915  002b               L556:
1916                     ; 444 }
1919  002b 84            	pop	a
1920  002c 81            	ret
1985                     ; 452 void TIM6_SelectInputTrigger(TIM6_TS_TypeDef TIM6_InputTriggerSource)
1985                     ; 453 {
1986                     .text:	section	.text,new
1987  0000               _TIM6_SelectInputTrigger:
1989  0000 88            	push	a
1990  0001 88            	push	a
1991       00000001      OFST:	set	1
1994                     ; 454     uint8_t tmpsmcr = 0;
1996                     ; 457     assert_param(IS_TIM6_TRIGGER_SELECTION_OK(TIM6_InputTriggerSource));
1998  0002 a130          	cp	a,#48
1999  0004 2704          	jreq	L612
2000  0006 a120          	cp	a,#32
2001  0008 2603          	jrne	L412
2002  000a               L612:
2003  000a 4f            	clr	a
2004  000b 2010          	jra	L022
2005  000d               L412:
2006  000d ae01c9        	ldw	x,#457
2007  0010 89            	pushw	x
2008  0011 ae0000        	ldw	x,#0
2009  0014 89            	pushw	x
2010  0015 ae0000        	ldw	x,#L56
2011  0018 cd0000        	call	_assert_failed
2013  001b 5b04          	addw	sp,#4
2014  001d               L022:
2015                     ; 459     tmpsmcr = TIM6->SMCR;
2017  001d c65342        	ld	a,21314
2018  0020 6b01          	ld	(OFST+0,sp),a
2020                     ; 462     tmpsmcr &= (uint8_t)(~TIM6_SMCR_TS);
2022  0022 7b01          	ld	a,(OFST+0,sp)
2023  0024 a48f          	and	a,#143
2024  0026 6b01          	ld	(OFST+0,sp),a
2026                     ; 463     tmpsmcr |= (uint8_t)TIM6_InputTriggerSource;
2028  0028 7b01          	ld	a,(OFST+0,sp)
2029  002a 1a02          	or	a,(OFST+1,sp)
2030  002c 6b01          	ld	(OFST+0,sp),a
2032                     ; 465     TIM6->SMCR = (uint8_t)tmpsmcr;
2034  002e 7b01          	ld	a,(OFST+0,sp)
2035  0030 c75342        	ld	21314,a
2036                     ; 466 }
2039  0033 85            	popw	x
2040  0034 81            	ret
2064                     ; 473 void TIM6_InternalClockConfig(void)
2064                     ; 474 {
2065                     .text:	section	.text,new
2066  0000               _TIM6_InternalClockConfig:
2070                     ; 476     TIM6->SMCR &=  (uint8_t)(~TIM6_SMCR_SMS);
2072  0000 c65342        	ld	a,21314
2073  0003 a4f8          	and	a,#248
2074  0005 c75342        	ld	21314,a
2075                     ; 477 }
2078  0008 81            	ret
2168                     ; 485 void TIM6_SelectSlaveMode(TIM6_SlaveMode_TypeDef TIM6_SlaveMode)
2168                     ; 486 {
2169                     .text:	section	.text,new
2170  0000               _TIM6_SelectSlaveMode:
2172  0000 88            	push	a
2173  0001 88            	push	a
2174       00000001      OFST:	set	1
2177                     ; 487     uint8_t tmpsmcr = 0;
2179                     ; 490     assert_param(IS_TIM6_SLAVE_MODE_OK(TIM6_SlaveMode));
2181  0002 4d            	tnz	a
2182  0003 2710          	jreq	L032
2183  0005 a104          	cp	a,#4
2184  0007 270c          	jreq	L032
2185  0009 a105          	cp	a,#5
2186  000b 2708          	jreq	L032
2187  000d a106          	cp	a,#6
2188  000f 2704          	jreq	L032
2189  0011 a107          	cp	a,#7
2190  0013 2603          	jrne	L622
2191  0015               L032:
2192  0015 4f            	clr	a
2193  0016 2010          	jra	L232
2194  0018               L622:
2195  0018 ae01ea        	ldw	x,#490
2196  001b 89            	pushw	x
2197  001c ae0000        	ldw	x,#0
2198  001f 89            	pushw	x
2199  0020 ae0000        	ldw	x,#L56
2200  0023 cd0000        	call	_assert_failed
2202  0026 5b04          	addw	sp,#4
2203  0028               L232:
2204                     ; 492     tmpsmcr = TIM6->SMCR;
2206  0028 c65342        	ld	a,21314
2207  002b 6b01          	ld	(OFST+0,sp),a
2209                     ; 495     tmpsmcr &= (uint8_t)(~TIM6_SMCR_SMS);
2211  002d 7b01          	ld	a,(OFST+0,sp)
2212  002f a4f8          	and	a,#248
2213  0031 6b01          	ld	(OFST+0,sp),a
2215                     ; 498     tmpsmcr |= (uint8_t)TIM6_SlaveMode;
2217  0033 7b01          	ld	a,(OFST+0,sp)
2218  0035 1a02          	or	a,(OFST+1,sp)
2219  0037 6b01          	ld	(OFST+0,sp),a
2221                     ; 500     TIM6->SMCR = tmpsmcr;
2223  0039 7b01          	ld	a,(OFST+0,sp)
2224  003b c75342        	ld	21314,a
2225                     ; 501 }
2228  003e 85            	popw	x
2229  003f 81            	ret
2242                     	xdef	_TIM6_SelectSlaveMode
2243                     	xdef	_TIM6_InternalClockConfig
2244                     	xdef	_TIM6_SelectInputTrigger
2245                     	xdef	_TIM6_SelectMasterSlaveMode
2246                     	xdef	_TIM6_SelectOutputTrigger
2247                     	xdef	_TIM6_ClearITPendingBit
2248                     	xdef	_TIM6_GetFlagStatus
2249                     	xdef	_TIM6_GenerateEvent
2250                     	xdef	_TIM6_GetITStatus
2251                     	xdef	_TIM6_ClearFlag
2252                     	xdef	_TIM6_ITConfig
2253                     	xdef	_TIM6_GetPrescaler
2254                     	xdef	_TIM6_GetCounter
2255                     	xdef	_TIM6_SetAutoreload
2256                     	xdef	_TIM6_SetCounter
2257                     	xdef	_TIM6_ARRPreloadConfig
2258                     	xdef	_TIM6_PrescalerConfig
2259                     	xdef	_TIM6_SelectOnePulseMode
2260                     	xdef	_TIM6_UpdateRequestConfig
2261                     	xdef	_TIM6_UpdateDisableConfig
2262                     	xdef	_TIM6_Cmd
2263                     	xdef	_TIM6_TimeBaseInit
2264                     	xdef	_TIM6_DeInit
2265                     	xref	_assert_failed
2266                     .const:	section	.text
2267  0000               L56:
2268  0000 7372635c7374  	dc.b	"src\stm8s_tim6.c",0
2288                     	end

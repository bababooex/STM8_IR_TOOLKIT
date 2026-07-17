   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.13.3 - 22 May 2025
   3                     ; Generator (Limited) V4.6.6 - 07 Jan 2026
  16                     .const:	section	.text
  17  0000               L3_hd1650_Digit_Table:
  18  0000 3f            	dc.b	63
  19  0001 06            	dc.b	6
  20  0002 5b            	dc.b	91
  21  0003 4f            	dc.b	79
  22  0004 66            	dc.b	102
  23  0005 6d            	dc.b	109
  24  0006 7d            	dc.b	125
  25  0007 07            	dc.b	7
  26  0008 7f            	dc.b	127
  27  0009 6f            	dc.b	111
  28  000a 77            	dc.b	119
  29  000b 7c            	dc.b	124
  30  000c 39            	dc.b	57
  31  000d 5e            	dc.b	94
  32  000e 79            	dc.b	121
  33  000f 71            	dc.b	113
  34  0010 00            	dc.b	0
  35  0011 3d            	dc.b	61
  36  0012 76            	dc.b	118
  37  0013 06            	dc.b	6
  38  0014 1e            	dc.b	30
  39  0015 38            	dc.b	56
  40  0016 54            	dc.b	84
  41  0017 3f            	dc.b	63
  42  0018 73            	dc.b	115
  43  0019 50            	dc.b	80
  44  001a 6d            	dc.b	109
  45  001b 78            	dc.b	120
  46  001c 3e            	dc.b	62
  47  001d 6e            	dc.b	110
  48  001e 40            	dc.b	64
  79                     	switch	.const
  80  001f               L12_funcs_tv:
  81  001f 0236          	dc.w	L32
  82  0021 00000000      	dc.l	0
  83  0025 0000b65c      	dc.l	46684
  84  0029 022f          	dc.w	L52
  85  002b 0000b65c      	dc.l	46684
  86  002f 0000f034      	dc.l	61492
  87  0033 0228          	dc.w	L72
  88  0035 0000f034      	dc.l	61492
  89  0039 00012cd0      	dc.l	77008
  90  003d 0220          	dc.w	L13
  91  003f 00012cd0      	dc.l	77008
  92  0043 0001642c      	dc.l	91180
  93  0047 0218          	dc.w	L33
  94  0049 0001642c      	dc.l	91180
  95  004d 00019c74      	dc.l	105588
  96  0051 0213          	dc.w	L53
  97  0053 00019c74      	dc.l	105588
  98  0057 0001d3c8      	dc.l	119752
  99  005b               L73_funcs_projectors:
 100  005b 0236          	dc.w	L32
 101  005d 0001d3c8      	dc.l	119752
 102  0061 0002383e      	dc.l	145470
 103  0065 022f          	dc.w	L52
 104  0067 0002383e      	dc.l	145470
 105  006b 00025696      	dc.l	153238
 106  006f 0228          	dc.w	L72
 107  0071 00025696      	dc.l	153238
 108  0075 00027234      	dc.l	160308
 109  0079 0213          	dc.w	L53
 110  007b 00027234      	dc.l	160308
 111  007f 00028cba      	dc.l	167098
 112  0083 020d          	dc.w	L14
 113  0085 00028cba      	dc.l	167098
 114  0089 0002924e      	dc.l	168526
 115  008d 0208          	dc.w	L34
 116  008f 0002924e      	dc.l	168526
 117  0093 000297e2      	dc.l	169954
 118  0097               L54_funcs_ac:
 119  0097 0204          	dc.w	L74
 120  0099 000297e2      	dc.l	169954
 121  009d 000396c0      	dc.l	235200
 122  00a1 0201          	dc.w	L15
 123  00a3 000396c0      	dc.l	235200
 124  00a7 0003e942      	dc.l	256322
 125  00ab 01f9          	dc.w	L35
 126  00ad 0003e942      	dc.l	256322
 127  00b1 00043322      	dc.l	275234
 128  00b5 01f1          	dc.w	L55
 129  00b7 00043322      	dc.l	275234
 130  00bb 0004814a      	dc.l	295242
 131  00bf 01e9          	dc.w	L75
 132  00c1 0004814a      	dc.l	295242
 133  00c5 0004c420      	dc.l	312352
 134  00c9 01e1          	dc.w	L16
 135  00cb 0004c420      	dc.l	312352
 136  00cf 000505dc      	dc.l	329180
 137  00d3               L36_funcs_audio:
 138  00d3 0236          	dc.w	L32
 139  00d5 000505dc      	dc.l	329180
 140  00d9 000578b0      	dc.l	358576
 141  00dd 0213          	dc.w	L53
 142  00df 000578b0      	dc.l	358576
 143  00e3 0005c79c      	dc.l	378780
 144  00e7 022f          	dc.w	L52
 145  00e9 0005c79c      	dc.l	378780
 146  00ed 00062570      	dc.l	402800
 147  00f1 0228          	dc.w	L72
 148  00f3 00062570      	dc.l	402800
 149  00f7 00068204      	dc.l	426500
 150  00fb 01dc          	dc.w	L56
 151  00fd 00068204      	dc.l	426500
 152  0101 0006ba1a      	dc.l	440858
 153  0105 01d7          	dc.w	L76
 154  0107 0006ba1a      	dc.l	440858
 155  010b 0006f508      	dc.l	455944
 156  010f 020d          	dc.w	L14
 157  0111 0006f508      	dc.l	455944
 158  0115 0007481c      	dc.l	477212
 159  0119 0208          	dc.w	L34
 160  011b 0007481c      	dc.l	477212
 161  011f 00078784      	dc.l	493444
 162  0123               L17_device_list:
 163  0123 01d4          	dc.w	L37
 164  0125 001f          	dc.w	L12_funcs_tv
 165  0127 06            	dc.b	6
 166  0128 01ce          	dc.w	L57
 167  012a 00d3          	dc.w	L36_funcs_audio
 168  012c 08            	dc.b	8
 169  012d 01c3          	dc.w	L77
 170  012f 005b          	dc.w	L73_funcs_projectors
 171  0131 06            	dc.b	6
 172  0132 01c0          	dc.w	L101
 173  0134 0097          	dc.w	L54_funcs_ac
 174  0136 06            	dc.b	6
 227                     ; 78 void tx_delay_us(uint16_t us) {
 229                     .text:	section	.text,new
 230  0000               _tx_delay_us:
 232  0000 89            	pushw	x
 233  0001 5204          	subw	sp,#4
 234       00000004      OFST:	set	4
 237                     ; 79     uint16_t start = TIM5_GetCounter();
 239  0003 cd0000        	call	_TIM5_GetCounter
 241  0006 1f01          	ldw	(OFST-3,sp),x
 243                     ; 80     uint16_t ticks = us;
 245  0008 1e05          	ldw	x,(OFST+1,sp)
 246  000a 1f03          	ldw	(OFST-1,sp),x
 249  000c               L531:
 250                     ; 81     while ((uint16_t)(TIM5_GetCounter() - start) < ticks);
 252  000c cd0000        	call	_TIM5_GetCounter
 254  000f 72f001        	subw	x,(OFST-3,sp)
 255  0012 1303          	cpw	x,(OFST-1,sp)
 256  0014 25f6          	jrult	L531
 257                     ; 82 }
 260  0016 5b06          	addw	sp,#6
 261  0018 81            	ret
 264                     	switch	.const
 265  0137               L141_result:
 266  0137 9470          	dc.w	-27536
 267  0139 01bb          	dc.w	L341
 356                     ; 89 detect_result_t SimpleProtocol(const uint16_t *pulses, uint16_t count) {//simple protocol name analysis - returns 4 segment name and frequency
 357                     .text:	section	.text,new
 358  0000               _SimpleProtocol:
 360  0000 5208          	subw	sp,#8
 361       00000008      OFST:	set	8
 364                     ; 90     detect_result_t result = {38000, "----"};//unknown
 366  0002 96            	ldw	x,sp
 367  0003 1c0005        	addw	x,#OFST-3
 368  0006 90ae0137      	ldw	y,#L141_result
 369  000a a604          	ld	a,#4
 370  000c cd0000        	call	c_xymov
 372                     ; 92     if (count < 2) return result;
 374  000f 1e0f          	ldw	x,(OFST+7,sp)
 375  0011 a30002        	cpw	x,#2
 376  0014 240f          	jruge	L702
 379  0016 1e0b          	ldw	x,(OFST+3,sp)
 380  0018 9096          	ldw	y,sp
 381  001a 72a90005      	addw	y,#OFST-3
 382  001e a604          	ld	a,#4
 383  0020 cd0000        	call	c_xymov
 386  0023 203e          	jra	L01
 387  0025               L702:
 388                     ; 94     uint16_t h1 = pulses[0];   // first mark
 390  0025 1e0d          	ldw	x,(OFST+5,sp)
 391  0027 fe            	ldw	x,(x)
 392  0028 1f01          	ldw	(OFST-7,sp),x
 394                     ; 95     uint16_t h2 = pulses[1];   // first space
 396  002a 1e0d          	ldw	x,(OFST+5,sp)
 397  002c ee02          	ldw	x,(2,x)
 398  002e 1f03          	ldw	(OFST-5,sp),x
 400                     ; 99     if (h1 > 7800 && h1 < 8700 && h2 > 3800 && h2 < 4600) {
 402  0030 1e01          	ldw	x,(OFST-7,sp)
 403  0032 a31e79        	cpw	x,#7801
 404  0035 252f          	jrult	L112
 406  0037 1e01          	ldw	x,(OFST-7,sp)
 407  0039 a321fc        	cpw	x,#8700
 408  003c 2428          	jruge	L112
 410  003e 1e03          	ldw	x,(OFST-5,sp)
 411  0040 a30ed9        	cpw	x,#3801
 412  0043 2521          	jrult	L112
 414  0045 1e03          	ldw	x,(OFST-5,sp)
 415  0047 a311f8        	cpw	x,#4600
 416  004a 241a          	jruge	L112
 417                     ; 100         result.frequency = 40000;
 419  004c ae9c40        	ldw	x,#40000
 420  004f 1f05          	ldw	(OFST-3,sp),x
 422                     ; 101         result.name = "PION";
 424  0051 ae01b6        	ldw	x,#L312
 425  0054 1f07          	ldw	(OFST-1,sp),x
 427                     ; 102         return result;
 429  0056 1e0b          	ldw	x,(OFST+3,sp)
 430  0058 9096          	ldw	y,sp
 431  005a 72a90005      	addw	y,#OFST-3
 432  005e a604          	ld	a,#4
 433  0060 cd0000        	call	c_xymov
 436  0063               L01:
 438  0063 5b08          	addw	sp,#8
 439  0065 81            	ret
 440  0066               L112:
 441                     ; 106     if (h1 > 8700 && h1 < 10000 && h2 > 4000 && h2 < 5000) {
 443  0066 1e01          	ldw	x,(OFST-7,sp)
 444  0068 a321fd        	cpw	x,#8701
 445  006b 253c          	jrult	L512
 447  006d 1e01          	ldw	x,(OFST-7,sp)
 448  006f a32710        	cpw	x,#10000
 449  0072 2435          	jruge	L512
 451  0074 1e03          	ldw	x,(OFST-5,sp)
 452  0076 a30fa1        	cpw	x,#4001
 453  0079 252e          	jrult	L512
 455  007b 1e03          	ldw	x,(OFST-5,sp)
 456  007d a31388        	cpw	x,#5000
 457  0080 2427          	jruge	L512
 458                     ; 107         if (count < 70) {
 460  0082 1e0f          	ldw	x,(OFST+7,sp)
 461  0084 a30046        	cpw	x,#70
 462  0087 2407          	jruge	L712
 463                     ; 108             result.name = "NEC";
 465  0089 ae01b2        	ldw	x,#L122
 466  008c 1f07          	ldw	(OFST-1,sp),x
 469  008e 2005          	jra	L322
 470  0090               L712:
 471                     ; 111             result.name = "NE42";
 473  0090 ae01ad        	ldw	x,#L522
 474  0093 1f07          	ldw	(OFST-1,sp),x
 476  0095               L322:
 477                     ; 113         result.frequency = 38000;
 479  0095 ae9470        	ldw	x,#38000
 480  0098 1f05          	ldw	(OFST-3,sp),x
 482                     ; 114         return result;
 484  009a 1e0b          	ldw	x,(OFST+3,sp)
 485  009c 9096          	ldw	y,sp
 486  009e 72a90005      	addw	y,#OFST-3
 487  00a2 a604          	ld	a,#4
 488  00a4 cd0000        	call	c_xymov
 491  00a7 20ba          	jra	L01
 492  00a9               L512:
 493                     ; 118     if (h1 > 4000 && h1 < 5000 && h2 > 4000 && h2 < 5000) {
 495  00a9 1e01          	ldw	x,(OFST-7,sp)
 496  00ab a30fa1        	cpw	x,#4001
 497  00ae 252e          	jrult	L722
 499  00b0 1e01          	ldw	x,(OFST-7,sp)
 500  00b2 a31388        	cpw	x,#5000
 501  00b5 2427          	jruge	L722
 503  00b7 1e03          	ldw	x,(OFST-5,sp)
 504  00b9 a30fa1        	cpw	x,#4001
 505  00bc 2520          	jrult	L722
 507  00be 1e03          	ldw	x,(OFST-5,sp)
 508  00c0 a31388        	cpw	x,#5000
 509  00c3 2419          	jruge	L722
 510                     ; 119         result.frequency = 38000;
 512  00c5 ae9470        	ldw	x,#38000
 513  00c8 1f05          	ldw	(OFST-3,sp),x
 515                     ; 120         result.name = "SANS";//m impossible - probably megalovania reference
 517  00ca ae01a8        	ldw	x,#L132
 518  00cd 1f07          	ldw	(OFST-1,sp),x
 520                     ; 121         return result;
 522  00cf 1e0b          	ldw	x,(OFST+3,sp)
 523  00d1 9096          	ldw	y,sp
 524  00d3 72a90005      	addw	y,#OFST-3
 525  00d7 a604          	ld	a,#4
 526  00d9 cd0000        	call	c_xymov
 529  00dc 2085          	jra	L01
 530  00de               L722:
 531                     ; 126     if (h1 > 3100 && h1 < 3800 && h2 > 1550 && h2 < 1900) {
 533  00de 1e01          	ldw	x,(OFST-7,sp)
 534  00e0 a30c1d        	cpw	x,#3101
 535  00e3 2530          	jrult	L332
 537  00e5 1e01          	ldw	x,(OFST-7,sp)
 538  00e7 a30ed8        	cpw	x,#3800
 539  00ea 2429          	jruge	L332
 541  00ec 1e03          	ldw	x,(OFST-5,sp)
 542  00ee a3060f        	cpw	x,#1551
 543  00f1 2522          	jrult	L332
 545  00f3 1e03          	ldw	x,(OFST-5,sp)
 546  00f5 a3076c        	cpw	x,#1900
 547  00f8 241b          	jruge	L332
 548                     ; 127         result.frequency = 37000;
 550  00fa ae9088        	ldw	x,#37000
 551  00fd 1f05          	ldw	(OFST-3,sp),x
 553                     ; 128         result.name = "CASE";//impossible to display k
 555  00ff ae01a3        	ldw	x,#L532
 556  0102 1f07          	ldw	(OFST-1,sp),x
 558                     ; 129         return result;
 560  0104 1e0b          	ldw	x,(OFST+3,sp)
 561  0106 9096          	ldw	y,sp
 562  0108 72a90005      	addw	y,#OFST-3
 563  010c a604          	ld	a,#4
 564  010e cd0000        	call	c_xymov
 567  0111 ac630063      	jpf	L01
 568  0115               L332:
 569                     ; 133     if (h1 > 2000 && h1 < 2800 && h2 > 500 && h2 < 700) {
 571  0115 1e01          	ldw	x,(OFST-7,sp)
 572  0117 a307d1        	cpw	x,#2001
 573  011a 254c          	jrult	L732
 575  011c 1e01          	ldw	x,(OFST-7,sp)
 576  011e a30af0        	cpw	x,#2800
 577  0121 2445          	jruge	L732
 579  0123 1e03          	ldw	x,(OFST-5,sp)
 580  0125 a301f5        	cpw	x,#501
 581  0128 253e          	jrult	L732
 583  012a 1e03          	ldw	x,(OFST-5,sp)
 584  012c a302bc        	cpw	x,#700
 585  012f 2437          	jruge	L732
 586                     ; 134     if (count < 27) {
 588  0131 1e0f          	ldw	x,(OFST+7,sp)
 589  0133 a3001b        	cpw	x,#27
 590  0136 2407          	jruge	L142
 591                     ; 135         result.name = "SI12";
 593  0138 ae019e        	ldw	x,#L342
 594  013b 1f07          	ldw	(OFST-1,sp),x
 597  013d 2013          	jra	L542
 598  013f               L142:
 599                     ; 136     } else if (count < 33) {
 601  013f 1e0f          	ldw	x,(OFST+7,sp)
 602  0141 a30021        	cpw	x,#33
 603  0144 2407          	jruge	L742
 604                     ; 137         result.name = "SI15";
 606  0146 ae0199        	ldw	x,#L152
 607  0149 1f07          	ldw	(OFST-1,sp),x
 610  014b 2005          	jra	L542
 611  014d               L742:
 612                     ; 139         result.name = "SI20";
 614  014d ae0194        	ldw	x,#L552
 615  0150 1f07          	ldw	(OFST-1,sp),x
 617  0152               L542:
 618                     ; 141     result.frequency = 40000;
 620  0152 ae9c40        	ldw	x,#40000
 621  0155 1f05          	ldw	(OFST-3,sp),x
 623                     ; 142     return result;
 625  0157 1e0b          	ldw	x,(OFST+3,sp)
 626  0159 9096          	ldw	y,sp
 627  015b 72a90005      	addw	y,#OFST-3
 628  015f a604          	ld	a,#4
 629  0161 cd0000        	call	c_xymov
 632  0164 ac630063      	jpf	L01
 633  0168               L732:
 634                     ; 146     if (h1 > 2400 && h1 < 2900 && h2 > 800 && h2 < 1000) {
 636  0168 1e01          	ldw	x,(OFST-7,sp)
 637  016a a30961        	cpw	x,#2401
 638  016d 2530          	jrult	L752
 640  016f 1e01          	ldw	x,(OFST-7,sp)
 641  0171 a30b54        	cpw	x,#2900
 642  0174 2429          	jruge	L752
 644  0176 1e03          	ldw	x,(OFST-5,sp)
 645  0178 a30321        	cpw	x,#801
 646  017b 2522          	jrult	L752
 648  017d 1e03          	ldw	x,(OFST-5,sp)
 649  017f a303e8        	cpw	x,#1000
 650  0182 241b          	jruge	L752
 651                     ; 147         result.frequency = 36000;
 653  0184 ae8ca0        	ldw	x,#36000
 654  0187 1f05          	ldw	(OFST-3,sp),x
 656                     ; 148         result.name = "RC6";
 658  0189 ae0190        	ldw	x,#L162
 659  018c 1f07          	ldw	(OFST-1,sp),x
 661                     ; 149         return result;
 663  018e 1e0b          	ldw	x,(OFST+3,sp)
 664  0190 9096          	ldw	y,sp
 665  0192 72a90005      	addw	y,#OFST-3
 666  0196 a604          	ld	a,#4
 667  0198 cd0000        	call	c_xymov
 670  019b ac630063      	jpf	L01
 671  019f               L752:
 672                     ; 153     if (h1 > 3500 && h1 < 4500 && h2 > 3500 && h2 < 4500) {
 674  019f 1e01          	ldw	x,(OFST-7,sp)
 675  01a1 a30dad        	cpw	x,#3501
 676  01a4 2530          	jrult	L362
 678  01a6 1e01          	ldw	x,(OFST-7,sp)
 679  01a8 a31194        	cpw	x,#4500
 680  01ab 2429          	jruge	L362
 682  01ad 1e03          	ldw	x,(OFST-5,sp)
 683  01af a30dad        	cpw	x,#3501
 684  01b2 2522          	jrult	L362
 686  01b4 1e03          	ldw	x,(OFST-5,sp)
 687  01b6 a31194        	cpw	x,#4500
 688  01b9 241b          	jruge	L362
 689                     ; 154         result.frequency = 56000;
 691  01bb aedac0        	ldw	x,#56000
 692  01be 1f05          	ldw	(OFST-3,sp),x
 694                     ; 155         result.name = "RCA";
 696  01c0 ae018c        	ldw	x,#L562
 697  01c3 1f07          	ldw	(OFST-1,sp),x
 699                     ; 156         return result;
 701  01c5 1e0b          	ldw	x,(OFST+3,sp)
 702  01c7 9096          	ldw	y,sp
 703  01c9 72a90005      	addw	y,#OFST-3
 704  01cd a604          	ld	a,#4
 705  01cf cd0000        	call	c_xymov
 708  01d2 ac630063      	jpf	L01
 709  01d6               L362:
 710                     ; 160     if (h1 > 700 && h1 < 1100 && h2 > 700 && h2 < 1100) {//needs manchester decoder for full distinguish between rc5/rc5x, not doing that here
 712  01d6 1e01          	ldw	x,(OFST-7,sp)
 713  01d8 a302bd        	cpw	x,#701
 714  01db 2530          	jrult	L762
 716  01dd 1e01          	ldw	x,(OFST-7,sp)
 717  01df a3044c        	cpw	x,#1100
 718  01e2 2429          	jruge	L762
 720  01e4 1e03          	ldw	x,(OFST-5,sp)
 721  01e6 a302bd        	cpw	x,#701
 722  01e9 2522          	jrult	L762
 724  01eb 1e03          	ldw	x,(OFST-5,sp)
 725  01ed a3044c        	cpw	x,#1100
 726  01f0 241b          	jruge	L762
 727                     ; 161 				result.name = "RC5";
 729  01f2 ae0188        	ldw	x,#L172
 730  01f5 1f07          	ldw	(OFST-1,sp),x
 732                     ; 162         result.frequency = 36000;
 734  01f7 ae8ca0        	ldw	x,#36000
 735  01fa 1f05          	ldw	(OFST-3,sp),x
 737                     ; 163         return result;
 739  01fc 1e0b          	ldw	x,(OFST+3,sp)
 740  01fe 9096          	ldw	y,sp
 741  0200 72a90005      	addw	y,#OFST-3
 742  0204 a604          	ld	a,#4
 743  0206 cd0000        	call	c_xymov
 746  0209 ac630063      	jpf	L01
 747  020d               L762:
 748                     ; 165     return result;
 750  020d 1e0b          	ldw	x,(OFST+3,sp)
 751  020f 9096          	ldw	y,sp
 752  0211 72a90005      	addw	y,#OFST-3
 753  0215 a604          	ld	a,#4
 754  0217 cd0000        	call	c_xymov
 757  021a ac630063      	jpf	L01
 760                     	switch	.data
 761  0000               _col:
 762  0000 00            	dc.b	0
 763  0001               _first_edge:
 764  0001 00            	dc.b	0
 819                     	switch	.const
 820  013b               L41:
 821  013b 0babab01      	dc.l	195799809
 822                     ; 229 uint32_t FindNextCode(uint32_t addr, uint32_t end_addr) {
 823                     .text:	section	.text,new
 824  0000               _FindNextCode:
 826  0000 5214          	subw	sp,#20
 827       00000014      OFST:	set	20
 830  0002 aca600a6      	jpf	L123
 831  0006               L713:
 832                     ; 232         SPI_Flash_Read(addr, marker, 4);
 834  0006 ae0004        	ldw	x,#4
 835  0009 89            	pushw	x
 836  000a 96            	ldw	x,sp
 837  000b 1c0013        	addw	x,#OFST-1
 838  000e 89            	pushw	x
 839  000f 1e1d          	ldw	x,(OFST+9,sp)
 840  0011 89            	pushw	x
 841  0012 1e1d          	ldw	x,(OFST+9,sp)
 842  0014 89            	pushw	x
 843  0015 cd0000        	call	_SPI_Flash_Read
 845  0018 5b08          	addw	sp,#8
 846                     ; 233         uint32_t val = (uint32_t)marker[0] | ((uint32_t)marker[1] << 8) |
 846                     ; 234                        ((uint32_t)marker[2] << 16) | ((uint32_t)marker[3] << 24);
 848  001a 7b14          	ld	a,(OFST+0,sp)
 849  001c b703          	ld	c_lreg+3,a
 850  001e 3f02          	clr	c_lreg+2
 851  0020 3f01          	clr	c_lreg+1
 852  0022 3f00          	clr	c_lreg
 853  0024 a618          	ld	a,#24
 854  0026 cd0000        	call	c_llsh
 856  0029 96            	ldw	x,sp
 857  002a 1c0009        	addw	x,#OFST-11
 858  002d cd0000        	call	c_rtol
 861  0030 7b13          	ld	a,(OFST-1,sp)
 862  0032 b703          	ld	c_lreg+3,a
 863  0034 3f02          	clr	c_lreg+2
 864  0036 3f01          	clr	c_lreg+1
 865  0038 3f00          	clr	c_lreg
 866  003a be02          	ldw	x,c_lreg+2
 867  003c bf00          	ldw	c_lreg,x
 868  003e 5f            	clrw	x
 869  003f bf02          	ldw	c_lreg+2,x
 870  0041 96            	ldw	x,sp
 871  0042 1c0005        	addw	x,#OFST-15
 872  0045 cd0000        	call	c_rtol
 875  0048 7b12          	ld	a,(OFST-2,sp)
 876  004a 5f            	clrw	x
 877  004b 97            	ld	xl,a
 878  004c 90ae0100      	ldw	y,#256
 879  0050 cd0000        	call	c_umul
 881  0053 96            	ldw	x,sp
 882  0054 1c0001        	addw	x,#OFST-19
 883  0057 cd0000        	call	c_rtol
 886  005a 7b11          	ld	a,(OFST-3,sp)
 887  005c b703          	ld	c_lreg+3,a
 888  005e 3f02          	clr	c_lreg+2
 889  0060 3f01          	clr	c_lreg+1
 890  0062 3f00          	clr	c_lreg
 891  0064 96            	ldw	x,sp
 892  0065 1c0001        	addw	x,#OFST-19
 893  0068 cd0000        	call	c_lor
 895  006b 96            	ldw	x,sp
 896  006c 1c0005        	addw	x,#OFST-15
 897  006f cd0000        	call	c_lor
 899  0072 96            	ldw	x,sp
 900  0073 1c0009        	addw	x,#OFST-11
 901  0076 cd0000        	call	c_lor
 903  0079 96            	ldw	x,sp
 904  007a 1c000d        	addw	x,#OFST-7
 905  007d cd0000        	call	c_rtol
 908                     ; 235         if (val == MAGIC_MARKER) {
 910  0080 96            	ldw	x,sp
 911  0081 1c000d        	addw	x,#OFST-7
 912  0084 cd0000        	call	c_ltor
 914  0087 ae013b        	ldw	x,#L41
 915  008a cd0000        	call	c_lcmp
 917  008d 260e          	jrne	L523
 918                     ; 236             return addr + 4;   // return address of the header (right after marker)
 920  008f 96            	ldw	x,sp
 921  0090 1c0017        	addw	x,#OFST+3
 922  0093 cd0000        	call	c_ltor
 924  0096 a604          	ld	a,#4
 925  0098 cd0000        	call	c_ladc
 928  009b 202b          	jra	L61
 929  009d               L523:
 930                     ; 238         addr += 2;   // scan in 2-byte steps (or 4 for speed)
 932  009d 96            	ldw	x,sp
 933  009e 1c0017        	addw	x,#OFST+3
 934  00a1 a602          	ld	a,#2
 935  00a3 cd0000        	call	c_lgadc
 937  00a6               L123:
 938                     ; 230     while (addr < end_addr - 8) {
 940  00a6 96            	ldw	x,sp
 941  00a7 1c001b        	addw	x,#OFST+7
 942  00aa cd0000        	call	c_ltor
 944  00ad a608          	ld	a,#8
 945  00af cd0000        	call	c_lsbc
 947  00b2 96            	ldw	x,sp
 948  00b3 1c0017        	addw	x,#OFST+3
 949  00b6 cd0000        	call	c_lcmp
 951  00b9 2303          	jrule	L02
 952  00bb cc0006        	jp	L713
 953  00be               L02:
 954                     ; 240     return 0xFFFFFFFF;   // not found
 956  00be aeffff        	ldw	x,#65535
 957  00c1 bf02          	ldw	c_lreg+2,x
 958  00c3 aeffff        	ldw	x,#-1
 959  00c6 bf00          	ldw	c_lreg,x
 961  00c8               L61:
 963  00c8 5b14          	addw	sp,#20
 964  00ca 81            	ret
1054                     ; 242 void Run_Brute(const ButtonFunc_t *func) {
1055                     .text:	section	.text,new
1056  0000               _Run_Brute:
1058  0000 89            	pushw	x
1059  0001 5206          	subw	sp,#6
1060       00000006      OFST:	set	6
1063                     ; 243 		HD1650_clearDisplay();
1065  0003 cd0000        	call	_HD1650_clearDisplay
1067                     ; 244 		spi_init();
1069  0006 cd0000        	call	_spi_init
1071                     ; 245     uint32_t addr = FindNextCode(func->start_addr, func->end_addr);
1073  0009 1e07          	ldw	x,(OFST+1,sp)
1074  000b 9093          	ldw	y,x
1075  000d ee08          	ldw	x,(8,x)
1076  000f 89            	pushw	x
1077  0010 93            	ldw	x,y
1078  0011 ee06          	ldw	x,(6,x)
1079  0013 89            	pushw	x
1080  0014 1e0b          	ldw	x,(OFST+5,sp)
1081  0016 9093          	ldw	y,x
1082  0018 ee04          	ldw	x,(4,x)
1083  001a 89            	pushw	x
1084  001b 93            	ldw	x,y
1085  001c ee02          	ldw	x,(2,x)
1086  001e 89            	pushw	x
1087  001f cd0000        	call	_FindNextCode
1089  0022 5b08          	addw	sp,#8
1090  0024 96            	ldw	x,sp
1091  0025 1c0003        	addw	x,#OFST-3
1092  0028 cd0000        	call	c_rtol
1095                     ; 247     uint16_t code_num = 1;
1097  002b ae0001        	ldw	x,#1
1098  002e 1f01          	ldw	(OFST-5,sp),x
1100  0030               L763:
1101                     ; 249 						HD1650_writeNumber(code_num, 0);
1103  0030 4b00          	push	#0
1104  0032 1e02          	ldw	x,(OFST-4,sp)
1105  0034 cd0000        	call	_HD1650_writeNumber
1107  0037 84            	pop	a
1108                     ; 250 						JS_Left(spi_cleanup();break);//exit
1110  0038 4b10          	push	#16
1111  003a ae500f        	ldw	x,#20495
1112  003d cd0000        	call	_GPIO_ReadInputPin
1114  0040 5b01          	addw	sp,#1
1115  0042 4d            	tnz	a
1116  0043 260c          	jrne	L373
1119  0045 ae0320        	ldw	x,#800
1120  0048 cd0000        	call	_delay_ms
1124  004b cd0000        	call	_spi_cleanup
1127                     ; 261 }
1130  004e 5b08          	addw	sp,#8
1131  0050 81            	ret
1132  0051               L373:
1133                     ; 251             SendCodeAt(addr);
1136  0051 1e05          	ldw	x,(OFST-1,sp)
1137  0053 89            	pushw	x
1138  0054 1e05          	ldw	x,(OFST-1,sp)
1139  0056 89            	pushw	x
1140  0057 cd0000        	call	_SendCodeAt
1142  005a 5b04          	addw	sp,#4
1143                     ; 252             addr = FindNextCode(addr + 4, func->end_addr);  // find next marker
1145  005c 1e07          	ldw	x,(OFST+1,sp)
1146  005e 9093          	ldw	y,x
1147  0060 ee08          	ldw	x,(8,x)
1148  0062 89            	pushw	x
1149  0063 93            	ldw	x,y
1150  0064 ee06          	ldw	x,(6,x)
1151  0066 89            	pushw	x
1152  0067 96            	ldw	x,sp
1153  0068 1c0007        	addw	x,#OFST+1
1154  006b cd0000        	call	c_ltor
1156  006e a604          	ld	a,#4
1157  0070 cd0000        	call	c_ladc
1159  0073 be02          	ldw	x,c_lreg+2
1160  0075 89            	pushw	x
1161  0076 be00          	ldw	x,c_lreg
1162  0078 89            	pushw	x
1163  0079 cd0000        	call	_FindNextCode
1165  007c 5b08          	addw	sp,#8
1166  007e 96            	ldw	x,sp
1167  007f 1c0003        	addw	x,#OFST-3
1168  0082 cd0000        	call	c_rtol
1171                     ; 253             if (addr >= func->end_addr) {
1173  0085 1e07          	ldw	x,(OFST+1,sp)
1174  0087 1c0006        	addw	x,#6
1175  008a cd0000        	call	c_ltor
1177  008d 96            	ldw	x,sp
1178  008e 1c0003        	addw	x,#OFST-3
1179  0091 cd0000        	call	c_lcmp
1181  0094 222b          	jrugt	L573
1182                     ; 254                 addr = FindNextCode(func->start_addr, func->end_addr);  // wrap
1184  0096 1e07          	ldw	x,(OFST+1,sp)
1185  0098 9093          	ldw	y,x
1186  009a ee08          	ldw	x,(8,x)
1187  009c 89            	pushw	x
1188  009d 93            	ldw	x,y
1189  009e ee06          	ldw	x,(6,x)
1190  00a0 89            	pushw	x
1191  00a1 1e0b          	ldw	x,(OFST+5,sp)
1192  00a3 9093          	ldw	y,x
1193  00a5 ee04          	ldw	x,(4,x)
1194  00a7 89            	pushw	x
1195  00a8 93            	ldw	x,y
1196  00a9 ee02          	ldw	x,(2,x)
1197  00ab 89            	pushw	x
1198  00ac cd0000        	call	_FindNextCode
1200  00af 5b08          	addw	sp,#8
1201  00b1 96            	ldw	x,sp
1202  00b2 1c0003        	addw	x,#OFST-3
1203  00b5 cd0000        	call	c_rtol
1206                     ; 255                 code_num = 1;
1208  00b8 ae0001        	ldw	x,#1
1209  00bb 1f01          	ldw	(OFST-5,sp),x
1212  00bd ac300030      	jpf	L763
1213  00c1               L573:
1214                     ; 257                 code_num++;
1216  00c1 1e01          	ldw	x,(OFST-5,sp)
1217  00c3 1c0001        	addw	x,#1
1218  00c6 1f01          	ldw	(OFST-5,sp),x
1220  00c8 ac300030      	jpf	L763
1297                     	switch	.const
1298  013f               L62:
1299  013f 0000ea61      	dc.l	60001
1300                     ; 263 void SendCodeAt(uint32_t header_addr) {
1301                     .text:	section	.text,new
1302  0000               _SendCodeAt:
1304  0000 520b          	subw	sp,#11
1305       0000000b      OFST:	set	11
1308                     ; 266     SPI_Flash_Read(header_addr, hdr, 4);
1310  0002 ae0004        	ldw	x,#4
1311  0005 89            	pushw	x
1312  0006 96            	ldw	x,sp
1313  0007 1c0009        	addw	x,#OFST-2
1314  000a 89            	pushw	x
1315  000b 1e14          	ldw	x,(OFST+9,sp)
1316  000d 89            	pushw	x
1317  000e 1e14          	ldw	x,(OFST+9,sp)
1318  0010 89            	pushw	x
1319  0011 cd0000        	call	_SPI_Flash_Read
1321  0014 5b08          	addw	sp,#8
1322                     ; 267     uint16_t freq = (hdr[0] | (hdr[1] << 8));
1324  0016 7b08          	ld	a,(OFST-3,sp)
1325  0018 5f            	clrw	x
1326  0019 97            	ld	xl,a
1327  001a 7b07          	ld	a,(OFST-4,sp)
1328  001c 02            	rlwa	x,a
1329  001d 1f05          	ldw	(OFST-6,sp),x
1331                     ; 268     uint16_t pc   = (hdr[2] | (hdr[3] << 8));
1333  001f 7b0a          	ld	a,(OFST-1,sp)
1334  0021 5f            	clrw	x
1335  0022 97            	ld	xl,a
1336  0023 7b09          	ld	a,(OFST-2,sp)
1337  0025 02            	rlwa	x,a
1338  0026 1f03          	ldw	(OFST-8,sp),x
1340                     ; 270     if (freq < 30000 || freq > 60000) freq = 38000;//validate just to be safe
1342  0028 1e05          	ldw	x,(OFST-6,sp)
1343  002a a37530        	cpw	x,#30000
1344  002d 250e          	jrult	L534
1346  002f 9c            	rvf
1347  0030 1e05          	ldw	x,(OFST-6,sp)
1348  0032 cd0000        	call	c_uitolx
1350  0035 ae013f        	ldw	x,#L62
1351  0038 cd0000        	call	c_lcmp
1353  003b 2f05          	jrslt	L334
1354  003d               L534:
1357  003d ae9470        	ldw	x,#38000
1358  0040 1f05          	ldw	(OFST-6,sp),x
1360  0042               L334:
1361                     ; 271     header_addr += 4;   // skip header, now points to pulse data
1363  0042 96            	ldw	x,sp
1364  0043 1c000e        	addw	x,#OFST+3
1365  0046 a604          	ld	a,#4
1366  0048 cd0000        	call	c_lgadc
1368                     ; 272     for (i = 0; i < MAX_PULSES; i++) {//cap at max pulses (most ir codes fit)
1370  004b 0f0b          	clr	(OFST+0,sp)
1372  004d               L734:
1373                     ; 274         SPI_Flash_Read(header_addr + i * 2, p, 2);
1375  004d ae0002        	ldw	x,#2
1376  0050 89            	pushw	x
1377  0051 96            	ldw	x,sp
1378  0052 1c0003        	addw	x,#OFST-8
1379  0055 89            	pushw	x
1380  0056 7b0f          	ld	a,(OFST+4,sp)
1381  0058 5f            	clrw	x
1382  0059 97            	ld	xl,a
1383  005a 58            	sllw	x
1384  005b cd0000        	call	c_itolx
1386  005e 96            	ldw	x,sp
1387  005f 1c0012        	addw	x,#OFST+7
1388  0062 cd0000        	call	c_ladd
1390  0065 be02          	ldw	x,c_lreg+2
1391  0067 89            	pushw	x
1392  0068 be00          	ldw	x,c_lreg
1393  006a 89            	pushw	x
1394  006b cd0000        	call	_SPI_Flash_Read
1396  006e 5b08          	addw	sp,#8
1397                     ; 275         pulses[i] = (p[0] | (p[1] << 8));
1399  0070 7b02          	ld	a,(OFST-9,sp)
1400  0072 5f            	clrw	x
1401  0073 97            	ld	xl,a
1402  0074 7b01          	ld	a,(OFST-10,sp)
1403  0076 02            	rlwa	x,a
1404  0077 7b0b          	ld	a,(OFST+0,sp)
1405  0079 905f          	clrw	y
1406  007b 9097          	ld	yl,a
1407  007d 9058          	sllw	y
1408  007f 90df0001      	ldw	(_pulses,y),x
1409                     ; 272     for (i = 0; i < MAX_PULSES; i++) {//cap at max pulses (most ir codes fit)
1411  0083 0c0b          	inc	(OFST+0,sp)
1415  0085 7b0b          	ld	a,(OFST+0,sp)
1416  0087 a16e          	cp	a,#110
1417  0089 25c2          	jrult	L734
1418                     ; 277 		delay_ms(180);
1420  008b ae00b4        	ldw	x,#180
1421  008e cd0000        	call	_delay_ms
1423                     ; 278     SendIR(pulses, pc, freq);
1425  0091 1e05          	ldw	x,(OFST-6,sp)
1426  0093 89            	pushw	x
1427  0094 7b06          	ld	a,(OFST-5,sp)
1428  0096 88            	push	a
1429  0097 ae0001        	ldw	x,#_pulses
1430  009a cd0000        	call	_SendIR
1432  009d 5b03          	addw	sp,#3
1433                     ; 279 }
1436  009f 5b0b          	addw	sp,#11
1437  00a1 81            	ret
1472                     ; 281 static uint8_t spi_transfer(uint8_t data_out) {
1473                     .text:	section	.text,new
1474  0000               L544_spi_transfer:
1476  0000 88            	push	a
1477       00000000      OFST:	set	0
1480  0001               L564:
1481                     ; 282     while (!SPI_GetFlagStatus(SPI_FLAG_TXE)) { }
1483  0001 a602          	ld	a,#2
1484  0003 cd0000        	call	_SPI_GetFlagStatus
1486  0006 4d            	tnz	a
1487  0007 27f8          	jreq	L564
1488                     ; 283     SPI_SendData(data_out);
1490  0009 7b01          	ld	a,(OFST+1,sp)
1491  000b cd0000        	call	_SPI_SendData
1494  000e               L374:
1495                     ; 284     while (!SPI_GetFlagStatus(SPI_FLAG_RXNE)) { }
1497  000e a601          	ld	a,#1
1498  0010 cd0000        	call	_SPI_GetFlagStatus
1500  0013 4d            	tnz	a
1501  0014 27f8          	jreq	L374
1502                     ; 285     return SPI_ReceiveData();
1504  0016 cd0000        	call	_SPI_ReceiveData
1508  0019 5b01          	addw	sp,#1
1509  001b 81            	ret
1561                     ; 288 void SPI_Flash_Read(uint32_t address, uint8_t *buffer, uint16_t length) {
1562                     .text:	section	.text,new
1563  0000               _SPI_Flash_Read:
1565       00000000      OFST:	set	0
1568                     ; 289     GPIO_WriteLow(FLASH_CS_PORT, FLASH_CS_PIN);
1570  0000 4b10          	push	#16
1571  0002 ae5005        	ldw	x,#20485
1572  0005 cd0000        	call	_GPIO_WriteLow
1574  0008 84            	pop	a
1575                     ; 290     spi_transfer(0x03);
1577  0009 a603          	ld	a,#3
1578  000b cd0000        	call	L544_spi_transfer
1580                     ; 291     spi_transfer((uint8_t)(address >> 16));
1582  000e 7b04          	ld	a,(OFST+4,sp)
1583  0010 cd0000        	call	L544_spi_transfer
1585                     ; 292     spi_transfer((uint8_t)(address >> 8));
1587  0013 7b05          	ld	a,(OFST+5,sp)
1588  0015 cd0000        	call	L544_spi_transfer
1590                     ; 293     spi_transfer((uint8_t)(address));
1592  0018 7b06          	ld	a,(OFST+6,sp)
1593  001a cd0000        	call	L544_spi_transfer
1596  001d 2010          	jra	L325
1597  001f               L125:
1598                     ; 296         *buffer++ = spi_transfer(0xFF);
1600  001f a6ff          	ld	a,#255
1601  0021 cd0000        	call	L544_spi_transfer
1603  0024 1e07          	ldw	x,(OFST+7,sp)
1604  0026 1c0001        	addw	x,#1
1605  0029 1f07          	ldw	(OFST+7,sp),x
1606  002b 1d0001        	subw	x,#1
1607  002e f7            	ld	(x),a
1608  002f               L325:
1609                     ; 295     while (length--) {
1611  002f 1e09          	ldw	x,(OFST+9,sp)
1612  0031 1d0001        	subw	x,#1
1613  0034 1f09          	ldw	(OFST+9,sp),x
1614  0036 1c0001        	addw	x,#1
1615  0039 a30000        	cpw	x,#0
1616  003c 26e1          	jrne	L125
1617                     ; 298     GPIO_WriteHigh(FLASH_CS_PORT, FLASH_CS_PIN);
1619  003e 4b10          	push	#16
1620  0040 ae5005        	ldw	x,#20485
1621  0043 cd0000        	call	_GPIO_WriteHigh
1623  0046 84            	pop	a
1624                     ; 299 }
1627  0047 81            	ret
1654                     ; 301 void spi_init(void) {
1655                     .text:	section	.text,new
1656  0000               _spi_init:
1660                     ; 303     GPIO_Init(GPIOC, GPIO_PIN_5, GPIO_MODE_OUT_PP_HIGH_FAST);   // SCK
1662  0000 4bf0          	push	#240
1663  0002 4b20          	push	#32
1664  0004 ae500a        	ldw	x,#20490
1665  0007 cd0000        	call	_GPIO_Init
1667  000a 85            	popw	x
1668                     ; 304     GPIO_Init(GPIOC, GPIO_PIN_6, GPIO_MODE_OUT_PP_HIGH_FAST);   // MOSI
1670  000b 4bf0          	push	#240
1671  000d 4b40          	push	#64
1672  000f ae500a        	ldw	x,#20490
1673  0012 cd0000        	call	_GPIO_Init
1675  0015 85            	popw	x
1676                     ; 305     GPIO_Init(GPIOC, GPIO_PIN_7, GPIO_MODE_IN_PU_NO_IT);        // MISO
1678  0016 4b40          	push	#64
1679  0018 4b80          	push	#128
1680  001a ae500a        	ldw	x,#20490
1681  001d cd0000        	call	_GPIO_Init
1683  0020 85            	popw	x
1684                     ; 306     GPIO_Init(FLASH_CS_PORT, FLASH_CS_PIN, GPIO_MODE_OUT_PP_HIGH_FAST);//your own, dont forget pullup
1686  0021 4bf0          	push	#240
1687  0023 4b10          	push	#16
1688  0025 ae5005        	ldw	x,#20485
1689  0028 cd0000        	call	_GPIO_Init
1691  002b 85            	popw	x
1692                     ; 308     SPI_DeInit();
1694  002c cd0000        	call	_SPI_DeInit
1696                     ; 309     SPI_Init(SPI_FIRSTBIT_MSB,
1696                     ; 310              SPI_BAUDRATEPRESCALER_2,//8 MHz
1696                     ; 311              SPI_MODE_MASTER,
1696                     ; 312              SPI_CLOCKPOLARITY_LOW,
1696                     ; 313              SPI_CLOCKPHASE_1EDGE,
1696                     ; 314              SPI_DATADIRECTION_2LINES_FULLDUPLEX,
1696                     ; 315              SPI_NSS_SOFT,
1696                     ; 316              0x07);
1698  002f 4b07          	push	#7
1699  0031 4b02          	push	#2
1700  0033 4b00          	push	#0
1701  0035 4b00          	push	#0
1702  0037 4b00          	push	#0
1703  0039 4b04          	push	#4
1704  003b 5f            	clrw	x
1705  003c cd0000        	call	_SPI_Init
1707  003f 5b06          	addw	sp,#6
1708                     ; 317     SPI_Cmd(ENABLE);
1710  0041 a601          	ld	a,#1
1711  0043 cd0000        	call	_SPI_Cmd
1713                     ; 318 }
1716  0046 81            	ret
1750                     ; 320 void main(void)
1750                     ; 321 {
1751                     .text:	section	.text,new
1752  0000               _main:
1756                     ; 322     clock_setup();
1758  0000 cd0000        	call	_clock_setup
1760                     ; 323 		HD1650_init();
1762  0003 cd0000        	call	_HD1650_init
1764                     ; 324 		HD1650_displayOn();
1766  0006 cd0000        	call	_HD1650_displayOn
1768                     ; 325 		HD1650_clearDisplay();//prevent shit on screen
1770  0009 cd0000        	call	_HD1650_clearDisplay
1772                     ; 326 		JS_init();
1774  000c cd0000        	call	_JS_init
1776                     ; 327 		delay_ms(10); 
1778  000f ae000a        	ldw	x,#10
1779  0012 cd0000        	call	_delay_ms
1781  0015               L745:
1782                     ; 329 			HD1650_writeString("MENU");
1784  0015 ae0183        	ldw	x,#L355
1785  0018 cd0000        	call	_HD1650_writeString
1787                     ; 332 				JS_Up(Projector_brute());
1789  001b 4b04          	push	#4
1790  001d ae5005        	ldw	x,#20485
1791  0020 cd0000        	call	_GPIO_ReadInputPin
1793  0023 5b01          	addw	sp,#1
1794  0025 4d            	tnz	a
1795  0026 2609          	jrne	L555
1798  0028 ae0320        	ldw	x,#800
1799  002b cd0000        	call	_delay_ms
1803  002e cd0000        	call	_Projector_brute
1805  0031               L555:
1806                     ; 333 				JS_Down(AC_brute());
1809  0031 4b40          	push	#64
1810  0033 ae500f        	ldw	x,#20495
1811  0036 cd0000        	call	_GPIO_ReadInputPin
1813  0039 5b01          	addw	sp,#1
1814  003b 4d            	tnz	a
1815  003c 2609          	jrne	L755
1818  003e ae0320        	ldw	x,#800
1819  0041 cd0000        	call	_delay_ms
1823  0044 cd0000        	call	_AC_brute
1825  0047               L755:
1826                     ; 335 				JS_Right(TV_brute());
1829  0047 4b80          	push	#128
1830  0049 ae500f        	ldw	x,#20495
1831  004c cd0000        	call	_GPIO_ReadInputPin
1833  004f 5b01          	addw	sp,#1
1834  0051 4d            	tnz	a
1835  0052 26c1          	jrne	L745
1838  0054 ae01f4        	ldw	x,#500
1839  0057 cd0000        	call	_delay_ms
1843  005a cd0000        	call	_TV_brute
1845  005d 20b6          	jra	L745
1931                     ; 341 void TV_brute(void){
1932                     .text:	section	.text,new
1933  0000               _TV_brute:
1935  0000 5204          	subw	sp,#4
1936       00000004      OFST:	set	4
1939  0002               L516:
1940                     ; 343 	JS_Up(uint8_t func_idx=0, dev_idx=0;HD1650_writeString("POWR");delay_ms(1000);Run_Brute(&device_list[dev_idx].functions[func_idx]));
1942  0002 4b04          	push	#4
1943  0004 ae5005        	ldw	x,#20485
1944  0007 cd0000        	call	_GPIO_ReadInputPin
1946  000a 5b01          	addw	sp,#1
1947  000c 4d            	tnz	a
1948  000d 262d          	jrne	L126
1951  000f ae0320        	ldw	x,#800
1952  0012 cd0000        	call	_delay_ms
1956  0015 0f03          	clr	(OFST-1,sp)
1960  0017 0f04          	clr	(OFST+0,sp)
1964  0019 ae017e        	ldw	x,#L326
1965  001c cd0000        	call	_HD1650_writeString
1969  001f ae03e8        	ldw	x,#1000
1970  0022 cd0000        	call	_delay_ms
1974  0025 7b04          	ld	a,(OFST+0,sp)
1975  0027 97            	ld	xl,a
1976  0028 a605          	ld	a,#5
1977  002a 42            	mul	x,a
1978  002b de0125        	ldw	x,(L17_device_list+2,x)
1979  002e 1f01          	ldw	(OFST-3,sp),x
1981  0030 7b03          	ld	a,(OFST-1,sp)
1982  0032 97            	ld	xl,a
1983  0033 a60a          	ld	a,#10
1984  0035 42            	mul	x,a
1985  0036 72fb01        	addw	x,(OFST-3,sp)
1986  0039 cd0000        	call	_Run_Brute
1988  003c               L126:
1989                     ; 344 	JS_Down(uint8_t func_idx=1, dev_idx=0;HD1650_writeString("VOLU");delay_ms(1000);Run_Brute(&device_list[dev_idx].functions[func_idx]));
1992  003c 4b40          	push	#64
1993  003e ae500f        	ldw	x,#20495
1994  0041 cd0000        	call	_GPIO_ReadInputPin
1996  0044 5b01          	addw	sp,#1
1997  0046 4d            	tnz	a
1998  0047 262f          	jrne	L526
2001  0049 ae0320        	ldw	x,#800
2002  004c cd0000        	call	_delay_ms
2006  004f a601          	ld	a,#1
2007  0051 6b03          	ld	(OFST-1,sp),a
2011  0053 0f04          	clr	(OFST+0,sp)
2015  0055 ae0179        	ldw	x,#L726
2016  0058 cd0000        	call	_HD1650_writeString
2020  005b ae03e8        	ldw	x,#1000
2021  005e cd0000        	call	_delay_ms
2025  0061 7b04          	ld	a,(OFST+0,sp)
2026  0063 97            	ld	xl,a
2027  0064 a605          	ld	a,#5
2028  0066 42            	mul	x,a
2029  0067 de0125        	ldw	x,(L17_device_list+2,x)
2030  006a 1f01          	ldw	(OFST-3,sp),x
2032  006c 7b03          	ld	a,(OFST-1,sp)
2033  006e 97            	ld	xl,a
2034  006f a60a          	ld	a,#10
2035  0071 42            	mul	x,a
2036  0072 72fb01        	addw	x,(OFST-3,sp)
2037  0075 cd0000        	call	_Run_Brute
2039  0078               L526:
2040                     ; 345 	JS_Ok(uint8_t func_idx=2, dev_idx=0;HD1650_writeString("VOLD");delay_ms(1000);Run_Brute(&device_list[dev_idx].functions[func_idx]));
2043  0078 4b02          	push	#2
2044  007a ae5005        	ldw	x,#20485
2045  007d cd0000        	call	_GPIO_ReadInputPin
2047  0080 5b01          	addw	sp,#1
2048  0082 4d            	tnz	a
2049  0083 262f          	jrne	L136
2052  0085 ae0320        	ldw	x,#800
2053  0088 cd0000        	call	_delay_ms
2057  008b a602          	ld	a,#2
2058  008d 6b03          	ld	(OFST-1,sp),a
2062  008f 0f04          	clr	(OFST+0,sp)
2066  0091 ae0174        	ldw	x,#L336
2067  0094 cd0000        	call	_HD1650_writeString
2071  0097 ae03e8        	ldw	x,#1000
2072  009a cd0000        	call	_delay_ms
2076  009d 7b04          	ld	a,(OFST+0,sp)
2077  009f 97            	ld	xl,a
2078  00a0 a605          	ld	a,#5
2079  00a2 42            	mul	x,a
2080  00a3 de0125        	ldw	x,(L17_device_list+2,x)
2081  00a6 1f01          	ldw	(OFST-3,sp),x
2083  00a8 7b03          	ld	a,(OFST-1,sp)
2084  00aa 97            	ld	xl,a
2085  00ab a60a          	ld	a,#10
2086  00ad 42            	mul	x,a
2087  00ae 72fb01        	addw	x,(OFST-3,sp)
2088  00b1 cd0000        	call	_Run_Brute
2090  00b4               L136:
2091                     ; 346 	JS_Right(uint8_t func_idx=4, dev_idx=0;HD1650_writeString("MUTE");delay_ms(1000);Run_Brute(&device_list[dev_idx].functions[func_idx]));
2094  00b4 4b80          	push	#128
2095  00b6 ae500f        	ldw	x,#20495
2096  00b9 cd0000        	call	_GPIO_ReadInputPin
2098  00bc 5b01          	addw	sp,#1
2099  00be 4d            	tnz	a
2100  00bf 262f          	jrne	L536
2103  00c1 ae01f4        	ldw	x,#500
2104  00c4 cd0000        	call	_delay_ms
2108  00c7 a604          	ld	a,#4
2109  00c9 6b03          	ld	(OFST-1,sp),a
2113  00cb 0f04          	clr	(OFST+0,sp)
2117  00cd ae016f        	ldw	x,#L736
2118  00d0 cd0000        	call	_HD1650_writeString
2122  00d3 ae03e8        	ldw	x,#1000
2123  00d6 cd0000        	call	_delay_ms
2127  00d9 7b04          	ld	a,(OFST+0,sp)
2128  00db 97            	ld	xl,a
2129  00dc a605          	ld	a,#5
2130  00de 42            	mul	x,a
2131  00df de0125        	ldw	x,(L17_device_list+2,x)
2132  00e2 1f01          	ldw	(OFST-3,sp),x
2134  00e4 7b03          	ld	a,(OFST-1,sp)
2135  00e6 97            	ld	xl,a
2136  00e7 a60a          	ld	a,#10
2137  00e9 42            	mul	x,a
2138  00ea 72fb01        	addw	x,(OFST-3,sp)
2139  00ed cd0000        	call	_Run_Brute
2141  00f0               L536:
2142                     ; 347 	JS_Left(break);
2145  00f0 4b10          	push	#16
2146  00f2 ae500f        	ldw	x,#20495
2147  00f5 cd0000        	call	_GPIO_ReadInputPin
2149  00f8 5b01          	addw	sp,#1
2150  00fa 4d            	tnz	a
2151  00fb 2609          	jrne	L146
2154  00fd ae0320        	ldw	x,#800
2155  0100 cd0000        	call	_delay_ms
2158                     ; 350 }
2161  0103 5b04          	addw	sp,#4
2162  0105 81            	ret
2163  0106               L146:
2164                     ; 348 	HD1650_writeString("TV");
2167  0106 ae016c        	ldw	x,#L346
2168  0109 cd0000        	call	_HD1650_writeString
2171  010c ac020002      	jpf	L516
2257                     ; 351 void Projector_brute(void){
2258                     .text:	section	.text,new
2259  0000               _Projector_brute:
2261  0000 5204          	subw	sp,#4
2262       00000004      OFST:	set	4
2265  0002               L776:
2266                     ; 353 	JS_Up(uint8_t func_idx=0, dev_idx=1;HD1650_writeString("POWR");delay_ms(1000);Run_Brute(&device_list[dev_idx].functions[func_idx]));
2268  0002 4b04          	push	#4
2269  0004 ae5005        	ldw	x,#20485
2270  0007 cd0000        	call	_GPIO_ReadInputPin
2272  000a 5b01          	addw	sp,#1
2273  000c 4d            	tnz	a
2274  000d 262f          	jrne	L307
2277  000f ae0320        	ldw	x,#800
2278  0012 cd0000        	call	_delay_ms
2282  0015 0f03          	clr	(OFST-1,sp)
2286  0017 a601          	ld	a,#1
2287  0019 6b04          	ld	(OFST+0,sp),a
2291  001b ae017e        	ldw	x,#L326
2292  001e cd0000        	call	_HD1650_writeString
2296  0021 ae03e8        	ldw	x,#1000
2297  0024 cd0000        	call	_delay_ms
2301  0027 7b04          	ld	a,(OFST+0,sp)
2302  0029 97            	ld	xl,a
2303  002a a605          	ld	a,#5
2304  002c 42            	mul	x,a
2305  002d de0125        	ldw	x,(L17_device_list+2,x)
2306  0030 1f01          	ldw	(OFST-3,sp),x
2308  0032 7b03          	ld	a,(OFST-1,sp)
2309  0034 97            	ld	xl,a
2310  0035 a60a          	ld	a,#10
2311  0037 42            	mul	x,a
2312  0038 72fb01        	addw	x,(OFST-3,sp)
2313  003b cd0000        	call	_Run_Brute
2315  003e               L307:
2316                     ; 354 	JS_Down(uint8_t func_idx=1, dev_idx=1;HD1650_writeString("VOLU");delay_ms(1000);Run_Brute(&device_list[dev_idx].functions[func_idx]));
2319  003e 4b40          	push	#64
2320  0040 ae500f        	ldw	x,#20495
2321  0043 cd0000        	call	_GPIO_ReadInputPin
2323  0046 5b01          	addw	sp,#1
2324  0048 4d            	tnz	a
2325  0049 2631          	jrne	L507
2328  004b ae0320        	ldw	x,#800
2329  004e cd0000        	call	_delay_ms
2333  0051 a601          	ld	a,#1
2334  0053 6b03          	ld	(OFST-1,sp),a
2338  0055 a601          	ld	a,#1
2339  0057 6b04          	ld	(OFST+0,sp),a
2343  0059 ae0179        	ldw	x,#L726
2344  005c cd0000        	call	_HD1650_writeString
2348  005f ae03e8        	ldw	x,#1000
2349  0062 cd0000        	call	_delay_ms
2353  0065 7b04          	ld	a,(OFST+0,sp)
2354  0067 97            	ld	xl,a
2355  0068 a605          	ld	a,#5
2356  006a 42            	mul	x,a
2357  006b de0125        	ldw	x,(L17_device_list+2,x)
2358  006e 1f01          	ldw	(OFST-3,sp),x
2360  0070 7b03          	ld	a,(OFST-1,sp)
2361  0072 97            	ld	xl,a
2362  0073 a60a          	ld	a,#10
2363  0075 42            	mul	x,a
2364  0076 72fb01        	addw	x,(OFST-3,sp)
2365  0079 cd0000        	call	_Run_Brute
2367  007c               L507:
2368                     ; 355 	JS_Ok(uint8_t func_idx=2, dev_idx=1;HD1650_writeString("VOLD");delay_ms(1000);Run_Brute(&device_list[dev_idx].functions[func_idx]));
2371  007c 4b02          	push	#2
2372  007e ae5005        	ldw	x,#20485
2373  0081 cd0000        	call	_GPIO_ReadInputPin
2375  0084 5b01          	addw	sp,#1
2376  0086 4d            	tnz	a
2377  0087 2631          	jrne	L707
2380  0089 ae0320        	ldw	x,#800
2381  008c cd0000        	call	_delay_ms
2385  008f a602          	ld	a,#2
2386  0091 6b03          	ld	(OFST-1,sp),a
2390  0093 a601          	ld	a,#1
2391  0095 6b04          	ld	(OFST+0,sp),a
2395  0097 ae0174        	ldw	x,#L336
2396  009a cd0000        	call	_HD1650_writeString
2400  009d ae03e8        	ldw	x,#1000
2401  00a0 cd0000        	call	_delay_ms
2405  00a3 7b04          	ld	a,(OFST+0,sp)
2406  00a5 97            	ld	xl,a
2407  00a6 a605          	ld	a,#5
2408  00a8 42            	mul	x,a
2409  00a9 de0125        	ldw	x,(L17_device_list+2,x)
2410  00ac 1f01          	ldw	(OFST-3,sp),x
2412  00ae 7b03          	ld	a,(OFST-1,sp)
2413  00b0 97            	ld	xl,a
2414  00b1 a60a          	ld	a,#10
2415  00b3 42            	mul	x,a
2416  00b4 72fb01        	addw	x,(OFST-3,sp)
2417  00b7 cd0000        	call	_Run_Brute
2419  00ba               L707:
2420                     ; 356 	JS_Right(uint8_t func_idx=5, dev_idx=1;HD1650_writeString("PLAY");delay_ms(1000);Run_Brute(&device_list[dev_idx].functions[func_idx]));
2423  00ba 4b80          	push	#128
2424  00bc ae500f        	ldw	x,#20495
2425  00bf cd0000        	call	_GPIO_ReadInputPin
2427  00c2 5b01          	addw	sp,#1
2428  00c4 4d            	tnz	a
2429  00c5 2631          	jrne	L117
2432  00c7 ae01f4        	ldw	x,#500
2433  00ca cd0000        	call	_delay_ms
2437  00cd a605          	ld	a,#5
2438  00cf 6b03          	ld	(OFST-1,sp),a
2442  00d1 a601          	ld	a,#1
2443  00d3 6b04          	ld	(OFST+0,sp),a
2447  00d5 ae0167        	ldw	x,#L317
2448  00d8 cd0000        	call	_HD1650_writeString
2452  00db ae03e8        	ldw	x,#1000
2453  00de cd0000        	call	_delay_ms
2457  00e1 7b04          	ld	a,(OFST+0,sp)
2458  00e3 97            	ld	xl,a
2459  00e4 a605          	ld	a,#5
2460  00e6 42            	mul	x,a
2461  00e7 de0125        	ldw	x,(L17_device_list+2,x)
2462  00ea 1f01          	ldw	(OFST-3,sp),x
2464  00ec 7b03          	ld	a,(OFST-1,sp)
2465  00ee 97            	ld	xl,a
2466  00ef a60a          	ld	a,#10
2467  00f1 42            	mul	x,a
2468  00f2 72fb01        	addw	x,(OFST-3,sp)
2469  00f5 cd0000        	call	_Run_Brute
2471  00f8               L117:
2472                     ; 357 	JS_Left(break);
2475  00f8 4b10          	push	#16
2476  00fa ae500f        	ldw	x,#20495
2477  00fd cd0000        	call	_GPIO_ReadInputPin
2479  0100 5b01          	addw	sp,#1
2480  0102 4d            	tnz	a
2481  0103 2609          	jrne	L517
2484  0105 ae0320        	ldw	x,#800
2485  0108 cd0000        	call	_delay_ms
2488                     ; 360 }
2491  010b 5b04          	addw	sp,#4
2492  010d 81            	ret
2493  010e               L517:
2494                     ; 358 	HD1650_writeString("PROJ");
2497  010e ae0162        	ldw	x,#L717
2498  0111 cd0000        	call	_HD1650_writeString
2501  0114 ac020002      	jpf	L776
2573                     ; 361 void AC_brute(void){
2574                     .text:	section	.text,new
2575  0000               _AC_brute:
2577  0000 5204          	subw	sp,#4
2578       00000004      OFST:	set	4
2581  0002               L747:
2582                     ; 363 	JS_Up(uint8_t func_idx=0, dev_idx=2;HD1650_writeString("OFF");delay_ms(1000);Run_Brute(&device_list[dev_idx].functions[func_idx]));
2584  0002 4b04          	push	#4
2585  0004 ae5005        	ldw	x,#20485
2586  0007 cd0000        	call	_GPIO_ReadInputPin
2588  000a 5b01          	addw	sp,#1
2589  000c 4d            	tnz	a
2590  000d 262f          	jrne	L357
2593  000f ae0320        	ldw	x,#800
2594  0012 cd0000        	call	_delay_ms
2598  0015 0f03          	clr	(OFST-1,sp)
2602  0017 a602          	ld	a,#2
2603  0019 6b04          	ld	(OFST+0,sp),a
2607  001b ae015e        	ldw	x,#L557
2608  001e cd0000        	call	_HD1650_writeString
2612  0021 ae03e8        	ldw	x,#1000
2613  0024 cd0000        	call	_delay_ms
2617  0027 7b04          	ld	a,(OFST+0,sp)
2618  0029 97            	ld	xl,a
2619  002a a605          	ld	a,#5
2620  002c 42            	mul	x,a
2621  002d de0125        	ldw	x,(L17_device_list+2,x)
2622  0030 1f01          	ldw	(OFST-3,sp),x
2624  0032 7b03          	ld	a,(OFST-1,sp)
2625  0034 97            	ld	xl,a
2626  0035 a60a          	ld	a,#10
2627  0037 42            	mul	x,a
2628  0038 72fb01        	addw	x,(OFST-3,sp)
2629  003b cd0000        	call	_Run_Brute
2631  003e               L357:
2632                     ; 365 	JS_Ok(uint8_t func_idx=2, dev_idx=2;HD1650_writeString("COLH");delay_ms(1000);Run_Brute(&device_list[dev_idx].functions[func_idx]));
2635  003e 4b02          	push	#2
2636  0040 ae5005        	ldw	x,#20485
2637  0043 cd0000        	call	_GPIO_ReadInputPin
2639  0046 5b01          	addw	sp,#1
2640  0048 4d            	tnz	a
2641  0049 2631          	jrne	L757
2644  004b ae0320        	ldw	x,#800
2645  004e cd0000        	call	_delay_ms
2649  0051 a602          	ld	a,#2
2650  0053 6b03          	ld	(OFST-1,sp),a
2654  0055 a602          	ld	a,#2
2655  0057 6b04          	ld	(OFST+0,sp),a
2659  0059 ae0159        	ldw	x,#L167
2660  005c cd0000        	call	_HD1650_writeString
2664  005f ae03e8        	ldw	x,#1000
2665  0062 cd0000        	call	_delay_ms
2669  0065 7b04          	ld	a,(OFST+0,sp)
2670  0067 97            	ld	xl,a
2671  0068 a605          	ld	a,#5
2672  006a 42            	mul	x,a
2673  006b de0125        	ldw	x,(L17_device_list+2,x)
2674  006e 1f01          	ldw	(OFST-3,sp),x
2676  0070 7b03          	ld	a,(OFST-1,sp)
2677  0072 97            	ld	xl,a
2678  0073 a60a          	ld	a,#10
2679  0075 42            	mul	x,a
2680  0076 72fb01        	addw	x,(OFST-3,sp)
2681  0079 cd0000        	call	_Run_Brute
2683  007c               L757:
2684                     ; 366 	JS_Right(uint8_t func_idx=4, dev_idx=2;HD1650_writeString("HEHI");delay_ms(1000);Run_Brute(&device_list[dev_idx].functions[func_idx]));
2687  007c 4b80          	push	#128
2688  007e ae500f        	ldw	x,#20495
2689  0081 cd0000        	call	_GPIO_ReadInputPin
2691  0084 5b01          	addw	sp,#1
2692  0086 4d            	tnz	a
2693  0087 2631          	jrne	L367
2696  0089 ae01f4        	ldw	x,#500
2697  008c cd0000        	call	_delay_ms
2701  008f a604          	ld	a,#4
2702  0091 6b03          	ld	(OFST-1,sp),a
2706  0093 a602          	ld	a,#2
2707  0095 6b04          	ld	(OFST+0,sp),a
2711  0097 ae0154        	ldw	x,#L567
2712  009a cd0000        	call	_HD1650_writeString
2716  009d ae03e8        	ldw	x,#1000
2717  00a0 cd0000        	call	_delay_ms
2721  00a3 7b04          	ld	a,(OFST+0,sp)
2722  00a5 97            	ld	xl,a
2723  00a6 a605          	ld	a,#5
2724  00a8 42            	mul	x,a
2725  00a9 de0125        	ldw	x,(L17_device_list+2,x)
2726  00ac 1f01          	ldw	(OFST-3,sp),x
2728  00ae 7b03          	ld	a,(OFST-1,sp)
2729  00b0 97            	ld	xl,a
2730  00b1 a60a          	ld	a,#10
2731  00b3 42            	mul	x,a
2732  00b4 72fb01        	addw	x,(OFST-3,sp)
2733  00b7 cd0000        	call	_Run_Brute
2735  00ba               L367:
2736                     ; 367 	JS_Left(break);
2739  00ba 4b10          	push	#16
2740  00bc ae500f        	ldw	x,#20495
2741  00bf cd0000        	call	_GPIO_ReadInputPin
2743  00c2 5b01          	addw	sp,#1
2744  00c4 4d            	tnz	a
2745  00c5 2609          	jrne	L767
2748  00c7 ae0320        	ldw	x,#800
2749  00ca cd0000        	call	_delay_ms
2752                     ; 370 }
2755  00cd 5b04          	addw	sp,#4
2756  00cf 81            	ret
2757  00d0               L767:
2758                     ; 368 	HD1650_writeString("AC");
2761  00d0 ae0151        	ldw	x,#L177
2762  00d3 cd0000        	call	_HD1650_writeString
2765  00d6 ac020002      	jpf	L747
2851                     ; 373 void Audio_brute(void){
2852                     .text:	section	.text,new
2853  0000               _Audio_brute:
2855  0000 5204          	subw	sp,#4
2856       00000004      OFST:	set	4
2859  0002               L5201:
2860                     ; 375 	JS_Up(uint8_t func_idx=0, dev_idx=3;HD1650_writeString("POWR");Run_Brute(&device_list[dev_idx].functions[func_idx]));
2862  0002 4b04          	push	#4
2863  0004 ae5005        	ldw	x,#20485
2864  0007 cd0000        	call	_GPIO_ReadInputPin
2866  000a 5b01          	addw	sp,#1
2867  000c 4d            	tnz	a
2868  000d 2629          	jrne	L1301
2871  000f ae0320        	ldw	x,#800
2872  0012 cd0000        	call	_delay_ms
2876  0015 0f03          	clr	(OFST-1,sp)
2880  0017 a603          	ld	a,#3
2881  0019 6b04          	ld	(OFST+0,sp),a
2885  001b ae017e        	ldw	x,#L326
2886  001e cd0000        	call	_HD1650_writeString
2890  0021 7b04          	ld	a,(OFST+0,sp)
2891  0023 97            	ld	xl,a
2892  0024 a605          	ld	a,#5
2893  0026 42            	mul	x,a
2894  0027 de0125        	ldw	x,(L17_device_list+2,x)
2895  002a 1f01          	ldw	(OFST-3,sp),x
2897  002c 7b03          	ld	a,(OFST-1,sp)
2898  002e 97            	ld	xl,a
2899  002f a60a          	ld	a,#10
2900  0031 42            	mul	x,a
2901  0032 72fb01        	addw	x,(OFST-3,sp)
2902  0035 cd0000        	call	_Run_Brute
2904  0038               L1301:
2905                     ; 376 	JS_Down(uint8_t func_idx=1, dev_idx=3;HD1650_writeString("MUTE");Run_Brute(&device_list[dev_idx].functions[func_idx]));
2908  0038 4b40          	push	#64
2909  003a ae500f        	ldw	x,#20495
2910  003d cd0000        	call	_GPIO_ReadInputPin
2912  0040 5b01          	addw	sp,#1
2913  0042 4d            	tnz	a
2914  0043 262b          	jrne	L3301
2917  0045 ae0320        	ldw	x,#800
2918  0048 cd0000        	call	_delay_ms
2922  004b a601          	ld	a,#1
2923  004d 6b03          	ld	(OFST-1,sp),a
2927  004f a603          	ld	a,#3
2928  0051 6b04          	ld	(OFST+0,sp),a
2932  0053 ae016f        	ldw	x,#L736
2933  0056 cd0000        	call	_HD1650_writeString
2937  0059 7b04          	ld	a,(OFST+0,sp)
2938  005b 97            	ld	xl,a
2939  005c a605          	ld	a,#5
2940  005e 42            	mul	x,a
2941  005f de0125        	ldw	x,(L17_device_list+2,x)
2942  0062 1f01          	ldw	(OFST-3,sp),x
2944  0064 7b03          	ld	a,(OFST-1,sp)
2945  0066 97            	ld	xl,a
2946  0067 a60a          	ld	a,#10
2947  0069 42            	mul	x,a
2948  006a 72fb01        	addw	x,(OFST-3,sp)
2949  006d cd0000        	call	_Run_Brute
2951  0070               L3301:
2952                     ; 377 	JS_Left(uint8_t func_idx=6, dev_idx=3;HD1650_writeString("PAUS");Run_Brute(&device_list[dev_idx].functions[func_idx]));
2955  0070 4b10          	push	#16
2956  0072 ae500f        	ldw	x,#20495
2957  0075 cd0000        	call	_GPIO_ReadInputPin
2959  0078 5b01          	addw	sp,#1
2960  007a 4d            	tnz	a
2961  007b 262b          	jrne	L5301
2964  007d ae0320        	ldw	x,#800
2965  0080 cd0000        	call	_delay_ms
2969  0083 a606          	ld	a,#6
2970  0085 6b03          	ld	(OFST-1,sp),a
2974  0087 a603          	ld	a,#3
2975  0089 6b04          	ld	(OFST+0,sp),a
2979  008b ae014c        	ldw	x,#L7301
2980  008e cd0000        	call	_HD1650_writeString
2984  0091 7b04          	ld	a,(OFST+0,sp)
2985  0093 97            	ld	xl,a
2986  0094 a605          	ld	a,#5
2987  0096 42            	mul	x,a
2988  0097 de0125        	ldw	x,(L17_device_list+2,x)
2989  009a 1f01          	ldw	(OFST-3,sp),x
2991  009c 7b03          	ld	a,(OFST-1,sp)
2992  009e 97            	ld	xl,a
2993  009f a60a          	ld	a,#10
2994  00a1 42            	mul	x,a
2995  00a2 72fb01        	addw	x,(OFST-3,sp)
2996  00a5 cd0000        	call	_Run_Brute
2998  00a8               L5301:
2999                     ; 378 	JS_Right(uint8_t func_idx=7, dev_idx=3;HD1650_writeString("PLAY");Run_Brute(&device_list[dev_idx].functions[func_idx]));
3002  00a8 4b80          	push	#128
3003  00aa ae500f        	ldw	x,#20495
3004  00ad cd0000        	call	_GPIO_ReadInputPin
3006  00b0 5b01          	addw	sp,#1
3007  00b2 4d            	tnz	a
3008  00b3 262b          	jrne	L1401
3011  00b5 ae01f4        	ldw	x,#500
3012  00b8 cd0000        	call	_delay_ms
3016  00bb a607          	ld	a,#7
3017  00bd 6b03          	ld	(OFST-1,sp),a
3021  00bf a603          	ld	a,#3
3022  00c1 6b04          	ld	(OFST+0,sp),a
3026  00c3 ae0167        	ldw	x,#L317
3027  00c6 cd0000        	call	_HD1650_writeString
3031  00c9 7b04          	ld	a,(OFST+0,sp)
3032  00cb 97            	ld	xl,a
3033  00cc a605          	ld	a,#5
3034  00ce 42            	mul	x,a
3035  00cf de0125        	ldw	x,(L17_device_list+2,x)
3036  00d2 1f01          	ldw	(OFST-3,sp),x
3038  00d4 7b03          	ld	a,(OFST-1,sp)
3039  00d6 97            	ld	xl,a
3040  00d7 a60a          	ld	a,#10
3041  00d9 42            	mul	x,a
3042  00da 72fb01        	addw	x,(OFST-3,sp)
3043  00dd cd0000        	call	_Run_Brute
3045  00e0               L1401:
3046                     ; 379 	JS_Left(HD1650_writeString("MENU");break);
3049  00e0 4b10          	push	#16
3050  00e2 ae500f        	ldw	x,#20495
3051  00e5 cd0000        	call	_GPIO_ReadInputPin
3053  00e8 5b01          	addw	sp,#1
3054  00ea 4d            	tnz	a
3055  00eb 2703          	jreq	L05
3056  00ed cc0002        	jp	L5201
3057  00f0               L05:
3060  00f0 ae0320        	ldw	x,#800
3061  00f3 cd0000        	call	_delay_ms
3065  00f6 ae0183        	ldw	x,#L355
3066  00f9 cd0000        	call	_HD1650_writeString
3069                     ; 381 }
3072  00fc 5b04          	addw	sp,#4
3073  00fe 81            	ret
3158                     ; 383 void ReceiveIR(void)
3158                     ; 384 {
3159                     .text:	section	.text,new
3160  0000               _ReceiveIR:
3162  0000 520e          	subw	sp,#14
3163       0000000e      OFST:	set	14
3166  0002               L3701:
3167                     ; 388         restart_capture = 0;
3169  0002 0f0d          	clr	(OFST-1,sp)
3171                     ; 389         capture_abort = 0;
3173  0004 0f0e          	clr	(OFST+0,sp)
3175                     ; 390         first_edge = 1;
3177  0006 35010001      	mov	_first_edge,#1
3178                     ; 391         pulse_count = 0;
3180  000a 725f00de      	clr	_pulse_count
3181                     ; 392         capture_done = 0;
3183  000e 725f00dd      	clr	_capture_done
3184                     ; 393         dly_count = 0;
3186  0012 725f0000      	clr	_dly_count
3187                     ; 394 				HD1650_clearDisplay();
3189  0016 cd0000        	call	_HD1650_clearDisplay
3191                     ; 395 				HD1650_writeString("VAIT");
3193  0019 ae0147        	ldw	x,#L1011
3194  001c cd0000        	call	_HD1650_writeString
3196                     ; 396 				HD1650_colonOn();
3198  001f cd0000        	call	_HD1650_colonOn
3200                     ; 397         EXTI_setup();
3202  0022 cd0000        	call	_EXTI_setup
3204                     ; 398 				TIM5_setup();//timer edges
3206  0025 cd0000        	call	_TIM5_setup
3208                     ; 399         TIM5_ITConfig(TIM5_IT_UPDATE, ENABLE);//enable interrupts just for this
3210  0028 ae0101        	ldw	x,#257
3211  002b cd0000        	call	_TIM5_ITConfig
3213                     ; 400         TIM5_SetCounter(0);
3215  002e 5f            	clrw	x
3216  002f cd0000        	call	_TIM5_SetCounter
3218                     ; 402         enableInterrupts();
3221  0032 9a            rim
3225  0033 201b          	jra	L5011
3226  0035               L3011:
3227                     ; 404 				JS_Left(tim_cleanup();HD1650_colonOff();break);
3229  0035 4b10          	push	#16
3230  0037 ae500f        	ldw	x,#20495
3231  003a cd0000        	call	_GPIO_ReadInputPin
3233  003d 5b01          	addw	sp,#1
3234  003f 4d            	tnz	a
3235  0040 260e          	jrne	L5011
3238  0042 ae0320        	ldw	x,#800
3239  0045 cd0000        	call	_delay_ms
3243  0048 cd0000        	call	_tim_cleanup
3247  004b cd0000        	call	_HD1650_colonOff
3251  004e 200a          	jra	L7011
3252  0050               L5011:
3253                     ; 403         while (first_edge && !capture_abort) {
3255  0050 725d0001      	tnz	_first_edge
3256  0054 2704          	jreq	L7011
3258  0056 0d0e          	tnz	(OFST+0,sp)
3259  0058 27db          	jreq	L3011
3260  005a               L7011:
3261                     ; 406 				if (capture_abort) {
3263  005a 0d0e          	tnz	(OFST+0,sp)
3264  005c 271d          	jreq	L1211
3265                     ; 407 						tim_cleanup();
3267  005e cd0000        	call	_tim_cleanup
3269                     ; 408 						HD1650_colonOff();
3271  0061 cd0000        	call	_HD1650_colonOff
3273                     ; 409 					  break;
3274  0064               L7701:
3275                     ; 443 }
3278  0064 5b0e          	addw	sp,#14
3279  0066 81            	ret
3280  0067               L7111:
3281                     ; 412 					  if (col){
3283  0067 725d0000      	tnz	_col
3284  006b 2703          	jreq	L5211
3285                     ; 413 							 HD1650_colonOff();
3287  006d cd0000        	call	_HD1650_colonOff
3289  0070               L5211:
3290                     ; 415 						if (dly_count>2) {  // 130 ms end
3292  0070 c60000        	ld	a,_dly_count
3293  0073 a103          	cp	a,#3
3294  0075 2504          	jrult	L1211
3295                     ; 416 								capture_done = 1;
3297  0077 350100dd      	mov	_capture_done,#1
3298  007b               L1211:
3299                     ; 411 				while (!capture_done) {
3301  007b 725d00dd      	tnz	_capture_done
3302  007f 27e6          	jreq	L7111
3303                     ; 419 				tim_cleanup();              //stop timer
3305  0081 cd0000        	call	_tim_cleanup
3307                     ; 420 				EXTI_DeInit();
3309  0084 cd0000        	call	_EXTI_DeInit
3311                     ; 421 				ITC_DeInit();
3313  0087 cd0000        	call	_ITC_DeInit
3315                     ; 422         HD1650_colonOn(); //captured code success
3317  008a cd0000        	call	_HD1650_colonOn
3319                     ; 423 				delay_ms(500);
3321  008d ae01f4        	ldw	x,#500
3322  0090 cd0000        	call	_delay_ms
3324                     ; 424 				HD1650_colonOff();
3326  0093 cd0000        	call	_HD1650_colonOff
3328                     ; 426 				uint16_t valid_count = pulse_count - 1;
3330  0096 c600de        	ld	a,_pulse_count
3331  0099 5f            	clrw	x
3332  009a 97            	ld	xl,a
3333  009b 5a            	decw	x
3334  009c 1f09          	ldw	(OFST-5,sp),x
3336                     ; 428 				for (i = 0; i < valid_count; i++) {
3338  009e 5f            	clrw	x
3339  009f 1f0b          	ldw	(OFST-3,sp),x
3342  00a1 204b          	jra	L5311
3343  00a3               L1311:
3344                     ; 429 							if ((i & 1) && pulses[i] > TRIM_US) {   // odd index = space, > 10 ms gap
3346  00a3 7b0c          	ld	a,(OFST-2,sp)
3347  00a5 a501          	bcp	a,#1
3348  00a7 273e          	jreq	L1411
3350  00a9 1e0b          	ldw	x,(OFST-3,sp)
3351  00ab 58            	sllw	x
3352  00ac 9093          	ldw	y,x
3353  00ae 90de0001      	ldw	y,(_pulses,y)
3354  00b2 90a34e21      	cpw	y,#20001
3355  00b6 252f          	jrult	L1411
3356                     ; 430 									valid_count = i;   // cut here, keep only first frame
3358  00b8 1e0b          	ldw	x,(OFST-3,sp)
3359  00ba 1f09          	ldw	(OFST-5,sp),x
3361                     ; 431 									break;
3362  00bc               L7311:
3363                     ; 434         detect_result_t detected = SimpleProtocol(pulses, valid_count);
3365  00bc 1e09          	ldw	x,(OFST-5,sp)
3366  00be 89            	pushw	x
3367  00bf ae0001        	ldw	x,#_pulses
3368  00c2 89            	pushw	x
3369  00c3 96            	ldw	x,sp
3370  00c4 1c0009        	addw	x,#OFST-5
3371  00c7 89            	pushw	x
3372  00c8 cd0000        	call	_SimpleProtocol
3374  00cb 5b06          	addw	sp,#6
3375                     ; 435 				HD1650_writeString(detected.name);//print detected result on screen
3377  00cd 1e07          	ldw	x,(OFST-7,sp)
3378  00cf cd0000        	call	_HD1650_writeString
3380  00d2               L3411:
3381                     ; 438             JS_Left(break);
3383  00d2 4b10          	push	#16
3384  00d4 ae500f        	ldw	x,#20495
3385  00d7 cd0000        	call	_GPIO_ReadInputPin
3387  00da 5b01          	addw	sp,#1
3388  00dc 4d            	tnz	a
3389  00dd 2617          	jrne	L7411
3392  00df ae0320        	ldw	x,#800
3393  00e2 cd0000        	call	_delay_ms
3397  00e5 2026          	jra	L5701
3398  00e7               L1411:
3399                     ; 428 				for (i = 0; i < valid_count; i++) {
3401  00e7 1e0b          	ldw	x,(OFST-3,sp)
3402  00e9 1c0001        	addw	x,#1
3403  00ec 1f0b          	ldw	(OFST-3,sp),x
3405  00ee               L5311:
3408  00ee 1e0b          	ldw	x,(OFST-3,sp)
3409  00f0 1309          	cpw	x,(OFST-5,sp)
3410  00f2 25af          	jrult	L1311
3411  00f4 20c6          	jra	L7311
3412  00f6               L7411:
3413                     ; 439 						JS_Right(restart_capture = 1; break);//reset capture
3416  00f6 4b80          	push	#128
3417  00f8 ae500f        	ldw	x,#20495
3418  00fb cd0000        	call	_GPIO_ReadInputPin
3420  00fe 5b01          	addw	sp,#1
3421  0100 4d            	tnz	a
3422  0101 2615          	jrne	L1511
3425  0103 ae01f4        	ldw	x,#500
3426  0106 cd0000        	call	_delay_ms
3430  0109 a601          	ld	a,#1
3431  010b 6b0d          	ld	(OFST-1,sp),a
3434  010d               L5701:
3435                     ; 442     } while (restart_capture);
3437  010d 0d0d          	tnz	(OFST-1,sp)
3438  010f 2703          	jreq	L45
3439  0111 cc0002        	jp	L3701
3440  0114               L45:
3441  0114 ac640064      	jpf	L7701
3442  0118               L1511:
3443                     ; 440             JS_Up(SendIR(pulses, valid_count, detected.frequency));
3446  0118 4b04          	push	#4
3447  011a ae5005        	ldw	x,#20485
3448  011d cd0000        	call	_GPIO_ReadInputPin
3450  0120 5b01          	addw	sp,#1
3451  0122 4d            	tnz	a
3452  0123 26ad          	jrne	L3411
3455  0125 ae0320        	ldw	x,#800
3456  0128 cd0000        	call	_delay_ms
3460  012b 1e05          	ldw	x,(OFST-9,sp)
3461  012d 89            	pushw	x
3462  012e 7b0c          	ld	a,(OFST-2,sp)
3463  0130 88            	push	a
3464  0131 ae0001        	ldw	x,#_pulses
3465  0134 cd0000        	call	_SendIR
3467  0137 5b03          	addw	sp,#3
3468  0139 2097          	jra	L3411
3562                     	switch	.const
3563  0143               L06:
3564  0143 00000064      	dc.l	100
3565                     ; 445 void SendIR(const uint16_t *data, uint8_t count,
3565                     ; 446             uint16_t freq_hz)
3565                     ; 447 {
3566                     .text:	section	.text,new
3567  0000               _SendIR:
3569  0000 89            	pushw	x
3570  0001 5209          	subw	sp,#9
3571       00000009      OFST:	set	9
3574                     ; 448 		HD1650_colonOn(); //indicate end of pulse train
3576  0003 cd0000        	call	_HD1650_colonOn
3578                     ; 450     uint8_t level = 1;      // start with mark
3580  0006 a601          	ld	a,#1
3581  0008 6b05          	ld	(OFST-4,sp),a
3583                     ; 451     uint16_t period = (F_CPU / freq_hz) - 1;   // 4 MHz / freq
3585  000a 1e0f          	ldw	x,(OFST+6,sp)
3586  000c cd0000        	call	c_uitolx
3588  000f 96            	ldw	x,sp
3589  0010 1c0001        	addw	x,#OFST-8
3590  0013 cd0000        	call	c_rtol
3593  0016 ae2400        	ldw	x,#9216
3594  0019 bf02          	ldw	c_lreg+2,x
3595  001b ae00f4        	ldw	x,#244
3596  001e bf00          	ldw	c_lreg,x
3597  0020 96            	ldw	x,sp
3598  0021 1c0001        	addw	x,#OFST-8
3599  0024 cd0000        	call	c_ludv
3601  0027 be02          	ldw	x,c_lreg+2
3602  0029 5a            	decw	x
3603  002a 1f08          	ldw	(OFST-1,sp),x
3605                     ; 452 		TIM5_setup();
3607  002c cd0000        	call	_TIM5_setup
3609                     ; 453     TIM1_DeInit();
3611  002f cd0000        	call	_TIM1_DeInit
3613                     ; 454 		TIM1_Cmd(ENABLE);
3615  0032 a601          	ld	a,#1
3616  0034 cd0000        	call	_TIM1_Cmd
3618                     ; 455     TIM1_TimeBaseInit(0, TIM1_COUNTERMODE_UP, period, 0);
3620  0037 4b00          	push	#0
3621  0039 1e09          	ldw	x,(OFST+0,sp)
3622  003b 89            	pushw	x
3623  003c 4b00          	push	#0
3624  003e 5f            	clrw	x
3625  003f cd0000        	call	_TIM1_TimeBaseInit
3627  0042 5b04          	addw	sp,#4
3628                     ; 456     uint16_t cmp = (uint16_t)((uint32_t)period * 33 / 100);//almost always 33 percent
3630  0044 1e08          	ldw	x,(OFST-1,sp)
3631  0046 a621          	ld	a,#33
3632  0048 cd0000        	call	c_cmulx
3634  004b ae0143        	ldw	x,#L06
3635  004e cd0000        	call	c_ludv
3637  0051 be02          	ldw	x,c_lreg+2
3638  0053 1f08          	ldw	(OFST-1,sp),x
3640                     ; 458     TIM1_OC1Init(TIM1_OCMODE_PWM1,            
3640                     ; 459                  TIM1_OUTPUTSTATE_ENABLE,
3640                     ; 460                  TIM1_OUTPUTNSTATE_DISABLE,      
3640                     ; 461                  cmp,                            
3640                     ; 462                  TIM1_OCPOLARITY_HIGH,            
3640                     ; 463                  TIM1_OCNPOLARITY_HIGH,
3640                     ; 464                  TIM1_OCIDLESTATE_RESET, 
3640                     ; 465                  TIM1_OCNIDLESTATE_RESET);
3642  0055 4b00          	push	#0
3643  0057 4b00          	push	#0
3644  0059 4b00          	push	#0
3645  005b 4b00          	push	#0
3646  005d 1e0c          	ldw	x,(OFST+3,sp)
3647  005f 89            	pushw	x
3648  0060 4b00          	push	#0
3649  0062 ae6011        	ldw	x,#24593
3650  0065 cd0000        	call	_TIM1_OC1Init
3652  0068 5b07          	addw	sp,#7
3653                     ; 467     TIM1_CtrlPWMOutputs(DISABLE);
3655  006a 4f            	clr	a
3656  006b cd0000        	call	_TIM1_CtrlPWMOutputs
3658                     ; 469     for (i = 0; i < count; i++) {
3660  006e 5f            	clrw	x
3661  006f 1f06          	ldw	(OFST-3,sp),x
3664  0071 202a          	jra	L5121
3665  0073               L1121:
3666                     ; 470         uint16_t dur = data[i];
3668  0073 1e06          	ldw	x,(OFST-3,sp)
3669  0075 58            	sllw	x
3670  0076 72fb0a        	addw	x,(OFST+1,sp)
3671  0079 fe            	ldw	x,(x)
3672  007a 1f08          	ldw	(OFST-1,sp),x
3674                     ; 471         if (level)
3676  007c 0d05          	tnz	(OFST-4,sp)
3677  007e 2707          	jreq	L1221
3678                     ; 472             TIM1_CtrlPWMOutputs(ENABLE);   // mark
3680  0080 a601          	ld	a,#1
3681  0082 cd0000        	call	_TIM1_CtrlPWMOutputs
3684  0085 2004          	jra	L3221
3685  0087               L1221:
3686                     ; 474             TIM1_CtrlPWMOutputs(DISABLE);  // space		
3688  0087 4f            	clr	a
3689  0088 cd0000        	call	_TIM1_CtrlPWMOutputs
3691  008b               L3221:
3692                     ; 475         tx_delay_us(dur);
3694  008b 1e08          	ldw	x,(OFST-1,sp)
3695  008d cd0000        	call	_tx_delay_us
3697                     ; 476 				level ^= 1;				
3699  0090 7b05          	ld	a,(OFST-4,sp)
3700  0092 a801          	xor	a,#1
3701  0094 6b05          	ld	(OFST-4,sp),a
3703                     ; 469     for (i = 0; i < count; i++) {
3705  0096 1e06          	ldw	x,(OFST-3,sp)
3706  0098 1c0001        	addw	x,#1
3707  009b 1f06          	ldw	(OFST-3,sp),x
3709  009d               L5121:
3712  009d 7b0e          	ld	a,(OFST+5,sp)
3713  009f 5f            	clrw	x
3714  00a0 97            	ld	xl,a
3715  00a1 bf00          	ldw	c_x,x
3716  00a3 1e06          	ldw	x,(OFST-3,sp)
3717  00a5 b300          	cpw	x,c_x
3718  00a7 25ca          	jrult	L1121
3719                     ; 478     TIM1_CtrlPWMOutputs(DISABLE);
3721  00a9 4f            	clr	a
3722  00aa cd0000        	call	_TIM1_CtrlPWMOutputs
3724                     ; 479     TIM1_Cmd(DISABLE);
3726  00ad 4f            	clr	a
3727  00ae cd0000        	call	_TIM1_Cmd
3729                     ; 480 		tim_cleanup();
3731  00b1 cd0000        	call	_tim_cleanup
3733                     ; 481 		HD1650_colonOff(); 
3735  00b4 cd0000        	call	_HD1650_colonOff
3737                     ; 482 }
3740  00b7 5b0b          	addw	sp,#11
3741  00b9 81            	ret
3769                     ; 484 void tim_cleanup(void){//default state
3770                     .text:	section	.text,new
3771  0000               _tim_cleanup:
3775                     ; 485 	disableInterrupts();
3778  0000 9b            sim
3780                     ; 486 	TIM5_ITConfig(TIM5_IT_UPDATE, DISABLE);
3783  0001 ae0100        	ldw	x,#256
3784  0004 cd0000        	call	_TIM5_ITConfig
3786                     ; 487 	TIM5_Cmd(DISABLE);
3788  0007 4f            	clr	a
3789  0008 cd0000        	call	_TIM5_Cmd
3791                     ; 488 	TIM5_SetCounter(0);//just to be sure
3793  000b 5f            	clrw	x
3794  000c cd0000        	call	_TIM5_SetCounter
3796                     ; 489 	TIM5_DeInit(); 
3798  000f cd0000        	call	_TIM5_DeInit
3800                     ; 490 }
3803  0012 81            	ret
3828                     ; 491 void spi_cleanup(void){//default state
3829                     .text:	section	.text,new
3830  0000               _spi_cleanup:
3834                     ; 492   SPI_DeInit();
3836  0000 cd0000        	call	_SPI_DeInit
3838                     ; 493 	SPI_Cmd(DISABLE);
3840  0003 4f            	clr	a
3841  0004 cd0000        	call	_SPI_Cmd
3843                     ; 494 }
3846  0007 81            	ret
3870                     ; 495 void JS_init(void)
3870                     ; 496 {
3871                     .text:	section	.text,new
3872  0000               _JS_init:
3876                     ; 497     GPIO_Init(JS_RIGHT, GPIO_MODE_IN_PU_NO_IT);
3878  0000 4b40          	push	#64
3879  0002 4b80          	push	#128
3880  0004 ae500f        	ldw	x,#20495
3881  0007 cd0000        	call	_GPIO_Init
3883  000a 85            	popw	x
3884                     ; 498     GPIO_Init(JS_LEFT,  GPIO_MODE_IN_PU_NO_IT);
3886  000b 4b40          	push	#64
3887  000d 4b10          	push	#16
3888  000f ae500f        	ldw	x,#20495
3889  0012 cd0000        	call	_GPIO_Init
3891  0015 85            	popw	x
3892                     ; 499     GPIO_Init(JS_DOWN,  GPIO_MODE_IN_PU_NO_IT);
3894  0016 4b40          	push	#64
3895  0018 4b40          	push	#64
3896  001a ae500f        	ldw	x,#20495
3897  001d cd0000        	call	_GPIO_Init
3899  0020 85            	popw	x
3900                     ; 500 		GPIO_Init(JS_UP,  GPIO_MODE_IN_PU_NO_IT);
3902  0021 4b40          	push	#64
3903  0023 4b04          	push	#4
3904  0025 ae5005        	ldw	x,#20485
3905  0028 cd0000        	call	_GPIO_Init
3907  002b 85            	popw	x
3908                     ; 501 		GPIO_Init(JS_OK,  GPIO_MODE_IN_PU_NO_IT);
3910  002c 4b40          	push	#64
3911  002e 4b02          	push	#2
3912  0030 ae5005        	ldw	x,#20485
3913  0033 cd0000        	call	_GPIO_Init
3915  0036 85            	popw	x
3916                     ; 502 }
3919  0037 81            	ret
3947                     ; 504 void EXTI_setup(void)//edge detector
3947                     ; 505 {
3948                     .text:	section	.text,new
3949  0000               _EXTI_setup:
3953                     ; 506 	GPIO_Init(GPIOD, GPIO_PIN_3, GPIO_MODE_IN_PU_IT); //using pd3 for exti
3955  0000 4b60          	push	#96
3956  0002 4b08          	push	#8
3957  0004 ae500f        	ldw	x,#20495
3958  0007 cd0000        	call	_GPIO_Init
3960  000a 85            	popw	x
3961                     ; 507 	ITC_DeInit();
3963  000b cd0000        	call	_ITC_DeInit
3965                     ; 508 	ITC_SetSoftwarePriority(ITC_IRQ_PORTD, ITC_PRIORITYLEVEL_0);
3967  000e ae0602        	ldw	x,#1538
3968  0011 cd0000        	call	_ITC_SetSoftwarePriority
3970                     ; 509 	EXTI_DeInit();
3972  0014 cd0000        	call	_EXTI_DeInit
3974                     ; 510 	EXTI_SetExtIntSensitivity(EXTI_PORT_GPIOD, EXTI_SENSITIVITY_RISE_FALL);
3976  0017 ae0303        	ldw	x,#771
3977  001a cd0000        	call	_EXTI_SetExtIntSensitivity
3979                     ; 511 }
3982  001d 81            	ret
4009                     ; 512 void TIM5_setup(void)//for counting between edges and dly
4009                     ; 513 {
4010                     .text:	section	.text,new
4011  0000               _TIM5_setup:
4015                     ; 514 	TIM5_DeInit(); 
4017  0000 cd0000        	call	_TIM5_DeInit
4019                     ; 515 	TIM5_TimeBaseInit(TIM5_PRESCALER_16, 0xFFFF);//1 uS
4021  0003 aeffff        	ldw	x,#65535
4022  0006 89            	pushw	x
4023  0007 a604          	ld	a,#4
4024  0009 cd0000        	call	_TIM5_TimeBaseInit
4026  000c 85            	popw	x
4027                     ; 516 	TIM5_ITConfig(TIM5_IT_UPDATE, DISABLE);
4029  000d ae0100        	ldw	x,#256
4030  0010 cd0000        	call	_TIM5_ITConfig
4032                     ; 517 	TIM5_Cmd(ENABLE);
4034  0013 a601          	ld	a,#1
4035  0015 cd0000        	call	_TIM5_Cmd
4037                     ; 518 }    
4040  0018 81            	ret
4073                     ; 519 void clock_setup(void)
4073                     ; 520 	{
4074                     .text:	section	.text,new
4075  0000               _clock_setup:
4079                     ; 522 	CLK_DeInit();
4081  0000 cd0000        	call	_CLK_DeInit
4083                     ; 523 	CLK_SYSCLKConfig(CLK_PRESCALER_CPUDIV1);
4085  0003 a680          	ld	a,#128
4086  0005 cd0000        	call	_CLK_SYSCLKConfig
4088                     ; 524 	CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);
4090  0008 4f            	clr	a
4091  0009 cd0000        	call	_CLK_HSIPrescalerConfig
4093                     ; 525 	CLK_HSECmd(DISABLE);
4095  000c 4f            	clr	a
4096  000d cd0000        	call	_CLK_HSECmd
4098                     ; 526 	CLK_LSICmd(DISABLE);
4100  0010 4f            	clr	a
4101  0011 cd0000        	call	_CLK_LSICmd
4103                     ; 527 	CLK_HSICmd(ENABLE);
4105  0014 a601          	ld	a,#1
4106  0016 cd0000        	call	_CLK_HSICmd
4108                     ; 528 	CLK_ClockSwitchCmd(ENABLE);
4110  0019 a601          	ld	a,#1
4111  001b cd0000        	call	_CLK_ClockSwitchCmd
4114  001e               L7031:
4115                     ; 529 	while (CLK_GetFlagStatus(CLK_FLAG_HSIRDY) == FALSE);
4117  001e ae0102        	ldw	x,#258
4118  0021 cd0000        	call	_CLK_GetFlagStatus
4120  0024 4d            	tnz	a
4121  0025 27f7          	jreq	L7031
4122                     ; 530 	CLK_ClockSwitchConfig(CLK_SWITCHMODE_AUTO, CLK_SOURCE_HSI,
4122                     ; 531                           DISABLE, CLK_CURRENTCLOCKSTATE_ENABLE);
4124  0027 4b01          	push	#1
4125  0029 4b00          	push	#0
4126  002b ae01e1        	ldw	x,#481
4127  002e cd0000        	call	_CLK_ClockSwitchConfig
4129  0031 85            	popw	x
4130                     ; 532 	CLK_PeripheralClockConfig(CLK_PERIPHERAL_SPI, ENABLE);//for reading from spi chip
4132  0032 ae0101        	ldw	x,#257
4133  0035 cd0000        	call	_CLK_PeripheralClockConfig
4135                     ; 533 	CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER1, ENABLE);//for pwm
4137  0038 ae0701        	ldw	x,#1793
4138  003b cd0000        	call	_CLK_PeripheralClockConfig
4140                     ; 534 	CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER5, ENABLE);//for running timers
4142  003e ae0501        	ldw	x,#1281
4143  0041 cd0000        	call	_CLK_PeripheralClockConfig
4145                     ; 535   }
4148  0044 81            	ret
4183                     ; 546 void assert_failed(u8* file, u32 line)
4183                     ; 547 { 
4184                     .text:	section	.text,new
4185  0000               _assert_failed:
4189  0000               L1331:
4190  0000 20fe          	jra	L1331
4356                     	xdef	_main
4357                     	xdef	_Audio_brute
4358                     	xdef	_AC_brute
4359                     	xdef	_Projector_brute
4360                     	xdef	_TV_brute
4361                     	xdef	_Run_Brute
4362                     	xdef	_FindNextCode
4363                     	xdef	_SendCodeAt
4364                     	xdef	_SPI_Flash_Read
4365                     	xdef	_SendIR
4366                     	xdef	_ReceiveIR
4367                     	xdef	_spi_cleanup
4368                     	xdef	_spi_init
4369                     	xdef	_JS_init
4370                     	xdef	_tim_cleanup
4371                     	xdef	_TIM5_setup
4372                     	xdef	_EXTI_setup
4373                     	xdef	_clock_setup
4374                     	xdef	_SimpleProtocol
4375                     	xdef	_tx_delay_us
4376                     	switch	.bss
4377  0000               _dly_count:
4378  0000 00            	ds.b	1
4379                     	xdef	_dly_count
4380  0001               _pulses:
4381  0001 000000000000  	ds.b	220
4382                     	xdef	_pulses
4383                     	xdef	_first_edge
4384  00dd               _capture_done:
4385  00dd 00            	ds.b	1
4386                     	xdef	_capture_done
4387                     	xdef	_col
4388  00de               _pulse_count:
4389  00de 00            	ds.b	1
4390                     	xdef	_pulse_count
4391                     	xref	_HD1650_writeString
4392                     	xref	_HD1650_writeNumber
4393                     	xref	_HD1650_colonOff
4394                     	xref	_HD1650_colonOn
4395                     	xref	_HD1650_clearDisplay
4396                     	xref	_HD1650_displayOn
4397                     	xref	_HD1650_init
4398                     	xref	_delay_ms
4399                     	xdef	_assert_failed
4400                     	xref	_TIM5_GetCounter
4401                     	xref	_TIM5_SetCounter
4402                     	xref	_TIM5_ITConfig
4403                     	xref	_TIM5_Cmd
4404                     	xref	_TIM5_TimeBaseInit
4405                     	xref	_TIM5_DeInit
4406                     	xref	_TIM1_CtrlPWMOutputs
4407                     	xref	_TIM1_Cmd
4408                     	xref	_TIM1_OC1Init
4409                     	xref	_TIM1_TimeBaseInit
4410                     	xref	_TIM1_DeInit
4411                     	xref	_SPI_GetFlagStatus
4412                     	xref	_SPI_ReceiveData
4413                     	xref	_SPI_SendData
4414                     	xref	_SPI_Cmd
4415                     	xref	_SPI_Init
4416                     	xref	_SPI_DeInit
4417                     	xref	_ITC_SetSoftwarePriority
4418                     	xref	_ITC_DeInit
4419                     	xref	_GPIO_ReadInputPin
4420                     	xref	_GPIO_WriteLow
4421                     	xref	_GPIO_WriteHigh
4422                     	xref	_GPIO_Init
4423                     	xref	_EXTI_SetExtIntSensitivity
4424                     	xref	_EXTI_DeInit
4425                     	xref	_CLK_GetFlagStatus
4426                     	xref	_CLK_SYSCLKConfig
4427                     	xref	_CLK_HSIPrescalerConfig
4428                     	xref	_CLK_ClockSwitchConfig
4429                     	xref	_CLK_PeripheralClockConfig
4430                     	xref	_CLK_ClockSwitchCmd
4431                     	xref	_CLK_LSICmd
4432                     	xref	_CLK_HSICmd
4433                     	xref	_CLK_HSECmd
4434                     	xref	_CLK_DeInit
4435                     	switch	.const
4436  0147               L1011:
4437  0147 5641495400    	dc.b	"VAIT",0
4438  014c               L7301:
4439  014c 5041555300    	dc.b	"PAUS",0
4440  0151               L177:
4441  0151 414300        	dc.b	"AC",0
4442  0154               L567:
4443  0154 4845484900    	dc.b	"HEHI",0
4444  0159               L167:
4445  0159 434f4c4800    	dc.b	"COLH",0
4446  015e               L557:
4447  015e 4f464600      	dc.b	"OFF",0
4448  0162               L717:
4449  0162 50524f4a00    	dc.b	"PROJ",0
4450  0167               L317:
4451  0167 504c415900    	dc.b	"PLAY",0
4452  016c               L346:
4453  016c 545600        	dc.b	"TV",0
4454  016f               L736:
4455  016f 4d55544500    	dc.b	"MUTE",0
4456  0174               L336:
4457  0174 564f4c4400    	dc.b	"VOLD",0
4458  0179               L726:
4459  0179 564f4c5500    	dc.b	"VOLU",0
4460  017e               L326:
4461  017e 504f575200    	dc.b	"POWR",0
4462  0183               L355:
4463  0183 4d454e5500    	dc.b	"MENU",0
4464  0188               L172:
4465  0188 52433500      	dc.b	"RC5",0
4466  018c               L562:
4467  018c 52434100      	dc.b	"RCA",0
4468  0190               L162:
4469  0190 52433600      	dc.b	"RC6",0
4470  0194               L552:
4471  0194 5349323000    	dc.b	"SI20",0
4472  0199               L152:
4473  0199 5349313500    	dc.b	"SI15",0
4474  019e               L342:
4475  019e 5349313200    	dc.b	"SI12",0
4476  01a3               L532:
4477  01a3 4341534500    	dc.b	"CASE",0
4478  01a8               L132:
4479  01a8 53414e5300    	dc.b	"SANS",0
4480  01ad               L522:
4481  01ad 4e45343200    	dc.b	"NE42",0
4482  01b2               L122:
4483  01b2 4e454300      	dc.b	"NEC",0
4484  01b6               L312:
4485  01b6 50494f4e00    	dc.b	"PION",0
4486  01bb               L341:
4487  01bb 2d2d2d2d00    	dc.b	"----",0
4488  01c0               L101:
4489  01c0 616300        	dc.b	"ac",0
4490  01c3               L77:
4491  01c3 70726f6a6563  	dc.b	"projectors",0
4492  01ce               L57:
4493  01ce 617564696f00  	dc.b	"audio",0
4494  01d4               L37:
4495  01d4 747600        	dc.b	"tv",0
4496  01d7               L76:
4497  01d7 4e65787400    	dc.b	"Next",0
4498  01dc               L56:
4499  01dc 5072657600    	dc.b	"Prev",0
4500  01e1               L16:
4501  01e1 486561745f6c  	dc.b	"Heat_lo",0
4502  01e9               L75:
4503  01e9 486561745f68  	dc.b	"Heat_hi",0
4504  01f1               L55:
4505  01f1 436f6f6c5f6c  	dc.b	"Cool_lo",0
4506  01f9               L35:
4507  01f9 436f6f6c5f68  	dc.b	"Cool_hi",0
4508  0201               L15:
4509  0201 446800        	dc.b	"Dh",0
4510  0204               L74:
4511  0204 4f666600      	dc.b	"Off",0
4512  0208               L34:
4513  0208 506c617900    	dc.b	"Play",0
4514  020d               L14:
4515  020d 506175736500  	dc.b	"Pause",0
4516  0213               L53:
4517  0213 4d75746500    	dc.b	"Mute",0
4518  0218               L33:
4519  0218 43685f707265  	dc.b	"Ch_prev",0
4520  0220               L13:
4521  0220 43685f6e6578  	dc.b	"Ch_next",0
4522  0228               L72:
4523  0228 566f6c5f646e  	dc.b	"Vol_dn",0
4524  022f               L52:
4525  022f 566f6c5f7570  	dc.b	"Vol_up",0
4526  0236               L32:
4527  0236 506f77657200  	dc.b	"Power",0
4528                     	xref.b	c_lreg
4529                     	xref.b	c_x
4530                     	xref.b	c_y
4550                     	xref	c_cmulx
4551                     	xref	c_ludv
4552                     	xref	c_ladd
4553                     	xref	c_itolx
4554                     	xref	c_uitolx
4555                     	xref	c_lsbc
4556                     	xref	c_lgadc
4557                     	xref	c_ladc
4558                     	xref	c_lcmp
4559                     	xref	c_ltor
4560                     	xref	c_llsh
4561                     	xref	c_lor
4562                     	xref	c_rtol
4563                     	xref	c_umul
4564                     	xref	c_xymov
4565                     	end

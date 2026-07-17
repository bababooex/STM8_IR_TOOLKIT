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
 115                     	switch	.const
 116  001f               L01:
 117  001f 0056          	dc.w	L72
 118  0021 005b          	dc.w	L13
 119  0023 0060          	dc.w	L33
 120  0025 0065          	dc.w	L53
 121  0027 00a6          	dc.w	L76
 122  0029 006a          	dc.w	L73
 123  002b 006f          	dc.w	L14
 124  002d 0074          	dc.w	L34
 125  002f 0079          	dc.w	L54
 126  0031 007e          	dc.w	L74
 127  0033 00a6          	dc.w	L76
 128  0035 0083          	dc.w	L15
 129  0037 0088          	dc.w	L35
 130  0039 008d          	dc.w	L55
 131  003b 0092          	dc.w	L75
 132  003d 0097          	dc.w	L16
 133  003f 00a6          	dc.w	L76
 134  0041 00a6          	dc.w	L76
 135  0043 009c          	dc.w	L36
 136  0045               L41:
 137  0045 0056          	dc.w	L72
 138  0047 005b          	dc.w	L13
 139  0049 0060          	dc.w	L33
 140  004b 0065          	dc.w	L53
 141  004d 00a6          	dc.w	L76
 142  004f 006a          	dc.w	L73
 143  0051 006f          	dc.w	L14
 144  0053 0074          	dc.w	L34
 145  0055 0079          	dc.w	L54
 146  0057 007e          	dc.w	L74
 147  0059 00a6          	dc.w	L76
 148  005b 0083          	dc.w	L15
 149  005d 0088          	dc.w	L35
 150  005f 008d          	dc.w	L55
 151  0061 0092          	dc.w	L75
 152  0063 0097          	dc.w	L16
 153  0065 00a6          	dc.w	L76
 154  0067 00a6          	dc.w	L76
 155  0069 009c          	dc.w	L36
 156                     ; 6 static uint8_t HD1650_charToSeg(char c)
 156                     ; 7 {
 157                     	scross	off
 158                     .text:	section	.text,new
 159  0000               L52_HD1650_charToSeg:
 161  0000 88            	push	a
 162       00000000      OFST:	set	0
 165                     ; 8     if (c >= '0' && c <= '9') return (uint8_t)(c - '0');
 167  0001 a130          	cp	a,#48
 168  0003 2509          	jrult	L311
 170  0005 a13a          	cp	a,#58
 171  0007 2405          	jruge	L311
 174  0009 a030          	sub	a,#48
 177  000b 5b01          	addw	sp,#1
 178  000d 81            	ret
 179  000e               L311:
 180                     ; 9     if (c >= 'A' && c <= 'F') return 0x0A + (c - 'A');
 182  000e 7b01          	ld	a,(OFST+1,sp)
 183  0010 a141          	cp	a,#65
 184  0012 250d          	jrult	L511
 186  0014 7b01          	ld	a,(OFST+1,sp)
 187  0016 a147          	cp	a,#71
 188  0018 2407          	jruge	L511
 191  001a 7b01          	ld	a,(OFST+1,sp)
 192  001c a037          	sub	a,#55
 195  001e 5b01          	addw	sp,#1
 196  0020 81            	ret
 197  0021               L511:
 198                     ; 10     if (c >= 'a' && c <= 'f') return 0x0A + (c - 'a');
 200  0021 7b01          	ld	a,(OFST+1,sp)
 201  0023 a161          	cp	a,#97
 202  0025 250d          	jrult	L711
 204  0027 7b01          	ld	a,(OFST+1,sp)
 205  0029 a167          	cp	a,#103
 206  002b 2407          	jruge	L711
 209  002d 7b01          	ld	a,(OFST+1,sp)
 210  002f a057          	sub	a,#87
 213  0031 5b01          	addw	sp,#1
 214  0033 81            	ret
 215  0034               L711:
 216                     ; 12     switch (c) {
 218  0034 7b01          	ld	a,(OFST+1,sp)
 220                     ; 29         default:          return 0x10;   // blank
 221  0036 a047          	sub	a,#71
 222  0038 a113          	cp	a,#19
 223  003a 2407          	jruge	L6
 224  003c 5f            	clrw	x
 225  003d 97            	ld	xl,a
 226  003e 58            	sllw	x
 227  003f de001f        	ldw	x,(L01,x)
 228  0042 fc            	jp	(x)
 229  0043               L6:
 230  0043 a020          	sub	a,#32
 231  0045 a113          	cp	a,#19
 232  0047 2407          	jruge	L21
 233  0049 5f            	clrw	x
 234  004a 97            	ld	xl,a
 235  004b 58            	sllw	x
 236  004c de0045        	ldw	x,(L41,x)
 237  004f fc            	jp	(x)
 238  0050               L21:
 239  0050 a0c6          	sub	a,#-58
 240  0052 274d          	jreq	L56
 241  0054 2050          	jra	L76
 242  0056               L72:
 243                     ; 13         case 'G': case 'g': return SEG_G;
 245  0056 a611          	ld	a,#17
 248  0058 5b01          	addw	sp,#1
 249  005a 81            	ret
 250  005b               L13:
 251                     ; 14         case 'H': case 'h': return SEG_H;
 253  005b a612          	ld	a,#18
 256  005d 5b01          	addw	sp,#1
 257  005f 81            	ret
 258  0060               L33:
 259                     ; 15         case 'I': case 'i': return SEG_I;
 261  0060 a613          	ld	a,#19
 264  0062 5b01          	addw	sp,#1
 265  0064 81            	ret
 266  0065               L53:
 267                     ; 16         case 'J': case 'j': return SEG_J;
 269  0065 a614          	ld	a,#20
 272  0067 5b01          	addw	sp,#1
 273  0069 81            	ret
 274  006a               L73:
 275                     ; 17         case 'L': case 'l': return SEG_L;
 277  006a a615          	ld	a,#21
 280  006c 5b01          	addw	sp,#1
 281  006e 81            	ret
 282  006f               L14:
 283                     ; 18 				case 'M': case 'm': return SEG_M;
 285  006f a616          	ld	a,#22
 288  0071 5b01          	addw	sp,#1
 289  0073 81            	ret
 290  0074               L34:
 291                     ; 19         case 'N': case 'n': return SEG_N;
 293  0074 a616          	ld	a,#22
 296  0076 5b01          	addw	sp,#1
 297  0078 81            	ret
 298  0079               L54:
 299                     ; 20         case 'O': case 'o': return SEG_O;
 301  0079 a617          	ld	a,#23
 304  007b 5b01          	addw	sp,#1
 305  007d 81            	ret
 306  007e               L74:
 307                     ; 21         case 'P': case 'p': return SEG_P;
 309  007e a618          	ld	a,#24
 312  0080 5b01          	addw	sp,#1
 313  0082 81            	ret
 314  0083               L15:
 315                     ; 22         case 'R': case 'r': return SEG_R;
 317  0083 a619          	ld	a,#25
 320  0085 5b01          	addw	sp,#1
 321  0087 81            	ret
 322  0088               L35:
 323                     ; 23         case 'S': case 's': return SEG_S;
 325  0088 a61a          	ld	a,#26
 328  008a 5b01          	addw	sp,#1
 329  008c 81            	ret
 330  008d               L55:
 331                     ; 24         case 'T': case 't': return SEG_T;
 333  008d a61b          	ld	a,#27
 336  008f 5b01          	addw	sp,#1
 337  0091 81            	ret
 338  0092               L75:
 339                     ; 25         case 'U': case 'u': return SEG_U;
 341  0092 a61c          	ld	a,#28
 344  0094 5b01          	addw	sp,#1
 345  0096 81            	ret
 346  0097               L16:
 347                     ; 26 				case 'V': case 'v': return SEG_V;
 349  0097 a61c          	ld	a,#28
 352  0099 5b01          	addw	sp,#1
 353  009b 81            	ret
 354  009c               L36:
 355                     ; 27         case 'Y': case 'y': return SEG_Y;
 357  009c a61d          	ld	a,#29
 360  009e 5b01          	addw	sp,#1
 361  00a0 81            	ret
 362  00a1               L56:
 363                     ; 28         case '-':         return SEG_MINUS;
 365  00a1 a61e          	ld	a,#30
 368  00a3 5b01          	addw	sp,#1
 369  00a5 81            	ret
 370  00a6               L76:
 371                     ; 29         default:          return 0x10;   // blank
 373  00a6 a610          	ld	a,#16
 376  00a8 5b01          	addw	sp,#1
 377  00aa 81            	ret
 419                     ; 33 static uint8_t basic_strlen(const char *str) {
 420                     .text:	section	.text,new
 421  0000               L521_basic_strlen:
 423  0000 89            	pushw	x
 424  0001 88            	push	a
 425       00000001      OFST:	set	1
 428                     ; 34     uint8_t len = 0;
 430  0002 0f01          	clr	(OFST+0,sp)
 433  0004 2002          	jra	L351
 434  0006               L741:
 435                     ; 35     while (*str++) len++;
 437  0006 0c01          	inc	(OFST+0,sp)
 439  0008               L351:
 442  0008 1e02          	ldw	x,(OFST+1,sp)
 443  000a 1c0001        	addw	x,#1
 444  000d 1f02          	ldw	(OFST+1,sp),x
 445  000f 1d0001        	subw	x,#1
 446  0012 7d            	tnz	(x)
 447  0013 26f1          	jrne	L741
 448                     ; 36     return len;
 450  0015 7b01          	ld	a,(OFST+0,sp)
 453  0017 5b03          	addw	sp,#3
 454  0019 81            	ret
 504                     ; 38 static void hd1650_i2c_write(uint8_t reg, uint8_t data)
 504                     ; 39 {
 505                     .text:	section	.text,new
 506  0000               L751_hd1650_i2c_write:
 508  0000 89            	pushw	x
 509  0001 88            	push	a
 510       00000001      OFST:	set	1
 513                     ; 41     buf[0] = data;
 515  0002 9f            	ld	a,xl
 516  0003 6b01          	ld	(OFST+0,sp),a
 518                     ; 42     swi2c_write_array(reg, buf, 1);
 520  0005 ae0001        	ldw	x,#1
 521  0008 89            	pushw	x
 522  0009 96            	ldw	x,sp
 523  000a 1c0003        	addw	x,#OFST+2
 524  000d 89            	pushw	x
 525  000e 7b06          	ld	a,(OFST+5,sp)
 526  0010 cd0000        	call	_swi2c_write_array
 528  0013 5b04          	addw	sp,#4
 529                     ; 43 }
 532  0015 5b03          	addw	sp,#3
 533  0017 81            	ret
 569                     ; 45 void HD1650_init(void)
 569                     ; 46 {
 570                     .text:	section	.text,new
 571  0000               _HD1650_init:
 573  0000 88            	push	a
 574       00000001      OFST:	set	1
 577                     ; 48     swi2c_init();
 579  0001 cd0000        	call	_swi2c_init
 581                     ; 49     hd1650_i2c_write(HD1650_DISPLAY_BASE, 0x00);
 583  0004 ae6e00        	ldw	x,#28160
 584  0007 cd0000        	call	L751_hd1650_i2c_write
 586                     ; 51     for (dig = 0; dig < HD1650_NUM_DIGIT; dig++) {
 588  000a 0f01          	clr	(OFST+0,sp)
 590  000c               L712:
 591                     ; 52         iCtrl[dig] = 0x00;
 593  000c 7b01          	ld	a,(OFST+0,sp)
 594  000e 5f            	clrw	x
 595  000f 97            	ld	xl,a
 596  0010 724f0004      	clr	(L12_iCtrl,x)
 597                     ; 53         iData[dig] = 0x00;
 599  0014 7b01          	ld	a,(OFST+0,sp)
 600  0016 5f            	clrw	x
 601  0017 97            	ld	xl,a
 602  0018 724f0000      	clr	(L32_iData,x)
 603                     ; 51     for (dig = 0; dig < HD1650_NUM_DIGIT; dig++) {
 605  001c 0c01          	inc	(OFST+0,sp)
 609  001e 7b01          	ld	a,(OFST+0,sp)
 610  0020 a104          	cp	a,#4
 611  0022 25e8          	jrult	L712
 612                     ; 55 }
 615  0024 84            	pop	a
 616  0025 81            	ret
 656                     ; 57 void HD1650_sendControl(uint8_t data, uint8_t segment)
 656                     ; 58 {
 657                     .text:	section	.text,new
 658  0000               _HD1650_sendControl:
 660  0000 89            	pushw	x
 661       00000000      OFST:	set	0
 664                     ; 59     segment = segment % HD1650_NUM_DIGIT;
 666  0001 7b02          	ld	a,(OFST+2,sp)
 667  0003 a403          	and	a,#3
 668  0005 6b02          	ld	(OFST+2,sp),a
 669                     ; 60     hd1650_i2c_write((uint8_t)(HD1650_CONTROL_BASE + segment), data);
 671  0007 7b01          	ld	a,(OFST+1,sp)
 672  0009 97            	ld	xl,a
 673  000a 7b02          	ld	a,(OFST+2,sp)
 674  000c ab48          	add	a,#72
 675  000e 95            	ld	xh,a
 676  000f cd0000        	call	L751_hd1650_i2c_write
 678                     ; 61 }
 681  0012 85            	popw	x
 682  0013 81            	ret
 722                     ; 63 void HD1650_sendDigit(uint8_t data, uint8_t segment)
 722                     ; 64 {
 723                     .text:	section	.text,new
 724  0000               _HD1650_sendDigit:
 726  0000 89            	pushw	x
 727       00000000      OFST:	set	0
 730                     ; 65     segment = segment % HD1650_NUM_DIGIT;
 732  0001 7b02          	ld	a,(OFST+2,sp)
 733  0003 a403          	and	a,#3
 734  0005 6b02          	ld	(OFST+2,sp),a
 735                     ; 66     hd1650_i2c_write((uint8_t)(HD1650_DISPLAY_BASE - segment*2), data);
 737  0007 7b01          	ld	a,(OFST+1,sp)
 738  0009 97            	ld	xl,a
 739  000a 7b02          	ld	a,(OFST+2,sp)
 740  000c 48            	sll	a
 741  000d a06e          	sub	a,#110
 742  000f 40            	neg	a
 743  0010 95            	ld	xh,a
 744  0011 cd0000        	call	L751_hd1650_i2c_write
 746                     ; 67 }
 749  0014 85            	popw	x
 750  0015 81            	ret
 784                     ; 69 void HD1650_displayOn(void)
 784                     ; 70 {
 785                     .text:	section	.text,new
 786  0000               _HD1650_displayOn:
 788  0000 88            	push	a
 789       00000001      OFST:	set	1
 792                     ; 72     for (i = 0; i < HD1650_NUM_DIGIT; i++) {
 794  0001 0f01          	clr	(OFST+0,sp)
 796  0003               L572:
 797                     ; 73         iCtrl[i] = (iCtrl[i] & 0xFE) | 0x01; 
 799  0003 7b01          	ld	a,(OFST+0,sp)
 800  0005 5f            	clrw	x
 801  0006 97            	ld	xl,a
 802  0007 7b01          	ld	a,(OFST+0,sp)
 803  0009 905f          	clrw	y
 804  000b 9097          	ld	yl,a
 805  000d 90d60004      	ld	a,(L12_iCtrl,y)
 806  0011 a4fe          	and	a,#254
 807  0013 aa01          	or	a,#1
 808  0015 d70004        	ld	(L12_iCtrl,x),a
 809                     ; 74         HD1650_sendControl(iCtrl[i], i);
 811  0018 7b01          	ld	a,(OFST+0,sp)
 812  001a 97            	ld	xl,a
 813  001b 7b01          	ld	a,(OFST+0,sp)
 814  001d 905f          	clrw	y
 815  001f 9097          	ld	yl,a
 816  0021 90d60004      	ld	a,(L12_iCtrl,y)
 817  0025 95            	ld	xh,a
 818  0026 cd0000        	call	_HD1650_sendControl
 820                     ; 72     for (i = 0; i < HD1650_NUM_DIGIT; i++) {
 822  0029 0c01          	inc	(OFST+0,sp)
 826  002b 7b01          	ld	a,(OFST+0,sp)
 827  002d a104          	cp	a,#4
 828  002f 25d2          	jrult	L572
 829                     ; 76 }
 832  0031 84            	pop	a
 833  0032 81            	ret
 867                     ; 78 void HD1650_displayOff(void)
 867                     ; 79 {
 868                     .text:	section	.text,new
 869  0000               _HD1650_displayOff:
 871  0000 88            	push	a
 872       00000001      OFST:	set	1
 875                     ; 81     for (i = 0; i < HD1650_NUM_DIGIT; i++) {
 877  0001 0f01          	clr	(OFST+0,sp)
 879  0003               L713:
 880                     ; 82         iCtrl[i] = iCtrl[i] & 0xFE;       
 882  0003 7b01          	ld	a,(OFST+0,sp)
 883  0005 5f            	clrw	x
 884  0006 97            	ld	xl,a
 885  0007 d60004        	ld	a,(L12_iCtrl,x)
 886  000a a4fe          	and	a,#254
 887  000c d70004        	ld	(L12_iCtrl,x),a
 888                     ; 83         HD1650_sendControl(iCtrl[i], i);
 890  000f 7b01          	ld	a,(OFST+0,sp)
 891  0011 97            	ld	xl,a
 892  0012 7b01          	ld	a,(OFST+0,sp)
 893  0014 905f          	clrw	y
 894  0016 9097          	ld	yl,a
 895  0018 90d60004      	ld	a,(L12_iCtrl,y)
 896  001c 95            	ld	xh,a
 897  001d cd0000        	call	_HD1650_sendControl
 899                     ; 81     for (i = 0; i < HD1650_NUM_DIGIT; i++) {
 901  0020 0c01          	inc	(OFST+0,sp)
 905  0022 7b01          	ld	a,(OFST+0,sp)
 906  0024 a104          	cp	a,#4
 907  0026 25db          	jrult	L713
 908                     ; 85 }
 911  0028 84            	pop	a
 912  0029 81            	ret
 937                     ; 87 void HD1650_colonOn(void)
 937                     ; 88 {
 938                     .text:	section	.text,new
 939  0000               _HD1650_colonOn:
 943                     ; 89     HD1650_sendControl((iCtrl[0] & 0xF7) | 0x08, 0);
 945  0000 c60004        	ld	a,L12_iCtrl
 946  0003 a4f7          	and	a,#247
 947  0005 aa08          	or	a,#8
 948  0007 5f            	clrw	x
 949  0008 95            	ld	xh,a
 950  0009 cd0000        	call	_HD1650_sendControl
 952                     ; 90 }
 955  000c 81            	ret
 980                     ; 92 void HD1650_colonOff(void)
 980                     ; 93 {
 981                     .text:	section	.text,new
 982  0000               _HD1650_colonOff:
 986                     ; 94     HD1650_sendControl(iCtrl[0] & 0xF7, 0);
 988  0000 c60004        	ld	a,L12_iCtrl
 989  0003 a4f7          	and	a,#247
 990  0005 5f            	clrw	x
 991  0006 95            	ld	xh,a
 992  0007 cd0000        	call	_HD1650_sendControl
 994                     ; 95 }
 997  000a 81            	ret
1039                     ; 97 void HD1650_setBrightness(uint8_t b)
1039                     ; 98 {
1040                     .text:	section	.text,new
1041  0000               _HD1650_setBrightness:
1043  0000 88            	push	a
1044  0001 88            	push	a
1045       00000001      OFST:	set	1
1048                     ; 100     if (b > 0x07) { b = 0x07; }
1050  0002 a108          	cp	a,#8
1051  0004 2504          	jrult	L363
1054  0006 a607          	ld	a,#7
1055  0008 6b02          	ld	(OFST+1,sp),a
1056  000a               L363:
1057                     ; 102     for (i = 0; i < HD1650_NUM_DIGIT; i++) {
1059  000a 0f01          	clr	(OFST+0,sp)
1061  000c               L563:
1062                     ; 103         iCtrl[i] = (iCtrl[i] & 0xFF) | (uint8_t)(b << 4);
1064  000c 7b01          	ld	a,(OFST+0,sp)
1065  000e 5f            	clrw	x
1066  000f 97            	ld	xl,a
1067  0010 7b01          	ld	a,(OFST+0,sp)
1068  0012 905f          	clrw	y
1069  0014 9097          	ld	yl,a
1070  0016 7b02          	ld	a,(OFST+1,sp)
1071  0018 4e            	swap	a
1072  0019 a4f0          	and	a,#240
1073  001b 90da0004      	or	a,(L12_iCtrl,y)
1074  001f d70004        	ld	(L12_iCtrl,x),a
1075                     ; 104         HD1650_sendControl(iCtrl[i], i);
1077  0022 7b01          	ld	a,(OFST+0,sp)
1078  0024 97            	ld	xl,a
1079  0025 7b01          	ld	a,(OFST+0,sp)
1080  0027 905f          	clrw	y
1081  0029 9097          	ld	yl,a
1082  002b 90d60004      	ld	a,(L12_iCtrl,y)
1083  002f 95            	ld	xh,a
1084  0030 cd0000        	call	_HD1650_sendControl
1086                     ; 102     for (i = 0; i < HD1650_NUM_DIGIT; i++) {
1088  0033 0c01          	inc	(OFST+0,sp)
1092  0035 7b01          	ld	a,(OFST+0,sp)
1093  0037 a104          	cp	a,#4
1094  0039 25d1          	jrult	L563
1095                     ; 106 }
1098  003b 85            	popw	x
1099  003c 81            	ret
1134                     ; 108 void HD1650_clearDisplay(void)
1134                     ; 109 {
1135                     .text:	section	.text,new
1136  0000               _HD1650_clearDisplay:
1138  0000 88            	push	a
1139       00000001      OFST:	set	1
1142                     ; 111     for (i = 0; i < HD1650_NUM_DIGIT; i++) {
1144  0001 0f01          	clr	(OFST+0,sp)
1146  0003               L704:
1147                     ; 112         HD1650_sendDigit(0x00, i);
1149  0003 7b01          	ld	a,(OFST+0,sp)
1150  0005 5f            	clrw	x
1151  0006 97            	ld	xl,a
1152  0007 cd0000        	call	_HD1650_sendDigit
1154                     ; 113         iData[i] = 0x00;
1156  000a 7b01          	ld	a,(OFST+0,sp)
1157  000c 5f            	clrw	x
1158  000d 97            	ld	xl,a
1159  000e 724f0000      	clr	(L32_iData,x)
1160                     ; 111     for (i = 0; i < HD1650_NUM_DIGIT; i++) {
1162  0012 0c01          	inc	(OFST+0,sp)
1166  0014 7b01          	ld	a,(OFST+0,sp)
1167  0016 a104          	cp	a,#4
1168  0018 25e9          	jrult	L704
1169                     ; 115 }
1172  001a 84            	pop	a
1173  001b 81            	ret
1221                     ; 117 void HD1650_setDot(uint8_t pos, uint8_t onoff)
1221                     ; 118 {
1222                     .text:	section	.text,new
1223  0000               _HD1650_setDot:
1225  0000 89            	pushw	x
1226  0001 88            	push	a
1227       00000001      OFST:	set	1
1230                     ; 120     pos  = pos % HD1650_NUM_DIGIT;
1232  0002 7b02          	ld	a,(OFST+1,sp)
1233  0004 a403          	and	a,#3
1234  0006 6b02          	ld	(OFST+1,sp),a
1235                     ; 121     data = iData[pos];
1237  0008 7b02          	ld	a,(OFST+1,sp)
1238  000a 5f            	clrw	x
1239  000b 97            	ld	xl,a
1240  000c d60000        	ld	a,(L32_iData,x)
1241  000f 6b01          	ld	(OFST+0,sp),a
1243                     ; 122     data = onoff ? (data | 0x80) : (data & 0x7F);
1245  0011 0d03          	tnz	(OFST+2,sp)
1246  0013 2706          	jreq	L64
1247  0015 7b01          	ld	a,(OFST+0,sp)
1248  0017 aa80          	or	a,#128
1249  0019 2004          	jra	L05
1250  001b               L64:
1251  001b 7b01          	ld	a,(OFST+0,sp)
1252  001d a47f          	and	a,#127
1253  001f               L05:
1254  001f 6b01          	ld	(OFST+0,sp),a
1256                     ; 123     iData[pos] = data;
1258  0021 7b02          	ld	a,(OFST+1,sp)
1259  0023 5f            	clrw	x
1260  0024 97            	ld	xl,a
1261  0025 7b01          	ld	a,(OFST+0,sp)
1262  0027 d70000        	ld	(L32_iData,x),a
1263                     ; 124     HD1650_sendDigit(data, pos);
1265  002a 7b02          	ld	a,(OFST+1,sp)
1266  002c 97            	ld	xl,a
1267  002d 7b01          	ld	a,(OFST+0,sp)
1268  002f 95            	ld	xh,a
1269  0030 cd0000        	call	_HD1650_sendDigit
1271                     ; 125 }
1274  0033 5b03          	addw	sp,#3
1275  0035 81            	ret
1343                     ; 127 void HD1650_writeString(const char *str)
1343                     ; 128 {
1344                     .text:	section	.text,new
1345  0000               _HD1650_writeString:
1347  0000 89            	pushw	x
1348  0001 5204          	subw	sp,#4
1349       00000004      OFST:	set	4
1352                     ; 130     uint8_t len = basic_strlen(str);
1354  0003 cd0000        	call	L521_basic_strlen
1356  0006 6b03          	ld	(OFST-1,sp),a
1358                     ; 132     for (pos = 0; pos < 4; pos++) {
1360  0008 0f04          	clr	(OFST+0,sp)
1362  000a               L364:
1363                     ; 136         if (pos < len) {
1365  000a 7b04          	ld	a,(OFST+0,sp)
1366  000c 1103          	cp	a,(OFST-1,sp)
1367  000e 2418          	jruge	L174
1368                     ; 137             seg_idx = HD1650_charToSeg(str[pos]);
1370  0010 7b04          	ld	a,(OFST+0,sp)
1371  0012 5f            	clrw	x
1372  0013 97            	ld	xl,a
1373  0014 72fb05        	addw	x,(OFST+1,sp)
1374  0017 f6            	ld	a,(x)
1375  0018 cd0000        	call	L52_HD1650_charToSeg
1377  001b 6b02          	ld	(OFST-2,sp),a
1379                     ; 138             seg_code = hd1650_Digit_Table[seg_idx];
1381  001d 7b02          	ld	a,(OFST-2,sp)
1382  001f 5f            	clrw	x
1383  0020 97            	ld	xl,a
1384  0021 d60000        	ld	a,(L3_hd1650_Digit_Table,x)
1385  0024 6b01          	ld	(OFST-3,sp),a
1388  0026 2006          	jra	L374
1389  0028               L174:
1390                     ; 140             seg_idx = 0x10;
1392  0028 a610          	ld	a,#16
1393  002a 6b02          	ld	(OFST-2,sp),a
1395                     ; 141             seg_code = hd1650_Digit_Table[0x10];   // blank
1397  002c 0f01          	clr	(OFST-3,sp)
1399  002e               L374:
1400                     ; 146         HD1650_sendDigit(seg_code, 3 - pos);
1402  002e a603          	ld	a,#3
1403  0030 1004          	sub	a,(OFST+0,sp)
1404  0032 97            	ld	xl,a
1405  0033 7b01          	ld	a,(OFST-3,sp)
1406  0035 95            	ld	xh,a
1407  0036 cd0000        	call	_HD1650_sendDigit
1409                     ; 147         iData[3 - pos] = seg_idx;
1411  0039 a600          	ld	a,#0
1412  003b 97            	ld	xl,a
1413  003c a603          	ld	a,#3
1414  003e 1004          	sub	a,(OFST+0,sp)
1415  0040 2401          	jrnc	L45
1416  0042 5a            	decw	x
1417  0043               L45:
1418  0043 02            	rlwa	x,a
1419  0044 7b02          	ld	a,(OFST-2,sp)
1420  0046 d70000        	ld	(L32_iData,x),a
1421                     ; 132     for (pos = 0; pos < 4; pos++) {
1423  0049 0c04          	inc	(OFST+0,sp)
1427  004b 7b04          	ld	a,(OFST+0,sp)
1428  004d a104          	cp	a,#4
1429  004f 25b9          	jrult	L364
1430                     ; 149 }
1433  0051 5b06          	addw	sp,#6
1434  0053 81            	ret
1490                     ; 152 void HD1650_writeNumber(uint16_t num, uint8_t zeroFill)
1490                     ; 153 {
1491                     .text:	section	.text,new
1492  0000               _HD1650_writeNumber:
1494  0000 89            	pushw	x
1495  0001 5203          	subw	sp,#3
1496       00000003      OFST:	set	3
1499                     ; 154     uint16_t onum = num;
1501  0003 1f01          	ldw	(OFST-2,sp),x
1503                     ; 158     digit = (uint8_t)(num % 10u);
1505  0005 a60a          	ld	a,#10
1506  0007 62            	div	x,a
1507  0008 5f            	clrw	x
1508  0009 97            	ld	xl,a
1509  000a 9f            	ld	a,xl
1510  000b 6b03          	ld	(OFST+0,sp),a
1512                     ; 159     HD1650_sendDigit(hd1650_Digit_Table[digit], 0);    // changed from 3 ? 0
1514  000d 7b03          	ld	a,(OFST+0,sp)
1515  000f 5f            	clrw	x
1516  0010 97            	ld	xl,a
1517  0011 d60000        	ld	a,(L3_hd1650_Digit_Table,x)
1518  0014 5f            	clrw	x
1519  0015 95            	ld	xh,a
1520  0016 cd0000        	call	_HD1650_sendDigit
1522                     ; 160     iData[0] = digit;                                   // store in new position
1524  0019 7b03          	ld	a,(OFST+0,sp)
1525  001b c70000        	ld	L32_iData,a
1526                     ; 161     num /= 10u;
1528  001e 1e04          	ldw	x,(OFST+1,sp)
1529  0020 a60a          	ld	a,#10
1530  0022 62            	div	x,a
1531  0023 1f04          	ldw	(OFST+1,sp),x
1532                     ; 164     digit = (uint8_t)(num % 10u);
1534  0025 1e04          	ldw	x,(OFST+1,sp)
1535  0027 a60a          	ld	a,#10
1536  0029 62            	div	x,a
1537  002a 5f            	clrw	x
1538  002b 97            	ld	xl,a
1539  002c 9f            	ld	a,xl
1540  002d 6b03          	ld	(OFST+0,sp),a
1542                     ; 165     if (!zeroFill && onum < 10u && digit == 0u) {
1544  002f 0d08          	tnz	(OFST+5,sp)
1545  0031 2613          	jrne	L715
1547  0033 1e01          	ldw	x,(OFST-2,sp)
1548  0035 a3000a        	cpw	x,#10
1549  0038 240c          	jruge	L715
1551  003a 0d03          	tnz	(OFST+0,sp)
1552  003c 2608          	jrne	L715
1553                     ; 166         HD1650_sendDigit(hd1650_Digit_Table[0x10], 1);
1555  003e ae0001        	ldw	x,#1
1556  0041 cd0000        	call	_HD1650_sendDigit
1559  0044 200e          	jra	L125
1560  0046               L715:
1561                     ; 168         HD1650_sendDigit(hd1650_Digit_Table[digit], 1);
1563  0046 7b03          	ld	a,(OFST+0,sp)
1564  0048 5f            	clrw	x
1565  0049 97            	ld	xl,a
1566  004a d60000        	ld	a,(L3_hd1650_Digit_Table,x)
1567  004d ae0001        	ldw	x,#1
1568  0050 95            	ld	xh,a
1569  0051 cd0000        	call	_HD1650_sendDigit
1571  0054               L125:
1572                     ; 170     iData[1] = digit;
1574  0054 7b03          	ld	a,(OFST+0,sp)
1575  0056 c70001        	ld	L32_iData+1,a
1576                     ; 171     num /= 10u;
1578  0059 1e04          	ldw	x,(OFST+1,sp)
1579  005b a60a          	ld	a,#10
1580  005d 62            	div	x,a
1581  005e 1f04          	ldw	(OFST+1,sp),x
1582                     ; 174     digit = (uint8_t)(num % 10u);
1584  0060 1e04          	ldw	x,(OFST+1,sp)
1585  0062 a60a          	ld	a,#10
1586  0064 62            	div	x,a
1587  0065 5f            	clrw	x
1588  0066 97            	ld	xl,a
1589  0067 9f            	ld	a,xl
1590  0068 6b03          	ld	(OFST+0,sp),a
1592                     ; 175     if (!zeroFill && onum < 100u && digit == 0u) {
1594  006a 0d08          	tnz	(OFST+5,sp)
1595  006c 2613          	jrne	L325
1597  006e 1e01          	ldw	x,(OFST-2,sp)
1598  0070 a30064        	cpw	x,#100
1599  0073 240c          	jruge	L325
1601  0075 0d03          	tnz	(OFST+0,sp)
1602  0077 2608          	jrne	L325
1603                     ; 176         HD1650_sendDigit(hd1650_Digit_Table[0x10], 2);
1605  0079 ae0002        	ldw	x,#2
1606  007c cd0000        	call	_HD1650_sendDigit
1609  007f 200e          	jra	L525
1610  0081               L325:
1611                     ; 178         HD1650_sendDigit(hd1650_Digit_Table[digit], 2);
1613  0081 7b03          	ld	a,(OFST+0,sp)
1614  0083 5f            	clrw	x
1615  0084 97            	ld	xl,a
1616  0085 d60000        	ld	a,(L3_hd1650_Digit_Table,x)
1617  0088 ae0002        	ldw	x,#2
1618  008b 95            	ld	xh,a
1619  008c cd0000        	call	_HD1650_sendDigit
1621  008f               L525:
1622                     ; 180     iData[2] = digit;
1624  008f 7b03          	ld	a,(OFST+0,sp)
1625  0091 c70002        	ld	L32_iData+2,a
1626                     ; 181     num /= 10u;
1628  0094 1e04          	ldw	x,(OFST+1,sp)
1629  0096 a60a          	ld	a,#10
1630  0098 62            	div	x,a
1631  0099 1f04          	ldw	(OFST+1,sp),x
1632                     ; 184     digit = (uint8_t)(num % 10u);
1634  009b 1e04          	ldw	x,(OFST+1,sp)
1635  009d a60a          	ld	a,#10
1636  009f 62            	div	x,a
1637  00a0 5f            	clrw	x
1638  00a1 97            	ld	xl,a
1639  00a2 9f            	ld	a,xl
1640  00a3 6b03          	ld	(OFST+0,sp),a
1642                     ; 185     if (!zeroFill && onum < 1000u && digit == 0u) {
1644  00a5 0d08          	tnz	(OFST+5,sp)
1645  00a7 2613          	jrne	L725
1647  00a9 1e01          	ldw	x,(OFST-2,sp)
1648  00ab a303e8        	cpw	x,#1000
1649  00ae 240c          	jruge	L725
1651  00b0 0d03          	tnz	(OFST+0,sp)
1652  00b2 2608          	jrne	L725
1653                     ; 186         HD1650_sendDigit(hd1650_Digit_Table[0x10], 3);
1655  00b4 ae0003        	ldw	x,#3
1656  00b7 cd0000        	call	_HD1650_sendDigit
1659  00ba 200e          	jra	L135
1660  00bc               L725:
1661                     ; 188         HD1650_sendDigit(hd1650_Digit_Table[digit], 3);
1663  00bc 7b03          	ld	a,(OFST+0,sp)
1664  00be 5f            	clrw	x
1665  00bf 97            	ld	xl,a
1666  00c0 d60000        	ld	a,(L3_hd1650_Digit_Table,x)
1667  00c3 ae0003        	ldw	x,#3
1668  00c6 95            	ld	xh,a
1669  00c7 cd0000        	call	_HD1650_sendDigit
1671  00ca               L135:
1672                     ; 190     iData[3] = digit;
1674  00ca 7b03          	ld	a,(OFST+0,sp)
1675  00cc c70003        	ld	L32_iData+3,a
1676                     ; 191 }
1679  00cf 5b05          	addw	sp,#5
1680  00d1 81            	ret
1713                     ; 193 void HD1650_writeNum(uint16_t num)
1713                     ; 194 {
1714                     .text:	section	.text,new
1715  0000               _HD1650_writeNum:
1719                     ; 195     HD1650_writeNumber(num, (uint8_t)HD1650_ZERO_PREFIX);
1721  0000 4b00          	push	#0
1722  0002 cd0000        	call	_HD1650_writeNumber
1724  0005 84            	pop	a
1725                     ; 196 }
1728  0006 81            	ret
1763                     	switch	.bss
1764  0000               L32_iData:
1765  0000 00000000      	ds.b	4
1766  0004               L12_iCtrl:
1767  0004 00000000      	ds.b	4
1768                     	xdef	_HD1650_writeString
1769                     	xdef	_HD1650_writeNum
1770                     	xdef	_HD1650_sendDigit
1771                     	xdef	_HD1650_sendControl
1772                     	xdef	_HD1650_writeNumber
1773                     	xdef	_HD1650_setDot
1774                     	xdef	_HD1650_colonOff
1775                     	xdef	_HD1650_colonOn
1776                     	xdef	_HD1650_setBrightness
1777                     	xdef	_HD1650_clearDisplay
1778                     	xdef	_HD1650_displayOff
1779                     	xdef	_HD1650_displayOn
1780                     	xdef	_HD1650_init
1781                     	xref	_swi2c_write_array
1782                     	xref	_swi2c_init
1802                     	end

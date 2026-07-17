   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.13.3 - 22 May 2025
   3                     ; Generator (Limited) V4.6.6 - 07 Jan 2026
 109                     ; 12 uint8_t swi2c_write_eemem(uint8_t slv_addr, uint16_t address, uint8_t* data, uint16_t num){
 111                     .text:	section	.text,new
 112  0000               _swi2c_write_eemem:
 114  0000 88            	push	a
 115  0001 5204          	subw	sp,#4
 116       00000004      OFST:	set	4
 119                     ; 19 if(swi2c_START()){return 0xaa;} 
 121  0003 cd0000        	call	_swi2c_START
 123  0006 4d            	tnz	a
 124  0007 2704          	jreq	L54
 127  0009 a6aa          	ld	a,#170
 129  000b 2010          	jra	L6
 130  000d               L54:
 131                     ; 22 mask=0b1<<7;
 133  000d a680          	ld	a,#128
 134  000f 6b04          	ld	(OFST+0,sp),a
 136  0011               L74:
 137                     ; 24 if(swi2c_writebit(slv_addr & mask)){return 0xff;}
 139  0011 7b05          	ld	a,(OFST+1,sp)
 140  0013 1404          	and	a,(OFST+0,sp)
 141  0015 cd0000        	call	_swi2c_writebit
 143  0018 4d            	tnz	a
 144  0019 2705          	jreq	L55
 147  001b a6ff          	ld	a,#255
 149  001d               L6:
 151  001d 5b05          	addw	sp,#5
 152  001f 81            	ret
 153  0020               L55:
 154                     ; 25 mask = mask >>1;
 156  0020 0404          	srl	(OFST+0,sp)
 158                     ; 23 while(mask){
 160  0022 0d04          	tnz	(OFST+0,sp)
 161  0024 26eb          	jrne	L74
 162                     ; 27 ack=swi2c_readbit();
 164  0026 cd0000        	call	_swi2c_readbit
 166  0029 6b04          	ld	(OFST+0,sp),a
 168                     ; 28 if(ack){
 170  002b 0d04          	tnz	(OFST+0,sp)
 171  002d 270e          	jreq	L75
 172                     ; 29 	if(swi2c_STOP()){return 0xff;}
 174  002f cd0000        	call	_swi2c_STOP
 176  0032 4d            	tnz	a
 177  0033 2704          	jreq	L16
 180  0035 a6ff          	ld	a,#255
 182  0037 20e4          	jra	L6
 183  0039               L16:
 184                     ; 30 	return ack;
 186  0039 7b04          	ld	a,(OFST+0,sp)
 188  003b 20e0          	jra	L6
 189  003d               L75:
 190                     ; 34 tmp = address >> 8;
 192  003d 7b08          	ld	a,(OFST+4,sp)
 193  003f 6b01          	ld	(OFST-3,sp),a
 195                     ; 35 mask=0b1<<7;
 197  0041 a680          	ld	a,#128
 198  0043 6b04          	ld	(OFST+0,sp),a
 200  0045               L36:
 201                     ; 37 if(swi2c_writebit(tmp & mask)){return 0xff;}
 203  0045 7b01          	ld	a,(OFST-3,sp)
 204  0047 1404          	and	a,(OFST+0,sp)
 205  0049 cd0000        	call	_swi2c_writebit
 207  004c 4d            	tnz	a
 208  004d 2704          	jreq	L17
 211  004f a6ff          	ld	a,#255
 213  0051 20ca          	jra	L6
 214  0053               L17:
 215                     ; 38 mask = mask >>1;
 217  0053 0404          	srl	(OFST+0,sp)
 219                     ; 36 while(mask){
 221  0055 0d04          	tnz	(OFST+0,sp)
 222  0057 26ec          	jrne	L36
 223                     ; 40 ack=swi2c_readbit();
 225  0059 cd0000        	call	_swi2c_readbit
 227  005c 6b04          	ld	(OFST+0,sp),a
 229                     ; 41 if(ack){
 231  005e 0d04          	tnz	(OFST+0,sp)
 232  0060 270e          	jreq	L37
 233                     ; 42 	if(swi2c_STOP()){return 0xff;}
 235  0062 cd0000        	call	_swi2c_STOP
 237  0065 4d            	tnz	a
 238  0066 2704          	jreq	L57
 241  0068 a6ff          	ld	a,#255
 243  006a 20b1          	jra	L6
 244  006c               L57:
 245                     ; 43 	return ack;
 247  006c 7b04          	ld	a,(OFST+0,sp)
 249  006e 20ad          	jra	L6
 250  0070               L37:
 251                     ; 47 tmp = (uint8_t)address;
 253  0070 7b09          	ld	a,(OFST+5,sp)
 254  0072 6b01          	ld	(OFST-3,sp),a
 256                     ; 48 mask=0b1<<7;
 258  0074 a680          	ld	a,#128
 259  0076 6b04          	ld	(OFST+0,sp),a
 261  0078               L77:
 262                     ; 50 if(swi2c_writebit(tmp & mask)){return 0xff;}
 264  0078 7b01          	ld	a,(OFST-3,sp)
 265  007a 1404          	and	a,(OFST+0,sp)
 266  007c cd0000        	call	_swi2c_writebit
 268  007f 4d            	tnz	a
 269  0080 2704          	jreq	L501
 272  0082 a6ff          	ld	a,#255
 274  0084 2097          	jra	L6
 275  0086               L501:
 276                     ; 51 mask = mask >>1;
 278  0086 0404          	srl	(OFST+0,sp)
 280                     ; 49 while(mask){
 282  0088 0d04          	tnz	(OFST+0,sp)
 283  008a 26ec          	jrne	L77
 284                     ; 53 ack=swi2c_readbit();
 286  008c cd0000        	call	_swi2c_readbit
 288  008f 6b04          	ld	(OFST+0,sp),a
 290                     ; 54 if(ack){
 292  0091 0d04          	tnz	(OFST+0,sp)
 293  0093 2712          	jreq	L701
 294                     ; 55 	if(swi2c_STOP()){return 0xff;}
 296  0095 cd0000        	call	_swi2c_STOP
 298  0098 4d            	tnz	a
 299  0099 2706          	jreq	L111
 302  009b a6ff          	ld	a,#255
 304  009d ac1d001d      	jpf	L6
 305  00a1               L111:
 306                     ; 56 	return ack;
 308  00a1 7b04          	ld	a,(OFST+0,sp)
 310  00a3 ac1d001d      	jpf	L6
 311  00a7               L701:
 312                     ; 61 for(i=0;i<num;i++){
 314  00a7 5f            	clrw	x
 315  00a8 1f02          	ldw	(OFST-2,sp),x
 318  00aa 2040          	jra	L711
 319  00ac               L311:
 320                     ; 62 	mask=0b1<<7;
 322  00ac a680          	ld	a,#128
 323  00ae 6b04          	ld	(OFST+0,sp),a
 325  00b0               L321:
 326                     ; 64 	if(swi2c_writebit(data[i] & mask)){return 0xff;}
 328  00b0 1e0a          	ldw	x,(OFST+6,sp)
 329  00b2 72fb02        	addw	x,(OFST-2,sp)
 330  00b5 f6            	ld	a,(x)
 331  00b6 1404          	and	a,(OFST+0,sp)
 332  00b8 cd0000        	call	_swi2c_writebit
 334  00bb 4d            	tnz	a
 335  00bc 2706          	jreq	L131
 338  00be a6ff          	ld	a,#255
 340  00c0 ac1d001d      	jpf	L6
 341  00c4               L131:
 342                     ; 65 	mask = mask >>1;
 344  00c4 0404          	srl	(OFST+0,sp)
 346                     ; 63 	while(mask){
 348  00c6 0d04          	tnz	(OFST+0,sp)
 349  00c8 26e6          	jrne	L321
 350                     ; 67 	ack=swi2c_readbit();
 352  00ca cd0000        	call	_swi2c_readbit
 354  00cd 6b04          	ld	(OFST+0,sp),a
 356                     ; 68 	if(ack){
 358  00cf 0d04          	tnz	(OFST+0,sp)
 359  00d1 2712          	jreq	L331
 360                     ; 69 		if(swi2c_STOP()){return 0xff;}
 362  00d3 cd0000        	call	_swi2c_STOP
 364  00d6 4d            	tnz	a
 365  00d7 2706          	jreq	L531
 368  00d9 a6ff          	ld	a,#255
 370  00db ac1d001d      	jpf	L6
 371  00df               L531:
 372                     ; 70 		return ack;
 374  00df 7b04          	ld	a,(OFST+0,sp)
 376  00e1 ac1d001d      	jpf	L6
 377  00e5               L331:
 378                     ; 61 for(i=0;i<num;i++){
 380  00e5 1e02          	ldw	x,(OFST-2,sp)
 381  00e7 1c0001        	addw	x,#1
 382  00ea 1f02          	ldw	(OFST-2,sp),x
 384  00ec               L711:
 387  00ec 1e02          	ldw	x,(OFST-2,sp)
 388  00ee 130c          	cpw	x,(OFST+8,sp)
 389  00f0 25ba          	jrult	L311
 390                     ; 75 if(swi2c_STOP()){return 0xff;}
 392  00f2 cd0000        	call	_swi2c_STOP
 394  00f5 4d            	tnz	a
 395  00f6 2706          	jreq	L731
 398  00f8 a6ff          	ld	a,#255
 400  00fa ac1d001d      	jpf	L6
 401  00fe               L731:
 402                     ; 76 return 0;
 404  00fe 4f            	clr	a
 406  00ff ac1d001d      	jpf	L6
 502                     ; 86 uint8_t swi2c_read_eemem(uint8_t slv_addr, uint16_t address, uint8_t* data, uint16_t num){
 503                     .text:	section	.text,new
 504  0000               _swi2c_read_eemem:
 506  0000 88            	push	a
 507  0001 5204          	subw	sp,#4
 508       00000004      OFST:	set	4
 511                     ; 87 uint16_t i=0;	
 513                     ; 93 if(swi2c_START()){return 0xaa;} 
 515  0003 cd0000        	call	_swi2c_START
 517  0006 4d            	tnz	a
 518  0007 2704          	jreq	L771
 521  0009 a6aa          	ld	a,#170
 523  000b 2010          	jra	L21
 524  000d               L771:
 525                     ; 96 mask=0b1<<7;
 527  000d a680          	ld	a,#128
 528  000f 6b04          	ld	(OFST+0,sp),a
 530  0011               L102:
 531                     ; 98 if(swi2c_writebit(slv_addr & mask)){return 0xff;}
 533  0011 7b05          	ld	a,(OFST+1,sp)
 534  0013 1404          	and	a,(OFST+0,sp)
 535  0015 cd0000        	call	_swi2c_writebit
 537  0018 4d            	tnz	a
 538  0019 2705          	jreq	L702
 541  001b a6ff          	ld	a,#255
 543  001d               L21:
 545  001d 5b05          	addw	sp,#5
 546  001f 81            	ret
 547  0020               L702:
 548                     ; 99 mask = mask >>1;
 550  0020 0404          	srl	(OFST+0,sp)
 552                     ; 97 while(mask){
 554  0022 0d04          	tnz	(OFST+0,sp)
 555  0024 26eb          	jrne	L102
 556                     ; 101 ack=swi2c_readbit();
 558  0026 cd0000        	call	_swi2c_readbit
 560  0029 6b03          	ld	(OFST-1,sp),a
 562                     ; 102 if(ack){
 564  002b 0d03          	tnz	(OFST-1,sp)
 565  002d 270e          	jreq	L112
 566                     ; 103 	if(swi2c_STOP()){return 0xff;}
 568  002f cd0000        	call	_swi2c_STOP
 570  0032 4d            	tnz	a
 571  0033 2704          	jreq	L312
 574  0035 a6ff          	ld	a,#255
 576  0037 20e4          	jra	L21
 577  0039               L312:
 578                     ; 104 	return ack;
 580  0039 7b03          	ld	a,(OFST-1,sp)
 582  003b 20e0          	jra	L21
 583  003d               L112:
 584                     ; 108 tmp = address >> 8;
 586  003d 7b08          	ld	a,(OFST+4,sp)
 587  003f 6b03          	ld	(OFST-1,sp),a
 589                     ; 109 mask=0b1<<7;
 591  0041 a680          	ld	a,#128
 592  0043 6b04          	ld	(OFST+0,sp),a
 594  0045               L512:
 595                     ; 111 if(swi2c_writebit(tmp & mask)){return 0xff;}
 597  0045 7b03          	ld	a,(OFST-1,sp)
 598  0047 1404          	and	a,(OFST+0,sp)
 599  0049 cd0000        	call	_swi2c_writebit
 601  004c 4d            	tnz	a
 602  004d 2704          	jreq	L322
 605  004f a6ff          	ld	a,#255
 607  0051 20ca          	jra	L21
 608  0053               L322:
 609                     ; 112 mask = mask >>1;
 611  0053 0404          	srl	(OFST+0,sp)
 613                     ; 110 while(mask){
 615  0055 0d04          	tnz	(OFST+0,sp)
 616  0057 26ec          	jrne	L512
 617                     ; 114 ack=swi2c_readbit();
 619  0059 cd0000        	call	_swi2c_readbit
 621  005c 6b03          	ld	(OFST-1,sp),a
 623                     ; 115 if(ack){
 625  005e 0d03          	tnz	(OFST-1,sp)
 626  0060 270e          	jreq	L522
 627                     ; 116 	if(swi2c_STOP()){return 0xff;}
 629  0062 cd0000        	call	_swi2c_STOP
 631  0065 4d            	tnz	a
 632  0066 2704          	jreq	L722
 635  0068 a6ff          	ld	a,#255
 637  006a 20b1          	jra	L21
 638  006c               L722:
 639                     ; 117 	return ack;
 641  006c 7b03          	ld	a,(OFST-1,sp)
 643  006e 20ad          	jra	L21
 644  0070               L522:
 645                     ; 121 tmp = (uint8_t)address;
 647  0070 7b09          	ld	a,(OFST+5,sp)
 648  0072 6b03          	ld	(OFST-1,sp),a
 650                     ; 122 mask=0b1<<7;
 652  0074 a680          	ld	a,#128
 653  0076 6b04          	ld	(OFST+0,sp),a
 655  0078               L132:
 656                     ; 124 if(swi2c_writebit(tmp & mask)){return 0xff;}
 658  0078 7b03          	ld	a,(OFST-1,sp)
 659  007a 1404          	and	a,(OFST+0,sp)
 660  007c cd0000        	call	_swi2c_writebit
 662  007f 4d            	tnz	a
 663  0080 2704          	jreq	L732
 666  0082 a6ff          	ld	a,#255
 668  0084 2097          	jra	L21
 669  0086               L732:
 670                     ; 125 mask = mask >>1;
 672  0086 0404          	srl	(OFST+0,sp)
 674                     ; 123 while(mask){
 676  0088 0d04          	tnz	(OFST+0,sp)
 677  008a 26ec          	jrne	L132
 678                     ; 127 ack=swi2c_readbit();
 680  008c cd0000        	call	_swi2c_readbit
 682  008f 6b03          	ld	(OFST-1,sp),a
 684                     ; 128 if(ack){
 686  0091 0d03          	tnz	(OFST-1,sp)
 687  0093 2712          	jreq	L142
 688                     ; 129 	if(swi2c_STOP()){return 0xff;}
 690  0095 cd0000        	call	_swi2c_STOP
 692  0098 4d            	tnz	a
 693  0099 2706          	jreq	L342
 696  009b a6ff          	ld	a,#255
 698  009d ac1d001d      	jpf	L21
 699  00a1               L342:
 700                     ; 130 	return ack;
 702  00a1 7b03          	ld	a,(OFST-1,sp)
 704  00a3 ac1d001d      	jpf	L21
 705  00a7               L142:
 706                     ; 134 if(swi2c_RESTART()){return 0xff;} 
 708  00a7 cd0000        	call	_swi2c_RESTART
 710  00aa 4d            	tnz	a
 711  00ab 2706          	jreq	L542
 714  00ad a6ff          	ld	a,#255
 716  00af ac1d001d      	jpf	L21
 717  00b3               L542:
 718                     ; 137 mask=0b1<<7;
 720  00b3 a680          	ld	a,#128
 721  00b5 6b04          	ld	(OFST+0,sp),a
 723  00b7               L742:
 724                     ; 139 if(swi2c_writebit((slv_addr | 0b1) & mask)){return 0xff;}
 726  00b7 7b05          	ld	a,(OFST+1,sp)
 727  00b9 aa01          	or	a,#1
 728  00bb 1404          	and	a,(OFST+0,sp)
 729  00bd cd0000        	call	_swi2c_writebit
 731  00c0 4d            	tnz	a
 732  00c1 2706          	jreq	L552
 735  00c3 a6ff          	ld	a,#255
 737  00c5 ac1d001d      	jpf	L21
 738  00c9               L552:
 739                     ; 140 mask = mask >>1;
 741  00c9 0404          	srl	(OFST+0,sp)
 743                     ; 138 while(mask){
 745  00cb 0d04          	tnz	(OFST+0,sp)
 746  00cd 26e8          	jrne	L742
 747                     ; 142 ack=swi2c_readbit();
 749  00cf cd0000        	call	_swi2c_readbit
 751  00d2 6b03          	ld	(OFST-1,sp),a
 753                     ; 143 if(ack){
 755  00d4 0d03          	tnz	(OFST-1,sp)
 756  00d6 2712          	jreq	L752
 757                     ; 144 	if(swi2c_STOP()){return 0xff;}
 759  00d8 cd0000        	call	_swi2c_STOP
 761  00db 4d            	tnz	a
 762  00dc 2706          	jreq	L162
 765  00de a6ff          	ld	a,#255
 767  00e0 ac1d001d      	jpf	L21
 768  00e4               L162:
 769                     ; 145 	return ack;
 771  00e4 7b03          	ld	a,(OFST-1,sp)
 773  00e6 ac1d001d      	jpf	L21
 774  00ea               L752:
 775                     ; 150 for(i=0;i<num;i++){
 777  00ea 5f            	clrw	x
 778  00eb 1f01          	ldw	(OFST-3,sp),x
 781  00ed 2060          	jra	L762
 782  00ef               L362:
 783                     ; 151 	mask=0b1<<7;
 785  00ef a680          	ld	a,#128
 786  00f1 6b04          	ld	(OFST+0,sp),a
 788  00f3               L372:
 789                     ; 153 	bit = swi2c_readbit();
 791  00f3 cd0000        	call	_swi2c_readbit
 793  00f6 6b03          	ld	(OFST-1,sp),a
 795                     ; 154 	if(bit==0){data[i] &=~mask;}
 797  00f8 0d03          	tnz	(OFST-1,sp)
 798  00fa 260c          	jrne	L103
 801  00fc 1e0a          	ldw	x,(OFST+6,sp)
 802  00fe 72fb01        	addw	x,(OFST-3,sp)
 803  0101 7b04          	ld	a,(OFST+0,sp)
 804  0103 43            	cpl	a
 805  0104 f4            	and	a,(x)
 806  0105 f7            	ld	(x),a
 808  0106 200f          	jra	L303
 809  0108               L103:
 810                     ; 155 	else if(bit==1){data[i] |=mask;}
 812  0108 7b03          	ld	a,(OFST-1,sp)
 813  010a a101          	cp	a,#1
 814  010c 2624          	jrne	L503
 817  010e 1e0a          	ldw	x,(OFST+6,sp)
 818  0110 72fb01        	addw	x,(OFST-3,sp)
 819  0113 f6            	ld	a,(x)
 820  0114 1a04          	or	a,(OFST+0,sp)
 821  0116 f7            	ld	(x),a
 823  0117               L303:
 824                     ; 157 	mask = mask >>1;
 826  0117 0404          	srl	(OFST+0,sp)
 828                     ; 152 	while(mask){
 830  0119 0d04          	tnz	(OFST+0,sp)
 831  011b 26d6          	jrne	L372
 832                     ; 159 	if((i+1)==num){
 834  011d 1e01          	ldw	x,(OFST-3,sp)
 835  011f 5c            	incw	x
 836  0120 130c          	cpw	x,(OFST+8,sp)
 837  0122 2617          	jrne	L113
 838                     ; 160 		if(swi2c_writebit(1)){return 0xff;} // NACK
 840  0124 a601          	ld	a,#1
 841  0126 cd0000        	call	_swi2c_writebit
 843  0129 4d            	tnz	a
 844  012a 271c          	jreq	L513
 847  012c a6ff          	ld	a,#255
 849  012e ac1d001d      	jpf	L21
 850  0132               L503:
 851                     ; 156 	else{swi2c_STOP();return 0xff;}
 853  0132 cd0000        	call	_swi2c_STOP
 857  0135 a6ff          	ld	a,#255
 859  0137 ac1d001d      	jpf	L21
 860  013b               L113:
 861                     ; 162 		if(swi2c_writebit(0)){return 0xff;} // ACK
 863  013b 4f            	clr	a
 864  013c cd0000        	call	_swi2c_writebit
 866  013f 4d            	tnz	a
 867  0140 2706          	jreq	L513
 870  0142 a6ff          	ld	a,#255
 872  0144 ac1d001d      	jpf	L21
 873  0148               L513:
 874                     ; 150 for(i=0;i<num;i++){
 876  0148 1e01          	ldw	x,(OFST-3,sp)
 877  014a 1c0001        	addw	x,#1
 878  014d 1f01          	ldw	(OFST-3,sp),x
 880  014f               L762:
 883  014f 1e01          	ldw	x,(OFST-3,sp)
 884  0151 130c          	cpw	x,(OFST+8,sp)
 885  0153 259a          	jrult	L362
 886                     ; 167 if(swi2c_STOP()){return 0xff;}
 888  0155 cd0000        	call	_swi2c_STOP
 890  0158 4d            	tnz	a
 891  0159 2706          	jreq	L123
 894  015b a6ff          	ld	a,#255
 896  015d ac1d001d      	jpf	L21
 897  0161               L123:
 898                     ; 168 return 0;
 900  0161 4f            	clr	a
 902  0162 ac1d001d      	jpf	L21
 991                     ; 178 uint8_t swi2c_read_buf(uint8_t slv_addr, uint8_t address, uint8_t* data, uint16_t num){
 992                     .text:	section	.text,new
 993  0000               _swi2c_read_buf:
 995  0000 89            	pushw	x
 996  0001 5204          	subw	sp,#4
 997       00000004      OFST:	set	4
1000                     ; 179 uint16_t i=0;	
1002                     ; 184 if(swi2c_START()){return 0xaa;} 
1004  0003 cd0000        	call	_swi2c_START
1006  0006 4d            	tnz	a
1007  0007 2704          	jreq	L753
1010  0009 a6aa          	ld	a,#170
1012  000b 2010          	jra	L61
1013  000d               L753:
1014                     ; 187 mask=0b1<<7;
1016  000d a680          	ld	a,#128
1017  000f 6b04          	ld	(OFST+0,sp),a
1019  0011               L163:
1020                     ; 189 if(swi2c_writebit(slv_addr & mask)){return 0xff;}
1022  0011 7b05          	ld	a,(OFST+1,sp)
1023  0013 1404          	and	a,(OFST+0,sp)
1024  0015 cd0000        	call	_swi2c_writebit
1026  0018 4d            	tnz	a
1027  0019 2705          	jreq	L763
1030  001b a6ff          	ld	a,#255
1032  001d               L61:
1034  001d 5b06          	addw	sp,#6
1035  001f 81            	ret
1036  0020               L763:
1037                     ; 190 mask = mask >>1;
1039  0020 0404          	srl	(OFST+0,sp)
1041                     ; 188 while(mask){
1043  0022 0d04          	tnz	(OFST+0,sp)
1044  0024 26eb          	jrne	L163
1045                     ; 192 ack=swi2c_readbit();
1047  0026 cd0000        	call	_swi2c_readbit
1049  0029 6b03          	ld	(OFST-1,sp),a
1051                     ; 193 if(ack){
1053  002b 0d03          	tnz	(OFST-1,sp)
1054  002d 270e          	jreq	L173
1055                     ; 194 	if(swi2c_STOP()){return 0xff;}
1057  002f cd0000        	call	_swi2c_STOP
1059  0032 4d            	tnz	a
1060  0033 2704          	jreq	L373
1063  0035 a6ff          	ld	a,#255
1065  0037 20e4          	jra	L61
1066  0039               L373:
1067                     ; 195 	return ack;
1069  0039 7b03          	ld	a,(OFST-1,sp)
1071  003b 20e0          	jra	L61
1072  003d               L173:
1073                     ; 199 mask=0b1<<7;
1075  003d a680          	ld	a,#128
1076  003f 6b04          	ld	(OFST+0,sp),a
1078  0041               L573:
1079                     ; 201 if(swi2c_writebit(address & mask)){return 0xff;}
1081  0041 7b06          	ld	a,(OFST+2,sp)
1082  0043 1404          	and	a,(OFST+0,sp)
1083  0045 cd0000        	call	_swi2c_writebit
1085  0048 4d            	tnz	a
1086  0049 2704          	jreq	L304
1089  004b a6ff          	ld	a,#255
1091  004d 20ce          	jra	L61
1092  004f               L304:
1093                     ; 202 mask = mask >>1;
1095  004f 0404          	srl	(OFST+0,sp)
1097                     ; 200 while(mask){
1099  0051 0d04          	tnz	(OFST+0,sp)
1100  0053 26ec          	jrne	L573
1101                     ; 204 ack=swi2c_readbit();
1103  0055 cd0000        	call	_swi2c_readbit
1105  0058 6b03          	ld	(OFST-1,sp),a
1107                     ; 205 if(ack){
1109  005a 0d03          	tnz	(OFST-1,sp)
1110  005c 270e          	jreq	L504
1111                     ; 206 	if(swi2c_STOP()){return 0xff;}
1113  005e cd0000        	call	_swi2c_STOP
1115  0061 4d            	tnz	a
1116  0062 2704          	jreq	L704
1119  0064 a6ff          	ld	a,#255
1121  0066 20b5          	jra	L61
1122  0068               L704:
1123                     ; 207 	return ack;
1125  0068 7b03          	ld	a,(OFST-1,sp)
1127  006a 20b1          	jra	L61
1128  006c               L504:
1129                     ; 211 if(swi2c_RESTART()){return 0xff;} 
1131  006c cd0000        	call	_swi2c_RESTART
1133  006f 4d            	tnz	a
1134  0070 2704          	jreq	L114
1137  0072 a6ff          	ld	a,#255
1139  0074 20a7          	jra	L61
1140  0076               L114:
1141                     ; 214 mask=0b1<<7;
1143  0076 a680          	ld	a,#128
1144  0078 6b04          	ld	(OFST+0,sp),a
1146  007a               L314:
1147                     ; 216 if(swi2c_writebit((slv_addr | 0b1) & mask)){return 0xff;}
1149  007a 7b05          	ld	a,(OFST+1,sp)
1150  007c aa01          	or	a,#1
1151  007e 1404          	and	a,(OFST+0,sp)
1152  0080 cd0000        	call	_swi2c_writebit
1154  0083 4d            	tnz	a
1155  0084 2704          	jreq	L124
1158  0086 a6ff          	ld	a,#255
1160  0088 2093          	jra	L61
1161  008a               L124:
1162                     ; 217 mask = mask >>1;
1164  008a 0404          	srl	(OFST+0,sp)
1166                     ; 215 while(mask){
1168  008c 0d04          	tnz	(OFST+0,sp)
1169  008e 26ea          	jrne	L314
1170                     ; 219 ack=swi2c_readbit();
1172  0090 cd0000        	call	_swi2c_readbit
1174  0093 6b03          	ld	(OFST-1,sp),a
1176                     ; 220 if(ack){
1178  0095 0d03          	tnz	(OFST-1,sp)
1179  0097 2712          	jreq	L324
1180                     ; 221 	if(swi2c_STOP()){return 0xff;}
1182  0099 cd0000        	call	_swi2c_STOP
1184  009c 4d            	tnz	a
1185  009d 2706          	jreq	L524
1188  009f a6ff          	ld	a,#255
1190  00a1 ac1d001d      	jpf	L61
1191  00a5               L524:
1192                     ; 222 	return ack;
1194  00a5 7b03          	ld	a,(OFST-1,sp)
1196  00a7 ac1d001d      	jpf	L61
1197  00ab               L324:
1198                     ; 227 for(i=0;i<num;i++){
1200  00ab 5f            	clrw	x
1201  00ac 1f01          	ldw	(OFST-3,sp),x
1204  00ae 2060          	jra	L334
1205  00b0               L724:
1206                     ; 228 	mask=0b1<<7;
1208  00b0 a680          	ld	a,#128
1209  00b2 6b04          	ld	(OFST+0,sp),a
1211  00b4               L734:
1212                     ; 230 	bit = swi2c_readbit();
1214  00b4 cd0000        	call	_swi2c_readbit
1216  00b7 6b03          	ld	(OFST-1,sp),a
1218                     ; 231 	if(bit==0){data[i] &=~mask;}
1220  00b9 0d03          	tnz	(OFST-1,sp)
1221  00bb 260c          	jrne	L544
1224  00bd 1e09          	ldw	x,(OFST+5,sp)
1225  00bf 72fb01        	addw	x,(OFST-3,sp)
1226  00c2 7b04          	ld	a,(OFST+0,sp)
1227  00c4 43            	cpl	a
1228  00c5 f4            	and	a,(x)
1229  00c6 f7            	ld	(x),a
1231  00c7 200f          	jra	L744
1232  00c9               L544:
1233                     ; 232 	else if(bit==1){data[i] |=mask;}
1235  00c9 7b03          	ld	a,(OFST-1,sp)
1236  00cb a101          	cp	a,#1
1237  00cd 2624          	jrne	L154
1240  00cf 1e09          	ldw	x,(OFST+5,sp)
1241  00d1 72fb01        	addw	x,(OFST-3,sp)
1242  00d4 f6            	ld	a,(x)
1243  00d5 1a04          	or	a,(OFST+0,sp)
1244  00d7 f7            	ld	(x),a
1246  00d8               L744:
1247                     ; 234 	mask = mask >>1;
1249  00d8 0404          	srl	(OFST+0,sp)
1251                     ; 229 	while(mask){
1253  00da 0d04          	tnz	(OFST+0,sp)
1254  00dc 26d6          	jrne	L734
1255                     ; 236 	if((i+1)==num){
1257  00de 1e01          	ldw	x,(OFST-3,sp)
1258  00e0 5c            	incw	x
1259  00e1 130b          	cpw	x,(OFST+7,sp)
1260  00e3 2617          	jrne	L554
1261                     ; 237 		if(swi2c_writebit(1)){return 0xff;} // NACK
1263  00e5 a601          	ld	a,#1
1264  00e7 cd0000        	call	_swi2c_writebit
1266  00ea 4d            	tnz	a
1267  00eb 271c          	jreq	L164
1270  00ed a6ff          	ld	a,#255
1272  00ef ac1d001d      	jpf	L61
1273  00f3               L154:
1274                     ; 233 	else{swi2c_STOP();return 0xff;}
1276  00f3 cd0000        	call	_swi2c_STOP
1280  00f6 a6ff          	ld	a,#255
1282  00f8 ac1d001d      	jpf	L61
1283  00fc               L554:
1284                     ; 239 		if(swi2c_writebit(0)){return 0xff;} // ACK
1286  00fc 4f            	clr	a
1287  00fd cd0000        	call	_swi2c_writebit
1289  0100 4d            	tnz	a
1290  0101 2706          	jreq	L164
1293  0103 a6ff          	ld	a,#255
1295  0105 ac1d001d      	jpf	L61
1296  0109               L164:
1297                     ; 227 for(i=0;i<num;i++){
1299  0109 1e01          	ldw	x,(OFST-3,sp)
1300  010b 1c0001        	addw	x,#1
1301  010e 1f01          	ldw	(OFST-3,sp),x
1303  0110               L334:
1306  0110 1e01          	ldw	x,(OFST-3,sp)
1307  0112 130b          	cpw	x,(OFST+7,sp)
1308  0114 259a          	jrult	L724
1309                     ; 244 if(swi2c_STOP()){return 0xff;}
1311  0116 cd0000        	call	_swi2c_STOP
1313  0119 4d            	tnz	a
1314  011a 2706          	jreq	L564
1317  011c a6ff          	ld	a,#255
1319  011e ac1d001d      	jpf	L61
1320  0122               L564:
1321                     ; 245 return 0;
1323  0122 4f            	clr	a
1325  0123 ac1d001d      	jpf	L61
1406                     ; 256 uint8_t swi2c_write_buf(uint8_t slv_addr, uint8_t address, uint8_t* data, uint16_t num){
1407                     .text:	section	.text,new
1408  0000               _swi2c_write_buf:
1410  0000 89            	pushw	x
1411  0001 5203          	subw	sp,#3
1412       00000003      OFST:	set	3
1415                     ; 262 if(swi2c_START()){return 0xaa;} 
1417  0003 cd0000        	call	_swi2c_START
1419  0006 4d            	tnz	a
1420  0007 2704          	jreq	L125
1423  0009 a6aa          	ld	a,#170
1425  000b 2010          	jra	L22
1426  000d               L125:
1427                     ; 265 mask=0b1<<7;
1429  000d a680          	ld	a,#128
1430  000f 6b03          	ld	(OFST+0,sp),a
1432  0011               L325:
1433                     ; 267 if(swi2c_writebit(slv_addr & mask)){return 0xff;}
1435  0011 7b04          	ld	a,(OFST+1,sp)
1436  0013 1403          	and	a,(OFST+0,sp)
1437  0015 cd0000        	call	_swi2c_writebit
1439  0018 4d            	tnz	a
1440  0019 2705          	jreq	L135
1443  001b a6ff          	ld	a,#255
1445  001d               L22:
1447  001d 5b05          	addw	sp,#5
1448  001f 81            	ret
1449  0020               L135:
1450                     ; 268 mask = mask >>1;
1452  0020 0403          	srl	(OFST+0,sp)
1454                     ; 266 while(mask){
1456  0022 0d03          	tnz	(OFST+0,sp)
1457  0024 26eb          	jrne	L325
1458                     ; 270 ack=swi2c_readbit();
1460  0026 cd0000        	call	_swi2c_readbit
1462  0029 6b03          	ld	(OFST+0,sp),a
1464                     ; 271 if(ack){
1466  002b 0d03          	tnz	(OFST+0,sp)
1467  002d 270e          	jreq	L335
1468                     ; 272 	if(swi2c_STOP()){return 0xff;}
1470  002f cd0000        	call	_swi2c_STOP
1472  0032 4d            	tnz	a
1473  0033 2704          	jreq	L535
1476  0035 a6ff          	ld	a,#255
1478  0037 20e4          	jra	L22
1479  0039               L535:
1480                     ; 273 	return ack;
1482  0039 7b03          	ld	a,(OFST+0,sp)
1484  003b 20e0          	jra	L22
1485  003d               L335:
1486                     ; 277 mask=0b1<<7;
1488  003d a680          	ld	a,#128
1489  003f 6b03          	ld	(OFST+0,sp),a
1491  0041               L735:
1492                     ; 279 if(swi2c_writebit(address & mask)){return 0xff;}
1494  0041 7b05          	ld	a,(OFST+2,sp)
1495  0043 1403          	and	a,(OFST+0,sp)
1496  0045 cd0000        	call	_swi2c_writebit
1498  0048 4d            	tnz	a
1499  0049 2704          	jreq	L545
1502  004b a6ff          	ld	a,#255
1504  004d 20ce          	jra	L22
1505  004f               L545:
1506                     ; 280 mask = mask >>1;
1508  004f 0403          	srl	(OFST+0,sp)
1510                     ; 278 while(mask){
1512  0051 0d03          	tnz	(OFST+0,sp)
1513  0053 26ec          	jrne	L735
1514                     ; 282 ack=swi2c_readbit();
1516  0055 cd0000        	call	_swi2c_readbit
1518  0058 6b03          	ld	(OFST+0,sp),a
1520                     ; 283 if(ack){
1522  005a 0d03          	tnz	(OFST+0,sp)
1523  005c 270e          	jreq	L745
1524                     ; 284 	if(swi2c_STOP()){return 0xff;}
1526  005e cd0000        	call	_swi2c_STOP
1528  0061 4d            	tnz	a
1529  0062 2704          	jreq	L155
1532  0064 a6ff          	ld	a,#255
1534  0066 20b5          	jra	L22
1535  0068               L155:
1536                     ; 285 	return ack;
1538  0068 7b03          	ld	a,(OFST+0,sp)
1540  006a 20b1          	jra	L22
1541  006c               L745:
1542                     ; 289 for(i=0;i<num;i++){
1544  006c 5f            	clrw	x
1545  006d 1f01          	ldw	(OFST-2,sp),x
1548  006f 203e          	jra	L755
1549  0071               L355:
1550                     ; 290 	mask=0b1<<7;
1552  0071 a680          	ld	a,#128
1553  0073 6b03          	ld	(OFST+0,sp),a
1555  0075               L365:
1556                     ; 292 	if(swi2c_writebit(data[i] & mask)){return 0xff;}
1558  0075 1e08          	ldw	x,(OFST+5,sp)
1559  0077 72fb01        	addw	x,(OFST-2,sp)
1560  007a f6            	ld	a,(x)
1561  007b 1403          	and	a,(OFST+0,sp)
1562  007d cd0000        	call	_swi2c_writebit
1564  0080 4d            	tnz	a
1565  0081 2704          	jreq	L175
1568  0083 a6ff          	ld	a,#255
1570  0085 2096          	jra	L22
1571  0087               L175:
1572                     ; 293 	mask = mask >>1;
1574  0087 0403          	srl	(OFST+0,sp)
1576                     ; 291 	while(mask){
1578  0089 0d03          	tnz	(OFST+0,sp)
1579  008b 26e8          	jrne	L365
1580                     ; 295 	ack=swi2c_readbit();
1582  008d cd0000        	call	_swi2c_readbit
1584  0090 6b03          	ld	(OFST+0,sp),a
1586                     ; 296 	if(ack){
1588  0092 0d03          	tnz	(OFST+0,sp)
1589  0094 2712          	jreq	L375
1590                     ; 297 		if(swi2c_STOP()){return 0xff;}
1592  0096 cd0000        	call	_swi2c_STOP
1594  0099 4d            	tnz	a
1595  009a 2706          	jreq	L575
1598  009c a6ff          	ld	a,#255
1600  009e ac1d001d      	jpf	L22
1601  00a2               L575:
1602                     ; 298 		return ack;
1604  00a2 7b03          	ld	a,(OFST+0,sp)
1606  00a4 ac1d001d      	jpf	L22
1607  00a8               L375:
1608                     ; 289 for(i=0;i<num;i++){
1610  00a8 1e01          	ldw	x,(OFST-2,sp)
1611  00aa 1c0001        	addw	x,#1
1612  00ad 1f01          	ldw	(OFST-2,sp),x
1614  00af               L755:
1617  00af 1e01          	ldw	x,(OFST-2,sp)
1618  00b1 130a          	cpw	x,(OFST+7,sp)
1619  00b3 25bc          	jrult	L355
1620                     ; 303 if(swi2c_STOP()){return 0xff;}
1622  00b5 cd0000        	call	_swi2c_STOP
1624  00b8 4d            	tnz	a
1625  00b9 2706          	jreq	L775
1628  00bb a6ff          	ld	a,#255
1630  00bd ac1d001d      	jpf	L22
1631  00c1               L775:
1632                     ; 304 return 0;
1634  00c1 4f            	clr	a
1636  00c2 ac1d001d      	jpf	L22
1710                     ; 314 uint8_t swi2c_write_array(uint8_t slv_addr, uint8_t* data, uint16_t num){
1711                     .text:	section	.text,new
1712  0000               _swi2c_write_array:
1714  0000 88            	push	a
1715  0001 5203          	subw	sp,#3
1716       00000003      OFST:	set	3
1719                     ; 320 if(swi2c_START()){return 0xaa;} 
1721  0003 cd0000        	call	_swi2c_START
1723  0006 4d            	tnz	a
1724  0007 2704          	jreq	L136
1727  0009 a6aa          	ld	a,#170
1729  000b 2010          	jra	L62
1730  000d               L136:
1731                     ; 323 mask=0b1<<7;
1733  000d a680          	ld	a,#128
1734  000f 6b03          	ld	(OFST+0,sp),a
1736  0011               L336:
1737                     ; 325 if(swi2c_writebit(slv_addr & mask)){return 0xff;}
1739  0011 7b04          	ld	a,(OFST+1,sp)
1740  0013 1403          	and	a,(OFST+0,sp)
1741  0015 cd0000        	call	_swi2c_writebit
1743  0018 4d            	tnz	a
1744  0019 2705          	jreq	L146
1747  001b a6ff          	ld	a,#255
1749  001d               L62:
1751  001d 5b04          	addw	sp,#4
1752  001f 81            	ret
1753  0020               L146:
1754                     ; 326 mask = mask >>1;
1756  0020 0403          	srl	(OFST+0,sp)
1758                     ; 324 while(mask){
1760  0022 0d03          	tnz	(OFST+0,sp)
1761  0024 26eb          	jrne	L336
1762                     ; 328 ack=swi2c_readbit();
1764  0026 cd0000        	call	_swi2c_readbit
1766  0029 6b03          	ld	(OFST+0,sp),a
1768                     ; 329 if(ack){
1770  002b 0d03          	tnz	(OFST+0,sp)
1771  002d 270e          	jreq	L346
1772                     ; 330 	if(swi2c_STOP()){return 0xff;}
1774  002f cd0000        	call	_swi2c_STOP
1776  0032 4d            	tnz	a
1777  0033 2704          	jreq	L546
1780  0035 a6ff          	ld	a,#255
1782  0037 20e4          	jra	L62
1783  0039               L546:
1784                     ; 331 	return ack;
1786  0039 7b03          	ld	a,(OFST+0,sp)
1788  003b 20e0          	jra	L62
1789  003d               L346:
1790                     ; 335 for(i=0;i<num;i++){
1792  003d 5f            	clrw	x
1793  003e 1f01          	ldw	(OFST-2,sp),x
1796  0040 203a          	jra	L356
1797  0042               L746:
1798                     ; 336 	mask=0b1<<7;
1800  0042 a680          	ld	a,#128
1801  0044 6b03          	ld	(OFST+0,sp),a
1803  0046               L756:
1804                     ; 338 	if(swi2c_writebit(data[i] & mask)){return 0xff;}
1806  0046 1e07          	ldw	x,(OFST+4,sp)
1807  0048 72fb01        	addw	x,(OFST-2,sp)
1808  004b f6            	ld	a,(x)
1809  004c 1403          	and	a,(OFST+0,sp)
1810  004e cd0000        	call	_swi2c_writebit
1812  0051 4d            	tnz	a
1813  0052 2704          	jreq	L566
1816  0054 a6ff          	ld	a,#255
1818  0056 20c5          	jra	L62
1819  0058               L566:
1820                     ; 339 	mask = mask >>1;
1822  0058 0403          	srl	(OFST+0,sp)
1824                     ; 337 	while(mask){
1826  005a 0d03          	tnz	(OFST+0,sp)
1827  005c 26e8          	jrne	L756
1828                     ; 341 	ack=swi2c_readbit();
1830  005e cd0000        	call	_swi2c_readbit
1832  0061 6b03          	ld	(OFST+0,sp),a
1834                     ; 342 	if(ack){
1836  0063 0d03          	tnz	(OFST+0,sp)
1837  0065 270e          	jreq	L766
1838                     ; 343 		if(swi2c_STOP()){return 0xff;}
1840  0067 cd0000        	call	_swi2c_STOP
1842  006a 4d            	tnz	a
1843  006b 2704          	jreq	L176
1846  006d a6ff          	ld	a,#255
1848  006f 20ac          	jra	L62
1849  0071               L176:
1850                     ; 344 		return ack;
1852  0071 7b03          	ld	a,(OFST+0,sp)
1854  0073 20a8          	jra	L62
1855  0075               L766:
1856                     ; 335 for(i=0;i<num;i++){
1858  0075 1e01          	ldw	x,(OFST-2,sp)
1859  0077 1c0001        	addw	x,#1
1860  007a 1f01          	ldw	(OFST-2,sp),x
1862  007c               L356:
1865  007c 1e01          	ldw	x,(OFST-2,sp)
1866  007e 1309          	cpw	x,(OFST+6,sp)
1867  0080 25c0          	jrult	L746
1868                     ; 349 if(swi2c_STOP()){return 0xff;}
1870  0082 cd0000        	call	_swi2c_STOP
1872  0085 4d            	tnz	a
1873  0086 2704          	jreq	L376
1876  0088 a6ff          	ld	a,#255
1878  008a 2091          	jra	L62
1879  008c               L376:
1880                     ; 350 return 0;
1882  008c 4f            	clr	a
1884  008d 208e          	jra	L62
1965                     ; 355 uint8_t swi2c_read_array(uint8_t slv_addr, uint8_t* data, uint16_t num)
1965                     ; 356 {
1966                     .text:	section	.text,new
1967  0000               _swi2c_read_array:
1969  0000 88            	push	a
1970  0001 5204          	subw	sp,#4
1971       00000004      OFST:	set	4
1974                     ; 357     uint16_t i = 0;
1976                     ; 362     if (swi2c_START()) { return 0xaa; }
1978  0003 cd0000        	call	_swi2c_START
1980  0006 4d            	tnz	a
1981  0007 2704          	jreq	L727
1984  0009 a6aa          	ld	a,#170
1986  000b 2012          	jra	L23
1987  000d               L727:
1988                     ; 365     mask = 0b1 << 7;
1990  000d a680          	ld	a,#128
1991  000f 6b04          	ld	(OFST+0,sp),a
1993  0011               L137:
1994                     ; 367         if (swi2c_writebit((slv_addr | 0b1) & mask)) { return 0xff; }
1996  0011 7b05          	ld	a,(OFST+1,sp)
1997  0013 aa01          	or	a,#1
1998  0015 1404          	and	a,(OFST+0,sp)
1999  0017 cd0000        	call	_swi2c_writebit
2001  001a 4d            	tnz	a
2002  001b 2705          	jreq	L737
2005  001d a6ff          	ld	a,#255
2007  001f               L23:
2009  001f 5b05          	addw	sp,#5
2010  0021 81            	ret
2011  0022               L737:
2012                     ; 368         mask = mask >> 1;
2014  0022 0404          	srl	(OFST+0,sp)
2016                     ; 366     while (mask) {
2018  0024 0d04          	tnz	(OFST+0,sp)
2019  0026 26e9          	jrne	L137
2020                     ; 370     ack = swi2c_readbit();
2022  0028 cd0000        	call	_swi2c_readbit
2024  002b 6b01          	ld	(OFST-3,sp),a
2026                     ; 371     if (ack) {
2028  002d 0d01          	tnz	(OFST-3,sp)
2029  002f 270e          	jreq	L147
2030                     ; 372         if (swi2c_STOP()) { return 0xff; }
2032  0031 cd0000        	call	_swi2c_STOP
2034  0034 4d            	tnz	a
2035  0035 2704          	jreq	L347
2038  0037 a6ff          	ld	a,#255
2040  0039 20e4          	jra	L23
2041  003b               L347:
2042                     ; 373         return ack;
2044  003b 7b01          	ld	a,(OFST-3,sp)
2046  003d 20e0          	jra	L23
2047  003f               L147:
2048                     ; 377     for (i = 0; i < num; i++) {
2050  003f 5f            	clrw	x
2051  0040 1f02          	ldw	(OFST-2,sp),x
2054  0042 205a          	jra	L157
2055  0044               L547:
2056                     ; 378         mask = 0b1 << 7;
2058  0044 a680          	ld	a,#128
2059  0046 6b04          	ld	(OFST+0,sp),a
2061  0048               L557:
2062                     ; 380             bit = swi2c_readbit();
2064  0048 cd0000        	call	_swi2c_readbit
2066  004b 6b01          	ld	(OFST-3,sp),a
2068                     ; 381             if (bit == 0) { data[i] &= ~mask; }
2070  004d 0d01          	tnz	(OFST-3,sp)
2071  004f 260c          	jrne	L367
2074  0051 1e08          	ldw	x,(OFST+4,sp)
2075  0053 72fb02        	addw	x,(OFST-2,sp)
2076  0056 7b04          	ld	a,(OFST+0,sp)
2077  0058 43            	cpl	a
2078  0059 f4            	and	a,(x)
2079  005a f7            	ld	(x),a
2081  005b 200f          	jra	L567
2082  005d               L367:
2083                     ; 382             else if (bit == 1) { data[i] |= mask; }
2085  005d 7b01          	ld	a,(OFST-3,sp)
2086  005f a101          	cp	a,#1
2087  0061 2622          	jrne	L767
2090  0063 1e08          	ldw	x,(OFST+4,sp)
2091  0065 72fb02        	addw	x,(OFST-2,sp)
2092  0068 f6            	ld	a,(x)
2093  0069 1a04          	or	a,(OFST+0,sp)
2094  006b f7            	ld	(x),a
2096  006c               L567:
2097                     ; 384             mask = mask >> 1;
2099  006c 0404          	srl	(OFST+0,sp)
2101                     ; 379         while (mask) {
2103  006e 0d04          	tnz	(OFST+0,sp)
2104  0070 26d6          	jrne	L557
2105                     ; 388         if ((i + 1) == num) {
2107  0072 1e02          	ldw	x,(OFST-2,sp)
2108  0074 5c            	incw	x
2109  0075 130a          	cpw	x,(OFST+6,sp)
2110  0077 2613          	jrne	L377
2111                     ; 389             if (swi2c_writebit(1)) { return 0xff; } // NACK
2113  0079 a601          	ld	a,#1
2114  007b cd0000        	call	_swi2c_writebit
2116  007e 4d            	tnz	a
2117  007f 2716          	jreq	L777
2120  0081 a6ff          	ld	a,#255
2122  0083 209a          	jra	L23
2123  0085               L767:
2124                     ; 383             else { swi2c_STOP(); return 0xff; }
2126  0085 cd0000        	call	_swi2c_STOP
2130  0088 a6ff          	ld	a,#255
2132  008a 2093          	jra	L23
2133  008c               L377:
2134                     ; 391             if (swi2c_writebit(0)) { return 0xff; } // ACK
2136  008c 4f            	clr	a
2137  008d cd0000        	call	_swi2c_writebit
2139  0090 4d            	tnz	a
2140  0091 2704          	jreq	L777
2143  0093 a6ff          	ld	a,#255
2145  0095 2088          	jra	L23
2146  0097               L777:
2147                     ; 377     for (i = 0; i < num; i++) {
2149  0097 1e02          	ldw	x,(OFST-2,sp)
2150  0099 1c0001        	addw	x,#1
2151  009c 1f02          	ldw	(OFST-2,sp),x
2153  009e               L157:
2156  009e 1e02          	ldw	x,(OFST-2,sp)
2157  00a0 130a          	cpw	x,(OFST+6,sp)
2158  00a2 25a0          	jrult	L547
2159                     ; 396     if (swi2c_STOP()) { return 0xff; }
2161  00a4 cd0000        	call	_swi2c_STOP
2163  00a7 4d            	tnz	a
2164  00a8 2706          	jreq	L3001
2167  00aa a6ff          	ld	a,#255
2169  00ac ac1f001f      	jpf	L23
2170  00b0               L3001:
2171                     ; 397     return 0;
2173  00b0 4f            	clr	a
2175  00b1 ac1f001f      	jpf	L23
2225                     ; 410 uint8_t swi2c_test_slave(uint8_t slvaddr){
2226                     .text:	section	.text,new
2227  0000               _swi2c_test_slave:
2229  0000 88            	push	a
2230  0001 88            	push	a
2231       00000001      OFST:	set	1
2234                     ; 412 uint8_t mask=0b1<<7;
2236  0002 a680          	ld	a,#128
2237  0004 6b01          	ld	(OFST+0,sp),a
2239                     ; 413 if(swi2c_START()){return 0xaa;}
2241  0006 cd0000        	call	_swi2c_START
2243  0009 4d            	tnz	a
2244  000a 2714          	jreq	L1301
2247  000c a6aa          	ld	a,#170
2249  000e 200c          	jra	L63
2250  0010               L7201:
2251                     ; 415 if(swi2c_writebit(slvaddr & mask)){return 0xff;}
2253  0010 7b02          	ld	a,(OFST+1,sp)
2254  0012 1401          	and	a,(OFST+0,sp)
2255  0014 cd0000        	call	_swi2c_writebit
2257  0017 4d            	tnz	a
2258  0018 2704          	jreq	L5301
2261  001a a6ff          	ld	a,#255
2263  001c               L63:
2265  001c 85            	popw	x
2266  001d 81            	ret
2267  001e               L5301:
2268                     ; 416 mask = mask >>1;
2270  001e 0401          	srl	(OFST+0,sp)
2272  0020               L1301:
2273                     ; 414 while(mask){
2275  0020 0d01          	tnz	(OFST+0,sp)
2276  0022 26ec          	jrne	L7201
2277                     ; 418 ack=swi2c_readbit();
2279  0024 cd0000        	call	_swi2c_readbit
2281  0027 6b01          	ld	(OFST+0,sp),a
2283                     ; 419 if(swi2c_STOP()){return 0xff;}
2285  0029 cd0000        	call	_swi2c_STOP
2287  002c 4d            	tnz	a
2288  002d 2704          	jreq	L7301
2291  002f a6ff          	ld	a,#255
2293  0031 20e9          	jra	L63
2294  0033               L7301:
2295                     ; 420 return ack;
2297  0033 7b01          	ld	a,(OFST+0,sp)
2299  0035 20e5          	jra	L63
2323                     ; 424 void swi2c_init(void){
2324                     .text:	section	.text,new
2325  0000               _swi2c_init:
2329                     ; 425 GPIO_Init(SCL_GPIO,SCL_PIN,GPIO_MODE_OUT_OD_HIZ_SLOW);
2331  0000 4b90          	push	#144
2332  0002 4b08          	push	#8
2333  0004 ae5000        	ldw	x,#20480
2334  0007 cd0000        	call	_GPIO_Init
2336  000a 85            	popw	x
2337                     ; 426 GPIO_Init(SDA_GPIO,SDA_PIN,GPIO_MODE_OUT_OD_HIZ_SLOW);
2339  000b 4b90          	push	#144
2340  000d 4b10          	push	#16
2341  000f ae5019        	ldw	x,#20505
2342  0012 cd0000        	call	_GPIO_Init
2344  0015 85            	popw	x
2345                     ; 427 }
2348  0016 81            	ret
2391                     ; 435 uint8_t swi2c_readbit(void){
2392                     .text:	section	.text,new
2393  0000               _swi2c_readbit:
2395  0000 5203          	subw	sp,#3
2396       00000003      OFST:	set	3
2399                     ; 436 uint16_t timeout=SWI2C_TIMEOUT;
2401  0002 aeffff        	ldw	x,#65535
2402  0005 1f02          	ldw	(OFST-1,sp),x
2404                     ; 438 SDA_HIGH; // release SDA
2406  0007 4b10          	push	#16
2407  0009 ae5019        	ldw	x,#20505
2408  000c cd0000        	call	_GPIO_WriteHigh
2410  000f 84            	pop	a
2411                     ; 439 SWI2C_SETUP_TIME;
2413  0010 ae0005        	ldw	x,#5
2414  0013 cd0000        	call	_delay_us
2416                     ; 440 SCL_HIGH;
2418  0016 4b08          	push	#8
2419  0018 ae5000        	ldw	x,#20480
2420  001b cd0000        	call	_GPIO_WriteHigh
2422  001e 84            	pop	a
2424  001f 2007          	jra	L1701
2425  0021               L7601:
2426                     ; 441 while(SCL_stat() == RESET && timeout){timeout--;}
2428  0021 1e02          	ldw	x,(OFST-1,sp)
2429  0023 1d0001        	subw	x,#1
2430  0026 1f02          	ldw	(OFST-1,sp),x
2432  0028               L1701:
2435  0028 4b08          	push	#8
2436  002a ae5000        	ldw	x,#20480
2437  002d cd0000        	call	_GPIO_ReadInputPin
2439  0030 5b01          	addw	sp,#1
2440  0032 4d            	tnz	a
2441  0033 2604          	jrne	L5701
2443  0035 1e02          	ldw	x,(OFST-1,sp)
2444  0037 26e8          	jrne	L7601
2445  0039               L5701:
2446                     ; 442 if(timeout==0){return 0xff;}
2448  0039 1e02          	ldw	x,(OFST-1,sp)
2449  003b 2604          	jrne	L7701
2452  003d a6ff          	ld	a,#255
2454  003f 202c          	jra	L44
2455  0041               L7701:
2456                     ; 443 SWI2C_SCL_HIGH_TIME;
2458  0041 ae0005        	ldw	x,#5
2459  0044 cd0000        	call	_delay_us
2461                     ; 444 if(SDA_stat() == RESET){retval = 0;}else{retval=1;}
2463  0047 4b10          	push	#16
2464  0049 ae5019        	ldw	x,#20505
2465  004c cd0000        	call	_GPIO_ReadInputPin
2467  004f 5b01          	addw	sp,#1
2468  0051 4d            	tnz	a
2469  0052 2604          	jrne	L1011
2472  0054 0f01          	clr	(OFST-2,sp)
2475  0056 2004          	jra	L3011
2476  0058               L1011:
2479  0058 a601          	ld	a,#1
2480  005a 6b01          	ld	(OFST-2,sp),a
2482  005c               L3011:
2483                     ; 445 SCL_LOW;
2485  005c 4b08          	push	#8
2486  005e ae5000        	ldw	x,#20480
2487  0061 cd0000        	call	_GPIO_WriteLow
2489  0064 84            	pop	a
2490                     ; 446 SWI2C_HOLD_TIME; // hold time
2492  0065 ae0005        	ldw	x,#5
2493  0068 cd0000        	call	_delay_us
2495                     ; 447 return retval;
2497  006b 7b01          	ld	a,(OFST-2,sp)
2499  006d               L44:
2501  006d 5b03          	addw	sp,#3
2502  006f 81            	ret
2545                     ; 453 uint8_t swi2c_writebit(uint8_t bit){
2546                     .text:	section	.text,new
2547  0000               _swi2c_writebit:
2549  0000 89            	pushw	x
2550       00000002      OFST:	set	2
2553                     ; 454 uint16_t timeout=SWI2C_TIMEOUT;
2555  0001 aeffff        	ldw	x,#65535
2556  0004 1f01          	ldw	(OFST-1,sp),x
2558                     ; 455 if(bit){SDA_HIGH;}else{SDA_LOW;} // set desired SDA value
2560  0006 4d            	tnz	a
2561  0007 270b          	jreq	L3211
2564  0009 4b10          	push	#16
2565  000b ae5019        	ldw	x,#20505
2566  000e cd0000        	call	_GPIO_WriteHigh
2568  0011 84            	pop	a
2570  0012 2009          	jra	L5211
2571  0014               L3211:
2574  0014 4b10          	push	#16
2575  0016 ae5019        	ldw	x,#20505
2576  0019 cd0000        	call	_GPIO_WriteLow
2578  001c 84            	pop	a
2579  001d               L5211:
2580                     ; 456 SWI2C_SETUP_TIME; // setup time
2582  001d ae0005        	ldw	x,#5
2583  0020 cd0000        	call	_delay_us
2585                     ; 457 SCL_HIGH;		
2587  0023 4b08          	push	#8
2588  0025 ae5000        	ldw	x,#20480
2589  0028 cd0000        	call	_GPIO_WriteHigh
2591  002b 84            	pop	a
2593  002c 2007          	jra	L1311
2594  002e               L7211:
2595                     ; 458 while(SCL_stat() == RESET && timeout){timeout--;} // wait until SCL is not high
2597  002e 1e01          	ldw	x,(OFST-1,sp)
2598  0030 1d0001        	subw	x,#1
2599  0033 1f01          	ldw	(OFST-1,sp),x
2601  0035               L1311:
2604  0035 4b08          	push	#8
2605  0037 ae5000        	ldw	x,#20480
2606  003a cd0000        	call	_GPIO_ReadInputPin
2608  003d 5b01          	addw	sp,#1
2609  003f 4d            	tnz	a
2610  0040 2604          	jrne	L5311
2612  0042 1e01          	ldw	x,(OFST-1,sp)
2613  0044 26e8          	jrne	L7211
2614  0046               L5311:
2615                     ; 459 if(timeout==0){SDA_HIGH; return 0xff;} // generate timeout error if SCL is held Low too long
2617  0046 1e01          	ldw	x,(OFST-1,sp)
2618  0048 260d          	jrne	L7311
2621  004a 4b10          	push	#16
2622  004c ae5019        	ldw	x,#20505
2623  004f cd0000        	call	_GPIO_WriteHigh
2625  0052 84            	pop	a
2628  0053 a6ff          	ld	a,#255
2630  0055 2016          	jra	L05
2631  0057               L7311:
2632                     ; 460 SWI2C_SCL_HIGH_TIME;
2634  0057 ae0005        	ldw	x,#5
2635  005a cd0000        	call	_delay_us
2637                     ; 461 SCL_LOW;
2639  005d 4b08          	push	#8
2640  005f ae5000        	ldw	x,#20480
2641  0062 cd0000        	call	_GPIO_WriteLow
2643  0065 84            	pop	a
2644                     ; 462 SWI2C_HOLD_TIME; // hold time
2646  0066 ae0005        	ldw	x,#5
2647  0069 cd0000        	call	_delay_us
2649                     ; 463 return 0;
2651  006c 4f            	clr	a
2653  006d               L05:
2655  006d 85            	popw	x
2656  006e 81            	ret
2692                     ; 469 uint8_t swi2c_RESTART(void){
2693                     .text:	section	.text,new
2694  0000               _swi2c_RESTART:
2696  0000 89            	pushw	x
2697       00000002      OFST:	set	2
2700                     ; 470 uint16_t timeout=SWI2C_TIMEOUT;
2702  0001 aeffff        	ldw	x,#65535
2703  0004 1f01          	ldw	(OFST-1,sp),x
2705                     ; 471 SCL_LOW;
2707  0006 4b08          	push	#8
2708  0008 ae5000        	ldw	x,#20480
2709  000b cd0000        	call	_GPIO_WriteLow
2711  000e 84            	pop	a
2712                     ; 472 SDA_HIGH;
2714  000f 4b10          	push	#16
2715  0011 ae5019        	ldw	x,#20505
2716  0014 cd0000        	call	_GPIO_WriteHigh
2718  0017 84            	pop	a
2720  0018 2007          	jra	L7511
2721  001a               L5511:
2722                     ; 473 while(SDA_stat() == RESET && timeout){timeout--;}
2724  001a 1e01          	ldw	x,(OFST-1,sp)
2725  001c 1d0001        	subw	x,#1
2726  001f 1f01          	ldw	(OFST-1,sp),x
2728  0021               L7511:
2731  0021 4b10          	push	#16
2732  0023 ae5019        	ldw	x,#20505
2733  0026 cd0000        	call	_GPIO_ReadInputPin
2735  0029 5b01          	addw	sp,#1
2736  002b 4d            	tnz	a
2737  002c 2604          	jrne	L3611
2739  002e 1e01          	ldw	x,(OFST-1,sp)
2740  0030 26e8          	jrne	L5511
2741  0032               L3611:
2742                     ; 474 if(timeout==0){SCL_HIGH; return 0xff;}
2744  0032 1e01          	ldw	x,(OFST-1,sp)
2745  0034 260d          	jrne	L5611
2748  0036 4b08          	push	#8
2749  0038 ae5000        	ldw	x,#20480
2750  003b cd0000        	call	_GPIO_WriteHigh
2752  003e 84            	pop	a
2755  003f a6ff          	ld	a,#255
2757  0041 202f          	jra	L45
2758  0043               L5611:
2759                     ; 475 SWI2C_SS_TIME;
2761  0043 ae0005        	ldw	x,#5
2762  0046 cd0000        	call	_delay_us
2764                     ; 476 SCL_HIGH;
2766  0049 4b08          	push	#8
2767  004b ae5000        	ldw	x,#20480
2768  004e cd0000        	call	_GPIO_WriteHigh
2770  0051 84            	pop	a
2772  0052 2007          	jra	L1711
2773  0054               L7611:
2774                     ; 477 while(SCL_stat() == RESET && timeout){timeout--;}
2776  0054 1e01          	ldw	x,(OFST-1,sp)
2777  0056 1d0001        	subw	x,#1
2778  0059 1f01          	ldw	(OFST-1,sp),x
2780  005b               L1711:
2783  005b 4b08          	push	#8
2784  005d ae5000        	ldw	x,#20480
2785  0060 cd0000        	call	_GPIO_ReadInputPin
2787  0063 5b01          	addw	sp,#1
2788  0065 4d            	tnz	a
2789  0066 2604          	jrne	L5711
2791  0068 1e01          	ldw	x,(OFST-1,sp)
2792  006a 26e8          	jrne	L7611
2793  006c               L5711:
2794                     ; 478 if(timeout==0){return 0xff;}
2796  006c 1e01          	ldw	x,(OFST-1,sp)
2797  006e 2604          	jrne	L7711
2800  0070 a6ff          	ld	a,#255
2802  0072               L45:
2804  0072 85            	popw	x
2805  0073 81            	ret
2806  0074               L7711:
2807                     ; 479 SWI2C_SS_TIME;
2809  0074 ae0005        	ldw	x,#5
2810  0077 cd0000        	call	_delay_us
2812                     ; 480 SDA_LOW;
2814  007a 4b10          	push	#16
2815  007c ae5019        	ldw	x,#20505
2816  007f cd0000        	call	_GPIO_WriteLow
2818  0082 84            	pop	a
2819                     ; 481 SWI2C_SS_TIME;
2821  0083 ae0005        	ldw	x,#5
2822  0086 cd0000        	call	_delay_us
2824                     ; 482 SCL_LOW;
2826  0089 4b08          	push	#8
2827  008b ae5000        	ldw	x,#20480
2828  008e cd0000        	call	_GPIO_WriteLow
2830  0091 84            	pop	a
2831                     ; 483 SWI2C_SS_TIME;
2833  0092 ae0005        	ldw	x,#5
2834  0095 cd0000        	call	_delay_us
2836                     ; 484 return 0;
2838  0098 4f            	clr	a
2840  0099 20d7          	jra	L45
2875                     ; 490 uint8_t swi2c_START(void){
2876                     .text:	section	.text,new
2877  0000               _swi2c_START:
2879  0000 89            	pushw	x
2880       00000002      OFST:	set	2
2883                     ; 491 uint16_t timeout=SWI2C_TIMEOUT;
2885  0001 aeffff        	ldw	x,#65535
2886  0004 1f01          	ldw	(OFST-1,sp),x
2889  0006 2007          	jra	L1221
2890  0008               L5121:
2891                     ; 492 while((SCL_stat() == RESET || SDA_stat() == RESET) && timeout){timeout--;}
2893  0008 1e01          	ldw	x,(OFST-1,sp)
2894  000a 1d0001        	subw	x,#1
2895  000d 1f01          	ldw	(OFST-1,sp),x
2897  000f               L1221:
2900  000f 4b08          	push	#8
2901  0011 ae5000        	ldw	x,#20480
2902  0014 cd0000        	call	_GPIO_ReadInputPin
2904  0017 5b01          	addw	sp,#1
2905  0019 4d            	tnz	a
2906  001a 270d          	jreq	L7221
2908  001c 4b10          	push	#16
2909  001e ae5019        	ldw	x,#20505
2910  0021 cd0000        	call	_GPIO_ReadInputPin
2912  0024 5b01          	addw	sp,#1
2913  0026 4d            	tnz	a
2914  0027 2604          	jrne	L5221
2915  0029               L7221:
2917  0029 1e01          	ldw	x,(OFST-1,sp)
2918  002b 26db          	jrne	L5121
2919  002d               L5221:
2920                     ; 493 if(timeout == 0){return 0xff;}
2922  002d 1e01          	ldw	x,(OFST-1,sp)
2923  002f 2604          	jrne	L1321
2926  0031 a6ff          	ld	a,#255
2928  0033 201f          	jra	L06
2929  0035               L1321:
2930                     ; 495 SDA_LOW;
2932  0035 4b10          	push	#16
2933  0037 ae5019        	ldw	x,#20505
2934  003a cd0000        	call	_GPIO_WriteLow
2936  003d 84            	pop	a
2937                     ; 496 SWI2C_SS_TIME;
2939  003e ae0005        	ldw	x,#5
2940  0041 cd0000        	call	_delay_us
2942                     ; 497 SCL_LOW;
2944  0044 4b08          	push	#8
2945  0046 ae5000        	ldw	x,#20480
2946  0049 cd0000        	call	_GPIO_WriteLow
2948  004c 84            	pop	a
2949                     ; 498 SWI2C_SS_TIME;
2951  004d ae0005        	ldw	x,#5
2952  0050 cd0000        	call	_delay_us
2954                     ; 499 return 0;
2956  0053 4f            	clr	a
2958  0054               L06:
2960  0054 85            	popw	x
2961  0055 81            	ret
3004                     ; 505 uint8_t swi2c_STOP(void){
3005                     .text:	section	.text,new
3006  0000               _swi2c_STOP:
3008  0000 5203          	subw	sp,#3
3009       00000003      OFST:	set	3
3012                     ; 506 uint16_t timeout=SWI2C_TIMEOUT;
3014  0002 aeffff        	ldw	x,#65535
3015  0005 1f02          	ldw	(OFST-1,sp),x
3017                     ; 507 uint8_t retval = 0;
3019  0007 0f01          	clr	(OFST-2,sp)
3021                     ; 508 SDA_LOW;
3023  0009 4b10          	push	#16
3024  000b ae5019        	ldw	x,#20505
3025  000e cd0000        	call	_GPIO_WriteLow
3027  0011 84            	pop	a
3028                     ; 509 SWI2C_SS_TIME;
3030  0012 ae0005        	ldw	x,#5
3031  0015 cd0000        	call	_delay_us
3033                     ; 510 SCL_HIGH;
3035  0018 4b08          	push	#8
3036  001a ae5000        	ldw	x,#20480
3037  001d cd0000        	call	_GPIO_WriteHigh
3039  0020 84            	pop	a
3041  0021 2007          	jra	L3521
3042  0023               L1521:
3043                     ; 511 while(SCL_stat() == RESET && timeout){timeout--;}
3045  0023 1e02          	ldw	x,(OFST-1,sp)
3046  0025 1d0001        	subw	x,#1
3047  0028 1f02          	ldw	(OFST-1,sp),x
3049  002a               L3521:
3052  002a 4b08          	push	#8
3053  002c ae5000        	ldw	x,#20480
3054  002f cd0000        	call	_GPIO_ReadInputPin
3056  0032 5b01          	addw	sp,#1
3057  0034 4d            	tnz	a
3058  0035 2604          	jrne	L7521
3060  0037 1e02          	ldw	x,(OFST-1,sp)
3061  0039 26e8          	jrne	L1521
3062  003b               L7521:
3063                     ; 512 if(timeout==0){retval = 0xff;}
3065  003b 1e02          	ldw	x,(OFST-1,sp)
3066  003d 2604          	jrne	L1621
3069  003f a6ff          	ld	a,#255
3070  0041 6b01          	ld	(OFST-2,sp),a
3072  0043               L1621:
3073                     ; 513 SWI2C_SS_TIME;
3075  0043 ae0005        	ldw	x,#5
3076  0046 cd0000        	call	_delay_us
3078                     ; 514 SDA_HIGH;
3080  0049 4b10          	push	#16
3081  004b ae5019        	ldw	x,#20505
3082  004e cd0000        	call	_GPIO_WriteHigh
3084  0051 84            	pop	a
3085                     ; 515 return retval;
3087  0052 7b01          	ld	a,(OFST-2,sp)
3090  0054 5b03          	addw	sp,#3
3091  0056 81            	ret
3135                     ; 522 uint8_t swi2c_recover(void){
3136                     .text:	section	.text,new
3137  0000               _swi2c_recover:
3139  0000 5203          	subw	sp,#3
3140       00000003      OFST:	set	3
3143                     ; 523 uint16_t timeout=SWI2C_TIMEOUT;
3145  0002 aeffff        	ldw	x,#65535
3146  0005 1f02          	ldw	(OFST-1,sp),x
3148                     ; 525 SCL_HIGH; // release both lines
3150  0007 4b08          	push	#8
3151  0009 ae5000        	ldw	x,#20480
3152  000c cd0000        	call	_GPIO_WriteHigh
3154  000f 84            	pop	a
3155                     ; 526 SDA_HIGH;
3157  0010 4b10          	push	#16
3158  0012 ae5019        	ldw	x,#20505
3159  0015 cd0000        	call	_GPIO_WriteHigh
3161  0018 84            	pop	a
3162                     ; 527 SWI2C_SETUP_TIME;
3164  0019 ae0005        	ldw	x,#5
3165  001c cd0000        	call	_delay_us
3167                     ; 529 if(SCL_stat() != RESET && SDA_stat() != RESET){return 0;}
3169  001f 4b08          	push	#8
3170  0021 ae5000        	ldw	x,#20480
3171  0024 cd0000        	call	_GPIO_ReadInputPin
3173  0027 5b01          	addw	sp,#1
3174  0029 4d            	tnz	a
3175  002a 2710          	jreq	L1031
3177  002c 4b10          	push	#16
3178  002e ae5019        	ldw	x,#20505
3179  0031 cd0000        	call	_GPIO_ReadInputPin
3181  0034 5b01          	addw	sp,#1
3182  0036 4d            	tnz	a
3183  0037 2703          	jreq	L1031
3186  0039 4f            	clr	a
3188  003a 2047          	jra	L66
3189  003c               L1031:
3190                     ; 531 if(SDA_stat() == RESET){
3192  003c 4b10          	push	#16
3193  003e ae5019        	ldw	x,#20505
3194  0041 cd0000        	call	_GPIO_ReadInputPin
3196  0044 5b01          	addw	sp,#1
3197  0046 4d            	tnz	a
3198  0047 2661          	jrne	L3031
3199                     ; 532 	for(i=0;i<9;i++){ // try nine times try to read one bit and pray for SDA release
3201  0049 0f01          	clr	(OFST-2,sp)
3203  004b               L5031:
3204                     ; 533 		SCL_LOW;
3206  004b 4b08          	push	#8
3207  004d ae5000        	ldw	x,#20480
3208  0050 cd0000        	call	_GPIO_WriteLow
3210  0053 84            	pop	a
3211                     ; 534 		SWI2C_HOLD_TIME; 
3213  0054 ae0005        	ldw	x,#5
3214  0057 cd0000        	call	_delay_us
3216                     ; 535 		SCL_HIGH; 
3218  005a 4b08          	push	#8
3219  005c ae5000        	ldw	x,#20480
3220  005f cd0000        	call	_GPIO_WriteHigh
3222  0062 84            	pop	a
3224  0063 2007          	jra	L5131
3225  0065               L3131:
3226                     ; 536 		while(SCL_stat() == RESET && timeout){timeout--;}
3228  0065 1e02          	ldw	x,(OFST-1,sp)
3229  0067 1d0001        	subw	x,#1
3230  006a 1f02          	ldw	(OFST-1,sp),x
3232  006c               L5131:
3235  006c 4b08          	push	#8
3236  006e ae5000        	ldw	x,#20480
3237  0071 cd0000        	call	_GPIO_ReadInputPin
3239  0074 5b01          	addw	sp,#1
3240  0076 4d            	tnz	a
3241  0077 2604          	jrne	L1231
3243  0079 1e02          	ldw	x,(OFST-1,sp)
3244  007b 26e8          	jrne	L3131
3245  007d               L1231:
3246                     ; 537 		if(timeout==0){return 0xff;}
3248  007d 1e02          	ldw	x,(OFST-1,sp)
3249  007f 2605          	jrne	L3231
3252  0081 a6ff          	ld	a,#255
3254  0083               L66:
3256  0083 5b03          	addw	sp,#3
3257  0085 81            	ret
3258  0086               L3231:
3259                     ; 538 		SWI2C_SCL_HIGH_TIME; 
3261  0086 ae0005        	ldw	x,#5
3262  0089 cd0000        	call	_delay_us
3264                     ; 539 		if(SDA_stat() != RESET){ // if slave released SDA line, generate STOP
3266  008c 4b10          	push	#16
3267  008e ae5019        	ldw	x,#20505
3268  0091 cd0000        	call	_GPIO_ReadInputPin
3270  0094 5b01          	addw	sp,#1
3271  0096 4d            	tnz	a
3272  0097 2705          	jreq	L5231
3273                     ; 540 			return(swi2c_STOP());
3275  0099 cd0000        	call	_swi2c_STOP
3278  009c 20e5          	jra	L66
3279  009e               L5231:
3280                     ; 532 	for(i=0;i<9;i++){ // try nine times try to read one bit and pray for SDA release
3282  009e 0c01          	inc	(OFST-2,sp)
3286  00a0 7b01          	ld	a,(OFST-2,sp)
3287  00a2 a109          	cp	a,#9
3288  00a4 25a5          	jrult	L5031
3289                     ; 543 		return 0xee;
3291  00a6 a6ee          	ld	a,#238
3293  00a8 20d9          	jra	L66
3294  00aa               L3031:
3295                     ; 545 }
3297  00aa 20d7          	jra	L66
3310                     	xdef	_swi2c_STOP
3311                     	xdef	_swi2c_RESTART
3312                     	xdef	_swi2c_START
3313                     	xdef	_swi2c_readbit
3314                     	xdef	_swi2c_writebit
3315                     	xdef	_swi2c_recover
3316                     	xdef	_swi2c_read_eemem
3317                     	xdef	_swi2c_write_eemem
3318                     	xdef	_swi2c_read_array
3319                     	xdef	_swi2c_write_array
3320                     	xdef	_swi2c_read_buf
3321                     	xdef	_swi2c_write_buf
3322                     	xdef	_swi2c_test_slave
3323                     	xdef	_swi2c_init
3324                     	xref	_delay_us
3325                     	xref	_GPIO_ReadInputPin
3326                     	xref	_GPIO_WriteLow
3327                     	xref	_GPIO_WriteHigh
3328                     	xref	_GPIO_Init
3347                     	end

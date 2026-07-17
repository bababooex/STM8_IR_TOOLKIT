   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.13.3 - 22 May 2025
   3                     ; Generator (Limited) V4.6.6 - 07 Jan 2026
  44                     ; 61 void I2C_DeInit(void)
  44                     ; 62 {
  46                     .text:	section	.text,new
  47  0000               _I2C_DeInit:
  51                     ; 63   I2C->CR1 = I2C_CR1_RESET_VALUE;
  53  0000 725f5210      	clr	21008
  54                     ; 64   I2C->CR2 = I2C_CR2_RESET_VALUE;
  56  0004 725f5211      	clr	21009
  57                     ; 65   I2C->FREQR = I2C_FREQR_RESET_VALUE;
  59  0008 725f5212      	clr	21010
  60                     ; 66   I2C->OARL = I2C_OARL_RESET_VALUE;
  62  000c 725f5213      	clr	21011
  63                     ; 67   I2C->OARH = I2C_OARH_RESET_VALUE;
  65  0010 725f5214      	clr	21012
  66                     ; 68   I2C->ITR = I2C_ITR_RESET_VALUE;
  68  0014 725f521a      	clr	21018
  69                     ; 69   I2C->CCRL = I2C_CCRL_RESET_VALUE;
  71  0018 725f521b      	clr	21019
  72                     ; 70   I2C->CCRH = I2C_CCRH_RESET_VALUE;
  74  001c 725f521c      	clr	21020
  75                     ; 71   I2C->TRISER = I2C_TRISER_RESET_VALUE;
  77  0020 3502521d      	mov	21021,#2
  78                     ; 72 }
  81  0024 81            	ret
 249                     .const:	section	.text
 250  0000               L44:
 251  0000 00061a81      	dc.l	400001
 252  0004               L05:
 253  0004 000186a1      	dc.l	100001
 254  0008               L25:
 255  0008 000f4240      	dc.l	1000000
 256                     ; 90 void I2C_Init(uint32_t OutputClockFrequencyHz, uint16_t OwnAddress, 
 256                     ; 91               I2C_DutyCycle_TypeDef I2C_DutyCycle, I2C_Ack_TypeDef Ack, 
 256                     ; 92               I2C_AddMode_TypeDef AddMode, uint8_t InputClockFrequencyMHz )
 256                     ; 93 {
 257                     .text:	section	.text,new
 258  0000               _I2C_Init:
 260  0000 5209          	subw	sp,#9
 261       00000009      OFST:	set	9
 264                     ; 94   uint16_t result = 0x0004;
 266                     ; 95   uint16_t tmpval = 0;
 268                     ; 96   uint8_t tmpccrh = 0;
 270  0002 0f07          	clr	(OFST-2,sp)
 272                     ; 99   assert_param(IS_I2C_ACK_OK(Ack));
 274  0004 0d13          	tnz	(OFST+10,sp)
 275  0006 270c          	jreq	L21
 276  0008 7b13          	ld	a,(OFST+10,sp)
 277  000a a101          	cp	a,#1
 278  000c 2706          	jreq	L21
 279  000e 7b13          	ld	a,(OFST+10,sp)
 280  0010 a102          	cp	a,#2
 281  0012 2603          	jrne	L01
 282  0014               L21:
 283  0014 4f            	clr	a
 284  0015 2010          	jra	L41
 285  0017               L01:
 286  0017 ae0063        	ldw	x,#99
 287  001a 89            	pushw	x
 288  001b ae0000        	ldw	x,#0
 289  001e 89            	pushw	x
 290  001f ae000c        	ldw	x,#L511
 291  0022 cd0000        	call	_assert_failed
 293  0025 5b04          	addw	sp,#4
 294  0027               L41:
 295                     ; 100   assert_param(IS_I2C_ADDMODE_OK(AddMode));
 297  0027 0d14          	tnz	(OFST+11,sp)
 298  0029 2706          	jreq	L02
 299  002b 7b14          	ld	a,(OFST+11,sp)
 300  002d a180          	cp	a,#128
 301  002f 2603          	jrne	L61
 302  0031               L02:
 303  0031 4f            	clr	a
 304  0032 2010          	jra	L22
 305  0034               L61:
 306  0034 ae0064        	ldw	x,#100
 307  0037 89            	pushw	x
 308  0038 ae0000        	ldw	x,#0
 309  003b 89            	pushw	x
 310  003c ae000c        	ldw	x,#L511
 311  003f cd0000        	call	_assert_failed
 313  0042 5b04          	addw	sp,#4
 314  0044               L22:
 315                     ; 101   assert_param(IS_I2C_OWN_ADDRESS_OK(OwnAddress));
 317  0044 1e10          	ldw	x,(OFST+7,sp)
 318  0046 a30400        	cpw	x,#1024
 319  0049 2403          	jruge	L42
 320  004b 4f            	clr	a
 321  004c 2010          	jra	L62
 322  004e               L42:
 323  004e ae0065        	ldw	x,#101
 324  0051 89            	pushw	x
 325  0052 ae0000        	ldw	x,#0
 326  0055 89            	pushw	x
 327  0056 ae000c        	ldw	x,#L511
 328  0059 cd0000        	call	_assert_failed
 330  005c 5b04          	addw	sp,#4
 331  005e               L62:
 332                     ; 102   assert_param(IS_I2C_DUTYCYCLE_OK(I2C_DutyCycle));  
 334  005e 0d12          	tnz	(OFST+9,sp)
 335  0060 2706          	jreq	L23
 336  0062 7b12          	ld	a,(OFST+9,sp)
 337  0064 a140          	cp	a,#64
 338  0066 2603          	jrne	L03
 339  0068               L23:
 340  0068 4f            	clr	a
 341  0069 2010          	jra	L43
 342  006b               L03:
 343  006b ae0066        	ldw	x,#102
 344  006e 89            	pushw	x
 345  006f ae0000        	ldw	x,#0
 346  0072 89            	pushw	x
 347  0073 ae000c        	ldw	x,#L511
 348  0076 cd0000        	call	_assert_failed
 350  0079 5b04          	addw	sp,#4
 351  007b               L43:
 352                     ; 103   assert_param(IS_I2C_INPUT_CLOCK_FREQ_OK(InputClockFrequencyMHz));
 354  007b 0d15          	tnz	(OFST+12,sp)
 355  007d 2709          	jreq	L63
 356  007f 7b15          	ld	a,(OFST+12,sp)
 357  0081 a111          	cp	a,#17
 358  0083 2403          	jruge	L63
 359  0085 4f            	clr	a
 360  0086 2010          	jra	L04
 361  0088               L63:
 362  0088 ae0067        	ldw	x,#103
 363  008b 89            	pushw	x
 364  008c ae0000        	ldw	x,#0
 365  008f 89            	pushw	x
 366  0090 ae000c        	ldw	x,#L511
 367  0093 cd0000        	call	_assert_failed
 369  0096 5b04          	addw	sp,#4
 370  0098               L04:
 371                     ; 104   assert_param(IS_I2C_OUTPUT_CLOCK_FREQ_OK(OutputClockFrequencyHz));
 373  0098 96            	ldw	x,sp
 374  0099 1c000c        	addw	x,#OFST+3
 375  009c cd0000        	call	c_lzmp
 377  009f 2712          	jreq	L24
 378  00a1 96            	ldw	x,sp
 379  00a2 1c000c        	addw	x,#OFST+3
 380  00a5 cd0000        	call	c_ltor
 382  00a8 ae0000        	ldw	x,#L44
 383  00ab cd0000        	call	c_lcmp
 385  00ae 2403          	jruge	L24
 386  00b0 4f            	clr	a
 387  00b1 2010          	jra	L64
 388  00b3               L24:
 389  00b3 ae0068        	ldw	x,#104
 390  00b6 89            	pushw	x
 391  00b7 ae0000        	ldw	x,#0
 392  00ba 89            	pushw	x
 393  00bb ae000c        	ldw	x,#L511
 394  00be cd0000        	call	_assert_failed
 396  00c1 5b04          	addw	sp,#4
 397  00c3               L64:
 398                     ; 109   I2C->FREQR &= (uint8_t)(~I2C_FREQR_FREQ);
 400  00c3 c65212        	ld	a,21010
 401  00c6 a4c0          	and	a,#192
 402  00c8 c75212        	ld	21010,a
 403                     ; 111   I2C->FREQR |= InputClockFrequencyMHz;
 405  00cb c65212        	ld	a,21010
 406  00ce 1a15          	or	a,(OFST+12,sp)
 407  00d0 c75212        	ld	21010,a
 408                     ; 115   I2C->CR1 &= (uint8_t)(~I2C_CR1_PE);
 410  00d3 72115210      	bres	21008,#0
 411                     ; 118   I2C->CCRH &= (uint8_t)(~(I2C_CCRH_FS | I2C_CCRH_DUTY | I2C_CCRH_CCR));
 413  00d7 c6521c        	ld	a,21020
 414  00da a430          	and	a,#48
 415  00dc c7521c        	ld	21020,a
 416                     ; 119   I2C->CCRL &= (uint8_t)(~I2C_CCRL_CCR);
 418  00df 725f521b      	clr	21019
 419                     ; 122   if (OutputClockFrequencyHz > I2C_MAX_STANDARD_FREQ) /* FAST MODE */
 421  00e3 96            	ldw	x,sp
 422  00e4 1c000c        	addw	x,#OFST+3
 423  00e7 cd0000        	call	c_ltor
 425  00ea ae0004        	ldw	x,#L05
 426  00ed cd0000        	call	c_lcmp
 428  00f0 2403          	jruge	L45
 429  00f2 cc017f        	jp	L711
 430  00f5               L45:
 431                     ; 125     tmpccrh = I2C_CCRH_FS;
 433  00f5 a680          	ld	a,#128
 434  00f7 6b07          	ld	(OFST-2,sp),a
 436                     ; 127     if (I2C_DutyCycle == I2C_DUTYCYCLE_2)
 438  00f9 0d12          	tnz	(OFST+9,sp)
 439  00fb 2630          	jrne	L121
 440                     ; 130       result = (uint16_t) ((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz * 3));
 442  00fd 96            	ldw	x,sp
 443  00fe 1c000c        	addw	x,#OFST+3
 444  0101 cd0000        	call	c_ltor
 446  0104 a603          	ld	a,#3
 447  0106 cd0000        	call	c_smul
 449  0109 96            	ldw	x,sp
 450  010a 1c0001        	addw	x,#OFST-8
 451  010d cd0000        	call	c_rtol
 454  0110 7b15          	ld	a,(OFST+12,sp)
 455  0112 b703          	ld	c_lreg+3,a
 456  0114 3f02          	clr	c_lreg+2
 457  0116 3f01          	clr	c_lreg+1
 458  0118 3f00          	clr	c_lreg
 459  011a ae0008        	ldw	x,#L25
 460  011d cd0000        	call	c_lmul
 462  0120 96            	ldw	x,sp
 463  0121 1c0001        	addw	x,#OFST-8
 464  0124 cd0000        	call	c_ludv
 466  0127 be02          	ldw	x,c_lreg+2
 467  0129 1f08          	ldw	(OFST-1,sp),x
 470  012b 2034          	jra	L321
 471  012d               L121:
 472                     ; 135       result = (uint16_t) ((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz * 25));
 474  012d 96            	ldw	x,sp
 475  012e 1c000c        	addw	x,#OFST+3
 476  0131 cd0000        	call	c_ltor
 478  0134 a619          	ld	a,#25
 479  0136 cd0000        	call	c_smul
 481  0139 96            	ldw	x,sp
 482  013a 1c0001        	addw	x,#OFST-8
 483  013d cd0000        	call	c_rtol
 486  0140 7b15          	ld	a,(OFST+12,sp)
 487  0142 b703          	ld	c_lreg+3,a
 488  0144 3f02          	clr	c_lreg+2
 489  0146 3f01          	clr	c_lreg+1
 490  0148 3f00          	clr	c_lreg
 491  014a ae0008        	ldw	x,#L25
 492  014d cd0000        	call	c_lmul
 494  0150 96            	ldw	x,sp
 495  0151 1c0001        	addw	x,#OFST-8
 496  0154 cd0000        	call	c_ludv
 498  0157 be02          	ldw	x,c_lreg+2
 499  0159 1f08          	ldw	(OFST-1,sp),x
 501                     ; 137       tmpccrh |= I2C_CCRH_DUTY;
 503  015b 7b07          	ld	a,(OFST-2,sp)
 504  015d aa40          	or	a,#64
 505  015f 6b07          	ld	(OFST-2,sp),a
 507  0161               L321:
 508                     ; 141     if (result < (uint16_t)0x01)
 510  0161 1e08          	ldw	x,(OFST-1,sp)
 511  0163 2605          	jrne	L521
 512                     ; 144       result = (uint16_t)0x0001;
 514  0165 ae0001        	ldw	x,#1
 515  0168 1f08          	ldw	(OFST-1,sp),x
 517  016a               L521:
 518                     ; 150     tmpval = ((InputClockFrequencyMHz * 3) / 10) + 1;
 520  016a 7b15          	ld	a,(OFST+12,sp)
 521  016c 97            	ld	xl,a
 522  016d a603          	ld	a,#3
 523  016f 42            	mul	x,a
 524  0170 a60a          	ld	a,#10
 525  0172 cd0000        	call	c_sdivx
 527  0175 5c            	incw	x
 528  0176 1f05          	ldw	(OFST-4,sp),x
 530                     ; 151     I2C->TRISER = (uint8_t)tmpval;
 532  0178 7b06          	ld	a,(OFST-3,sp)
 533  017a c7521d        	ld	21021,a
 535  017d 2043          	jra	L721
 536  017f               L711:
 537                     ; 158     result = (uint16_t)((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz << (uint8_t)1));
 539  017f 96            	ldw	x,sp
 540  0180 1c000c        	addw	x,#OFST+3
 541  0183 cd0000        	call	c_ltor
 543  0186 3803          	sll	c_lreg+3
 544  0188 3902          	rlc	c_lreg+2
 545  018a 3901          	rlc	c_lreg+1
 546  018c 3900          	rlc	c_lreg
 547  018e 96            	ldw	x,sp
 548  018f 1c0001        	addw	x,#OFST-8
 549  0192 cd0000        	call	c_rtol
 552  0195 7b15          	ld	a,(OFST+12,sp)
 553  0197 b703          	ld	c_lreg+3,a
 554  0199 3f02          	clr	c_lreg+2
 555  019b 3f01          	clr	c_lreg+1
 556  019d 3f00          	clr	c_lreg
 557  019f ae0008        	ldw	x,#L25
 558  01a2 cd0000        	call	c_lmul
 560  01a5 96            	ldw	x,sp
 561  01a6 1c0001        	addw	x,#OFST-8
 562  01a9 cd0000        	call	c_ludv
 564  01ac be02          	ldw	x,c_lreg+2
 565  01ae 1f08          	ldw	(OFST-1,sp),x
 567                     ; 161     if (result < (uint16_t)0x0004)
 569  01b0 1e08          	ldw	x,(OFST-1,sp)
 570  01b2 a30004        	cpw	x,#4
 571  01b5 2405          	jruge	L131
 572                     ; 164       result = (uint16_t)0x0004;
 574  01b7 ae0004        	ldw	x,#4
 575  01ba 1f08          	ldw	(OFST-1,sp),x
 577  01bc               L131:
 578                     ; 170     I2C->TRISER = (uint8_t)(InputClockFrequencyMHz + (uint8_t)1);
 580  01bc 7b15          	ld	a,(OFST+12,sp)
 581  01be 4c            	inc	a
 582  01bf c7521d        	ld	21021,a
 583  01c2               L721:
 584                     ; 175   I2C->CCRL = (uint8_t)result;
 586  01c2 7b09          	ld	a,(OFST+0,sp)
 587  01c4 c7521b        	ld	21019,a
 588                     ; 176   I2C->CCRH = (uint8_t)((uint8_t)((uint8_t)(result >> 8) & I2C_CCRH_CCR) | tmpccrh);
 590  01c7 7b08          	ld	a,(OFST-1,sp)
 591  01c9 a40f          	and	a,#15
 592  01cb 1a07          	or	a,(OFST-2,sp)
 593  01cd c7521c        	ld	21020,a
 594                     ; 179   I2C->CR1 |= I2C_CR1_PE;
 596  01d0 72105210      	bset	21008,#0
 597                     ; 182   I2C_AcknowledgeConfig(Ack);
 599  01d4 7b13          	ld	a,(OFST+10,sp)
 600  01d6 cd0000        	call	_I2C_AcknowledgeConfig
 602                     ; 185   I2C->OARL = (uint8_t)(OwnAddress);
 604  01d9 7b11          	ld	a,(OFST+8,sp)
 605  01db c75213        	ld	21011,a
 606                     ; 186   I2C->OARH = (uint8_t)((uint8_t)(AddMode | I2C_OARH_ADDCONF) |
 606                     ; 187                    (uint8_t)((OwnAddress & (uint16_t)0x0300) >> (uint8_t)7));
 608  01de 1e10          	ldw	x,(OFST+7,sp)
 609  01e0 4f            	clr	a
 610  01e1 01            	rrwa	x,a
 611  01e2 48            	sll	a
 612  01e3 59            	rlcw	x
 613  01e4 01            	rrwa	x,a
 614  01e5 a406          	and	a,#6
 615  01e7 5f            	clrw	x
 616  01e8 6b04          	ld	(OFST-5,sp),a
 618  01ea 7b14          	ld	a,(OFST+11,sp)
 619  01ec aa40          	or	a,#64
 620  01ee 1a04          	or	a,(OFST-5,sp)
 621  01f0 c75214        	ld	21012,a
 622                     ; 188 }
 625  01f3 5b09          	addw	sp,#9
 626  01f5 81            	ret
 682                     ; 196 void I2C_Cmd(FunctionalState NewState)
 682                     ; 197 {
 683                     .text:	section	.text,new
 684  0000               _I2C_Cmd:
 686  0000 88            	push	a
 687       00000000      OFST:	set	0
 690                     ; 200   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 692  0001 4d            	tnz	a
 693  0002 2704          	jreq	L26
 694  0004 a101          	cp	a,#1
 695  0006 2603          	jrne	L06
 696  0008               L26:
 697  0008 4f            	clr	a
 698  0009 2010          	jra	L46
 699  000b               L06:
 700  000b ae00c8        	ldw	x,#200
 701  000e 89            	pushw	x
 702  000f ae0000        	ldw	x,#0
 703  0012 89            	pushw	x
 704  0013 ae000c        	ldw	x,#L511
 705  0016 cd0000        	call	_assert_failed
 707  0019 5b04          	addw	sp,#4
 708  001b               L46:
 709                     ; 202   if (NewState != DISABLE)
 711  001b 0d01          	tnz	(OFST+1,sp)
 712  001d 2706          	jreq	L161
 713                     ; 205     I2C->CR1 |= I2C_CR1_PE;
 715  001f 72105210      	bset	21008,#0
 717  0023 2004          	jra	L361
 718  0025               L161:
 719                     ; 210     I2C->CR1 &= (uint8_t)(~I2C_CR1_PE);
 721  0025 72115210      	bres	21008,#0
 722  0029               L361:
 723                     ; 212 }
 726  0029 84            	pop	a
 727  002a 81            	ret
 763                     ; 220 void I2C_GeneralCallCmd(FunctionalState NewState)
 763                     ; 221 {
 764                     .text:	section	.text,new
 765  0000               _I2C_GeneralCallCmd:
 767  0000 88            	push	a
 768       00000000      OFST:	set	0
 771                     ; 224   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 773  0001 4d            	tnz	a
 774  0002 2704          	jreq	L27
 775  0004 a101          	cp	a,#1
 776  0006 2603          	jrne	L07
 777  0008               L27:
 778  0008 4f            	clr	a
 779  0009 2010          	jra	L47
 780  000b               L07:
 781  000b ae00e0        	ldw	x,#224
 782  000e 89            	pushw	x
 783  000f ae0000        	ldw	x,#0
 784  0012 89            	pushw	x
 785  0013 ae000c        	ldw	x,#L511
 786  0016 cd0000        	call	_assert_failed
 788  0019 5b04          	addw	sp,#4
 789  001b               L47:
 790                     ; 226   if (NewState != DISABLE)
 792  001b 0d01          	tnz	(OFST+1,sp)
 793  001d 2706          	jreq	L302
 794                     ; 229     I2C->CR1 |= I2C_CR1_ENGC;
 796  001f 721c5210      	bset	21008,#6
 798  0023 2004          	jra	L502
 799  0025               L302:
 800                     ; 234     I2C->CR1 &= (uint8_t)(~I2C_CR1_ENGC);
 802  0025 721d5210      	bres	21008,#6
 803  0029               L502:
 804                     ; 236 }
 807  0029 84            	pop	a
 808  002a 81            	ret
 844                     ; 246 void I2C_GenerateSTART(FunctionalState NewState)
 844                     ; 247 {
 845                     .text:	section	.text,new
 846  0000               _I2C_GenerateSTART:
 848  0000 88            	push	a
 849       00000000      OFST:	set	0
 852                     ; 250   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 854  0001 4d            	tnz	a
 855  0002 2704          	jreq	L201
 856  0004 a101          	cp	a,#1
 857  0006 2603          	jrne	L001
 858  0008               L201:
 859  0008 4f            	clr	a
 860  0009 2010          	jra	L401
 861  000b               L001:
 862  000b ae00fa        	ldw	x,#250
 863  000e 89            	pushw	x
 864  000f ae0000        	ldw	x,#0
 865  0012 89            	pushw	x
 866  0013 ae000c        	ldw	x,#L511
 867  0016 cd0000        	call	_assert_failed
 869  0019 5b04          	addw	sp,#4
 870  001b               L401:
 871                     ; 252   if (NewState != DISABLE)
 873  001b 0d01          	tnz	(OFST+1,sp)
 874  001d 2706          	jreq	L522
 875                     ; 255     I2C->CR2 |= I2C_CR2_START;
 877  001f 72105211      	bset	21009,#0
 879  0023 2004          	jra	L722
 880  0025               L522:
 881                     ; 260     I2C->CR2 &= (uint8_t)(~I2C_CR2_START);
 883  0025 72115211      	bres	21009,#0
 884  0029               L722:
 885                     ; 262 }
 888  0029 84            	pop	a
 889  002a 81            	ret
 925                     ; 270 void I2C_GenerateSTOP(FunctionalState NewState)
 925                     ; 271 {
 926                     .text:	section	.text,new
 927  0000               _I2C_GenerateSTOP:
 929  0000 88            	push	a
 930       00000000      OFST:	set	0
 933                     ; 274   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 935  0001 4d            	tnz	a
 936  0002 2704          	jreq	L211
 937  0004 a101          	cp	a,#1
 938  0006 2603          	jrne	L011
 939  0008               L211:
 940  0008 4f            	clr	a
 941  0009 2010          	jra	L411
 942  000b               L011:
 943  000b ae0112        	ldw	x,#274
 944  000e 89            	pushw	x
 945  000f ae0000        	ldw	x,#0
 946  0012 89            	pushw	x
 947  0013 ae000c        	ldw	x,#L511
 948  0016 cd0000        	call	_assert_failed
 950  0019 5b04          	addw	sp,#4
 951  001b               L411:
 952                     ; 276   if (NewState != DISABLE)
 954  001b 0d01          	tnz	(OFST+1,sp)
 955  001d 2706          	jreq	L742
 956                     ; 279     I2C->CR2 |= I2C_CR2_STOP;
 958  001f 72125211      	bset	21009,#1
 960  0023 2004          	jra	L152
 961  0025               L742:
 962                     ; 284     I2C->CR2 &= (uint8_t)(~I2C_CR2_STOP);
 964  0025 72135211      	bres	21009,#1
 965  0029               L152:
 966                     ; 286 }
 969  0029 84            	pop	a
 970  002a 81            	ret
1007                     ; 294 void I2C_SoftwareResetCmd(FunctionalState NewState)
1007                     ; 295 {
1008                     .text:	section	.text,new
1009  0000               _I2C_SoftwareResetCmd:
1011  0000 88            	push	a
1012       00000000      OFST:	set	0
1015                     ; 297   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1017  0001 4d            	tnz	a
1018  0002 2704          	jreq	L221
1019  0004 a101          	cp	a,#1
1020  0006 2603          	jrne	L021
1021  0008               L221:
1022  0008 4f            	clr	a
1023  0009 2010          	jra	L421
1024  000b               L021:
1025  000b ae0129        	ldw	x,#297
1026  000e 89            	pushw	x
1027  000f ae0000        	ldw	x,#0
1028  0012 89            	pushw	x
1029  0013 ae000c        	ldw	x,#L511
1030  0016 cd0000        	call	_assert_failed
1032  0019 5b04          	addw	sp,#4
1033  001b               L421:
1034                     ; 299   if (NewState != DISABLE)
1036  001b 0d01          	tnz	(OFST+1,sp)
1037  001d 2706          	jreq	L172
1038                     ; 302     I2C->CR2 |= I2C_CR2_SWRST;
1040  001f 721e5211      	bset	21009,#7
1042  0023 2004          	jra	L372
1043  0025               L172:
1044                     ; 307     I2C->CR2 &= (uint8_t)(~I2C_CR2_SWRST);
1046  0025 721f5211      	bres	21009,#7
1047  0029               L372:
1048                     ; 309 }
1051  0029 84            	pop	a
1052  002a 81            	ret
1089                     ; 318 void I2C_StretchClockCmd(FunctionalState NewState)
1089                     ; 319 {
1090                     .text:	section	.text,new
1091  0000               _I2C_StretchClockCmd:
1093  0000 88            	push	a
1094       00000000      OFST:	set	0
1097                     ; 321   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1099  0001 4d            	tnz	a
1100  0002 2704          	jreq	L231
1101  0004 a101          	cp	a,#1
1102  0006 2603          	jrne	L031
1103  0008               L231:
1104  0008 4f            	clr	a
1105  0009 2010          	jra	L431
1106  000b               L031:
1107  000b ae0141        	ldw	x,#321
1108  000e 89            	pushw	x
1109  000f ae0000        	ldw	x,#0
1110  0012 89            	pushw	x
1111  0013 ae000c        	ldw	x,#L511
1112  0016 cd0000        	call	_assert_failed
1114  0019 5b04          	addw	sp,#4
1115  001b               L431:
1116                     ; 323   if (NewState != DISABLE)
1118  001b 0d01          	tnz	(OFST+1,sp)
1119  001d 2706          	jreq	L313
1120                     ; 326     I2C->CR1 &= (uint8_t)(~I2C_CR1_NOSTRETCH);
1122  001f 721f5210      	bres	21008,#7
1124  0023 2004          	jra	L513
1125  0025               L313:
1126                     ; 332     I2C->CR1 |= I2C_CR1_NOSTRETCH;
1128  0025 721e5210      	bset	21008,#7
1129  0029               L513:
1130                     ; 334 }
1133  0029 84            	pop	a
1134  002a 81            	ret
1171                     ; 343 void I2C_AcknowledgeConfig(I2C_Ack_TypeDef Ack)
1171                     ; 344 {
1172                     .text:	section	.text,new
1173  0000               _I2C_AcknowledgeConfig:
1175  0000 88            	push	a
1176       00000000      OFST:	set	0
1179                     ; 347   assert_param(IS_I2C_ACK_OK(Ack));
1181  0001 4d            	tnz	a
1182  0002 2708          	jreq	L241
1183  0004 a101          	cp	a,#1
1184  0006 2704          	jreq	L241
1185  0008 a102          	cp	a,#2
1186  000a 2603          	jrne	L041
1187  000c               L241:
1188  000c 4f            	clr	a
1189  000d 2010          	jra	L441
1190  000f               L041:
1191  000f ae015b        	ldw	x,#347
1192  0012 89            	pushw	x
1193  0013 ae0000        	ldw	x,#0
1194  0016 89            	pushw	x
1195  0017 ae000c        	ldw	x,#L511
1196  001a cd0000        	call	_assert_failed
1198  001d 5b04          	addw	sp,#4
1199  001f               L441:
1200                     ; 349   if (Ack == I2C_ACK_NONE)
1202  001f 0d01          	tnz	(OFST+1,sp)
1203  0021 2606          	jrne	L533
1204                     ; 352     I2C->CR2 &= (uint8_t)(~I2C_CR2_ACK);
1206  0023 72155211      	bres	21009,#2
1208  0027 2014          	jra	L733
1209  0029               L533:
1210                     ; 357     I2C->CR2 |= I2C_CR2_ACK;
1212  0029 72145211      	bset	21009,#2
1213                     ; 359     if (Ack == I2C_ACK_CURR)
1215  002d 7b01          	ld	a,(OFST+1,sp)
1216  002f a101          	cp	a,#1
1217  0031 2606          	jrne	L143
1218                     ; 362       I2C->CR2 &= (uint8_t)(~I2C_CR2_POS);
1220  0033 72175211      	bres	21009,#3
1222  0037 2004          	jra	L733
1223  0039               L143:
1224                     ; 367       I2C->CR2 |= I2C_CR2_POS;
1226  0039 72165211      	bset	21009,#3
1227  003d               L733:
1228                     ; 370 }
1231  003d 84            	pop	a
1232  003e 81            	ret
1305                     ; 380 void I2C_ITConfig(I2C_IT_TypeDef I2C_IT, FunctionalState NewState)
1305                     ; 381 {
1306                     .text:	section	.text,new
1307  0000               _I2C_ITConfig:
1309  0000 89            	pushw	x
1310       00000000      OFST:	set	0
1313                     ; 384   assert_param(IS_I2C_INTERRUPT_OK(I2C_IT));
1315  0001 9e            	ld	a,xh
1316  0002 a101          	cp	a,#1
1317  0004 271e          	jreq	L251
1318  0006 9e            	ld	a,xh
1319  0007 a102          	cp	a,#2
1320  0009 2719          	jreq	L251
1321  000b 9e            	ld	a,xh
1322  000c a104          	cp	a,#4
1323  000e 2714          	jreq	L251
1324  0010 9e            	ld	a,xh
1325  0011 a103          	cp	a,#3
1326  0013 270f          	jreq	L251
1327  0015 9e            	ld	a,xh
1328  0016 a105          	cp	a,#5
1329  0018 270a          	jreq	L251
1330  001a 9e            	ld	a,xh
1331  001b a106          	cp	a,#6
1332  001d 2705          	jreq	L251
1333  001f 9e            	ld	a,xh
1334  0020 a107          	cp	a,#7
1335  0022 2603          	jrne	L051
1336  0024               L251:
1337  0024 4f            	clr	a
1338  0025 2010          	jra	L451
1339  0027               L051:
1340  0027 ae0180        	ldw	x,#384
1341  002a 89            	pushw	x
1342  002b ae0000        	ldw	x,#0
1343  002e 89            	pushw	x
1344  002f ae000c        	ldw	x,#L511
1345  0032 cd0000        	call	_assert_failed
1347  0035 5b04          	addw	sp,#4
1348  0037               L451:
1349                     ; 385   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1351  0037 0d02          	tnz	(OFST+2,sp)
1352  0039 2706          	jreq	L061
1353  003b 7b02          	ld	a,(OFST+2,sp)
1354  003d a101          	cp	a,#1
1355  003f 2603          	jrne	L651
1356  0041               L061:
1357  0041 4f            	clr	a
1358  0042 2010          	jra	L261
1359  0044               L651:
1360  0044 ae0181        	ldw	x,#385
1361  0047 89            	pushw	x
1362  0048 ae0000        	ldw	x,#0
1363  004b 89            	pushw	x
1364  004c ae000c        	ldw	x,#L511
1365  004f cd0000        	call	_assert_failed
1367  0052 5b04          	addw	sp,#4
1368  0054               L261:
1369                     ; 387   if (NewState != DISABLE)
1371  0054 0d02          	tnz	(OFST+2,sp)
1372  0056 270a          	jreq	L104
1373                     ; 390     I2C->ITR |= (uint8_t)I2C_IT;
1375  0058 c6521a        	ld	a,21018
1376  005b 1a01          	or	a,(OFST+1,sp)
1377  005d c7521a        	ld	21018,a
1379  0060 2009          	jra	L304
1380  0062               L104:
1381                     ; 395     I2C->ITR &= (uint8_t)(~(uint8_t)I2C_IT);
1383  0062 7b01          	ld	a,(OFST+1,sp)
1384  0064 43            	cpl	a
1385  0065 c4521a        	and	a,21018
1386  0068 c7521a        	ld	21018,a
1387  006b               L304:
1388                     ; 397 }
1391  006b 85            	popw	x
1392  006c 81            	ret
1429                     ; 405 void I2C_FastModeDutyCycleConfig(I2C_DutyCycle_TypeDef I2C_DutyCycle)
1429                     ; 406 {
1430                     .text:	section	.text,new
1431  0000               _I2C_FastModeDutyCycleConfig:
1433  0000 88            	push	a
1434       00000000      OFST:	set	0
1437                     ; 409   assert_param(IS_I2C_DUTYCYCLE_OK(I2C_DutyCycle));
1439  0001 4d            	tnz	a
1440  0002 2704          	jreq	L071
1441  0004 a140          	cp	a,#64
1442  0006 2603          	jrne	L661
1443  0008               L071:
1444  0008 4f            	clr	a
1445  0009 2010          	jra	L271
1446  000b               L661:
1447  000b ae0199        	ldw	x,#409
1448  000e 89            	pushw	x
1449  000f ae0000        	ldw	x,#0
1450  0012 89            	pushw	x
1451  0013 ae000c        	ldw	x,#L511
1452  0016 cd0000        	call	_assert_failed
1454  0019 5b04          	addw	sp,#4
1455  001b               L271:
1456                     ; 411   if (I2C_DutyCycle == I2C_DUTYCYCLE_16_9)
1458  001b 7b01          	ld	a,(OFST+1,sp)
1459  001d a140          	cp	a,#64
1460  001f 2606          	jrne	L324
1461                     ; 414     I2C->CCRH |= I2C_CCRH_DUTY;
1463  0021 721c521c      	bset	21020,#6
1465  0025 2004          	jra	L524
1466  0027               L324:
1467                     ; 419     I2C->CCRH &= (uint8_t)(~I2C_CCRH_DUTY);
1469  0027 721d521c      	bres	21020,#6
1470  002b               L524:
1471                     ; 421 }
1474  002b 84            	pop	a
1475  002c 81            	ret
1498                     ; 428 uint8_t I2C_ReceiveData(void)
1498                     ; 429 {
1499                     .text:	section	.text,new
1500  0000               _I2C_ReceiveData:
1504                     ; 431   return ((uint8_t)I2C->DR);
1506  0000 c65216        	ld	a,21014
1509  0003 81            	ret
1573                     ; 441 void I2C_Send7bitAddress(uint8_t Address, I2C_Direction_TypeDef Direction)
1573                     ; 442 {
1574                     .text:	section	.text,new
1575  0000               _I2C_Send7bitAddress:
1577  0000 89            	pushw	x
1578       00000000      OFST:	set	0
1581                     ; 444   assert_param(IS_I2C_ADDRESS_OK(Address));
1583  0001 9e            	ld	a,xh
1584  0002 a501          	bcp	a,#1
1585  0004 2603          	jrne	L002
1586  0006 4f            	clr	a
1587  0007 2010          	jra	L202
1588  0009               L002:
1589  0009 ae01bc        	ldw	x,#444
1590  000c 89            	pushw	x
1591  000d ae0000        	ldw	x,#0
1592  0010 89            	pushw	x
1593  0011 ae000c        	ldw	x,#L511
1594  0014 cd0000        	call	_assert_failed
1596  0017 5b04          	addw	sp,#4
1597  0019               L202:
1598                     ; 445   assert_param(IS_I2C_DIRECTION_OK(Direction));
1600  0019 0d02          	tnz	(OFST+2,sp)
1601  001b 2706          	jreq	L602
1602  001d 7b02          	ld	a,(OFST+2,sp)
1603  001f a101          	cp	a,#1
1604  0021 2603          	jrne	L402
1605  0023               L602:
1606  0023 4f            	clr	a
1607  0024 2010          	jra	L012
1608  0026               L402:
1609  0026 ae01bd        	ldw	x,#445
1610  0029 89            	pushw	x
1611  002a ae0000        	ldw	x,#0
1612  002d 89            	pushw	x
1613  002e ae000c        	ldw	x,#L511
1614  0031 cd0000        	call	_assert_failed
1616  0034 5b04          	addw	sp,#4
1617  0036               L012:
1618                     ; 448   Address &= (uint8_t)0xFE;
1620  0036 7b01          	ld	a,(OFST+1,sp)
1621  0038 a4fe          	and	a,#254
1622  003a 6b01          	ld	(OFST+1,sp),a
1623                     ; 451   I2C->DR = (uint8_t)(Address | (uint8_t)Direction);
1625  003c 7b01          	ld	a,(OFST+1,sp)
1626  003e 1a02          	or	a,(OFST+2,sp)
1627  0040 c75216        	ld	21014,a
1628                     ; 452 }
1631  0043 85            	popw	x
1632  0044 81            	ret
1664                     ; 459 void I2C_SendData(uint8_t Data)
1664                     ; 460 {
1665                     .text:	section	.text,new
1666  0000               _I2C_SendData:
1670                     ; 462   I2C->DR = Data;
1672  0000 c75216        	ld	21014,a
1673                     ; 463 }
1676  0003 81            	ret
1897                     ; 579 ErrorStatus I2C_CheckEvent(I2C_Event_TypeDef I2C_Event)
1897                     ; 580 {
1898                     .text:	section	.text,new
1899  0000               _I2C_CheckEvent:
1901  0000 89            	pushw	x
1902  0001 5206          	subw	sp,#6
1903       00000006      OFST:	set	6
1906                     ; 581   __IO uint16_t lastevent = 0x00;
1908  0003 5f            	clrw	x
1909  0004 1f04          	ldw	(OFST-2,sp),x
1911                     ; 582   uint8_t flag1 = 0x00 ;
1913                     ; 583   uint8_t flag2 = 0x00;
1915                     ; 584   ErrorStatus status = ERROR;
1917                     ; 587   assert_param(IS_I2C_EVENT_OK(I2C_Event));
1919  0006 1e07          	ldw	x,(OFST+1,sp)
1920  0008 a30682        	cpw	x,#1666
1921  000b 2769          	jreq	L022
1922  000d 1e07          	ldw	x,(OFST+1,sp)
1923  000f a30202        	cpw	x,#514
1924  0012 2762          	jreq	L022
1925  0014 1e07          	ldw	x,(OFST+1,sp)
1926  0016 a31200        	cpw	x,#4608
1927  0019 275b          	jreq	L022
1928  001b 1e07          	ldw	x,(OFST+1,sp)
1929  001d a30240        	cpw	x,#576
1930  0020 2754          	jreq	L022
1931  0022 1e07          	ldw	x,(OFST+1,sp)
1932  0024 a30350        	cpw	x,#848
1933  0027 274d          	jreq	L022
1934  0029 1e07          	ldw	x,(OFST+1,sp)
1935  002b a30684        	cpw	x,#1668
1936  002e 2746          	jreq	L022
1937  0030 1e07          	ldw	x,(OFST+1,sp)
1938  0032 a30794        	cpw	x,#1940
1939  0035 273f          	jreq	L022
1940  0037 1e07          	ldw	x,(OFST+1,sp)
1941  0039 a30004        	cpw	x,#4
1942  003c 2738          	jreq	L022
1943  003e 1e07          	ldw	x,(OFST+1,sp)
1944  0040 a30010        	cpw	x,#16
1945  0043 2731          	jreq	L022
1946  0045 1e07          	ldw	x,(OFST+1,sp)
1947  0047 a30301        	cpw	x,#769
1948  004a 272a          	jreq	L022
1949  004c 1e07          	ldw	x,(OFST+1,sp)
1950  004e a30782        	cpw	x,#1922
1951  0051 2723          	jreq	L022
1952  0053 1e07          	ldw	x,(OFST+1,sp)
1953  0055 a30302        	cpw	x,#770
1954  0058 271c          	jreq	L022
1955  005a 1e07          	ldw	x,(OFST+1,sp)
1956  005c a30340        	cpw	x,#832
1957  005f 2715          	jreq	L022
1958  0061 1e07          	ldw	x,(OFST+1,sp)
1959  0063 a30784        	cpw	x,#1924
1960  0066 270e          	jreq	L022
1961  0068 1e07          	ldw	x,(OFST+1,sp)
1962  006a a30780        	cpw	x,#1920
1963  006d 2707          	jreq	L022
1964  006f 1e07          	ldw	x,(OFST+1,sp)
1965  0071 a30308        	cpw	x,#776
1966  0074 2603          	jrne	L612
1967  0076               L022:
1968  0076 4f            	clr	a
1969  0077 2010          	jra	L222
1970  0079               L612:
1971  0079 ae024b        	ldw	x,#587
1972  007c 89            	pushw	x
1973  007d ae0000        	ldw	x,#0
1974  0080 89            	pushw	x
1975  0081 ae000c        	ldw	x,#L511
1976  0084 cd0000        	call	_assert_failed
1978  0087 5b04          	addw	sp,#4
1979  0089               L222:
1980                     ; 589   if (I2C_Event == I2C_EVENT_SLAVE_ACK_FAILURE)
1982  0089 1e07          	ldw	x,(OFST+1,sp)
1983  008b a30004        	cpw	x,#4
1984  008e 260b          	jrne	L706
1985                     ; 591     lastevent = I2C->SR2 & I2C_SR2_AF;
1987  0090 c65218        	ld	a,21016
1988  0093 a404          	and	a,#4
1989  0095 5f            	clrw	x
1990  0096 97            	ld	xl,a
1991  0097 1f04          	ldw	(OFST-2,sp),x
1994  0099 201f          	jra	L116
1995  009b               L706:
1996                     ; 595     flag1 = I2C->SR1;
1998  009b c65217        	ld	a,21015
1999  009e 6b03          	ld	(OFST-3,sp),a
2001                     ; 596     flag2 = I2C->SR3;
2003  00a0 c65219        	ld	a,21017
2004  00a3 6b06          	ld	(OFST+0,sp),a
2006                     ; 597     lastevent = ((uint16_t)((uint16_t)flag2 << (uint16_t)8) | (uint16_t)flag1);
2008  00a5 7b03          	ld	a,(OFST-3,sp)
2009  00a7 5f            	clrw	x
2010  00a8 97            	ld	xl,a
2011  00a9 1f01          	ldw	(OFST-5,sp),x
2013  00ab 7b06          	ld	a,(OFST+0,sp)
2014  00ad 5f            	clrw	x
2015  00ae 97            	ld	xl,a
2016  00af 4f            	clr	a
2017  00b0 02            	rlwa	x,a
2018  00b1 01            	rrwa	x,a
2019  00b2 1a02          	or	a,(OFST-4,sp)
2020  00b4 01            	rrwa	x,a
2021  00b5 1a01          	or	a,(OFST-5,sp)
2022  00b7 01            	rrwa	x,a
2023  00b8 1f04          	ldw	(OFST-2,sp),x
2025  00ba               L116:
2026                     ; 600   if (((uint16_t)lastevent & (uint16_t)I2C_Event) == (uint16_t)I2C_Event)
2028  00ba 1e04          	ldw	x,(OFST-2,sp)
2029  00bc 01            	rrwa	x,a
2030  00bd 1408          	and	a,(OFST+2,sp)
2031  00bf 01            	rrwa	x,a
2032  00c0 1407          	and	a,(OFST+1,sp)
2033  00c2 01            	rrwa	x,a
2034  00c3 1307          	cpw	x,(OFST+1,sp)
2035  00c5 2606          	jrne	L316
2036                     ; 603     status = SUCCESS;
2038  00c7 a601          	ld	a,#1
2039  00c9 6b06          	ld	(OFST+0,sp),a
2042  00cb 2002          	jra	L516
2043  00cd               L316:
2044                     ; 608     status = ERROR;
2046  00cd 0f06          	clr	(OFST+0,sp)
2048  00cf               L516:
2049                     ; 612   return status;
2051  00cf 7b06          	ld	a,(OFST+0,sp)
2054  00d1 5b08          	addw	sp,#8
2055  00d3 81            	ret
2104                     ; 629 I2C_Event_TypeDef I2C_GetLastEvent(void)
2104                     ; 630 {
2105                     .text:	section	.text,new
2106  0000               _I2C_GetLastEvent:
2108  0000 5206          	subw	sp,#6
2109       00000006      OFST:	set	6
2112                     ; 631   __IO uint16_t lastevent = 0;
2114  0002 5f            	clrw	x
2115  0003 1f05          	ldw	(OFST-1,sp),x
2117                     ; 632   uint16_t flag1 = 0;
2119                     ; 633   uint16_t flag2 = 0;
2121                     ; 635   if ((I2C->SR2 & I2C_SR2_AF) != 0x00)
2123  0005 c65218        	ld	a,21016
2124  0008 a504          	bcp	a,#4
2125  000a 2707          	jreq	L146
2126                     ; 637     lastevent = I2C_EVENT_SLAVE_ACK_FAILURE;
2128  000c ae0004        	ldw	x,#4
2129  000f 1f05          	ldw	(OFST-1,sp),x
2132  0011 201b          	jra	L346
2133  0013               L146:
2134                     ; 642     flag1 = I2C->SR1;
2136  0013 c65217        	ld	a,21015
2137  0016 5f            	clrw	x
2138  0017 97            	ld	xl,a
2139  0018 1f01          	ldw	(OFST-5,sp),x
2141                     ; 643     flag2 = I2C->SR3;
2143  001a c65219        	ld	a,21017
2144  001d 5f            	clrw	x
2145  001e 97            	ld	xl,a
2146  001f 1f03          	ldw	(OFST-3,sp),x
2148                     ; 646     lastevent = ((uint16_t)((uint16_t)flag2 << 8) | (uint16_t)flag1);
2150  0021 1e03          	ldw	x,(OFST-3,sp)
2151  0023 4f            	clr	a
2152  0024 02            	rlwa	x,a
2153  0025 01            	rrwa	x,a
2154  0026 1a02          	or	a,(OFST-4,sp)
2155  0028 01            	rrwa	x,a
2156  0029 1a01          	or	a,(OFST-5,sp)
2157  002b 01            	rrwa	x,a
2158  002c 1f05          	ldw	(OFST-1,sp),x
2160  002e               L346:
2161                     ; 649   return (I2C_Event_TypeDef)lastevent;
2163  002e 1e05          	ldw	x,(OFST-1,sp)
2166  0030 5b06          	addw	sp,#6
2167  0032 81            	ret
2379                     ; 680 FlagStatus I2C_GetFlagStatus(I2C_Flag_TypeDef I2C_Flag)
2379                     ; 681 {
2380                     .text:	section	.text,new
2381  0000               _I2C_GetFlagStatus:
2383  0000 89            	pushw	x
2384  0001 89            	pushw	x
2385       00000002      OFST:	set	2
2388                     ; 682   uint8_t tempreg = 0;
2390  0002 0f02          	clr	(OFST+0,sp)
2392                     ; 683   uint8_t regindex = 0;
2394                     ; 684   FlagStatus bitstatus = RESET;
2396                     ; 687   assert_param(IS_I2C_FLAG_OK(I2C_Flag));
2398  0004 a30180        	cpw	x,#384
2399  0007 274b          	jreq	L232
2400  0009 a30140        	cpw	x,#320
2401  000c 2746          	jreq	L232
2402  000e a30110        	cpw	x,#272
2403  0011 2741          	jreq	L232
2404  0013 a30108        	cpw	x,#264
2405  0016 273c          	jreq	L232
2406  0018 a30104        	cpw	x,#260
2407  001b 2737          	jreq	L232
2408  001d a30102        	cpw	x,#258
2409  0020 2732          	jreq	L232
2410  0022 a30101        	cpw	x,#257
2411  0025 272d          	jreq	L232
2412  0027 a30220        	cpw	x,#544
2413  002a 2728          	jreq	L232
2414  002c a30208        	cpw	x,#520
2415  002f 2723          	jreq	L232
2416  0031 a30204        	cpw	x,#516
2417  0034 271e          	jreq	L232
2418  0036 a30202        	cpw	x,#514
2419  0039 2719          	jreq	L232
2420  003b a30201        	cpw	x,#513
2421  003e 2714          	jreq	L232
2422  0040 a30310        	cpw	x,#784
2423  0043 270f          	jreq	L232
2424  0045 a30304        	cpw	x,#772
2425  0048 270a          	jreq	L232
2426  004a a30302        	cpw	x,#770
2427  004d 2705          	jreq	L232
2428  004f a30301        	cpw	x,#769
2429  0052 2603          	jrne	L032
2430  0054               L232:
2431  0054 4f            	clr	a
2432  0055 2010          	jra	L432
2433  0057               L032:
2434  0057 ae02af        	ldw	x,#687
2435  005a 89            	pushw	x
2436  005b ae0000        	ldw	x,#0
2437  005e 89            	pushw	x
2438  005f ae000c        	ldw	x,#L511
2439  0062 cd0000        	call	_assert_failed
2441  0065 5b04          	addw	sp,#4
2442  0067               L432:
2443                     ; 690   regindex = (uint8_t)((uint16_t)I2C_Flag >> 8);
2445  0067 7b03          	ld	a,(OFST+1,sp)
2446  0069 6b01          	ld	(OFST-1,sp),a
2448                     ; 692   switch (regindex)
2450  006b 7b01          	ld	a,(OFST-1,sp)
2452                     ; 709     default:
2452                     ; 710       break;
2453  006d 4a            	dec	a
2454  006e 2708          	jreq	L546
2455  0070 4a            	dec	a
2456  0071 270c          	jreq	L746
2457  0073 4a            	dec	a
2458  0074 2710          	jreq	L156
2459  0076 2013          	jra	L167
2460  0078               L546:
2461                     ; 695     case 0x01:
2461                     ; 696       tempreg = (uint8_t)I2C->SR1;
2463  0078 c65217        	ld	a,21015
2464  007b 6b02          	ld	(OFST+0,sp),a
2466                     ; 697       break;
2468  007d 200c          	jra	L167
2469  007f               L746:
2470                     ; 700     case 0x02:
2470                     ; 701       tempreg = (uint8_t)I2C->SR2;
2472  007f c65218        	ld	a,21016
2473  0082 6b02          	ld	(OFST+0,sp),a
2475                     ; 702       break;
2477  0084 2005          	jra	L167
2478  0086               L156:
2479                     ; 705     case 0x03:
2479                     ; 706       tempreg = (uint8_t)I2C->SR3;
2481  0086 c65219        	ld	a,21017
2482  0089 6b02          	ld	(OFST+0,sp),a
2484                     ; 707       break;
2486  008b               L356:
2487                     ; 709     default:
2487                     ; 710       break;
2489  008b               L167:
2490                     ; 714   if ((tempreg & (uint8_t)I2C_Flag ) != 0)
2492  008b 7b04          	ld	a,(OFST+2,sp)
2493  008d 1502          	bcp	a,(OFST+0,sp)
2494  008f 2706          	jreq	L367
2495                     ; 717     bitstatus = SET;
2497  0091 a601          	ld	a,#1
2498  0093 6b02          	ld	(OFST+0,sp),a
2501  0095 2002          	jra	L567
2502  0097               L367:
2503                     ; 722     bitstatus = RESET;
2505  0097 0f02          	clr	(OFST+0,sp)
2507  0099               L567:
2508                     ; 725   return bitstatus;
2510  0099 7b02          	ld	a,(OFST+0,sp)
2513  009b 5b04          	addw	sp,#4
2514  009d 81            	ret
2557                     ; 760 void I2C_ClearFlag(I2C_Flag_TypeDef I2C_FLAG)
2557                     ; 761 {
2558                     .text:	section	.text,new
2559  0000               _I2C_ClearFlag:
2561  0000 89            	pushw	x
2562  0001 89            	pushw	x
2563       00000002      OFST:	set	2
2566                     ; 762   uint16_t flagpos = 0;
2568                     ; 764   assert_param(IS_I2C_CLEAR_FLAG_OK(I2C_FLAG));
2570  0002 01            	rrwa	x,a
2571  0003 9f            	ld	a,xl
2572  0004 a4fd          	and	a,#253
2573  0006 97            	ld	xl,a
2574  0007 4f            	clr	a
2575  0008 02            	rlwa	x,a
2576  0009 5d            	tnzw	x
2577  000a 2607          	jrne	L042
2578  000c 1e03          	ldw	x,(OFST+1,sp)
2579  000e 2703          	jreq	L042
2580  0010 4f            	clr	a
2581  0011 2010          	jra	L242
2582  0013               L042:
2583  0013 ae02fc        	ldw	x,#764
2584  0016 89            	pushw	x
2585  0017 ae0000        	ldw	x,#0
2586  001a 89            	pushw	x
2587  001b ae000c        	ldw	x,#L511
2588  001e cd0000        	call	_assert_failed
2590  0021 5b04          	addw	sp,#4
2591  0023               L242:
2592                     ; 767   flagpos = (uint16_t)I2C_FLAG & FLAG_Mask;
2594  0023 7b03          	ld	a,(OFST+1,sp)
2595  0025 97            	ld	xl,a
2596  0026 7b04          	ld	a,(OFST+2,sp)
2597  0028 a4ff          	and	a,#255
2598  002a 5f            	clrw	x
2599  002b 02            	rlwa	x,a
2600  002c 1f01          	ldw	(OFST-1,sp),x
2601  002e 01            	rrwa	x,a
2603                     ; 769   I2C->SR2 = (uint8_t)((uint16_t)(~flagpos));
2605  002f 7b02          	ld	a,(OFST+0,sp)
2606  0031 43            	cpl	a
2607  0032 c75218        	ld	21016,a
2608                     ; 770 }
2611  0035 5b04          	addw	sp,#4
2612  0037 81            	ret
2777                     ; 792 ITStatus I2C_GetITStatus(I2C_ITPendingBit_TypeDef I2C_ITPendingBit)
2777                     ; 793 {
2778                     .text:	section	.text,new
2779  0000               _I2C_GetITStatus:
2781  0000 89            	pushw	x
2782  0001 5204          	subw	sp,#4
2783       00000004      OFST:	set	4
2786                     ; 794   ITStatus bitstatus = RESET;
2788                     ; 795   __IO uint8_t enablestatus = 0;
2790  0003 0f03          	clr	(OFST-1,sp)
2792                     ; 796   uint16_t tempregister = 0;
2794                     ; 799     assert_param(IS_I2C_ITPENDINGBIT_OK(I2C_ITPendingBit));
2796  0005 a31680        	cpw	x,#5760
2797  0008 2737          	jreq	L052
2798  000a a31640        	cpw	x,#5696
2799  000d 2732          	jreq	L052
2800  000f a31210        	cpw	x,#4624
2801  0012 272d          	jreq	L052
2802  0014 a31208        	cpw	x,#4616
2803  0017 2728          	jreq	L052
2804  0019 a31204        	cpw	x,#4612
2805  001c 2723          	jreq	L052
2806  001e a31202        	cpw	x,#4610
2807  0021 271e          	jreq	L052
2808  0023 a31201        	cpw	x,#4609
2809  0026 2719          	jreq	L052
2810  0028 a32220        	cpw	x,#8736
2811  002b 2714          	jreq	L052
2812  002d a32108        	cpw	x,#8456
2813  0030 270f          	jreq	L052
2814  0032 a32104        	cpw	x,#8452
2815  0035 270a          	jreq	L052
2816  0037 a32102        	cpw	x,#8450
2817  003a 2705          	jreq	L052
2818  003c a32101        	cpw	x,#8449
2819  003f 2603          	jrne	L642
2820  0041               L052:
2821  0041 4f            	clr	a
2822  0042 2010          	jra	L252
2823  0044               L642:
2824  0044 ae031f        	ldw	x,#799
2825  0047 89            	pushw	x
2826  0048 ae0000        	ldw	x,#0
2827  004b 89            	pushw	x
2828  004c ae000c        	ldw	x,#L511
2829  004f cd0000        	call	_assert_failed
2831  0052 5b04          	addw	sp,#4
2832  0054               L252:
2833                     ; 801   tempregister = (uint8_t)( ((uint16_t)((uint16_t)I2C_ITPendingBit & ITEN_Mask)) >> 8);
2835  0054 7b05          	ld	a,(OFST+1,sp)
2836  0056 a407          	and	a,#7
2837  0058 5f            	clrw	x
2838  0059 97            	ld	xl,a
2839  005a 1f01          	ldw	(OFST-3,sp),x
2841                     ; 804   enablestatus = (uint8_t)(I2C->ITR & ( uint8_t)tempregister);
2843  005c c6521a        	ld	a,21018
2844  005f 1402          	and	a,(OFST-2,sp)
2845  0061 6b03          	ld	(OFST-1,sp),a
2847                     ; 806   if ((uint16_t)((uint16_t)I2C_ITPendingBit & REGISTER_Mask) == REGISTER_SR1_Index)
2849  0063 7b05          	ld	a,(OFST+1,sp)
2850  0065 97            	ld	xl,a
2851  0066 7b06          	ld	a,(OFST+2,sp)
2852  0068 9f            	ld	a,xl
2853  0069 a430          	and	a,#48
2854  006b 97            	ld	xl,a
2855  006c 4f            	clr	a
2856  006d 02            	rlwa	x,a
2857  006e a30100        	cpw	x,#256
2858  0071 2615          	jrne	L3701
2859                     ; 809     if (((I2C->SR1 & (uint8_t)I2C_ITPendingBit) != RESET) && enablestatus)
2861  0073 c65217        	ld	a,21015
2862  0076 1506          	bcp	a,(OFST+2,sp)
2863  0078 270a          	jreq	L5701
2865  007a 0d03          	tnz	(OFST-1,sp)
2866  007c 2706          	jreq	L5701
2867                     ; 812       bitstatus = SET;
2869  007e a601          	ld	a,#1
2870  0080 6b04          	ld	(OFST+0,sp),a
2873  0082 2017          	jra	L1011
2874  0084               L5701:
2875                     ; 817       bitstatus = RESET;
2877  0084 0f04          	clr	(OFST+0,sp)
2879  0086 2013          	jra	L1011
2880  0088               L3701:
2881                     ; 823     if (((I2C->SR2 & (uint8_t)I2C_ITPendingBit) != RESET) && enablestatus)
2883  0088 c65218        	ld	a,21016
2884  008b 1506          	bcp	a,(OFST+2,sp)
2885  008d 270a          	jreq	L3011
2887  008f 0d03          	tnz	(OFST-1,sp)
2888  0091 2706          	jreq	L3011
2889                     ; 826       bitstatus = SET;
2891  0093 a601          	ld	a,#1
2892  0095 6b04          	ld	(OFST+0,sp),a
2895  0097 2002          	jra	L1011
2896  0099               L3011:
2897                     ; 831       bitstatus = RESET;
2899  0099 0f04          	clr	(OFST+0,sp)
2901  009b               L1011:
2902                     ; 835   return  bitstatus;
2904  009b 7b04          	ld	a,(OFST+0,sp)
2907  009d 5b06          	addw	sp,#6
2908  009f 81            	ret
2952                     ; 873 void I2C_ClearITPendingBit(I2C_ITPendingBit_TypeDef I2C_ITPendingBit)
2952                     ; 874 {
2953                     .text:	section	.text,new
2954  0000               _I2C_ClearITPendingBit:
2956  0000 89            	pushw	x
2957  0001 89            	pushw	x
2958       00000002      OFST:	set	2
2961                     ; 875   uint16_t flagpos = 0;
2963                     ; 878   assert_param(IS_I2C_CLEAR_ITPENDINGBIT_OK(I2C_ITPendingBit));
2965  0002 a32220        	cpw	x,#8736
2966  0005 2714          	jreq	L062
2967  0007 a32108        	cpw	x,#8456
2968  000a 270f          	jreq	L062
2969  000c a32104        	cpw	x,#8452
2970  000f 270a          	jreq	L062
2971  0011 a32102        	cpw	x,#8450
2972  0014 2705          	jreq	L062
2973  0016 a32101        	cpw	x,#8449
2974  0019 2603          	jrne	L652
2975  001b               L062:
2976  001b 4f            	clr	a
2977  001c 2010          	jra	L262
2978  001e               L652:
2979  001e ae036e        	ldw	x,#878
2980  0021 89            	pushw	x
2981  0022 ae0000        	ldw	x,#0
2982  0025 89            	pushw	x
2983  0026 ae000c        	ldw	x,#L511
2984  0029 cd0000        	call	_assert_failed
2986  002c 5b04          	addw	sp,#4
2987  002e               L262:
2988                     ; 881   flagpos = (uint16_t)I2C_ITPendingBit & FLAG_Mask;
2990  002e 7b03          	ld	a,(OFST+1,sp)
2991  0030 97            	ld	xl,a
2992  0031 7b04          	ld	a,(OFST+2,sp)
2993  0033 a4ff          	and	a,#255
2994  0035 5f            	clrw	x
2995  0036 02            	rlwa	x,a
2996  0037 1f01          	ldw	(OFST-1,sp),x
2997  0039 01            	rrwa	x,a
2999                     ; 884   I2C->SR2 = (uint8_t)((uint16_t)~flagpos);
3001  003a 7b02          	ld	a,(OFST+0,sp)
3002  003c 43            	cpl	a
3003  003d c75218        	ld	21016,a
3004                     ; 885 }
3007  0040 5b04          	addw	sp,#4
3008  0042 81            	ret
3021                     	xdef	_I2C_ClearITPendingBit
3022                     	xdef	_I2C_GetITStatus
3023                     	xdef	_I2C_ClearFlag
3024                     	xdef	_I2C_GetFlagStatus
3025                     	xdef	_I2C_GetLastEvent
3026                     	xdef	_I2C_CheckEvent
3027                     	xdef	_I2C_SendData
3028                     	xdef	_I2C_Send7bitAddress
3029                     	xdef	_I2C_ReceiveData
3030                     	xdef	_I2C_ITConfig
3031                     	xdef	_I2C_FastModeDutyCycleConfig
3032                     	xdef	_I2C_AcknowledgeConfig
3033                     	xdef	_I2C_StretchClockCmd
3034                     	xdef	_I2C_SoftwareResetCmd
3035                     	xdef	_I2C_GenerateSTOP
3036                     	xdef	_I2C_GenerateSTART
3037                     	xdef	_I2C_GeneralCallCmd
3038                     	xdef	_I2C_Cmd
3039                     	xdef	_I2C_Init
3040                     	xdef	_I2C_DeInit
3041                     	xref	_assert_failed
3042                     	switch	.const
3043  000c               L511:
3044  000c 7372635c7374  	dc.b	"src\stm8s_i2c.c",0
3045                     	xref.b	c_lreg
3046                     	xref.b	c_x
3066                     	xref	c_sdivx
3067                     	xref	c_ludv
3068                     	xref	c_rtol
3069                     	xref	c_smul
3070                     	xref	c_lmul
3071                     	xref	c_lcmp
3072                     	xref	c_ltor
3073                     	xref	c_lzmp
3074                     	end

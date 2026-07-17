   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.13.3 - 22 May 2025
   3                     ; Generator (Limited) V4.6.6 - 07 Jan 2026
  77                     ; 81 void FLASH_Unlock(FLASH_MemType_TypeDef FLASH_MemType)
  77                     ; 82 {
  79                     .text:	section	.text,new
  80  0000               _FLASH_Unlock:
  82  0000 88            	push	a
  83       00000000      OFST:	set	0
  86                     ; 84     assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
  88  0001 a1fd          	cp	a,#253
  89  0003 2704          	jreq	L01
  90  0005 a1f7          	cp	a,#247
  91  0007 2603          	jrne	L6
  92  0009               L01:
  93  0009 4f            	clr	a
  94  000a 2010          	jra	L21
  95  000c               L6:
  96  000c ae0054        	ldw	x,#84
  97  000f 89            	pushw	x
  98  0010 ae0000        	ldw	x,#0
  99  0013 89            	pushw	x
 100  0014 ae0010        	ldw	x,#L73
 101  0017 cd0000        	call	_assert_failed
 103  001a 5b04          	addw	sp,#4
 104  001c               L21:
 105                     ; 87     if (FLASH_MemType == FLASH_MEMTYPE_PROG)
 107  001c 7b01          	ld	a,(OFST+1,sp)
 108  001e a1fd          	cp	a,#253
 109  0020 260a          	jrne	L14
 110                     ; 89         FLASH->PUKR = FLASH_RASS_KEY1;
 112  0022 35565062      	mov	20578,#86
 113                     ; 90         FLASH->PUKR = FLASH_RASS_KEY2;
 115  0026 35ae5062      	mov	20578,#174
 117  002a 2008          	jra	L34
 118  002c               L14:
 119                     ; 95         FLASH->DUKR = FLASH_RASS_KEY2; /* Warning: keys are reversed on data memory !!! */
 121  002c 35ae5064      	mov	20580,#174
 122                     ; 96         FLASH->DUKR = FLASH_RASS_KEY1;
 124  0030 35565064      	mov	20580,#86
 125  0034               L34:
 126                     ; 98 }
 129  0034 84            	pop	a
 130  0035 81            	ret
 166                     ; 106 void FLASH_Lock(FLASH_MemType_TypeDef FLASH_MemType)
 166                     ; 107 {
 167                     .text:	section	.text,new
 168  0000               _FLASH_Lock:
 170  0000 88            	push	a
 171       00000000      OFST:	set	0
 174                     ; 109     assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
 176  0001 a1fd          	cp	a,#253
 177  0003 2704          	jreq	L02
 178  0005 a1f7          	cp	a,#247
 179  0007 2603          	jrne	L61
 180  0009               L02:
 181  0009 4f            	clr	a
 182  000a 2010          	jra	L22
 183  000c               L61:
 184  000c ae006d        	ldw	x,#109
 185  000f 89            	pushw	x
 186  0010 ae0000        	ldw	x,#0
 187  0013 89            	pushw	x
 188  0014 ae0010        	ldw	x,#L73
 189  0017 cd0000        	call	_assert_failed
 191  001a 5b04          	addw	sp,#4
 192  001c               L22:
 193                     ; 112   FLASH->IAPSR &= (uint8_t)FLASH_MemType;
 195  001c c6505f        	ld	a,20575
 196  001f 1401          	and	a,(OFST+1,sp)
 197  0021 c7505f        	ld	20575,a
 198                     ; 113 }
 201  0024 84            	pop	a
 202  0025 81            	ret
 225                     ; 120 void FLASH_DeInit(void)
 225                     ; 121 {
 226                     .text:	section	.text,new
 227  0000               _FLASH_DeInit:
 231                     ; 122     FLASH->CR1 = FLASH_CR1_RESET_VALUE;
 233  0000 725f505a      	clr	20570
 234                     ; 123     FLASH->CR2 = FLASH_CR2_RESET_VALUE;
 236  0004 725f505b      	clr	20571
 237                     ; 124     FLASH->NCR2 = FLASH_NCR2_RESET_VALUE;
 239  0008 35ff505c      	mov	20572,#255
 240                     ; 125     FLASH->IAPSR &= (uint8_t)(~FLASH_IAPSR_DUL);
 242  000c 7217505f      	bres	20575,#3
 243                     ; 126     FLASH->IAPSR &= (uint8_t)(~FLASH_IAPSR_PUL);
 245  0010 7213505f      	bres	20575,#1
 246                     ; 127     (void) FLASH->IAPSR; /* Reading of this register causes the clearing of status flags */
 248  0014 c6505f        	ld	a,20575
 249                     ; 128 }
 252  0017 81            	ret
 308                     ; 136 void FLASH_ITConfig(FunctionalState NewState)
 308                     ; 137 {
 309                     .text:	section	.text,new
 310  0000               _FLASH_ITConfig:
 312  0000 88            	push	a
 313       00000000      OFST:	set	0
 316                     ; 139   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 318  0001 4d            	tnz	a
 319  0002 2704          	jreq	L23
 320  0004 a101          	cp	a,#1
 321  0006 2603          	jrne	L03
 322  0008               L23:
 323  0008 4f            	clr	a
 324  0009 2010          	jra	L43
 325  000b               L03:
 326  000b ae008b        	ldw	x,#139
 327  000e 89            	pushw	x
 328  000f ae0000        	ldw	x,#0
 329  0012 89            	pushw	x
 330  0013 ae0010        	ldw	x,#L73
 331  0016 cd0000        	call	_assert_failed
 333  0019 5b04          	addw	sp,#4
 334  001b               L43:
 335                     ; 141     if (NewState != DISABLE)
 337  001b 0d01          	tnz	(OFST+1,sp)
 338  001d 2706          	jreq	L121
 339                     ; 143         FLASH->CR1 |= FLASH_CR1_IE; /* Enables the interrupt sources */
 341  001f 7212505a      	bset	20570,#1
 343  0023 2004          	jra	L321
 344  0025               L121:
 345                     ; 147         FLASH->CR1 &= (uint8_t)(~FLASH_CR1_IE); /* Disables the interrupt sources */
 347  0025 7213505a      	bres	20570,#1
 348  0029               L321:
 349                     ; 149 }
 352  0029 84            	pop	a
 353  002a 81            	ret
 386                     .const:	section	.text
 387  0000               L64:
 388  0000 00008000      	dc.l	32768
 389  0004               L05:
 390  0004 0000a000      	dc.l	40960
 391  0008               L25:
 392  0008 00004000      	dc.l	16384
 393  000c               L45:
 394  000c 00004280      	dc.l	17024
 395                     ; 158 void FLASH_EraseByte(uint32_t Address)
 395                     ; 159 {
 396                     .text:	section	.text,new
 397  0000               _FLASH_EraseByte:
 399       00000000      OFST:	set	0
 402                     ; 161     assert_param(IS_FLASH_ADDRESS_OK(Address));
 404  0000 96            	ldw	x,sp
 405  0001 1c0003        	addw	x,#OFST+3
 406  0004 cd0000        	call	c_ltor
 408  0007 ae0000        	ldw	x,#L64
 409  000a cd0000        	call	c_lcmp
 411  000d 250f          	jrult	L44
 412  000f 96            	ldw	x,sp
 413  0010 1c0003        	addw	x,#OFST+3
 414  0013 cd0000        	call	c_ltor
 416  0016 ae0004        	ldw	x,#L05
 417  0019 cd0000        	call	c_lcmp
 419  001c 251e          	jrult	L24
 420  001e               L44:
 421  001e 96            	ldw	x,sp
 422  001f 1c0003        	addw	x,#OFST+3
 423  0022 cd0000        	call	c_ltor
 425  0025 ae0008        	ldw	x,#L25
 426  0028 cd0000        	call	c_lcmp
 428  002b 2512          	jrult	L04
 429  002d 96            	ldw	x,sp
 430  002e 1c0003        	addw	x,#OFST+3
 431  0031 cd0000        	call	c_ltor
 433  0034 ae000c        	ldw	x,#L45
 434  0037 cd0000        	call	c_lcmp
 436  003a 2403          	jruge	L04
 437  003c               L24:
 438  003c 4f            	clr	a
 439  003d 2010          	jra	L65
 440  003f               L04:
 441  003f ae00a1        	ldw	x,#161
 442  0042 89            	pushw	x
 443  0043 ae0000        	ldw	x,#0
 444  0046 89            	pushw	x
 445  0047 ae0010        	ldw	x,#L73
 446  004a cd0000        	call	_assert_failed
 448  004d 5b04          	addw	sp,#4
 449  004f               L65:
 450                     ; 164    *(PointerAttr uint8_t*) (uint16_t)Address = FLASH_CLEAR_BYTE; 
 452  004f 1e05          	ldw	x,(OFST+5,sp)
 453  0051 7f            	clr	(x)
 454                     ; 166 }
 457  0052 81            	ret
 497                     ; 176 void FLASH_ProgramByte(uint32_t Address, uint8_t Data)
 497                     ; 177 {
 498                     .text:	section	.text,new
 499  0000               _FLASH_ProgramByte:
 501       00000000      OFST:	set	0
 504                     ; 179     assert_param(IS_FLASH_ADDRESS_OK(Address));
 506  0000 96            	ldw	x,sp
 507  0001 1c0003        	addw	x,#OFST+3
 508  0004 cd0000        	call	c_ltor
 510  0007 ae0000        	ldw	x,#L64
 511  000a cd0000        	call	c_lcmp
 513  000d 250f          	jrult	L66
 514  000f 96            	ldw	x,sp
 515  0010 1c0003        	addw	x,#OFST+3
 516  0013 cd0000        	call	c_ltor
 518  0016 ae0004        	ldw	x,#L05
 519  0019 cd0000        	call	c_lcmp
 521  001c 251e          	jrult	L46
 522  001e               L66:
 523  001e 96            	ldw	x,sp
 524  001f 1c0003        	addw	x,#OFST+3
 525  0022 cd0000        	call	c_ltor
 527  0025 ae0008        	ldw	x,#L25
 528  0028 cd0000        	call	c_lcmp
 530  002b 2512          	jrult	L26
 531  002d 96            	ldw	x,sp
 532  002e 1c0003        	addw	x,#OFST+3
 533  0031 cd0000        	call	c_ltor
 535  0034 ae000c        	ldw	x,#L45
 536  0037 cd0000        	call	c_lcmp
 538  003a 2403          	jruge	L26
 539  003c               L46:
 540  003c 4f            	clr	a
 541  003d 2010          	jra	L07
 542  003f               L26:
 543  003f ae00b3        	ldw	x,#179
 544  0042 89            	pushw	x
 545  0043 ae0000        	ldw	x,#0
 546  0046 89            	pushw	x
 547  0047 ae0010        	ldw	x,#L73
 548  004a cd0000        	call	_assert_failed
 550  004d 5b04          	addw	sp,#4
 551  004f               L07:
 552                     ; 180     *(PointerAttr uint8_t*) (uint16_t)Address = Data;
 554  004f 7b07          	ld	a,(OFST+7,sp)
 555  0051 1e05          	ldw	x,(OFST+5,sp)
 556  0053 f7            	ld	(x),a
 557                     ; 181 }
 560  0054 81            	ret
 593                     ; 190 uint8_t FLASH_ReadByte(uint32_t Address)
 593                     ; 191 {
 594                     .text:	section	.text,new
 595  0000               _FLASH_ReadByte:
 597       00000000      OFST:	set	0
 600                     ; 193     assert_param(IS_FLASH_ADDRESS_OK(Address));
 602  0000 96            	ldw	x,sp
 603  0001 1c0003        	addw	x,#OFST+3
 604  0004 cd0000        	call	c_ltor
 606  0007 ae0000        	ldw	x,#L64
 607  000a cd0000        	call	c_lcmp
 609  000d 250f          	jrult	L001
 610  000f 96            	ldw	x,sp
 611  0010 1c0003        	addw	x,#OFST+3
 612  0013 cd0000        	call	c_ltor
 614  0016 ae0004        	ldw	x,#L05
 615  0019 cd0000        	call	c_lcmp
 617  001c 251e          	jrult	L67
 618  001e               L001:
 619  001e 96            	ldw	x,sp
 620  001f 1c0003        	addw	x,#OFST+3
 621  0022 cd0000        	call	c_ltor
 623  0025 ae0008        	ldw	x,#L25
 624  0028 cd0000        	call	c_lcmp
 626  002b 2512          	jrult	L47
 627  002d 96            	ldw	x,sp
 628  002e 1c0003        	addw	x,#OFST+3
 629  0031 cd0000        	call	c_ltor
 631  0034 ae000c        	ldw	x,#L45
 632  0037 cd0000        	call	c_lcmp
 634  003a 2403          	jruge	L47
 635  003c               L67:
 636  003c 4f            	clr	a
 637  003d 2010          	jra	L201
 638  003f               L47:
 639  003f ae00c1        	ldw	x,#193
 640  0042 89            	pushw	x
 641  0043 ae0000        	ldw	x,#0
 642  0046 89            	pushw	x
 643  0047 ae0010        	ldw	x,#L73
 644  004a cd0000        	call	_assert_failed
 646  004d 5b04          	addw	sp,#4
 647  004f               L201:
 648                     ; 196     return(*(PointerAttr uint8_t *) (uint16_t)Address); 
 650  004f 1e05          	ldw	x,(OFST+5,sp)
 651  0051 f6            	ld	a,(x)
 654  0052 81            	ret
 694                     ; 207 void FLASH_ProgramWord(uint32_t Address, uint32_t Data)
 694                     ; 208 {
 695                     .text:	section	.text,new
 696  0000               _FLASH_ProgramWord:
 698       00000000      OFST:	set	0
 701                     ; 210     assert_param(IS_FLASH_ADDRESS_OK(Address));
 703  0000 96            	ldw	x,sp
 704  0001 1c0003        	addw	x,#OFST+3
 705  0004 cd0000        	call	c_ltor
 707  0007 ae0000        	ldw	x,#L64
 708  000a cd0000        	call	c_lcmp
 710  000d 250f          	jrult	L211
 711  000f 96            	ldw	x,sp
 712  0010 1c0003        	addw	x,#OFST+3
 713  0013 cd0000        	call	c_ltor
 715  0016 ae0004        	ldw	x,#L05
 716  0019 cd0000        	call	c_lcmp
 718  001c 251e          	jrult	L011
 719  001e               L211:
 720  001e 96            	ldw	x,sp
 721  001f 1c0003        	addw	x,#OFST+3
 722  0022 cd0000        	call	c_ltor
 724  0025 ae0008        	ldw	x,#L25
 725  0028 cd0000        	call	c_lcmp
 727  002b 2512          	jrult	L601
 728  002d 96            	ldw	x,sp
 729  002e 1c0003        	addw	x,#OFST+3
 730  0031 cd0000        	call	c_ltor
 732  0034 ae000c        	ldw	x,#L45
 733  0037 cd0000        	call	c_lcmp
 735  003a 2403          	jruge	L601
 736  003c               L011:
 737  003c 4f            	clr	a
 738  003d 2010          	jra	L411
 739  003f               L601:
 740  003f ae00d2        	ldw	x,#210
 741  0042 89            	pushw	x
 742  0043 ae0000        	ldw	x,#0
 743  0046 89            	pushw	x
 744  0047 ae0010        	ldw	x,#L73
 745  004a cd0000        	call	_assert_failed
 747  004d 5b04          	addw	sp,#4
 748  004f               L411:
 749                     ; 213     FLASH->CR2 |= FLASH_CR2_WPRG;
 751  004f 721c505b      	bset	20571,#6
 752                     ; 214     FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NWPRG);
 754  0053 721d505c      	bres	20572,#6
 755                     ; 217     *((PointerAttr uint8_t*)(uint16_t)Address)       = *((uint8_t*)(&Data));
 757  0057 7b07          	ld	a,(OFST+7,sp)
 758  0059 1e05          	ldw	x,(OFST+5,sp)
 759  005b f7            	ld	(x),a
 760                     ; 219     *(((PointerAttr uint8_t*)(uint16_t)Address) + 1) = *((uint8_t*)(&Data)+1); 
 762  005c 7b08          	ld	a,(OFST+8,sp)
 763  005e 1e05          	ldw	x,(OFST+5,sp)
 764  0060 e701          	ld	(1,x),a
 765                     ; 221     *(((PointerAttr uint8_t*)(uint16_t)Address) + 2) = *((uint8_t*)(&Data)+2); 
 767  0062 7b09          	ld	a,(OFST+9,sp)
 768  0064 1e05          	ldw	x,(OFST+5,sp)
 769  0066 e702          	ld	(2,x),a
 770                     ; 223     *(((PointerAttr uint8_t*)(uint16_t)Address) + 3) = *((uint8_t*)(&Data)+3); 
 772  0068 7b0a          	ld	a,(OFST+10,sp)
 773  006a 1e05          	ldw	x,(OFST+5,sp)
 774  006c e703          	ld	(3,x),a
 775                     ; 224 }
 778  006e 81            	ret
 820                     ; 232 void FLASH_ProgramOptionByte(uint16_t Address, uint8_t Data)
 820                     ; 233 {
 821                     .text:	section	.text,new
 822  0000               _FLASH_ProgramOptionByte:
 824  0000 89            	pushw	x
 825       00000000      OFST:	set	0
 828                     ; 235     assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
 830  0001 a34800        	cpw	x,#18432
 831  0004 2508          	jrult	L021
 832  0006 a34880        	cpw	x,#18560
 833  0009 2403          	jruge	L021
 834  000b 4f            	clr	a
 835  000c 2010          	jra	L221
 836  000e               L021:
 837  000e ae00eb        	ldw	x,#235
 838  0011 89            	pushw	x
 839  0012 ae0000        	ldw	x,#0
 840  0015 89            	pushw	x
 841  0016 ae0010        	ldw	x,#L73
 842  0019 cd0000        	call	_assert_failed
 844  001c 5b04          	addw	sp,#4
 845  001e               L221:
 846                     ; 238     FLASH->CR2 |= FLASH_CR2_OPT;
 848  001e 721e505b      	bset	20571,#7
 849                     ; 239     FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NOPT);
 851  0022 721f505c      	bres	20572,#7
 852                     ; 242     if (Address == 0x4800)
 854  0026 1e01          	ldw	x,(OFST+1,sp)
 855  0028 a34800        	cpw	x,#18432
 856  002b 2607          	jrne	L722
 857                     ; 245        *((NEAR uint8_t*)Address) = Data;
 859  002d 7b05          	ld	a,(OFST+5,sp)
 860  002f 1e01          	ldw	x,(OFST+1,sp)
 861  0031 f7            	ld	(x),a
 863  0032 200c          	jra	L132
 864  0034               L722:
 865                     ; 250        *((NEAR uint8_t*)Address) = Data;
 867  0034 7b05          	ld	a,(OFST+5,sp)
 868  0036 1e01          	ldw	x,(OFST+1,sp)
 869  0038 f7            	ld	(x),a
 870                     ; 251        *((NEAR uint8_t*)((uint16_t)(Address + 1))) = (uint8_t)(~Data);
 872  0039 7b05          	ld	a,(OFST+5,sp)
 873  003b 43            	cpl	a
 874  003c 1e01          	ldw	x,(OFST+1,sp)
 875  003e e701          	ld	(1,x),a
 876  0040               L132:
 877                     ; 253     FLASH_WaitForLastOperation(FLASH_MEMTYPE_PROG);
 879  0040 a6fd          	ld	a,#253
 880  0042 cd0000        	call	_FLASH_WaitForLastOperation
 882                     ; 256     FLASH->CR2 &= (uint8_t)(~FLASH_CR2_OPT);
 884  0045 721f505b      	bres	20571,#7
 885                     ; 257     FLASH->NCR2 |= FLASH_NCR2_NOPT;
 887  0049 721e505c      	bset	20572,#7
 888                     ; 258 }
 891  004d 85            	popw	x
 892  004e 81            	ret
 927                     ; 265 void FLASH_EraseOptionByte(uint16_t Address)
 927                     ; 266 {
 928                     .text:	section	.text,new
 929  0000               _FLASH_EraseOptionByte:
 931  0000 89            	pushw	x
 932       00000000      OFST:	set	0
 935                     ; 268     assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
 937  0001 a34800        	cpw	x,#18432
 938  0004 2508          	jrult	L621
 939  0006 a34880        	cpw	x,#18560
 940  0009 2403          	jruge	L621
 941  000b 4f            	clr	a
 942  000c 2010          	jra	L031
 943  000e               L621:
 944  000e ae010c        	ldw	x,#268
 945  0011 89            	pushw	x
 946  0012 ae0000        	ldw	x,#0
 947  0015 89            	pushw	x
 948  0016 ae0010        	ldw	x,#L73
 949  0019 cd0000        	call	_assert_failed
 951  001c 5b04          	addw	sp,#4
 952  001e               L031:
 953                     ; 271     FLASH->CR2 |= FLASH_CR2_OPT;
 955  001e 721e505b      	bset	20571,#7
 956                     ; 272     FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NOPT);
 958  0022 721f505c      	bres	20572,#7
 959                     ; 275      if (Address == 0x4800)
 961  0026 1e01          	ldw	x,(OFST+1,sp)
 962  0028 a34800        	cpw	x,#18432
 963  002b 2605          	jrne	L742
 964                     ; 278        *((NEAR uint8_t*)Address) = FLASH_CLEAR_BYTE;
 966  002d 1e01          	ldw	x,(OFST+1,sp)
 967  002f 7f            	clr	(x)
 969  0030 2009          	jra	L152
 970  0032               L742:
 971                     ; 283        *((NEAR uint8_t*)Address) = FLASH_CLEAR_BYTE;
 973  0032 1e01          	ldw	x,(OFST+1,sp)
 974  0034 7f            	clr	(x)
 975                     ; 284        *((NEAR uint8_t*)((uint16_t)(Address + (uint16_t)1 ))) = FLASH_SET_BYTE;
 977  0035 1e01          	ldw	x,(OFST+1,sp)
 978  0037 a6ff          	ld	a,#255
 979  0039 e701          	ld	(1,x),a
 980  003b               L152:
 981                     ; 286     FLASH_WaitForLastOperation(FLASH_MEMTYPE_PROG);
 983  003b a6fd          	ld	a,#253
 984  003d cd0000        	call	_FLASH_WaitForLastOperation
 986                     ; 289     FLASH->CR2 &= (uint8_t)(~FLASH_CR2_OPT);
 988  0040 721f505b      	bres	20571,#7
 989                     ; 290     FLASH->NCR2 |= FLASH_NCR2_NOPT;
 991  0044 721e505c      	bset	20572,#7
 992                     ; 291 }
 995  0048 85            	popw	x
 996  0049 81            	ret
1052                     ; 297 uint16_t FLASH_ReadOptionByte(uint16_t Address)
1052                     ; 298 {
1053                     .text:	section	.text,new
1054  0000               _FLASH_ReadOptionByte:
1056  0000 89            	pushw	x
1057  0001 5204          	subw	sp,#4
1058       00000004      OFST:	set	4
1061                     ; 299     uint8_t value_optbyte, value_optbyte_complement = 0;
1063                     ; 300     uint16_t res_value = 0;
1065                     ; 303     assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
1067  0003 a34800        	cpw	x,#18432
1068  0006 2508          	jrult	L431
1069  0008 a34880        	cpw	x,#18560
1070  000b 2403          	jruge	L431
1071  000d 4f            	clr	a
1072  000e 2010          	jra	L631
1073  0010               L431:
1074  0010 ae012f        	ldw	x,#303
1075  0013 89            	pushw	x
1076  0014 ae0000        	ldw	x,#0
1077  0017 89            	pushw	x
1078  0018 ae0010        	ldw	x,#L73
1079  001b cd0000        	call	_assert_failed
1081  001e 5b04          	addw	sp,#4
1082  0020               L631:
1083                     ; 306     value_optbyte = *((NEAR uint8_t*)Address); /* Read option byte */
1085  0020 1e05          	ldw	x,(OFST+1,sp)
1086  0022 f6            	ld	a,(x)
1087  0023 6b01          	ld	(OFST-3,sp),a
1089                     ; 307     value_optbyte_complement = *(((NEAR uint8_t*)Address) + 1); /* Read option byte complement */
1091  0025 1e05          	ldw	x,(OFST+1,sp)
1092  0027 e601          	ld	a,(1,x)
1093  0029 6b02          	ld	(OFST-2,sp),a
1095                     ; 310     if (Address == 0x4800)	 
1097  002b 1e05          	ldw	x,(OFST+1,sp)
1098  002d a34800        	cpw	x,#18432
1099  0030 2608          	jrne	L572
1100                     ; 312         res_value =	 value_optbyte;
1102  0032 7b01          	ld	a,(OFST-3,sp)
1103  0034 5f            	clrw	x
1104  0035 97            	ld	xl,a
1105  0036 1f03          	ldw	(OFST-1,sp),x
1108  0038 2023          	jra	L772
1109  003a               L572:
1110                     ; 316         if (value_optbyte == (uint8_t)(~value_optbyte_complement))
1112  003a 7b02          	ld	a,(OFST-2,sp)
1113  003c 43            	cpl	a
1114  003d 1101          	cp	a,(OFST-3,sp)
1115  003f 2617          	jrne	L103
1116                     ; 318             res_value = (uint16_t)((uint16_t)value_optbyte << 8);
1118  0041 7b01          	ld	a,(OFST-3,sp)
1119  0043 5f            	clrw	x
1120  0044 97            	ld	xl,a
1121  0045 4f            	clr	a
1122  0046 02            	rlwa	x,a
1123  0047 1f03          	ldw	(OFST-1,sp),x
1125                     ; 319             res_value = res_value | (uint16_t)value_optbyte_complement;
1127  0049 7b02          	ld	a,(OFST-2,sp)
1128  004b 5f            	clrw	x
1129  004c 97            	ld	xl,a
1130  004d 01            	rrwa	x,a
1131  004e 1a04          	or	a,(OFST+0,sp)
1132  0050 01            	rrwa	x,a
1133  0051 1a03          	or	a,(OFST-1,sp)
1134  0053 01            	rrwa	x,a
1135  0054 1f03          	ldw	(OFST-1,sp),x
1138  0056 2005          	jra	L772
1139  0058               L103:
1140                     ; 323             res_value = FLASH_OPTIONBYTE_ERROR;
1142  0058 ae5555        	ldw	x,#21845
1143  005b 1f03          	ldw	(OFST-1,sp),x
1145  005d               L772:
1146                     ; 326     return(res_value);
1148  005d 1e03          	ldw	x,(OFST-1,sp)
1151  005f 5b06          	addw	sp,#6
1152  0061 81            	ret
1227                     ; 335 void FLASH_SetLowPowerMode(FLASH_LPMode_TypeDef FLASH_LPMode)
1227                     ; 336 {
1228                     .text:	section	.text,new
1229  0000               _FLASH_SetLowPowerMode:
1231  0000 88            	push	a
1232       00000000      OFST:	set	0
1235                     ; 338     assert_param(IS_FLASH_LOW_POWER_MODE_OK(FLASH_LPMode));
1237  0001 a104          	cp	a,#4
1238  0003 270b          	jreq	L441
1239  0005 a108          	cp	a,#8
1240  0007 2707          	jreq	L441
1241  0009 4d            	tnz	a
1242  000a 2704          	jreq	L441
1243  000c a10c          	cp	a,#12
1244  000e 2603          	jrne	L241
1245  0010               L441:
1246  0010 4f            	clr	a
1247  0011 2010          	jra	L641
1248  0013               L241:
1249  0013 ae0152        	ldw	x,#338
1250  0016 89            	pushw	x
1251  0017 ae0000        	ldw	x,#0
1252  001a 89            	pushw	x
1253  001b ae0010        	ldw	x,#L73
1254  001e cd0000        	call	_assert_failed
1256  0021 5b04          	addw	sp,#4
1257  0023               L641:
1258                     ; 341     FLASH->CR1 &= (uint8_t)(~(FLASH_CR1_HALT | FLASH_CR1_AHALT)); 
1260  0023 c6505a        	ld	a,20570
1261  0026 a4f3          	and	a,#243
1262  0028 c7505a        	ld	20570,a
1263                     ; 344     FLASH->CR1 |= (uint8_t)FLASH_LPMode; 
1265  002b c6505a        	ld	a,20570
1266  002e 1a01          	or	a,(OFST+1,sp)
1267  0030 c7505a        	ld	20570,a
1268                     ; 345 }
1271  0033 84            	pop	a
1272  0034 81            	ret
1331                     ; 353 void FLASH_SetProgrammingTime(FLASH_ProgramTime_TypeDef FLASH_ProgTime)
1331                     ; 354 {
1332                     .text:	section	.text,new
1333  0000               _FLASH_SetProgrammingTime:
1335  0000 88            	push	a
1336       00000000      OFST:	set	0
1339                     ; 356     assert_param(IS_FLASH_PROGRAM_TIME_OK(FLASH_ProgTime));
1341  0001 4d            	tnz	a
1342  0002 2704          	jreq	L451
1343  0004 a101          	cp	a,#1
1344  0006 2603          	jrne	L251
1345  0008               L451:
1346  0008 4f            	clr	a
1347  0009 2010          	jra	L651
1348  000b               L251:
1349  000b ae0164        	ldw	x,#356
1350  000e 89            	pushw	x
1351  000f ae0000        	ldw	x,#0
1352  0012 89            	pushw	x
1353  0013 ae0010        	ldw	x,#L73
1354  0016 cd0000        	call	_assert_failed
1356  0019 5b04          	addw	sp,#4
1357  001b               L651:
1358                     ; 358     FLASH->CR1 &= (uint8_t)(~FLASH_CR1_FIX);
1360  001b 7211505a      	bres	20570,#0
1361                     ; 359     FLASH->CR1 |= (uint8_t)FLASH_ProgTime;
1363  001f c6505a        	ld	a,20570
1364  0022 1a01          	or	a,(OFST+1,sp)
1365  0024 c7505a        	ld	20570,a
1366                     ; 360 }
1369  0027 84            	pop	a
1370  0028 81            	ret
1395                     ; 367 FLASH_LPMode_TypeDef FLASH_GetLowPowerMode(void)
1395                     ; 368 {
1396                     .text:	section	.text,new
1397  0000               _FLASH_GetLowPowerMode:
1401                     ; 369     return((FLASH_LPMode_TypeDef)(FLASH->CR1 & (uint8_t)(FLASH_CR1_HALT | FLASH_CR1_AHALT)));
1403  0000 c6505a        	ld	a,20570
1404  0003 a40c          	and	a,#12
1407  0005 81            	ret
1432                     ; 377 FLASH_ProgramTime_TypeDef FLASH_GetProgrammingTime(void)
1432                     ; 378 {
1433                     .text:	section	.text,new
1434  0000               _FLASH_GetProgrammingTime:
1438                     ; 379     return((FLASH_ProgramTime_TypeDef)(FLASH->CR1 & FLASH_CR1_FIX));
1440  0000 c6505a        	ld	a,20570
1441  0003 a401          	and	a,#1
1444  0005 81            	ret
1476                     ; 387 uint32_t FLASH_GetBootSize(void)
1476                     ; 388 {
1477                     .text:	section	.text,new
1478  0000               _FLASH_GetBootSize:
1480  0000 5204          	subw	sp,#4
1481       00000004      OFST:	set	4
1484                     ; 389     uint32_t temp = 0;
1486                     ; 392     temp = (uint32_t)((uint32_t)FLASH->FPR * (uint32_t)512);
1488  0002 c6505d        	ld	a,20573
1489  0005 5f            	clrw	x
1490  0006 97            	ld	xl,a
1491  0007 90ae0200      	ldw	y,#512
1492  000b cd0000        	call	c_umul
1494  000e 96            	ldw	x,sp
1495  000f 1c0001        	addw	x,#OFST-3
1496  0012 cd0000        	call	c_rtol
1499                     ; 395     if (FLASH->FPR == 0xFF)
1501  0015 c6505d        	ld	a,20573
1502  0018 a1ff          	cp	a,#255
1503  001a 2611          	jrne	L124
1504                     ; 397         temp += 512;
1506  001c ae0200        	ldw	x,#512
1507  001f bf02          	ldw	c_lreg+2,x
1508  0021 ae0000        	ldw	x,#0
1509  0024 bf00          	ldw	c_lreg,x
1510  0026 96            	ldw	x,sp
1511  0027 1c0001        	addw	x,#OFST-3
1512  002a cd0000        	call	c_lgadd
1515  002d               L124:
1516                     ; 401     return(temp);
1518  002d 96            	ldw	x,sp
1519  002e 1c0001        	addw	x,#OFST-3
1520  0031 cd0000        	call	c_ltor
1524  0034 5b04          	addw	sp,#4
1525  0036 81            	ret
1628                     ; 412 FlagStatus FLASH_GetFlagStatus(FLASH_Flag_TypeDef FLASH_FLAG)
1628                     ; 413 {
1629                     .text:	section	.text,new
1630  0000               _FLASH_GetFlagStatus:
1632  0000 88            	push	a
1633  0001 88            	push	a
1634       00000001      OFST:	set	1
1637                     ; 414     FlagStatus status = RESET;
1639                     ; 416     assert_param(IS_FLASH_FLAGS_OK(FLASH_FLAG));
1641  0002 a108          	cp	a,#8
1642  0004 270c          	jreq	L271
1643  0006 a104          	cp	a,#4
1644  0008 2708          	jreq	L271
1645  000a a102          	cp	a,#2
1646  000c 2704          	jreq	L271
1647  000e a101          	cp	a,#1
1648  0010 2603          	jrne	L071
1649  0012               L271:
1650  0012 4f            	clr	a
1651  0013 2010          	jra	L471
1652  0015               L071:
1653  0015 ae01a0        	ldw	x,#416
1654  0018 89            	pushw	x
1655  0019 ae0000        	ldw	x,#0
1656  001c 89            	pushw	x
1657  001d ae0010        	ldw	x,#L73
1658  0020 cd0000        	call	_assert_failed
1660  0023 5b04          	addw	sp,#4
1661  0025               L471:
1662                     ; 419     if ((FLASH->IAPSR & (uint8_t)FLASH_FLAG) != (uint8_t)RESET)
1664  0025 c6505f        	ld	a,20575
1665  0028 1502          	bcp	a,(OFST+1,sp)
1666  002a 2706          	jreq	L174
1667                     ; 421         status = SET; /* FLASH_FLAG is set */
1669  002c a601          	ld	a,#1
1670  002e 6b01          	ld	(OFST+0,sp),a
1673  0030 2002          	jra	L374
1674  0032               L174:
1675                     ; 425         status = RESET; /* FLASH_FLAG is reset*/
1677  0032 0f01          	clr	(OFST+0,sp)
1679  0034               L374:
1680                     ; 429     return status;
1682  0034 7b01          	ld	a,(OFST+0,sp)
1685  0036 85            	popw	x
1686  0037 81            	ret
1767                     ; 531 IN_RAM(FLASH_Status_TypeDef FLASH_WaitForLastOperation(FLASH_MemType_TypeDef FLASH_MemType)) 
1767                     ; 532 {
1768                     .text:	section	.text,new
1769  0000               _FLASH_WaitForLastOperation:
1771  0000 5205          	subw	sp,#5
1772       00000005      OFST:	set	5
1775                     ; 533     uint8_t flagstatus = 0x00;
1777  0002 0f05          	clr	(OFST+0,sp)
1779                     ; 534     uint32_t timeout = OPERATION_TIMEOUT;
1781  0004 aeffff        	ldw	x,#65535
1782  0007 1f03          	ldw	(OFST-2,sp),x
1783  0009 ae000f        	ldw	x,#15
1784  000c 1f01          	ldw	(OFST-4,sp),x
1787  000e 2010          	jra	L535
1788  0010               L135:
1789                     ; 560         flagstatus = (uint8_t)(FLASH->IAPSR & (FLASH_IAPSR_EOP | FLASH_IAPSR_WR_PG_DIS));
1791  0010 c6505f        	ld	a,20575
1792  0013 a405          	and	a,#5
1793  0015 6b05          	ld	(OFST+0,sp),a
1795                     ; 561         timeout--;
1797  0017 96            	ldw	x,sp
1798  0018 1c0001        	addw	x,#OFST-4
1799  001b a601          	ld	a,#1
1800  001d cd0000        	call	c_lgsbc
1803  0020               L535:
1804                     ; 558     while ((flagstatus == 0x00) && (timeout != 0x00))
1806  0020 0d05          	tnz	(OFST+0,sp)
1807  0022 2609          	jrne	L145
1809  0024 96            	ldw	x,sp
1810  0025 1c0001        	addw	x,#OFST-4
1811  0028 cd0000        	call	c_lzmp
1813  002b 26e3          	jrne	L135
1814  002d               L145:
1815                     ; 566     if (timeout == 0x00 )
1817  002d 96            	ldw	x,sp
1818  002e 1c0001        	addw	x,#OFST-4
1819  0031 cd0000        	call	c_lzmp
1821  0034 2604          	jrne	L345
1822                     ; 568         flagstatus = FLASH_STATUS_TIMEOUT;
1824  0036 a602          	ld	a,#2
1825  0038 6b05          	ld	(OFST+0,sp),a
1827  003a               L345:
1828                     ; 571     return((FLASH_Status_TypeDef)flagstatus);
1830  003a 7b05          	ld	a,(OFST+0,sp)
1833  003c 5b05          	addw	sp,#5
1834  003e 81            	ret
1894                     ; 581 IN_RAM(void FLASH_EraseBlock(uint16_t BlockNum, FLASH_MemType_TypeDef FLASH_MemType))
1894                     ; 582 {
1895                     .text:	section	.text,new
1896  0000               _FLASH_EraseBlock:
1898  0000 89            	pushw	x
1899  0001 5206          	subw	sp,#6
1900       00000006      OFST:	set	6
1903                     ; 583   uint32_t startaddress = 0;
1905                     ; 593   assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
1907  0003 7b0b          	ld	a,(OFST+5,sp)
1908  0005 a1fd          	cp	a,#253
1909  0007 2706          	jreq	L402
1910  0009 7b0b          	ld	a,(OFST+5,sp)
1911  000b a1f7          	cp	a,#247
1912  000d 2603          	jrne	L202
1913  000f               L402:
1914  000f 4f            	clr	a
1915  0010 2010          	jra	L602
1916  0012               L202:
1917  0012 ae0251        	ldw	x,#593
1918  0015 89            	pushw	x
1919  0016 ae0000        	ldw	x,#0
1920  0019 89            	pushw	x
1921  001a ae0010        	ldw	x,#L73
1922  001d cd0000        	call	_assert_failed
1924  0020 5b04          	addw	sp,#4
1925  0022               L602:
1926                     ; 594   if (FLASH_MemType == FLASH_MEMTYPE_PROG)
1928  0022 7b0b          	ld	a,(OFST+5,sp)
1929  0024 a1fd          	cp	a,#253
1930  0026 2626          	jrne	L375
1931                     ; 596       assert_param(IS_FLASH_PROG_BLOCK_NUMBER_OK(BlockNum));
1933  0028 1e07          	ldw	x,(OFST+1,sp)
1934  002a a30080        	cpw	x,#128
1935  002d 2403          	jruge	L012
1936  002f 4f            	clr	a
1937  0030 2010          	jra	L212
1938  0032               L012:
1939  0032 ae0254        	ldw	x,#596
1940  0035 89            	pushw	x
1941  0036 ae0000        	ldw	x,#0
1942  0039 89            	pushw	x
1943  003a ae0010        	ldw	x,#L73
1944  003d cd0000        	call	_assert_failed
1946  0040 5b04          	addw	sp,#4
1947  0042               L212:
1948                     ; 597       startaddress = FLASH_PROG_START_PHYSICAL_ADDRESS;
1950  0042 ae8000        	ldw	x,#32768
1951  0045 1f05          	ldw	(OFST-1,sp),x
1952  0047 ae0000        	ldw	x,#0
1953  004a 1f03          	ldw	(OFST-3,sp),x
1956  004c 2024          	jra	L575
1957  004e               L375:
1958                     ; 601       assert_param(IS_FLASH_DATA_BLOCK_NUMBER_OK(BlockNum));
1960  004e 1e07          	ldw	x,(OFST+1,sp)
1961  0050 a3000a        	cpw	x,#10
1962  0053 2403          	jruge	L412
1963  0055 4f            	clr	a
1964  0056 2010          	jra	L612
1965  0058               L412:
1966  0058 ae0259        	ldw	x,#601
1967  005b 89            	pushw	x
1968  005c ae0000        	ldw	x,#0
1969  005f 89            	pushw	x
1970  0060 ae0010        	ldw	x,#L73
1971  0063 cd0000        	call	_assert_failed
1973  0066 5b04          	addw	sp,#4
1974  0068               L612:
1975                     ; 602       startaddress = FLASH_DATA_START_PHYSICAL_ADDRESS;
1977  0068 ae4000        	ldw	x,#16384
1978  006b 1f05          	ldw	(OFST-1,sp),x
1979  006d ae0000        	ldw	x,#0
1980  0070 1f03          	ldw	(OFST-3,sp),x
1982  0072               L575:
1983                     ; 610     pwFlash = (PointerAttr uint32_t *)(uint16_t)(startaddress + ((uint32_t)BlockNum * FLASH_BLOCK_SIZE));
1985  0072 1e07          	ldw	x,(OFST+1,sp)
1986  0074 a640          	ld	a,#64
1987  0076 cd0000        	call	c_cmulx
1989  0079 96            	ldw	x,sp
1990  007a 1c0003        	addw	x,#OFST-3
1991  007d cd0000        	call	c_ladd
1993  0080 be02          	ldw	x,c_lreg+2
1994  0082 1f01          	ldw	(OFST-5,sp),x
1996                     ; 614     FLASH->CR2 |= FLASH_CR2_ERASE;
1998  0084 721a505b      	bset	20571,#5
1999                     ; 615     FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NERASE);
2001  0088 721b505c      	bres	20572,#5
2002                     ; 619     *pwFlash = (uint32_t)0;
2004  008c 1e01          	ldw	x,(OFST-5,sp)
2005  008e a600          	ld	a,#0
2006  0090 e703          	ld	(3,x),a
2007  0092 a600          	ld	a,#0
2008  0094 e702          	ld	(2,x),a
2009  0096 a600          	ld	a,#0
2010  0098 e701          	ld	(1,x),a
2011  009a a600          	ld	a,#0
2012  009c f7            	ld	(x),a
2013                     ; 627 }
2016  009d 5b08          	addw	sp,#8
2017  009f 81            	ret
2116                     ; 638 IN_RAM(void FLASH_ProgramBlock(uint16_t BlockNum, FLASH_MemType_TypeDef FLASH_MemType, 
2116                     ; 639                         FLASH_ProgramMode_TypeDef FLASH_ProgMode, uint8_t *Buffer))
2116                     ; 640 {
2117                     .text:	section	.text,new
2118  0000               _FLASH_ProgramBlock:
2120  0000 89            	pushw	x
2121  0001 5206          	subw	sp,#6
2122       00000006      OFST:	set	6
2125                     ; 641     uint16_t Count = 0;
2127                     ; 642     uint32_t startaddress = 0;
2129                     ; 645     assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
2131  0003 7b0b          	ld	a,(OFST+5,sp)
2132  0005 a1fd          	cp	a,#253
2133  0007 2706          	jreq	L422
2134  0009 7b0b          	ld	a,(OFST+5,sp)
2135  000b a1f7          	cp	a,#247
2136  000d 2603          	jrne	L222
2137  000f               L422:
2138  000f 4f            	clr	a
2139  0010 2010          	jra	L622
2140  0012               L222:
2141  0012 ae0285        	ldw	x,#645
2142  0015 89            	pushw	x
2143  0016 ae0000        	ldw	x,#0
2144  0019 89            	pushw	x
2145  001a ae0010        	ldw	x,#L73
2146  001d cd0000        	call	_assert_failed
2148  0020 5b04          	addw	sp,#4
2149  0022               L622:
2150                     ; 646     assert_param(IS_FLASH_PROGRAM_MODE_OK(FLASH_ProgMode));
2152  0022 0d0c          	tnz	(OFST+6,sp)
2153  0024 2706          	jreq	L232
2154  0026 7b0c          	ld	a,(OFST+6,sp)
2155  0028 a110          	cp	a,#16
2156  002a 2603          	jrne	L032
2157  002c               L232:
2158  002c 4f            	clr	a
2159  002d 2010          	jra	L432
2160  002f               L032:
2161  002f ae0286        	ldw	x,#646
2162  0032 89            	pushw	x
2163  0033 ae0000        	ldw	x,#0
2164  0036 89            	pushw	x
2165  0037 ae0010        	ldw	x,#L73
2166  003a cd0000        	call	_assert_failed
2168  003d 5b04          	addw	sp,#4
2169  003f               L432:
2170                     ; 647     if (FLASH_MemType == FLASH_MEMTYPE_PROG)
2172  003f 7b0b          	ld	a,(OFST+5,sp)
2173  0041 a1fd          	cp	a,#253
2174  0043 2626          	jrne	L346
2175                     ; 649         assert_param(IS_FLASH_PROG_BLOCK_NUMBER_OK(BlockNum));
2177  0045 1e07          	ldw	x,(OFST+1,sp)
2178  0047 a30080        	cpw	x,#128
2179  004a 2403          	jruge	L632
2180  004c 4f            	clr	a
2181  004d 2010          	jra	L042
2182  004f               L632:
2183  004f ae0289        	ldw	x,#649
2184  0052 89            	pushw	x
2185  0053 ae0000        	ldw	x,#0
2186  0056 89            	pushw	x
2187  0057 ae0010        	ldw	x,#L73
2188  005a cd0000        	call	_assert_failed
2190  005d 5b04          	addw	sp,#4
2191  005f               L042:
2192                     ; 650         startaddress = FLASH_PROG_START_PHYSICAL_ADDRESS;
2194  005f ae8000        	ldw	x,#32768
2195  0062 1f03          	ldw	(OFST-3,sp),x
2196  0064 ae0000        	ldw	x,#0
2197  0067 1f01          	ldw	(OFST-5,sp),x
2200  0069 2024          	jra	L546
2201  006b               L346:
2202                     ; 654         assert_param(IS_FLASH_DATA_BLOCK_NUMBER_OK(BlockNum));
2204  006b 1e07          	ldw	x,(OFST+1,sp)
2205  006d a3000a        	cpw	x,#10
2206  0070 2403          	jruge	L242
2207  0072 4f            	clr	a
2208  0073 2010          	jra	L442
2209  0075               L242:
2210  0075 ae028e        	ldw	x,#654
2211  0078 89            	pushw	x
2212  0079 ae0000        	ldw	x,#0
2213  007c 89            	pushw	x
2214  007d ae0010        	ldw	x,#L73
2215  0080 cd0000        	call	_assert_failed
2217  0083 5b04          	addw	sp,#4
2218  0085               L442:
2219                     ; 655         startaddress = FLASH_DATA_START_PHYSICAL_ADDRESS;
2221  0085 ae4000        	ldw	x,#16384
2222  0088 1f03          	ldw	(OFST-3,sp),x
2223  008a ae0000        	ldw	x,#0
2224  008d 1f01          	ldw	(OFST-5,sp),x
2226  008f               L546:
2227                     ; 659     startaddress = startaddress + ((uint32_t)BlockNum * FLASH_BLOCK_SIZE);
2229  008f 1e07          	ldw	x,(OFST+1,sp)
2230  0091 a640          	ld	a,#64
2231  0093 cd0000        	call	c_cmulx
2233  0096 96            	ldw	x,sp
2234  0097 1c0001        	addw	x,#OFST-5
2235  009a cd0000        	call	c_lgadd
2238                     ; 662     if (FLASH_ProgMode == FLASH_PROGRAMMODE_STANDARD)
2240  009d 0d0c          	tnz	(OFST+6,sp)
2241  009f 260a          	jrne	L746
2242                     ; 665         FLASH->CR2 |= FLASH_CR2_PRG;
2244  00a1 7210505b      	bset	20571,#0
2245                     ; 666         FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NPRG);
2247  00a5 7211505c      	bres	20572,#0
2249  00a9 2008          	jra	L156
2250  00ab               L746:
2251                     ; 671         FLASH->CR2 |= FLASH_CR2_FPRG;
2253  00ab 7218505b      	bset	20571,#4
2254                     ; 672         FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NFPRG);
2256  00af 7219505c      	bres	20572,#4
2257  00b3               L156:
2258                     ; 676     for (Count = 0; Count < FLASH_BLOCK_SIZE; Count++)
2260  00b3 5f            	clrw	x
2261  00b4 1f05          	ldw	(OFST-1,sp),x
2263  00b6               L356:
2264                     ; 682   *((PointerAttr uint8_t*) (uint16_t)startaddress + Count) = ((uint8_t)(Buffer[Count]));
2266  00b6 1e0d          	ldw	x,(OFST+7,sp)
2267  00b8 72fb05        	addw	x,(OFST-1,sp)
2268  00bb f6            	ld	a,(x)
2269  00bc 1e03          	ldw	x,(OFST-3,sp)
2270  00be 72fb05        	addw	x,(OFST-1,sp)
2271  00c1 f7            	ld	(x),a
2272                     ; 676     for (Count = 0; Count < FLASH_BLOCK_SIZE; Count++)
2274  00c2 1e05          	ldw	x,(OFST-1,sp)
2275  00c4 1c0001        	addw	x,#1
2276  00c7 1f05          	ldw	(OFST-1,sp),x
2280  00c9 1e05          	ldw	x,(OFST-1,sp)
2281  00cb a30040        	cpw	x,#64
2282  00ce 25e6          	jrult	L356
2283                     ; 685 }
2286  00d0 5b08          	addw	sp,#8
2287  00d2 81            	ret
2300                     	xdef	_FLASH_WaitForLastOperation
2301                     	xdef	_FLASH_ProgramBlock
2302                     	xdef	_FLASH_EraseBlock
2303                     	xdef	_FLASH_GetFlagStatus
2304                     	xdef	_FLASH_GetBootSize
2305                     	xdef	_FLASH_GetProgrammingTime
2306                     	xdef	_FLASH_GetLowPowerMode
2307                     	xdef	_FLASH_SetProgrammingTime
2308                     	xdef	_FLASH_SetLowPowerMode
2309                     	xdef	_FLASH_EraseOptionByte
2310                     	xdef	_FLASH_ProgramOptionByte
2311                     	xdef	_FLASH_ReadOptionByte
2312                     	xdef	_FLASH_ProgramWord
2313                     	xdef	_FLASH_ReadByte
2314                     	xdef	_FLASH_ProgramByte
2315                     	xdef	_FLASH_EraseByte
2316                     	xdef	_FLASH_ITConfig
2317                     	xdef	_FLASH_DeInit
2318                     	xdef	_FLASH_Lock
2319                     	xdef	_FLASH_Unlock
2320                     	xref	_assert_failed
2321                     	switch	.const
2322  0010               L73:
2323  0010 7372635c7374  	dc.b	"src\stm8s_flash.c",0
2324                     	xref.b	c_lreg
2325                     	xref.b	c_x
2326                     	xref.b	c_y
2346                     	xref	c_ladd
2347                     	xref	c_cmulx
2348                     	xref	c_lzmp
2349                     	xref	c_lgsbc
2350                     	xref	c_lgadd
2351                     	xref	c_rtol
2352                     	xref	c_umul
2353                     	xref	c_lcmp
2354                     	xref	c_ltor
2355                     	end

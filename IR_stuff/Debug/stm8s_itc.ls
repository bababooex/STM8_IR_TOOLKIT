   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.13.3 - 22 May 2025
   3                     ; Generator (Limited) V4.6.6 - 07 Jan 2026
  44                     ; 44 uint8_t ITC_GetCPUCC(void)
  44                     ; 45 {
  46                     .text:	section	.text,new
  47  0000               _ITC_GetCPUCC:
  51                     ; 47   _asm("push cc");
  54  0000 8a            push cc
  56                     ; 48   _asm("pop a");
  59  0001 84            pop a
  61                     ; 56 }
  64  0002 81            	ret
  87                     ; 74 void ITC_DeInit(void)
  87                     ; 75 {
  88                     .text:	section	.text,new
  89  0000               _ITC_DeInit:
  93                     ; 76     ITC->ISPR1 = ITC_SPRX_RESET_VALUE;
  95  0000 35ff7f70      	mov	32624,#255
  96                     ; 77     ITC->ISPR2 = ITC_SPRX_RESET_VALUE;
  98  0004 35ff7f71      	mov	32625,#255
  99                     ; 78     ITC->ISPR3 = ITC_SPRX_RESET_VALUE;
 101  0008 35ff7f72      	mov	32626,#255
 102                     ; 79     ITC->ISPR4 = ITC_SPRX_RESET_VALUE;
 104  000c 35ff7f73      	mov	32627,#255
 105                     ; 80     ITC->ISPR5 = ITC_SPRX_RESET_VALUE;
 107  0010 35ff7f74      	mov	32628,#255
 108                     ; 81     ITC->ISPR6 = ITC_SPRX_RESET_VALUE;
 110  0014 35ff7f75      	mov	32629,#255
 111                     ; 82     ITC->ISPR7 = ITC_SPRX_RESET_VALUE;
 113  0018 35ff7f76      	mov	32630,#255
 114                     ; 83     ITC->ISPR8 = ITC_SPRX_RESET_VALUE;
 116  001c 35ff7f77      	mov	32631,#255
 117                     ; 84 }
 120  0020 81            	ret
 145                     ; 91 uint8_t ITC_GetSoftIntStatus(void)
 145                     ; 92 {
 146                     .text:	section	.text,new
 147  0000               _ITC_GetSoftIntStatus:
 151                     ; 93     return (uint8_t)(ITC_GetCPUCC() & CPU_CC_I1I0);
 153  0000 cd0000        	call	_ITC_GetCPUCC
 155  0003 a428          	and	a,#40
 158  0005 81            	ret
 413                     .const:	section	.text
 414  0000               L62:
 415  0000 003c          	dc.w	L14
 416  0002 003c          	dc.w	L14
 417  0004 003c          	dc.w	L14
 418  0006 003c          	dc.w	L14
 419  0008 0045          	dc.w	L34
 420  000a 0045          	dc.w	L34
 421  000c 0045          	dc.w	L34
 422  000e 0045          	dc.w	L34
 423  0010 004e          	dc.w	L54
 424  0012 0079          	dc.w	L302
 425  0014 004e          	dc.w	L54
 426  0016 004e          	dc.w	L54
 427  0018 0057          	dc.w	L74
 428  001a 0057          	dc.w	L74
 429  001c 0057          	dc.w	L74
 430  001e 0057          	dc.w	L74
 431  0020 0060          	dc.w	L15
 432  0022 0060          	dc.w	L15
 433  0024 0060          	dc.w	L15
 434  0026 0060          	dc.w	L15
 435  0028 0079          	dc.w	L302
 436  002a 0079          	dc.w	L302
 437  002c 0069          	dc.w	L35
 438  002e 0069          	dc.w	L35
 439  0030 0072          	dc.w	L55
 440                     ; 101 ITC_PriorityLevel_TypeDef ITC_GetSoftwarePriority(ITC_Irq_TypeDef IrqNum)
 440                     ; 102 {
 441                     .text:	section	.text,new
 442  0000               _ITC_GetSoftwarePriority:
 444  0000 88            	push	a
 445  0001 89            	pushw	x
 446       00000002      OFST:	set	2
 449                     ; 104     uint8_t Value = 0;
 451  0002 0f02          	clr	(OFST+0,sp)
 453                     ; 105     uint8_t Mask = 0;
 455                     ; 108     assert_param(IS_ITC_IRQ_OK((uint8_t)IrqNum));
 457  0004 a119          	cp	a,#25
 458  0006 2403          	jruge	L41
 459  0008 4f            	clr	a
 460  0009 2010          	jra	L61
 461  000b               L41:
 462  000b ae006c        	ldw	x,#108
 463  000e 89            	pushw	x
 464  000f ae0000        	ldw	x,#0
 465  0012 89            	pushw	x
 466  0013 ae0064        	ldw	x,#L771
 467  0016 cd0000        	call	_assert_failed
 469  0019 5b04          	addw	sp,#4
 470  001b               L61:
 471                     ; 111     Mask = (uint8_t)(0x03U << (((uint8_t)IrqNum % 4U) * 2U));
 473  001b 7b03          	ld	a,(OFST+1,sp)
 474  001d a403          	and	a,#3
 475  001f 48            	sll	a
 476  0020 5f            	clrw	x
 477  0021 97            	ld	xl,a
 478  0022 a603          	ld	a,#3
 479  0024 5d            	tnzw	x
 480  0025 2704          	jreq	L02
 481  0027               L22:
 482  0027 48            	sll	a
 483  0028 5a            	decw	x
 484  0029 26fc          	jrne	L22
 485  002b               L02:
 486  002b 6b01          	ld	(OFST-1,sp),a
 488                     ; 113     switch (IrqNum)
 490  002d 7b03          	ld	a,(OFST+1,sp)
 492                     ; 185     default:
 492                     ; 186         break;
 493  002f a119          	cp	a,#25
 494  0031 2407          	jruge	L42
 495  0033 5f            	clrw	x
 496  0034 97            	ld	xl,a
 497  0035 58            	sllw	x
 498  0036 de0000        	ldw	x,(L62,x)
 499  0039 fc            	jp	(x)
 500  003a               L42:
 501  003a 203d          	jra	L302
 502  003c               L14:
 503                     ; 115     case ITC_IRQ_TLI: /* TLI software priority can be read but has no meaning */
 503                     ; 116     case ITC_IRQ_AWU:
 503                     ; 117     case ITC_IRQ_CLK:
 503                     ; 118     case ITC_IRQ_PORTA:
 503                     ; 119         Value = (uint8_t)(ITC->ISPR1 & Mask); /* Read software priority */
 505  003c c67f70        	ld	a,32624
 506  003f 1401          	and	a,(OFST-1,sp)
 507  0041 6b02          	ld	(OFST+0,sp),a
 509                     ; 120         break;
 511  0043 2034          	jra	L302
 512  0045               L34:
 513                     ; 121     case ITC_IRQ_PORTB:
 513                     ; 122     case ITC_IRQ_PORTC:
 513                     ; 123     case ITC_IRQ_PORTD:
 513                     ; 124     case ITC_IRQ_PORTE:
 513                     ; 125         Value = (uint8_t)(ITC->ISPR2 & Mask); /* Read software priority */
 515  0045 c67f71        	ld	a,32625
 516  0048 1401          	and	a,(OFST-1,sp)
 517  004a 6b02          	ld	(OFST+0,sp),a
 519                     ; 126         break;
 521  004c 202b          	jra	L302
 522  004e               L54:
 523                     ; 133     case ITC_IRQ_PORTF:
 523                     ; 134 #endif /*STM8S903*/
 523                     ; 135 
 523                     ; 136     case ITC_IRQ_SPI:
 523                     ; 137     case ITC_IRQ_TIM1_OVF:
 523                     ; 138         Value = (uint8_t)(ITC->ISPR3 & Mask); /* Read software priority */
 525  004e c67f72        	ld	a,32626
 526  0051 1401          	and	a,(OFST-1,sp)
 527  0053 6b02          	ld	(OFST+0,sp),a
 529                     ; 139         break;
 531  0055 2022          	jra	L302
 532  0057               L74:
 533                     ; 140     case ITC_IRQ_TIM1_CAPCOM:
 533                     ; 141 #ifdef STM8S903
 533                     ; 142     case ITC_IRQ_TIM5_OVFTRI:
 533                     ; 143     case ITC_IRQ_TIM5_CAPCOM:
 533                     ; 144 #else
 533                     ; 145     case ITC_IRQ_TIM2_OVF:
 533                     ; 146     case ITC_IRQ_TIM2_CAPCOM:
 533                     ; 147 #endif /*STM8S903*/
 533                     ; 148 
 533                     ; 149     case ITC_IRQ_TIM3_OVF:
 533                     ; 150         Value = (uint8_t)(ITC->ISPR4 & Mask); /* Read software priority */
 535  0057 c67f73        	ld	a,32627
 536  005a 1401          	and	a,(OFST-1,sp)
 537  005c 6b02          	ld	(OFST+0,sp),a
 539                     ; 151         break;
 541  005e 2019          	jra	L302
 542  0060               L15:
 543                     ; 152     case ITC_IRQ_TIM3_CAPCOM:
 543                     ; 153     case ITC_IRQ_UART1_TX:
 543                     ; 154     case ITC_IRQ_UART1_RX:
 543                     ; 155     case ITC_IRQ_I2C:
 543                     ; 156         Value = (uint8_t)(ITC->ISPR5 & Mask); /* Read software priority */
 545  0060 c67f74        	ld	a,32628
 546  0063 1401          	and	a,(OFST-1,sp)
 547  0065 6b02          	ld	(OFST+0,sp),a
 549                     ; 157         break;
 551  0067 2010          	jra	L302
 552  0069               L35:
 553                     ; 172     case ITC_IRQ_ADC1:
 553                     ; 173 #endif /*STM8S105, STM8S103 or STM8S905 or STM8AF626x */
 553                     ; 174 
 553                     ; 175 #ifdef STM8S903
 553                     ; 176     case ITC_IRQ_TIM6_OVFTRI:
 553                     ; 177 #else
 553                     ; 178     case ITC_IRQ_TIM4_OVF:
 553                     ; 179 #endif /*STM8S903*/
 553                     ; 180         Value = (uint8_t)(ITC->ISPR6 & Mask); /* Read software priority */
 555  0069 c67f75        	ld	a,32629
 556  006c 1401          	and	a,(OFST-1,sp)
 557  006e 6b02          	ld	(OFST+0,sp),a
 559                     ; 181         break;
 561  0070 2007          	jra	L302
 562  0072               L55:
 563                     ; 182     case ITC_IRQ_EEPROM_EEC:
 563                     ; 183         Value = (uint8_t)(ITC->ISPR7 & Mask); /* Read software priority */
 565  0072 c67f76        	ld	a,32630
 566  0075 1401          	and	a,(OFST-1,sp)
 567  0077 6b02          	ld	(OFST+0,sp),a
 569                     ; 184         break;
 571  0079               L75:
 572                     ; 185     default:
 572                     ; 186         break;
 574  0079               L302:
 575                     ; 189     Value >>= (uint8_t)(((uint8_t)IrqNum % 4u) * 2u);
 577  0079 7b03          	ld	a,(OFST+1,sp)
 578  007b a403          	and	a,#3
 579  007d 48            	sll	a
 580  007e 5f            	clrw	x
 581  007f 97            	ld	xl,a
 582  0080 7b02          	ld	a,(OFST+0,sp)
 583  0082 5d            	tnzw	x
 584  0083 2704          	jreq	L03
 585  0085               L23:
 586  0085 44            	srl	a
 587  0086 5a            	decw	x
 588  0087 26fc          	jrne	L23
 589  0089               L03:
 590  0089 6b02          	ld	(OFST+0,sp),a
 592                     ; 191     return((ITC_PriorityLevel_TypeDef)Value);
 594  008b 7b02          	ld	a,(OFST+0,sp)
 597  008d 5b03          	addw	sp,#3
 598  008f 81            	ret
 660                     	switch	.const
 661  0032               L66:
 662  0032 0091          	dc.w	L502
 663  0034 0091          	dc.w	L502
 664  0036 0091          	dc.w	L502
 665  0038 0091          	dc.w	L502
 666  003a 00a3          	dc.w	L702
 667  003c 00a3          	dc.w	L702
 668  003e 00a3          	dc.w	L702
 669  0040 00a3          	dc.w	L702
 670  0042 00b5          	dc.w	L112
 671  0044 010d          	dc.w	L552
 672  0046 00b5          	dc.w	L112
 673  0048 00b5          	dc.w	L112
 674  004a 00c7          	dc.w	L312
 675  004c 00c7          	dc.w	L312
 676  004e 00c7          	dc.w	L312
 677  0050 00c7          	dc.w	L312
 678  0052 00d9          	dc.w	L512
 679  0054 00d9          	dc.w	L512
 680  0056 00d9          	dc.w	L512
 681  0058 00d9          	dc.w	L512
 682  005a 010d          	dc.w	L552
 683  005c 010d          	dc.w	L552
 684  005e 00eb          	dc.w	L712
 685  0060 00eb          	dc.w	L712
 686  0062 00fd          	dc.w	L122
 687                     ; 208 void ITC_SetSoftwarePriority(ITC_Irq_TypeDef IrqNum, ITC_PriorityLevel_TypeDef PriorityValue)
 687                     ; 209 {
 688                     .text:	section	.text,new
 689  0000               _ITC_SetSoftwarePriority:
 691  0000 89            	pushw	x
 692  0001 89            	pushw	x
 693       00000002      OFST:	set	2
 696                     ; 211     uint8_t Mask = 0;
 698                     ; 212     uint8_t NewPriority = 0;
 700                     ; 215     assert_param(IS_ITC_IRQ_OK((uint8_t)IrqNum));
 702  0002 9e            	ld	a,xh
 703  0003 a119          	cp	a,#25
 704  0005 2403          	jruge	L63
 705  0007 4f            	clr	a
 706  0008 2010          	jra	L04
 707  000a               L63:
 708  000a ae00d7        	ldw	x,#215
 709  000d 89            	pushw	x
 710  000e ae0000        	ldw	x,#0
 711  0011 89            	pushw	x
 712  0012 ae0064        	ldw	x,#L771
 713  0015 cd0000        	call	_assert_failed
 715  0018 5b04          	addw	sp,#4
 716  001a               L04:
 717                     ; 216     assert_param(IS_ITC_PRIORITY_OK(PriorityValue));
 719  001a 7b04          	ld	a,(OFST+2,sp)
 720  001c a102          	cp	a,#2
 721  001e 2710          	jreq	L44
 722  0020 7b04          	ld	a,(OFST+2,sp)
 723  0022 a101          	cp	a,#1
 724  0024 270a          	jreq	L44
 725  0026 0d04          	tnz	(OFST+2,sp)
 726  0028 2706          	jreq	L44
 727  002a 7b04          	ld	a,(OFST+2,sp)
 728  002c a103          	cp	a,#3
 729  002e 2603          	jrne	L24
 730  0030               L44:
 731  0030 4f            	clr	a
 732  0031 2010          	jra	L64
 733  0033               L24:
 734  0033 ae00d8        	ldw	x,#216
 735  0036 89            	pushw	x
 736  0037 ae0000        	ldw	x,#0
 737  003a 89            	pushw	x
 738  003b ae0064        	ldw	x,#L771
 739  003e cd0000        	call	_assert_failed
 741  0041 5b04          	addw	sp,#4
 742  0043               L64:
 743                     ; 219     assert_param(IS_ITC_INTERRUPTS_DISABLED);
 745  0043 cd0000        	call	_ITC_GetSoftIntStatus
 747  0046 a128          	cp	a,#40
 748  0048 2603          	jrne	L05
 749  004a 4f            	clr	a
 750  004b 2010          	jra	L25
 751  004d               L05:
 752  004d ae00db        	ldw	x,#219
 753  0050 89            	pushw	x
 754  0051 ae0000        	ldw	x,#0
 755  0054 89            	pushw	x
 756  0055 ae0064        	ldw	x,#L771
 757  0058 cd0000        	call	_assert_failed
 759  005b 5b04          	addw	sp,#4
 760  005d               L25:
 761                     ; 223     Mask = (uint8_t)(~(uint8_t)(0x03U << (((uint8_t)IrqNum % 4U) * 2U)));
 763  005d 7b03          	ld	a,(OFST+1,sp)
 764  005f a403          	and	a,#3
 765  0061 48            	sll	a
 766  0062 5f            	clrw	x
 767  0063 97            	ld	xl,a
 768  0064 a603          	ld	a,#3
 769  0066 5d            	tnzw	x
 770  0067 2704          	jreq	L45
 771  0069               L65:
 772  0069 48            	sll	a
 773  006a 5a            	decw	x
 774  006b 26fc          	jrne	L65
 775  006d               L45:
 776  006d 43            	cpl	a
 777  006e 6b01          	ld	(OFST-1,sp),a
 779                     ; 226     NewPriority = (uint8_t)((uint8_t)(PriorityValue) << (((uint8_t)IrqNum % 4U) * 2U));
 781  0070 7b03          	ld	a,(OFST+1,sp)
 782  0072 a403          	and	a,#3
 783  0074 48            	sll	a
 784  0075 5f            	clrw	x
 785  0076 97            	ld	xl,a
 786  0077 7b04          	ld	a,(OFST+2,sp)
 787  0079 5d            	tnzw	x
 788  007a 2704          	jreq	L06
 789  007c               L26:
 790  007c 48            	sll	a
 791  007d 5a            	decw	x
 792  007e 26fc          	jrne	L26
 793  0080               L06:
 794  0080 6b02          	ld	(OFST+0,sp),a
 796                     ; 228     switch (IrqNum)
 798  0082 7b03          	ld	a,(OFST+1,sp)
 800                     ; 314     default:
 800                     ; 315         break;
 801  0084 a119          	cp	a,#25
 802  0086 2407          	jruge	L46
 803  0088 5f            	clrw	x
 804  0089 97            	ld	xl,a
 805  008a 58            	sllw	x
 806  008b de0032        	ldw	x,(L66,x)
 807  008e fc            	jp	(x)
 808  008f               L46:
 809  008f 207c          	jra	L552
 810  0091               L502:
 811                     ; 231     case ITC_IRQ_TLI: /* TLI software priority can be written but has no meaning */
 811                     ; 232     case ITC_IRQ_AWU:
 811                     ; 233     case ITC_IRQ_CLK:
 811                     ; 234     case ITC_IRQ_PORTA:
 811                     ; 235         ITC->ISPR1 &= Mask;
 813  0091 c67f70        	ld	a,32624
 814  0094 1401          	and	a,(OFST-1,sp)
 815  0096 c77f70        	ld	32624,a
 816                     ; 236         ITC->ISPR1 |= NewPriority;
 818  0099 c67f70        	ld	a,32624
 819  009c 1a02          	or	a,(OFST+0,sp)
 820  009e c77f70        	ld	32624,a
 821                     ; 237         break;
 823  00a1 206a          	jra	L552
 824  00a3               L702:
 825                     ; 239     case ITC_IRQ_PORTB:
 825                     ; 240     case ITC_IRQ_PORTC:
 825                     ; 241     case ITC_IRQ_PORTD:
 825                     ; 242     case ITC_IRQ_PORTE:
 825                     ; 243         ITC->ISPR2 &= Mask;
 827  00a3 c67f71        	ld	a,32625
 828  00a6 1401          	and	a,(OFST-1,sp)
 829  00a8 c77f71        	ld	32625,a
 830                     ; 244         ITC->ISPR2 |= NewPriority;
 832  00ab c67f71        	ld	a,32625
 833  00ae 1a02          	or	a,(OFST+0,sp)
 834  00b0 c77f71        	ld	32625,a
 835                     ; 245         break;
 837  00b3 2058          	jra	L552
 838  00b5               L112:
 839                     ; 253     case ITC_IRQ_PORTF:
 839                     ; 254 #endif /*STM8S903*/
 839                     ; 255     case ITC_IRQ_SPI:
 839                     ; 256     case ITC_IRQ_TIM1_OVF:
 839                     ; 257         ITC->ISPR3 &= Mask;
 841  00b5 c67f72        	ld	a,32626
 842  00b8 1401          	and	a,(OFST-1,sp)
 843  00ba c77f72        	ld	32626,a
 844                     ; 258         ITC->ISPR3 |= NewPriority;
 846  00bd c67f72        	ld	a,32626
 847  00c0 1a02          	or	a,(OFST+0,sp)
 848  00c2 c77f72        	ld	32626,a
 849                     ; 259         break;
 851  00c5 2046          	jra	L552
 852  00c7               L312:
 853                     ; 261     case ITC_IRQ_TIM1_CAPCOM:
 853                     ; 262 #ifdef STM8S903
 853                     ; 263     case ITC_IRQ_TIM5_OVFTRI:
 853                     ; 264     case ITC_IRQ_TIM5_CAPCOM:
 853                     ; 265 #else
 853                     ; 266     case ITC_IRQ_TIM2_OVF:
 853                     ; 267     case ITC_IRQ_TIM2_CAPCOM:
 853                     ; 268 #endif /*STM8S903*/
 853                     ; 269 
 853                     ; 270     case ITC_IRQ_TIM3_OVF:
 853                     ; 271         ITC->ISPR4 &= Mask;
 855  00c7 c67f73        	ld	a,32627
 856  00ca 1401          	and	a,(OFST-1,sp)
 857  00cc c77f73        	ld	32627,a
 858                     ; 272         ITC->ISPR4 |= NewPriority;
 860  00cf c67f73        	ld	a,32627
 861  00d2 1a02          	or	a,(OFST+0,sp)
 862  00d4 c77f73        	ld	32627,a
 863                     ; 273         break;
 865  00d7 2034          	jra	L552
 866  00d9               L512:
 867                     ; 275     case ITC_IRQ_TIM3_CAPCOM:
 867                     ; 276     case ITC_IRQ_UART1_TX:
 867                     ; 277     case ITC_IRQ_UART1_RX:
 867                     ; 278     case ITC_IRQ_I2C:
 867                     ; 279         ITC->ISPR5 &= Mask;
 869  00d9 c67f74        	ld	a,32628
 870  00dc 1401          	and	a,(OFST-1,sp)
 871  00de c77f74        	ld	32628,a
 872                     ; 280         ITC->ISPR5 |= NewPriority;
 874  00e1 c67f74        	ld	a,32628
 875  00e4 1a02          	or	a,(OFST+0,sp)
 876  00e6 c77f74        	ld	32628,a
 877                     ; 281         break;
 879  00e9 2022          	jra	L552
 880  00eb               L712:
 881                     ; 297     case ITC_IRQ_ADC1:
 881                     ; 298 #endif /*STM8S105, STM8S103 or STM8S905 or STM8AF626x */
 881                     ; 299 
 881                     ; 300 #ifdef STM8S903
 881                     ; 301     case ITC_IRQ_TIM6_OVFTRI:
 881                     ; 302 #else
 881                     ; 303     case ITC_IRQ_TIM4_OVF:
 881                     ; 304 #endif /*STM8S903*/
 881                     ; 305         ITC->ISPR6 &= Mask;
 883  00eb c67f75        	ld	a,32629
 884  00ee 1401          	and	a,(OFST-1,sp)
 885  00f0 c77f75        	ld	32629,a
 886                     ; 306         ITC->ISPR6 |= NewPriority;
 888  00f3 c67f75        	ld	a,32629
 889  00f6 1a02          	or	a,(OFST+0,sp)
 890  00f8 c77f75        	ld	32629,a
 891                     ; 307         break;
 893  00fb 2010          	jra	L552
 894  00fd               L122:
 895                     ; 309     case ITC_IRQ_EEPROM_EEC:
 895                     ; 310         ITC->ISPR7 &= Mask;
 897  00fd c67f76        	ld	a,32630
 898  0100 1401          	and	a,(OFST-1,sp)
 899  0102 c77f76        	ld	32630,a
 900                     ; 311         ITC->ISPR7 |= NewPriority;
 902  0105 c67f76        	ld	a,32630
 903  0108 1a02          	or	a,(OFST+0,sp)
 904  010a c77f76        	ld	32630,a
 905                     ; 312         break;
 907  010d               L322:
 908                     ; 314     default:
 908                     ; 315         break;
 910  010d               L552:
 911                     ; 319 }
 914  010d 5b04          	addw	sp,#4
 915  010f 81            	ret
 928                     	xdef	_ITC_GetSoftwarePriority
 929                     	xdef	_ITC_SetSoftwarePriority
 930                     	xdef	_ITC_GetSoftIntStatus
 931                     	xdef	_ITC_DeInit
 932                     	xdef	_ITC_GetCPUCC
 933                     	xref	_assert_failed
 934                     	switch	.const
 935  0064               L771:
 936  0064 7372635c7374  	dc.b	"src\stm8s_itc.c",0
 956                     	end

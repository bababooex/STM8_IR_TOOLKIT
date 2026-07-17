   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.13.3 - 22 May 2025
   3                     ; Generator (Limited) V4.6.6 - 07 Jan 2026
 119                     ; 48 FlagStatus RST_GetFlagStatus(RST_Flag_TypeDef RST_Flag)
 119                     ; 49 {
 121                     .text:	section	.text,new
 122  0000               _RST_GetFlagStatus:
 124  0000 88            	push	a
 125       00000000      OFST:	set	0
 128                     ; 51     assert_param(IS_RST_FLAG_OK(RST_Flag));
 130  0001 a110          	cp	a,#16
 131  0003 2710          	jreq	L01
 132  0005 a108          	cp	a,#8
 133  0007 270c          	jreq	L01
 134  0009 a104          	cp	a,#4
 135  000b 2708          	jreq	L01
 136  000d a102          	cp	a,#2
 137  000f 2704          	jreq	L01
 138  0011 a101          	cp	a,#1
 139  0013 2603          	jrne	L6
 140  0015               L01:
 141  0015 4f            	clr	a
 142  0016 2010          	jra	L21
 143  0018               L6:
 144  0018 ae0033        	ldw	x,#51
 145  001b 89            	pushw	x
 146  001c ae0000        	ldw	x,#0
 147  001f 89            	pushw	x
 148  0020 ae0000        	ldw	x,#L55
 149  0023 cd0000        	call	_assert_failed
 151  0026 5b04          	addw	sp,#4
 152  0028               L21:
 153                     ; 55     return ((FlagStatus)((uint8_t)RST->SR & (uint8_t)RST_Flag));
 155  0028 c650b3        	ld	a,20659
 156  002b 1401          	and	a,(OFST+1,sp)
 159  002d 5b01          	addw	sp,#1
 160  002f 81            	ret
 196                     ; 64 void RST_ClearFlag(RST_Flag_TypeDef RST_Flag)
 196                     ; 65 {
 197                     .text:	section	.text,new
 198  0000               _RST_ClearFlag:
 200  0000 88            	push	a
 201       00000000      OFST:	set	0
 204                     ; 67     assert_param(IS_RST_FLAG_OK(RST_Flag));
 206  0001 a110          	cp	a,#16
 207  0003 2710          	jreq	L02
 208  0005 a108          	cp	a,#8
 209  0007 270c          	jreq	L02
 210  0009 a104          	cp	a,#4
 211  000b 2708          	jreq	L02
 212  000d a102          	cp	a,#2
 213  000f 2704          	jreq	L02
 214  0011 a101          	cp	a,#1
 215  0013 2603          	jrne	L61
 216  0015               L02:
 217  0015 4f            	clr	a
 218  0016 2010          	jra	L22
 219  0018               L61:
 220  0018 ae0043        	ldw	x,#67
 221  001b 89            	pushw	x
 222  001c ae0000        	ldw	x,#0
 223  001f 89            	pushw	x
 224  0020 ae0000        	ldw	x,#L55
 225  0023 cd0000        	call	_assert_failed
 227  0026 5b04          	addw	sp,#4
 228  0028               L22:
 229                     ; 69     RST->SR = (uint8_t)RST_Flag;
 231  0028 7b01          	ld	a,(OFST+1,sp)
 232  002a c750b3        	ld	20659,a
 233                     ; 70 }
 236  002d 84            	pop	a
 237  002e 81            	ret
 250                     	xdef	_RST_ClearFlag
 251                     	xdef	_RST_GetFlagStatus
 252                     	xref	_assert_failed
 253                     .const:	section	.text
 254  0000               L55:
 255  0000 7372635c7374  	dc.b	"src\stm8s_rst.c",0
 275                     	end

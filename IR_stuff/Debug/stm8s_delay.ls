   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.13.3 - 22 May 2025
   3                     ; Generator (Limited) V4.6.6 - 07 Jan 2026
  61                     ; 4 void delay_us(unsigned int  value)
  61                     ; 5 {
  63                     .text:	section	.text,new
  64  0000               _delay_us:
  66  0000 89            	pushw	x
  67       00000002      OFST:	set	2
  70                     ; 6 	register unsigned int loops =  (dly_const * value) ;
  72  0001 cd0000        	call	c_uitof
  74  0004 ae0000        	ldw	x,#L33
  75  0007 cd0000        	call	c_fmul
  77  000a cd0000        	call	c_ftoi
  79  000d 1f01          	ldw	(OFST-1,sp),x
  82  000f 2008          	jra	L34
  83  0011               L73:
  84                     ; 10 		_asm ("nop");
  87  0011 9d            nop
  89                     ; 11 		loops--;
  91  0012 1e01          	ldw	x,(OFST-1,sp)
  92  0014 1d0001        	subw	x,#1
  93  0017 1f01          	ldw	(OFST-1,sp),x
  95  0019               L34:
  96                     ; 8 	while(loops)
  98  0019 1e01          	ldw	x,(OFST-1,sp)
  99  001b 26f4          	jrne	L73
 100                     ; 13 }
 104  001d 85            	popw	x
 105  001e 81            	ret
 138                     ; 16 void delay_ms(unsigned int  value)
 138                     ; 17 {
 139                     .text:	section	.text,new
 140  0000               _delay_ms:
 142  0000 89            	pushw	x
 143       00000000      OFST:	set	0
 146  0001 200d          	jra	L56
 147  0003               L36:
 148                     ; 20 		delay_us(1000);
 150  0003 ae03e8        	ldw	x,#1000
 151  0006 cd0000        	call	_delay_us
 153                     ; 21 		value--;
 155  0009 1e01          	ldw	x,(OFST+1,sp)
 156  000b 1d0001        	subw	x,#1
 157  000e 1f01          	ldw	(OFST+1,sp),x
 158  0010               L56:
 159                     ; 18 	while(value)
 161  0010 1e01          	ldw	x,(OFST+1,sp)
 162  0012 26ef          	jrne	L36
 163                     ; 23 }
 167  0014 85            	popw	x
 168  0015 81            	ret
 181                     	xdef	_delay_ms
 182                     	xdef	_delay_us
 183                     .const:	section	.text
 184  0000               L33:
 185  0000 3f800000      	dc.w	16256,0
 186                     	xref.b	c_x
 206                     	xref	c_ftoi
 207                     	xref	c_fmul
 208                     	xref	c_uitof
 209                     	end

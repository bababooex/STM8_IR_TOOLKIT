#ifndef HD1650_STM8_H
#define HD1650_STM8_H

#include "swi2c.h"  //needs swi2c

#define HD1650_DISPLAY_BASE   0x6E
#define HD1650_CONTROL_BASE   0x48
#define HD1650_NUM_DIGIT         4
#define HD1650_ZERO_PREFIX    0
#include <stdio.h>
#include <ctype.h>
/**
 * basic low flah taking function for hd1650 display, nothing advanced here
 */
void HD1650_init(void);

void HD1650_displayOn(void);
void HD1650_displayOff(void);
void HD1650_clearDisplay(void);
void HD1650_setBrightness(uint8_t b);
void HD1650_colonOn(void);
void HD1650_colonOff(void);
void HD1650_setDot(uint8_t pos, uint8_t onoff);
void HD1650_writeNumber(uint16_t num, uint8_t zeroFill);
//other functions (private)
void HD1650_sendControl(uint8_t data, uint8_t segment);
void HD1650_sendDigit(uint8_t data, uint8_t segment);
void HD1650_writeNum(uint16_t num);
void HD1650_writeString(const char *str);

#define SEG_G       0x11
#define SEG_H       0x12
#define SEG_I       0x13
#define SEG_J       0x14
#define SEG_L       0x15
#define SEG_N				0x16
#define SEG_M       SEG_N
#define SEG_O       0x17   /* identical to 0, but kept for completeness */
#define SEG_P       0x18
#define SEG_R       0x19
#define SEG_S       0x1A   /* identical to 5 */
#define SEG_T       0x1B
#define SEG_V				0x1C
#define SEG_U 			SEG_V
#define SEG_Y       0x1D
#define SEG_MINUS   0x1E

/* Expanded digit table */
static const uint8_t hd1650_Digit_Table[] = {
    /* 0x00 – 0x0F */
    0x3F, /* 0 */
    0x06, /* 1 */
    0x5B, /* 2 */
    0x4F, /* 3 */
    0x66, /* 4 */
    0x6D, /* 5 */
    0x7D, /* 6 */
    0x07, /* 7 */
    0x7F, /* 8 */
    0x6F, /* 9 */
    0x77, /* A */
    0x7C, /* B */
    0x39, /* C */
    0x5E, /* D */
    0x79, /* E */
    0x71, /* F */
    0x00, /* blank (0x10) */

    /* 0x11 – 0x1E */
    0x3D, /* G (a,f,g,e,d) */
    0x76, /* H (b,c,e,f,g) */
    0x06, /* I (same as 1) */
    0x1E, /* J (c,d,e) */
    0x38, /* L (d,e,f) */
    0x54, /* n (a,b,c,e,f) */
    0x3F, /* O (same as 0) */
    0x73, /* P (a,b,e,f,g) */
    0x50, /* r (a,g segments only) */
    0x6D, /* S (same as 5) */
    0x78, /* t (d,e,f,g) */
    0x3E, /* U (b,c,d,e,f) */
    0x6E, /* Y (c,d,f,g) */
    0x40, /* - (g segment only) */
};




#endif /* HD1650_STM8_H */

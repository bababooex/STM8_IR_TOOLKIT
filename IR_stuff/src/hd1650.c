#include "hd1650.h"

static uint8_t iCtrl[HD1650_NUM_DIGIT];
static uint8_t iData[HD1650_NUM_DIGIT];

static uint8_t HD1650_charToSeg(char c)
{
    if (c >= '0' && c <= '9') return (uint8_t)(c - '0');
    if (c >= 'A' && c <= 'F') return 0x0A + (c - 'A');
    if (c >= 'a' && c <= 'f') return 0x0A + (c - 'a');
    
    switch (c) {
        case 'G': case 'g': return SEG_G;
        case 'H': case 'h': return SEG_H;
        case 'I': case 'i': return SEG_I;
        case 'J': case 'j': return SEG_J;
        case 'L': case 'l': return SEG_L;
				case 'M': case 'm': return SEG_M;
        case 'N': case 'n': return SEG_N;
        case 'O': case 'o': return SEG_O;
        case 'P': case 'p': return SEG_P;
        case 'R': case 'r': return SEG_R;
        case 'S': case 's': return SEG_S;
        case 'T': case 't': return SEG_T;
        case 'U': case 'u': return SEG_U;
				case 'V': case 'v': return SEG_V;
        case 'Y': case 'y': return SEG_Y;
        case '-':         return SEG_MINUS;
        default:          return 0x10;   // blank
    }
}

static uint8_t basic_strlen(const char *str) {
    uint8_t len = 0;
    while (*str++) len++;
    return len;
}
static void hd1650_i2c_write(uint8_t reg, uint8_t data)
{
    uint8_t buf[1];
    buf[0] = data;
    swi2c_write_array(reg, buf, 1);
}

void HD1650_init(void)
{
    uint8_t dig;
    swi2c_init();
    hd1650_i2c_write(HD1650_DISPLAY_BASE, 0x00);

    for (dig = 0; dig < HD1650_NUM_DIGIT; dig++) {
        iCtrl[dig] = 0x00;
        iData[dig] = 0x00;
    }
}

void HD1650_sendControl(uint8_t data, uint8_t segment)
{
    segment = segment % HD1650_NUM_DIGIT;
    hd1650_i2c_write((uint8_t)(HD1650_CONTROL_BASE + segment), data);
}

void HD1650_sendDigit(uint8_t data, uint8_t segment)
{
    segment = segment % HD1650_NUM_DIGIT;
    hd1650_i2c_write((uint8_t)(HD1650_DISPLAY_BASE - segment*2), data);
}

void HD1650_displayOn(void)
{
    uint8_t i;
    for (i = 0; i < HD1650_NUM_DIGIT; i++) {
        iCtrl[i] = (iCtrl[i] & 0xFE) | 0x01; 
        HD1650_sendControl(iCtrl[i], i);
    }
}

void HD1650_displayOff(void)
{
    uint8_t i;
    for (i = 0; i < HD1650_NUM_DIGIT; i++) {
        iCtrl[i] = iCtrl[i] & 0xFE;       
        HD1650_sendControl(iCtrl[i], i);
    }
}

void HD1650_colonOn(void)
{
    HD1650_sendControl((iCtrl[0] & 0xF7) | 0x08, 0);
}

void HD1650_colonOff(void)
{
    HD1650_sendControl(iCtrl[0] & 0xF7, 0);
}

void HD1650_setBrightness(uint8_t b)
{
    uint8_t i;
    if (b > 0x07) { b = 0x07; }

    for (i = 0; i < HD1650_NUM_DIGIT; i++) {
        iCtrl[i] = (iCtrl[i] & 0xFF) | (uint8_t)(b << 4);
        HD1650_sendControl(iCtrl[i], i);
    }
}

void HD1650_clearDisplay(void)
{
    uint8_t i;
    for (i = 0; i < HD1650_NUM_DIGIT; i++) {
        HD1650_sendDigit(0x00, i);
        iData[i] = 0x00;
    }
}

void HD1650_setDot(uint8_t pos, uint8_t onoff)
{
    uint8_t data;
    pos  = pos % HD1650_NUM_DIGIT;
    data = iData[pos];
    data = onoff ? (data | 0x80) : (data & 0x7F);
    iData[pos] = data;
    HD1650_sendDigit(data, pos);
}

void HD1650_writeString(const char *str)
{
    uint8_t pos;
    uint8_t len = basic_strlen(str);
    
    for (pos = 0; pos < 4; pos++) {
        uint8_t seg_code;
        uint8_t seg_idx;
        
        if (pos < len) {
            seg_idx = HD1650_charToSeg(str[pos]);
            seg_code = hd1650_Digit_Table[seg_idx];
        } else {
            seg_idx = 0x10;
            seg_code = hd1650_Digit_Table[0x10];
        }
        
        HD1650_sendDigit(seg_code, 3 - pos);
        iData[3 - pos] = seg_idx;
    }
}


void HD1650_writeNumber(uint16_t num, uint8_t zeroFill)
{
    uint16_t onum = num;
    uint8_t  digit;

    digit = (uint8_t)(num % 10u);
    HD1650_sendDigit(hd1650_Digit_Table[digit], 0);  
    iData[0] = digit;                                  
    num /= 10u;

    digit = (uint8_t)(num % 10u);
    if (!zeroFill && onum < 10u && digit == 0u) {
        HD1650_sendDigit(hd1650_Digit_Table[0x10], 1);
    } else {
        HD1650_sendDigit(hd1650_Digit_Table[digit], 1);
    }
    iData[1] = digit;
    num /= 10u;

    digit = (uint8_t)(num % 10u);
    if (!zeroFill && onum < 100u && digit == 0u) {
        HD1650_sendDigit(hd1650_Digit_Table[0x10], 2);
    } else {
        HD1650_sendDigit(hd1650_Digit_Table[digit], 2);
    }
    iData[2] = digit;
    num /= 10u;

    digit = (uint8_t)(num % 10u);
    if (!zeroFill && onum < 1000u && digit == 0u) {
        HD1650_sendDigit(hd1650_Digit_Table[0x10], 3);
    } else {
        HD1650_sendDigit(hd1650_Digit_Table[digit], 3);
    }
    iData[3] = digit;
}

void HD1650_writeNum(uint16_t num)
{
    HD1650_writeNumber(num, (uint8_t)HD1650_ZERO_PREFIX);
}

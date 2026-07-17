#include "hd1650.h"
#include "stm8s.h"
#include "stm8s_it.h"
#include "stm8s_delay.h"

/*
 *  IR_test_code for stm8, snippet form for now, spi read logic works great, can be used in something else
 *	V 1.0.0 - cant really fit on chips tiny flash, needs rewriting via bare metal register handling
 *  tested on stm8s903k3t6c chip variant
 *  Created on: 17. 7. 2026
 *  Author: Adam Fucik
 *  
 */

#define MAGIC_MARKER 0xBABAB01 //marker for spi flash - marks start of each ir pulse train with other info, needs to match in comverter and also format as hexspeak
#define TRIM_US 20000 //trims code for decode/send because repeats create errors
//HW spi CS own pin
#define FLASH_CS_PORT   GPIOB
#define FLASH_CS_PIN    GPIO_PIN_4      // chip select

//joystick pins (left shifted tactile sw)
#define JS_LEFT   GPIOD, GPIO_PIN_4
#define JS_DOWN   GPIOD, GPIO_PIN_6
#define JS_RIGHT  GPIOD, GPIO_PIN_7
#define JS_UP 	  GPIOB, GPIO_PIN_2
#define JS_OK     GPIOB, GPIO_PIN_1
//spi address locations
typedef struct {
    const char *name;
    uint32_t    start_addr;
    uint32_t    end_addr;
} ButtonFunc_t;

typedef struct {
    const char      *name;
    const ButtonFunc_t *functions;
    uint8_t          func_count;
} Device_t;
//names converted to fit 4 digit format
static const ButtonFunc_t funcs_tv[] = {
    { "Power", 0x00000000, 0x0000B65C },
    { "Vol_up", 0x0000B65C, 0x0000F034 },
    { "Vol_dn", 0x0000F034, 0x00012CD0 },
    { "Ch_next", 0x00012CD0, 0x0001642C },
    { "Ch_prev", 0x0001642C, 0x00019C74 },
    { "Mute", 0x00019C74, 0x0001D3C8 },
};

static const ButtonFunc_t funcs_projectors[] = {
    { "Power", 0x0001D3C8, 0x0002383E },
    { "Vol_up", 0x0002383E, 0x00025696 },
    { "Vol_dn", 0x00025696, 0x00027234 },
    { "Mute", 0x00027234, 0x00028CBA },
    { "Pause", 0x00028CBA, 0x0002924E },
    { "Play", 0x0002924E, 0x000297E2 },
};

static const ButtonFunc_t funcs_ac[] = {
    { "Off", 0x000297E2, 0x000396C0 },
    { "Dh", 0x000396C0, 0x0003E942 },
    { "Cool_hi", 0x0003E942, 0x00043322 },
    { "Cool_lo", 0x00043322, 0x0004814A },
    { "Heat_hi", 0x0004814A, 0x0004C420 },
    { "Heat_lo", 0x0004C420, 0x000505DC },
};

static const ButtonFunc_t funcs_audio[] = {
    { "Power", 0x000505DC, 0x000578B0 },
    { "Mute", 0x000578B0, 0x0005C79C },
    { "Vol_up", 0x0005C79C, 0x00062570 },
    { "Vol_dn", 0x00062570, 0x00068204 },
    { "Prev", 0x00068204, 0x0006BA1A },
    { "Next", 0x0006BA1A, 0x0006F508 },
    { "Pause", 0x0006F508, 0x0007481C },
    { "Play", 0x0007481C, 0x00078784 },
};

static const Device_t device_list[] = {
    { "tv", funcs_tv, 6 },
    { "audio", funcs_audio, 8 },
    { "projectors", funcs_projectors, 6 },
    { "ac", funcs_ac, 6 },
};

#define NUM_DEVICES  4
//more precise for ir tx
void tx_delay_us(uint16_t us) {
    uint16_t start = TIM5_GetCounter();
    uint16_t ticks = us;
    while ((uint16_t)(TIM5_GetCounter() - start) < ticks);
}
// simple protocol decoder
typedef struct {
    uint16_t frequency;
    const char *name;
} detect_result_t;

detect_result_t SimpleProtocol(const uint16_t *pulses, uint16_t count) {//simple protocol name analysis - returns 4 segment name and frequency
    detect_result_t result = {38000, "----"};//unknown
    
    if (count < 2) return result;
    
    uint16_t h1 = pulses[0];   // first mark
    uint16_t h2 = pulses[1];   // first space
		//all timings are approximate, but should be enough
		
    //Pioneer
    if (h1 > 7800 && h1 < 8700 && h2 > 3800 && h2 < 4600) {
        result.frequency = 40000;
        result.name = "PION";
        return result;
    }
		
    //NEC family (cant decode ext variants)
    if (h1 > 8700 && h1 < 10000 && h2 > 4000 && h2 < 5000) {
        if (count < 70) {
            result.name = "NEC";
        } 
        else {
            result.name = "NE42";
        }
        result.frequency = 38000;
        return result;
    }
	
    //Samsung32
    if (h1 > 4000 && h1 < 5000 && h2 > 4000 && h2 < 5000) {
        result.frequency = 38000;
        result.name = "SANS";//m impossible - probably megalovania reference
        return result;
    }
    
    
    //Kaseikyo
    if (h1 > 3100 && h1 < 3800 && h2 > 1550 && h2 < 1900) {
        result.frequency = 37000;
        result.name = "CASE";//impossible to display k
        return result;
    }
    
    //Sony SIRC family
    if (h1 > 2000 && h1 < 2800 && h2 > 500 && h2 < 700) {
    if (count < 27) {
        result.name = "SI12";
    } else if (count < 33) {
        result.name = "SI15";
    } else {
        result.name = "SI20";
    }
    result.frequency = 40000;
    return result;
		}
    
    //RC6
    if (h1 > 2400 && h1 < 2900 && h2 > 800 && h2 < 1000) {
        result.frequency = 36000;
        result.name = "RC6";
        return result;
    }
    
    //RCA
    if (h1 > 3500 && h1 < 4500 && h2 > 3500 && h2 < 4500) {
        result.frequency = 56000;
        result.name = "RCA";
        return result;
    }
    
    //RC5
    if (h1 > 700 && h1 < 1100 && h2 > 700 && h2 < 1100) {//needs manchester decoder for full distinguish between rc5/rc5x, not doing that here
				result.name = "RC5";
        result.frequency = 36000;
        return result;
    }
    return result;
		
}

//macros for buttons, 
#define JS_Right(...){ \
    if (GPIO_ReadInputPin(JS_RIGHT) == RESET) { \
        delay_ms(500); \
        __VA_ARGS__;\
    } \
}
#define JS_Left(...){ \
    if (GPIO_ReadInputPin(JS_LEFT) == RESET) { \
        delay_ms(800); \
        __VA_ARGS__; \
    } \
}
#define JS_Down(...){ \
    if (GPIO_ReadInputPin(JS_DOWN) == RESET) { \
        delay_ms(800); \
        __VA_ARGS__;\
    } \
}
#define JS_Up(...){ \
    if (GPIO_ReadInputPin(JS_UP) == RESET) { \
        delay_ms(800); \
        __VA_ARGS__; \
    } \
}
#define JS_Ok(...){ \
    if (GPIO_ReadInputPin(JS_OK) == RESET) { \
        delay_ms(800); \
        __VA_ARGS__; \
    } \
}
//vars
volatile uint8_t pulse_count;
volatile uint8_t col=0;
volatile uint8_t capture_done;
volatile uint8_t first_edge = 0;      // reset to 1 at start of capture
volatile uint16_t pulses[MAX_PULSES];
volatile uint8_t dly_count;
//simple_dec_t SimpleDecode(const uint16_t *pulses, uint16_t count);
void clock_setup(void);
void EXTI_setup(void);
void TIM5_setup(void);
void tim_cleanup(void);
void TIM1_setup(void);
void JS_init(void);
void spi_init(void);
void spi_cleanup(void);
void ReceiveIR(void);
void SendIR(const uint16_t *data, uint8_t count,
                         uint16_t freq_hz);
void SPI_Flash_Read(uint32_t address, uint8_t *buffer, uint16_t length);
void SendCodeAt(uint32_t addr);
uint32_t FindNextCode(uint32_t addr, uint32_t end_addr);
void Run_Brute(const ButtonFunc_t *func);

void TV_brute(void);
void Projector_brute(void);
void AC_brute(void);
void Audio_brute(void);

uint32_t FindNextCode(uint32_t addr, uint32_t end_addr) {
    while (addr < end_addr - 8) {
        uint8_t marker[4];
        SPI_Flash_Read(addr, marker, 4);
        uint32_t val = (uint32_t)marker[0] | ((uint32_t)marker[1] << 8) |
                       ((uint32_t)marker[2] << 16) | ((uint32_t)marker[3] << 24);
        if (val == MAGIC_MARKER) {
            return addr + 4;   // return address of the header (right after marker)
        }
        addr += 2;   // scan in 2-byte steps (or 4 for speed)
    }
    return 0xFFFFFFFF;   // not found
}
void Run_Brute(const ButtonFunc_t *func) {
		HD1650_clearDisplay();
		spi_init();
    uint32_t addr = FindNextCode(func->start_addr, func->end_addr);
    //if (addr == 0xFFFFFFFF) return;   // no codes
    uint16_t code_num = 1;
    while (1) {//to end addr
						HD1650_writeNumber(code_num, 0);
						JS_Left(spi_cleanup();break);//exit
            SendCodeAt(addr);
            addr = FindNextCode(addr + 4, func->end_addr);  // find next marker
            if (addr >= func->end_addr) {
                addr = FindNextCode(func->start_addr, func->end_addr);  // wrap
                code_num = 1;
            } else {
                code_num++;
            }
						
    }
}
		
void SendCodeAt(uint32_t header_addr) {
    uint8_t hdr[4];
		uint8_t i;
    SPI_Flash_Read(header_addr, hdr, 4);
    uint16_t freq = (hdr[0] | (hdr[1] << 8));
    uint16_t pc   = (hdr[2] | (hdr[3] << 8));
		
    if (freq < 30000 || freq > 60000) freq = 38000;//validate just to be safe
    header_addr += 4;   // skip header, now points to pulse data
    for (i = 0; i < MAX_PULSES; i++) {//cap at max pulses (most ir codes fit)
        uint8_t p[2];
        SPI_Flash_Read(header_addr + i * 2, p, 2);
        pulses[i] = (p[0] | (p[1] << 8));
    }
		delay_ms(180);
    SendIR(pulses, pc, freq);
}

static uint8_t spi_transfer(uint8_t data_out) {
    while (!SPI_GetFlagStatus(SPI_FLAG_TXE)) { }
    SPI_SendData(data_out);
    while (!SPI_GetFlagStatus(SPI_FLAG_RXNE)) { }
    return SPI_ReceiveData();
}

void SPI_Flash_Read(uint32_t address, uint8_t *buffer, uint16_t length) {
    GPIO_WriteLow(FLASH_CS_PORT, FLASH_CS_PIN);
    spi_transfer(0x03);
    spi_transfer((uint8_t)(address >> 16));
    spi_transfer((uint8_t)(address >> 8));
    spi_transfer((uint8_t)(address));
    
    while (length--) {
        *buffer++ = spi_transfer(0xFF);
    }
    GPIO_WriteHigh(FLASH_CS_PORT, FLASH_CS_PIN);
}

void spi_init(void) {
    // GPIO setup
    GPIO_Init(GPIOC, GPIO_PIN_5, GPIO_MODE_OUT_PP_HIGH_FAST);   // SCK
    GPIO_Init(GPIOC, GPIO_PIN_6, GPIO_MODE_OUT_PP_HIGH_FAST);   // MOSI
    GPIO_Init(GPIOC, GPIO_PIN_7, GPIO_MODE_IN_PU_NO_IT);        // MISO
    GPIO_Init(FLASH_CS_PORT, FLASH_CS_PIN, GPIO_MODE_OUT_PP_HIGH_FAST);//your own, dont forget pullup

    SPI_DeInit();
    SPI_Init(SPI_FIRSTBIT_MSB,
             SPI_BAUDRATEPRESCALER_2,//8 MHz
             SPI_MODE_MASTER,
             SPI_CLOCKPOLARITY_LOW,
             SPI_CLOCKPHASE_1EDGE,
             SPI_DATADIRECTION_2LINES_FULLDUPLEX,
             SPI_NSS_SOFT,
             0x07);
    SPI_Cmd(ENABLE);
}

void main(void)
{
    clock_setup();
		HD1650_init();
		HD1650_displayOn();
		HD1650_clearDisplay();//prevent shit on screen
		JS_init();
		delay_ms(10); 
		while (1) {
			HD1650_writeString("MENU");
			  //JS_Right(ReceiveIR());//ir repeater/decoder mode
				
				JS_Up(Projector_brute());
				JS_Down(AC_brute());
				//JS_Left(Audio_brute());
				JS_Right(TV_brute());
				
    }
		
}
//very dirty, I only used this for testing
void TV_brute(void){
	while(1){
	JS_Up(uint8_t func_idx=0, dev_idx=0;HD1650_writeString("POWR");delay_ms(1000);Run_Brute(&device_list[dev_idx].functions[func_idx]));
	JS_Down(uint8_t func_idx=1, dev_idx=0;HD1650_writeString("VOLU");delay_ms(1000);Run_Brute(&device_list[dev_idx].functions[func_idx]));
	JS_Ok(uint8_t func_idx=2, dev_idx=0;HD1650_writeString("VOLD");delay_ms(1000);Run_Brute(&device_list[dev_idx].functions[func_idx]));
	JS_Right(uint8_t func_idx=4, dev_idx=0;HD1650_writeString("MUTE");delay_ms(1000);Run_Brute(&device_list[dev_idx].functions[func_idx]));
	JS_Left(break);
	HD1650_writeString("TV");
}
}
void Projector_brute(void){
	while(1){
	JS_Up(uint8_t func_idx=0, dev_idx=1;HD1650_writeString("POWR");delay_ms(1000);Run_Brute(&device_list[dev_idx].functions[func_idx]));
	JS_Down(uint8_t func_idx=1, dev_idx=1;HD1650_writeString("VOLU");delay_ms(1000);Run_Brute(&device_list[dev_idx].functions[func_idx]));
	JS_Ok(uint8_t func_idx=2, dev_idx=1;HD1650_writeString("VOLD");delay_ms(1000);Run_Brute(&device_list[dev_idx].functions[func_idx]));
	JS_Right(uint8_t func_idx=5, dev_idx=1;HD1650_writeString("PLAY");delay_ms(1000);Run_Brute(&device_list[dev_idx].functions[func_idx]));
	JS_Left(break);
	HD1650_writeString("PROJ");
}
}
void AC_brute(void){
	while(1){
	JS_Up(uint8_t func_idx=0, dev_idx=2;HD1650_writeString("OFF");delay_ms(1000);Run_Brute(&device_list[dev_idx].functions[func_idx]));
	//JS_Down(uint8_t func_idx=1, dev_idx=2;HD1650_writeString("DH");delay_ms(1000);Run_Brute(&device_list[dev_idx].functions[func_idx]));
	JS_Ok(uint8_t func_idx=2, dev_idx=2;HD1650_writeString("COLH");delay_ms(1000);Run_Brute(&device_list[dev_idx].functions[func_idx]));
	JS_Right(uint8_t func_idx=4, dev_idx=2;HD1650_writeString("HEHI");delay_ms(1000);Run_Brute(&device_list[dev_idx].functions[func_idx]));
	JS_Left(break);
	HD1650_writeString("AC");
}
}


void Audio_brute(void){
	while(1){
	JS_Up(uint8_t func_idx=0, dev_idx=3;HD1650_writeString("POWR");Run_Brute(&device_list[dev_idx].functions[func_idx]));
	JS_Down(uint8_t func_idx=1, dev_idx=3;HD1650_writeString("MUTE");Run_Brute(&device_list[dev_idx].functions[func_idx]));
	JS_Left(uint8_t func_idx=6, dev_idx=3;HD1650_writeString("PAUS");Run_Brute(&device_list[dev_idx].functions[func_idx]));
	JS_Right(uint8_t func_idx=7, dev_idx=3;HD1650_writeString("PLAY");Run_Brute(&device_list[dev_idx].functions[func_idx]));
	JS_Left(HD1650_writeString("MENU");break);
}
}

void ReceiveIR(void)
{
    uint8_t restart_capture;   // local, controls the outer loop
    uint8_t capture_abort;     // local, for user abort during capture
    do {
        restart_capture = 0;
        capture_abort = 0;
        first_edge = 1;
        pulse_count = 0;
        capture_done = 0;
        dly_count = 0;
				HD1650_clearDisplay();
				HD1650_writeString("VAIT");
				HD1650_colonOn();
        EXTI_setup();
				TIM5_setup();//timer edges
        TIM5_ITConfig(TIM5_IT_UPDATE, ENABLE);//enable interrupts just for this
        TIM5_SetCounter(0);
				
        enableInterrupts();
        while (first_edge && !capture_abort) {
				JS_Left(tim_cleanup();HD1650_colonOff();break);
				}
				if (capture_abort) {
						tim_cleanup();
						HD1650_colonOff();
					  break;
					}
				while (!capture_done) {
					  if (col){
							 HD1650_colonOff();
						 }
						if (dly_count>2) {  // 130 ms end
								capture_done = 1;
						}
					}
				tim_cleanup();              //stop timer
				EXTI_DeInit();
				ITC_DeInit();
        HD1650_colonOn(); //captured code success
				delay_ms(500);
				HD1650_colonOff();
				//approx protocol 
				uint16_t valid_count = pulse_count - 1;
				uint16_t i;
				for (i = 0; i < valid_count; i++) {
							if ((i & 1) && pulses[i] > TRIM_US) {   // odd index = space, > 10 ms gap
									valid_count = i;   // cut here, keep only first frame
									break;
							}
				}
        detect_result_t detected = SimpleProtocol(pulses, valid_count);
				HD1650_writeString(detected.name);//print detected result on screen
				
        while (1) {
            JS_Left(break);
						JS_Right(restart_capture = 1; break);//reset capture
            JS_Up(SendIR(pulses, valid_count, detected.frequency));
        }
    } while (restart_capture);
}

void SendIR(const uint16_t *data, uint8_t count,
            uint16_t freq_hz)
{
		HD1650_colonOn(); //indicate end of pulse train
	  uint16_t i;
    uint8_t level = 1;      // start with mark
    uint16_t period = (F_CPU / freq_hz) - 1;   // 16 MHz / freq
		TIM5_setup();
    TIM1_DeInit();
		TIM1_Cmd(ENABLE);
    TIM1_TimeBaseInit(0, TIM1_COUNTERMODE_UP, period, 0);
    uint16_t cmp = (uint16_t)((uint32_t)period * 33 / 100);//almost always 33 percent

    TIM1_OC1Init(TIM1_OCMODE_PWM1,            
                 TIM1_OUTPUTSTATE_ENABLE,
                 TIM1_OUTPUTNSTATE_DISABLE,      
                 cmp,                            
                 TIM1_OCPOLARITY_HIGH,            
                 TIM1_OCNPOLARITY_HIGH,
                 TIM1_OCIDLESTATE_RESET, 
                 TIM1_OCNIDLESTATE_RESET);

    TIM1_CtrlPWMOutputs(DISABLE);
     
    for (i = 0; i < count; i++) {
        uint16_t dur = data[i];
        if (level)
            TIM1_CtrlPWMOutputs(ENABLE);   // mark
        else
            TIM1_CtrlPWMOutputs(DISABLE);  // space		
        tx_delay_us(dur);
				level ^= 1;				
    }
    TIM1_CtrlPWMOutputs(DISABLE);
    TIM1_Cmd(DISABLE);
		tim_cleanup();
		HD1650_colonOff(); 
}

void tim_cleanup(void){//default state
	disableInterrupts();
	TIM5_ITConfig(TIM5_IT_UPDATE, DISABLE);
	TIM5_Cmd(DISABLE);
	TIM5_SetCounter(0);//just to be sure
	TIM5_DeInit(); 
}
void spi_cleanup(void){//default state
  SPI_DeInit();
	SPI_Cmd(DISABLE);
}
void JS_init(void)
{
    GPIO_Init(JS_RIGHT, GPIO_MODE_IN_PU_NO_IT);
    GPIO_Init(JS_LEFT,  GPIO_MODE_IN_PU_NO_IT);
    GPIO_Init(JS_DOWN,  GPIO_MODE_IN_PU_NO_IT);
		GPIO_Init(JS_UP,  GPIO_MODE_IN_PU_NO_IT);
		GPIO_Init(JS_OK,  GPIO_MODE_IN_PU_NO_IT);
}

void EXTI_setup(void)//edge detector
{
	GPIO_Init(GPIOD, GPIO_PIN_3, GPIO_MODE_IN_PU_IT); //using pd3 for exti
	ITC_DeInit();
	ITC_SetSoftwarePriority(ITC_IRQ_PORTD, ITC_PRIORITYLEVEL_0);
	EXTI_DeInit();
	EXTI_SetExtIntSensitivity(EXTI_PORT_GPIOD, EXTI_SENSITIVITY_RISE_FALL);
}
void TIM5_setup(void)//for counting between edges and dly
{
	TIM5_DeInit(); 
	TIM5_TimeBaseInit(TIM5_PRESCALER_16, 0xFFFF);//1 uS, full 16 bit to avoid losing any duration
	TIM5_ITConfig(TIM5_IT_UPDATE, DISABLE);
	TIM5_Cmd(ENABLE);
}    
void clock_setup(void)
	{
		//setup clock for 16 MHz
	CLK_DeInit();
	CLK_SYSCLKConfig(CLK_PRESCALER_CPUDIV1);
	CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);
	CLK_HSECmd(DISABLE);
	CLK_LSICmd(DISABLE);
	CLK_HSICmd(ENABLE);
	CLK_ClockSwitchCmd(ENABLE);
	while (CLK_GetFlagStatus(CLK_FLAG_HSIRDY) == FALSE);
	CLK_ClockSwitchConfig(CLK_SWITCHMODE_AUTO, CLK_SOURCE_HSI,
                          DISABLE, CLK_CURRENTCLOCKSTATE_ENABLE);
	CLK_PeripheralClockConfig(CLK_PERIPHERAL_SPI, ENABLE);//for reading from spi chip
	CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER1, ENABLE);//for pwm
	CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER5, ENABLE);//for running timers
  }

#ifdef USE_FULL_ASSERT

/**
  * @brief  Reports the name of the source file and the source line number
  *   where the assert_param error has occurred.
  * @param file: pointer to the source file name
  * @param line: assert_param error line source number
  * @retval : None
  */
void assert_failed(u8* file, u32 line)
{ 
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */

  /* Infinite loop */
  while (1)
  {
  }
}
#endif

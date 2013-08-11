//***Lcd.h***
#define LCD_RS	RD2					//Register select; pin RD2
#define LCD_E	RD3					//Enable; pin RD3
#define LED_0	RC3					//To indicate if a digital input is active (active low)

#ifndef _XTAL_FREQ					//Initialize delay calls; __delay_ms(x) & __delay_us(x)
#define _XTAL_FREQ 32000000			//Oscillator frequency 32 Mhz
#endif

void initialize_LCD ();
void command_LCD (unsigned char);
void second_Line ();
void clear_LCD ();
void shift (int);
void character_LCD (const char *);
void toggle_E();
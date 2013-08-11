//***Main.c***
#include <htc.h>
#include "Lcd.h"

void main(void)
{
    ANSELD = 0x00;  		//Set PORTD to digital I/O
    TRISD = 0x00;   		//Set RD0 input RD2-RD7 output
	ANSELB = 0x00;  		//Set portB to digital I/O
	TRISB = 0xFF;			//PORTB digital input
    TRISC = 0x00;   		//Set PORTC output

	LED_0 = 0;

	initialize_LCD();

	character_LCD ("REII 321");
	
	__delay_ms(1000);

	second_Line();

	character_LCD ("21492204 & 21807965");

	while(1)
	{
	if(RB0 == 1)
	{
	shift(0);				//Shift screen right
	}

	if(RB1 == 1)
	{
	shift(2);				//Shift cursor left
	}

	if(RB2 == 1)
	clear_LCD();

	if(RB6 == 1)
	{
	shift(3);				//Shift cursor right
	}

	if(RB7 == 1)
	{
	shift(1);				//Shift screen left
	}

	LED_0 = 1;				//Command indicator LED
	}
}




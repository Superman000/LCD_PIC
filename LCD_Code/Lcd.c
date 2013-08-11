//***Lcd.c***
#include <htc.h>
#include "Lcd.h"

	void initialize_LCD ()
	{
	LCD_RS = 0;								//Write control bytes
	
	toggle_E();	
	__delay_ms(10);
	
	command_LCD (0x28);						//Function Set: 2 line display, 4-bit
	command_LCD (0x0E);						//Display on, cursor ON
	command_LCD (0x06);						//Entry mode enable advance cursor, shift screen right
	command_LCD (0x01);						//Clear display and reset cursor
	}

	void command_LCD (unsigned char b)
	{
	PORTC = b & 0xF0;						//Write first nibble, move, write second
	toggle_E();	
	PORTC = (b << 4) & 0xF0;
	toggle_E();
	__delay_ms(250);						//Typewriter effect when writing strings	
	}

	void clear_LCD ()
	{
	LCD_RS = 0;

	command_LCD (0x1);
	__delay_ms(2);
	}

	void second_Line ()
	{
	LCD_RS = 0;								//Write control bytes
	command_LCD (0xC0);						//Moves cursor to first place on the second line
	}

	void shift(int command)
	{
		LCD_RS = 0;

		switch(command)
		{
			case 0:								
			command_LCD (0x1C);
			break;
			
			case 1:								
			command_LCD (0x1B);
			break;

			case 2:								
			command_LCD (0x10);
			break;

			case 3:								
			command_LCD (0x14);
			break;
		}
	}

	void character_LCD (const char *c)		//Write characters
	{
	LCD_RS = 1;				

	while(*c) 
	command_LCD (*c++);
	}

	void toggle_E()
	{
	LCD_E = 1;
	__delay_us(1);
	LCD_E = 0;
	}
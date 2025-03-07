#include "lcd1602.h"

//Note the working voltage of LCD display is 5V, need to power the display using 5V voltage
//Same for the back light

void LCD_regInit()
{
    DDRB |= 0xFF;
    DDRD |= 0xE0;
}

void LCD_writeCommand(uint8_t command)
{
    //write Command function
    //RS = 0; RW = 0
    //Set DATA port = command
    //LCD enable
    LCD_CONTROL &= ~(1 << LCD_RS);
    LCD_CONTROL &= ~(1 << LCD_RW);
    LCD_DATAIN |= command;
    LCD_CONTROL |= (1 << LCD_E);
    _delay_ms(1);
    LCD_CONTROL &= ~(1 << LCD_E);
    _delay_ms(1);
    LCD_DATAIN &= 0x00;
    LCD_CONTROL &= ~(0xE0);
}

void LCD_writeData(uint8_t data)
{
    //write Data command
    //Rs = 1; RW = 0
    //Set data port = data
    //LCD enable
    LCD_CONTROL |= (1 << LCD_RS);
    LCD_CONTROL &= ~(1 << LCD_RW);
    LCD_DATAIN |= data;
    LCD_CONTROL |= (1 << LCD_E);
    _delay_ms(1);
    LCD_CONTROL &= ~(1 << LCD_E);
    _delay_ms(1);
    LCD_DATAIN &= 0x00;
    LCD_CONTROL &= ~(0xE0);
}

void LCD_Init()
{
    //0x38 -> 2lines
    //0x0c -> turn on display
    //0x06
    //0x01 -> clear screen
    LCD_writeCommand(0x38);
    LCD_writeCommand(0x0C);
    LCD_writeCommand(0x06);
    LCD_writeCommand(0x01);
}

void LCD_setCursor(uint8_t Line,uint8_t Column)
{
	if(Line==1)
	{
		LCD_writeCommand(0x80 | (Column-1));
	}
	else if(Line==2)
	{
		LCD_writeCommand(0x80 | (Column-1 + 0x40));
	}
}

void LCD_showChar(uint8_t Line, uint8_t Column, uint8_t Char)
{
	LCD_setCursor(Line,Column);
	LCD_writeData(Char);
}

void LCD_showString(uint8_t Line, uint8_t Column, char* str)
{
     uint8_t i = 0;
    LCD_setCursor(Line, Column);
    while (str[i] != '\0'){
        LCD_writeData(str[i]);
        i++;
    }
}

int LCD_pow(uint8_t x, uint8_t y)
{
    uint8_t i;
    int result;
    for (i = 0; i < y; i++){
        result *= x;
    }
    return result;
}

void LCD_showNum(uint8_t Line, uint8_t Column, uint32_t Num, uint8_t NumLength)
{
    uint8_t i;
    LCD_setCursor(Line, Column);
    for (i = NumLength; i > 0; i--){
        LCD_writeData(Num / LCD_pow(10, i - 1) % 10 + '0');
    }
}
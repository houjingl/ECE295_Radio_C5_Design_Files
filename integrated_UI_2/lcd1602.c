#include "lcd1602.h"

//Note the working voltage of LCD display is 5V, need to power the display using 5V voltage
//Same for the back light

void LCD_regInit()
{
    //set to 1 -> output
    DDRB |= 0xFF;
    DDRD |= 0xE0;
}

void LCD_writeCommand(unsigned char command)
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

void LCD_writeData(unsigned char data)
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

void LCD_Clear_screen()
{
    LCD_writeCommand(0x01);
}

//Line from 1-2, Column from 1 - 16
void LCD_setCursor(unsigned char Line,unsigned char Column)
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

void LCD_showChar(unsigned char Line, unsigned char Column, unsigned char Char)
{
	LCD_setCursor(Line, Column);
	LCD_writeData(Char);
}

void LCD_showString(unsigned char Line, unsigned char Column, char* str)
{
     unsigned char i = 0;
    LCD_setCursor(Line, Column);
    while (str[i] != '\0'){
        LCD_writeData(str[i]);
        i++;
    }
}

unsigned int LCD_pow(unsigned char x, unsigned char y)
{
    unsigned char i = 0;
    unsigned int result = 0;
    while (i < y){
        result = result * x;
        i ++;
    }
    return result;
}

void LCD_showNum(unsigned char Line, unsigned char Column, unsigned int Num, unsigned char NumLength)
{
    unsigned char i = NumLength;
    LCD_setCursor(Line, Column);
    while(i > 0){
        unsigned char asicIncrement = 0;
        volatile unsigned int denom = pow(10, i - 1);
        asicIncrement = Num / denom % 10;
        LCD_writeData(asicIncrement + '0');
        i --;
    }
}

void LCD_showString_clear_delay_1s(unsigned char Line, unsigned char Column, char* str)
{
    LCD_showString(Line, Column, str);
    _delay_ms(2000);
    LCD_Clear_screen();
}
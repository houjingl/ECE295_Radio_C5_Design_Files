#ifndef ______LCD1602______
#define ______LCD1602______

#include <util/delay.h>
#include <avr/io.h>
#include <stdint.h>
#include <stdbool.h>
#include <math.h>

#define LCD_RS              PORTD7
#define LCD_RW              PORTD6
#define LCD_E               PORTD5

#define LCD_DATAIN          PORTB
#define LCD_CONTROL         PORTD

void LCD_writeCommand(unsigned char command);
void LCD_regInit();
void LCD_writeData(unsigned char data);
void LCD_Init();
void LCD_setCursor(unsigned char Line,unsigned char Column);
void LCD_showChar(unsigned char Line, unsigned char Column, unsigned char Char);
void LCD_showString(unsigned char Line, unsigned char Column, char* str);
void LCD_showNum(unsigned char Line, unsigned char Column, unsigned int Num, unsigned char NumLength);



#endif
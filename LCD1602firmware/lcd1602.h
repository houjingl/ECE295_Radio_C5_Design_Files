#ifndef ______LCD1602______
#define ______LCD1602______

#include <util/delay.h>
#include <avr/io.h>
#include <stdint.h>
#include <stdbool.h>

#define LCD_RS              PORTD5
#define LCD_RW              PORTD6
#define LCD_E               PORTD7

#define LCD_DATAIN          PORTB
#define LCD_CONTROL         PORTD

void LCD_writeCommand(uint8_t command);
void LCD_regInit();
void LCD_writeData(uint8_t data);
void LCD_Init();
void LCD_setCursor(uint8_t Line,uint8_t Column);
void LCD_showChar(uint8_t Line, uint8_t Column, uint8_t Char);
void LCD_showString(uint8_t Line, uint8_t Column, char* str);
void LCD_showNum(uint8_t Line, uint8_t Column, uint32_t Num, uint8_t NumLength);



#endif
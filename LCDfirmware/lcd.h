#ifndef ____LCD____
#define ____LCD____
/*
SA = 0x3C
I. Initialization example
Command             Hex Remark
Function Set        $3A 8 bit data length extension Bit RE=1; REV=0
Extended function   $09 4 line display
Entry mode set      $06 bottom view
Bias setting        $1E BS1=1
Function Set        $39 8 bit data length extension Bit RE=0; IS=1
Internal OSC        $1B BS0=1 -> Bias=1/6
Follower control    $6E Devider on and set value
Power control       $56 Booster on and set contrast (DB1=C5, DB0=C4)
Contrast Set        $7A Set contrast (DB3-DB0=C3-C0)
Function Set        $38 8 bit data length extension Bit RE=0; IS=0
Display On          $0F Display on, cursor on, blink on
*/

#include "twi.h"
#include <util/delay.h>
#define LCD_ADDR_write          0x78
#define LCD_ADDR_read           0x79
#define LCD_RST                 PB0

void lcd_i2C_write_commend(byte data);
void lcd_i2c_write_data(byte data);
void lcd_reset();
void lcd_clear();
void lcd_init();
void lcd_test();


#endif

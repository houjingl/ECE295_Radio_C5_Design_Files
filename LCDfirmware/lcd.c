/*
The source code of LCD display
TEAM: C5
Author: Jingling Hou
Reference:  EA DOGS104-A LCD spec
            SSD1803A spec
*/

/*
Rules of using LCD:
1. SA0 -> low : SA = 0x3C + R/W (read = 0, write = 1)
2. LCD comes with an internal pull up res
I. Initialization table
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

I2C control Byte: Co D/C# 0 0 0 0 0 0
D/C# = 1 -> write to RAM -> data
D/C# = 0 -> commend
Co -> continuation -> set to 0
*/
#include "lcd.h"

void lcd_i2C_write_command(byte data)
{   
    //start I2C communication
    twi_start();
    //Activate Slave for write operation
    twi_MT_SLA_W(LCD_ADDR_write);
    twi_MT_write(0x00); //Control byte: set RS to 0 for SSD1803A
    twi_MT_write(data);
    twi_stop();
}

void lcd_i2c_write_data(byte data)
{
    //start I2C communication
    twi_start();
    //Activate Slave for write operation
    twi_MT_SLA_W(LCD_ADDR_write);
    twi_MT_write(0x40); //Control byte: set RS to 1 
    twi_MT_write(data);
    twi_stop();
}


void lcd_reset()
{
    PORTB &= ~(1 << LCD_RST); //set PB0 to 0
    _delay_ms(10);
    PORTB |= (1 << LCD_RST); //Drive PB0 back to 1
    _delay_ms(10); //Debouncing
}

void lcd_clear()
{
    lcd_i2C_write_command(0x01); //software reset
}

void lcd_cursor_reset()
{
    lcd_i2C_write_command(0x02);
}

void lcd_init()
{
    _delay_ms(50);

    lcd_i2C_write_command(0x3A); //8 bit data length
    lcd_i2C_write_command(0x09);
    lcd_i2C_write_command(0x06);
    lcd_i2C_write_command(0x1E);
    lcd_i2C_write_command(0x39);
    lcd_i2C_write_command(0x1b);
    lcd_i2C_write_command(0x6E);
    lcd_i2C_write_command(0x57);
    lcd_i2C_write_command(0x7a);
    lcd_i2C_write_command(0x38);
    lcd_i2C_write_command(0x0F);
    lcd_i2C_write_command(0x01);//set cursor back to initial position
}

void lcd_set_cursor(byte row, byte col)
{
    byte cursorloc;
    if (row == 1){
        cursorloc = 0x80;
    } else if(row == 2){
        cursorloc = 0xA0;
    } else if(row == 3){
        cursorloc = 0xC0;
    } else {
        cursorloc = 0xE0;
    }

    cursorloc |= col - 1;

    lcd_i2c_write_data(cursorloc);
}

void lcd_test()
{
    //lcd_cursor_reset();
    lcd_i2C_write_command(0x80);
    char* str = "Hello!";
    uint8_t i = 0;
    while (str[i] != '\0'){
        lcd_i2c_write_data(str[i]);
        _delay_ms(20);
        //lcd_cursor_shift_right();
        i++;
    }
}
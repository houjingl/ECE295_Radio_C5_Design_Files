/*
 * File:   main.c
 * Author: Jerry
 *
 * Created on 2025/3/1, 2:09
 */


#include <avr/io.h>
#include "../lcd.h"
#include "../twi.h"

int main(void) {
    /* Replace with your application code */
    twi_init();
    lcd_init(); //0b11110000
    lcd_set_cursor(1, 1);
    lcd_test();
    
    while (1) {
    }
}

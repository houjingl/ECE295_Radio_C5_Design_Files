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
    lcd_init();
    lcd_clear();
    
    lcd_test();
    

    while (1) {
    }
}

/*
 * File:   main.c
 * Author: 18701
 *
 * Created on 2025?3?7?, ??3:01
 */


#include <avr/io.h>
#include "../lcd1602.h"

int main(void) {
    /* Replace with your application code */
    LCD_regInit();
    LCD_Init();
    
    char * string = "Frequency:";
    int frequency_Mhz = 30;
    char * MHz = "MHz";
    int freq_KHz = 3400;
    char * KHz = "KHz";
    char space = ' ';
    
        LCD_showString(1,1,string);
        LCD_showString(2, 4, MHz);
        LCD_showString(2, 12, KHz);
        LCD_showChar(2, 7, space);
        LCD_showNum(2,1, frequency_Mhz, 3);
        LCD_showNum(2,8, freq_KHz, 4);
    
    while (1) {

    }
}

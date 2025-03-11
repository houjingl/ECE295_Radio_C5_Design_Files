/*
 * File:   main.c
 * Author: 18701
 *
 * Created on 2025?3?7?, ??3:01
 */


#include <avr/io.h>
#include <avr/interrupt.h>
#include "lcd1602.h"
#include "rotary_encoder.h"
#include <stdint.h>
#include <stdbool.h>
#include <math.h>

volatile int16_t encoder1_count = 0; //Mhz
volatile int16_t encoder2_count = 0; //Khz
volatile uint8_t old_state_1 = 0;  // old state for encoder 1 (PA0,PA1)
volatile uint8_t old_state_2 = 0;  // old state for encoder 2 (PA2,PA3)

int main(void) {
    
    //ALL INIT SECTION
    //LCD
    LCD_regInit();
    LCD_Init();
    char * string = "Frequency:";
    char * MHz = "MHz";
    char * KHz = "KHz";
    char space = ' ';
            
    //ENCODER
    encoder_setup();
    encoder_init();
    ISR(PCINT0_vect);
    
    //BUTTON
    
    

    while (1) {
        LCD_showString(1,1,string);
        LCD_showString(2, 4, MHz);
        LCD_showString(2, 12, KHz);
        LCD_showChar(2, 7, space);
        LCD_showNum(2,1, encoder1_count, 3);
        LCD_showNum(2,8, encoder2_count, 4);
    }
}

//Interrupt for Encoder
ISR(PCINT0_vect) 
{
    // --- ENCODER 1 (PA0, PA1) --- Mhz
    uint8_t newA1 = (PINA & (1 << PA0)) ? 1 : 0;
    uint8_t newB1 = (PINA & (1 << PA1)) ? 1 : 0;
    uint8_t new_state_1 = (newA1 << 1) | newB1;

    // Compare old_state_1 -> new_state_1 for direction
    if ((old_state_1 == 0b00 && new_state_1 == 0b01))
    {
        // Encoder 1 CW
        encoder1_count++;
    }
    else if ((old_state_1 == 0b00 && new_state_1 == 0b10))
    {
        // Encoder 1 CCW
        encoder1_count--;
    }
    
    old_state_1 = new_state_1;

    // --- ENCODER 2 (PA2, PA3) --- Khz
    uint8_t newA2 = (PINA & (1 << PA2)) ? 1 : 0;
    uint8_t newB2 = (PINA & (1 << PA3)) ? 1 : 0;
    uint8_t new_state_2 = (newA2 << 1) | newB2;

    if ((old_state_2 == 0b00 && new_state_2 == 0b01) ||
        (old_state_2 == 0b01 && new_state_2 == 0b11) ||
        (old_state_2 == 0b11 && new_state_2 == 0b10) ||
        (old_state_2 == 0b10 && new_state_2 == 0b00))
    {
        // Encoder 2 CW
        encoder2_count++;
    }
        
    else if ((old_state_2 == 0b00 && new_state_2 == 0b10) ||
             (old_state_2 == 0b10 && new_state_2 == 0b11) ||
             (old_state_2 == 0b11 && new_state_2 == 0b01) ||
             (old_state_2 == 0b01 && new_state_2 == 0b00))
    {
        // Encoder 2 CCW
        encoder2_count--;
    }
    //更新state
    old_state_2 = new_state_2;
}

//set up encoder
void encoder_init(){
    uint8_t initA1 = (PINA & (1 << PA0)) ? 1 : 0;
    uint8_t initB1 = (PINA & (1 << PA1)) ? 1 : 0;
    old_state_1 = (initA1 << 1) | initB1;

    uint8_t initA2 = (PINA & (1 << PA2)) ? 1 : 0;
    uint8_t initB2 = (PINA & (1 << PA3)) ? 1 : 0;
    old_state_2 = (initA2 << 1) | initB2;
}

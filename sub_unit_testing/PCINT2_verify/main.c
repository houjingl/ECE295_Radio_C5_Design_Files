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
     ISR(PCINT2_vect);
     
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
    unsigned char newA1 = (PINA & (1 << PA0)) ? 1 : 0;
    unsigned char newB1 = (PINA & (1 << PA1)) ? 1 : 0;
    unsigned char new_state_1 = (newA1 << 1) | newB1;

    if ((old_state_1 == 0b00 && new_state_1 == 0b01)) //Only increment at SW4B rising edge
    {
        // Encoder 1 CW
        encoder1_count++;
    }
    else if ((old_state_1 == 0b00 && new_state_1 == 0b10))
    {
        // Encoder 1 CCW
        encoder1_count--;
    }

    if(encoder1_count >= 30){
        encoder1_count = 30;
    } else if (encoder1_count <= 0){
        encoder1_count = 0;
    }
    
    old_state_1 = new_state_1;
}

ISR(PCINT2_vect)
{
    // --- ENCODER 2 (PD6, PD7) --- Khz
    unsigned char newA2 = (PIND & (1 << PD6)) ? 1 : 0;
    unsigned char newB2 = (PIND & (1 << PA7)) ? 1 : 0;
    unsigned char new_state_2 = (newA2 << 1) | newB2;

    if ((old_state_2 == 0b00 && new_state_2 == 0b01)) //Only increment at SW5B rising edge
    {
        // Encoder 2 CW
        encoder2_count++;
    }
        
    else if ((old_state_2 == 0b00 && new_state_2 == 0b10))
    {
        // Encoder 2 CCW
        encoder2_count--;
    }

    if(encoder2_count >= 999){
        encoder2_count = 999;
    } else if (encoder2_count <= 0){
        encoder2_count = 0;
    }     

    old_state_2 = new_state_2;
}

//set up encoder
void encoder_init(){
    unsigned char initA1 = (PINA & (1 << PA0)) ? 1 : 0;
    unsigned char initB1 = (PINA & (1 << PA1)) ? 1 : 0;
    old_state_1 = (initA1 << 1) | initB1;

    unsigned char initA2 = (PINC & (1 << PC6)) ? 1 : 0;
    unsigned char initB2 = (PINC & (1 << PC7)) ? 1 : 0;
    old_state_2 = (initA2 << 1) | initB2;
}
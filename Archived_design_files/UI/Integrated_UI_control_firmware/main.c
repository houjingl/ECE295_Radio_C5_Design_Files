/*
 * File:   main.c
 * Author: 18701
 *
 * Created on 2025?3?7?, ??3:01
 */

 #define F_CPU 1000000

#include <avr/io.h>
#include <avr/interrupt.h>
#include "lcd1602.h"
#include "rotary_encoder.h"
#include "button.h"
#include "Si5351.h"
#include <stdint.h>
#include <stdbool.h>
#include <math.h>
#include <stdio.h>


#define TXEN_BIT PD3

volatile int encoder1_count = 3; //Mhz
volatile int encoder2_count = 0; //Khz
volatile unsigned char old_state_1 = 0;  // old state for encoder 1 (PA0,PA1)
volatile unsigned char old_state_2 = 0;  // old state for encoder 2 (PA2,PA3)

void encoder_init(void);

int main(void) {
    
    //INIT SECTION
    
    //TXEN
    DDRD |= (1 << TXEN_BIT);
    PORTD &= ~(1 << TXEN_BIT); //default TXEN = 0 -> TX mode

    //LCD
    LCD_regInit();
    LCD_Init();
    char * homepageMessage = "PUSH ANY BUTTONTO START";
    char * frequency = "Frequency:";
    char * MHz = "MHz";
    char * KHz = "KHz";
    char space = ' ';
    char * modeselection = "Please";
    char * TX = "TX";
    char * RX = "RX";


    //ENCODER
    encoder_setup();
    encoder_init();
    ISR(PCINT0_vect); //ISR for SW4A and SW4B
    ISR(PCINT2_vect); //ISR for SW5A and SW5B
    
    //BUTTON
    button_init();
    
    //PLL
    bool enabled = true;
	// Initialize the I2C Bus
	twi_init();
    //Initialize the LO
    si5351_init();
    //reset PLL
    reset_pll();
    // choose PLL & setup desired fvco
    setup_PLL(SI5351_PLL_A, 32, 0, 1); // 25 * 32 = 800 Mhz for Fvco, this does not change
    set_phase(90); //set port1 phase to be 90, and port 0 to be 0
    enable_clocks(enabled);

    //Important variables
    bool user_input_detected = false;
    bool computer_input_detected = false;
    unsigned char TXEN_N = 0;
    unsigned int user_confirmed_freq_Mhz = 0;
    unsigned int user_confirmed_freq_Khz = 0;
    unsigned int PLL_freq = 0;
    unsigned int division = 800 / 3;
    
    while (1) {
        //LCD_showString(1, 1, "PUSH ANY BUTTON");
        LCD_showString(2, 1, "TO START");
        LCD_showNum(1,1, division, 5);
        set_phase(90);
        setup_clock(SI5351_PLL_A, SI5351_PORT0, division, 0, 1);//800 / (80/3) =30 Mhz
        setup_clock(SI5351_PLL_A, SI5351_PORT1, division, 0, 1);//800 / (80/3) =30 Mhz
        enable_clocks(enabled);

        //User menu layers:
        //1st: Homepage -> awaiting user inputs, prompt user to push any of the three button to start inputing
        //     in the mean time, detect computer inputs from uart
        //     whichever comes first gets to be served

        /**************************/
        //computer input handler not implemented
        /**************************/


        /**************************/
        //User input handler
        if (button1_read() || button2_read() || button3_read()){
            user_input_detected = true;
            bool layer2 = false;
            bool layer3 = false;
            //2nd layer user menu -> prompt user for mode selection
            LCD_Clear_screen();
            LCD_showString(1,1, "Top Button");
            LCD_showString_clear_delay_1s(2, 1, "for TX");
            LCD_showString(1, 1, "Bottom Button");
            LCD_showString_clear_delay_1s(2, 1, "for RX");
            LCD_showString(1, 1, "Middle Button");
            LCD_showString_clear_delay_1s(2, 1, "to Confirm");
            layer2 = true;
            while(user_input_detected){
                while(layer2){  
                    LCD_showString(1, 2, TX);
                    LCD_showString(1, 11, modeselection);
                    LCD_showString(2, 6, "Select Mode");
                    LCD_showString(2, 2, RX);
                    if (button1_read()){
                        LCD_Clear_screen();
                        TXEN_N = 1;
                        LCD_showString(1,1, "RX Mode is");
                        LCD_showString_clear_delay_1s(2, 1, "selected");
                    } else if (button3_read()){
                        LCD_Clear_screen();
                        TXEN_N = 0;
                        LCD_showString(1, 1, "TX Mode is");
                        LCD_showString_clear_delay_1s(2, 1, "selected");
                    }

                    if (button2_read()){
                        LCD_Clear_screen();
                        layer2 = false;
                        LCD_showString(1,1, "Mode Confirmed:");
                        if(TXEN_N){
                            LCD_showString_clear_delay_1s(2, 1, "RX Mode");
                        } else {
                            LCD_showString_clear_delay_1s(2, 1, "TX Mode");
                        }
                    }
                }
                layer3 = true;
                while (layer3){
                    LCD_showString(1,1,frequency);
                    LCD_showString(2, 4, MHz);
                    LCD_showString(2, 11, KHz);
                    LCD_showChar(2, 7, space);
                    LCD_showNum(2,1, encoder1_count, 3);
                    LCD_showNum(2,8, encoder2_count, 3);
                    if (button2_read()){
                        user_confirmed_freq_Mhz = encoder1_count;
                        user_confirmed_freq_Khz = encoder2_count;
                        PLL_freq = user_confirmed_freq_Mhz * 1000000 + user_confirmed_freq_Khz * 1000;
                        LCD_showString(1, 1, "Confirmed Freq:");
                        LCD_showString(2, 4, MHz);
                        LCD_showString(2, 11, KHz);
                        LCD_showChar(2, 7, space);
                        LCD_showNum(2,1, user_confirmed_freq_Mhz, 3);
                        LCD_showNum(2,8, user_confirmed_freq_Khz, 3);
                        LCD_showString_clear_delay_1s(1, 16, " ");
                        layer3 = false;                       
                    }
                }

                user_input_detected = false;
                /*******************/
                //PLL and TXEN config

                //PLL
                reset_pll();
                division = (800 * 1000000) / PLL_freq;
                

                //TXEN pin set
                if (TXEN_N){
                    PORTD |= (1 << TXEN_BIT);
                } else {
                    PORTD &= ~(1 << TXEN_BIT);
                }


                /*******************/

            }
        }

        /**************************/
        

   
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
    } else if (encoder1_count <= 3){
        encoder1_count = 3;
    }
    
    old_state_1 = new_state_1;
}

ISR(PCINT2_vect)
{
    // --- ENCODER 2 (PD6, PD7) --- Khz
    unsigned char newA2 = (PINC & (1 << PC6)) ? 1 : 0;
    unsigned char newB2 = (PINC & (1 << PC7)) ? 1 : 0;
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

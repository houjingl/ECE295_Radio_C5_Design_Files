#include "rotary_encoder.h"

void encoder_setup(void)
{ 
    //Set up procedure for encoder and related register for interrupt
    //need to set pin reg to input state (PCINT can be also be triggered when port is in output state)
    //Enable PCICR (Pin Change Interrupt Control Register) for corresponding PCINT
    //Enable PCMASKX for corresponding PCINT bits
    //Clear PCIFR for pending flags
    //Enable MCU global interrupt

    DDRA &= ~((1 << DDA0) | (1 << DDA1)); //set PA0-1 = input
    DDRC &= ~((1 << DDC6) | (1 << DDC7)); //set PC6 and 7 as input

    //Unsure about the exact functionality of this line and the effect on the funcaionality of the firmware
    PORTA |= ((1 << PA0)|(1 << PA1)|(1 << PA2)|(1 << PA3)); // enable internal pull-up

    PCICR |= (1 << PCIE0);  //PCIE = Pin Change Interrupt Enable for PCINT0..7 -> PA0-7 Sw4a and Sw4b are connected to PCINT0 and 1
    PCICR |= (1 << PCIE2); //Enable PCINT2 for Sw5A and SW5B

    PCMSK0 |= (1 << PCINT0) | (1 << PCINT1); //Enable the specific pin masks for PA0 and PA1
    PCMSK2 |= (1 << PCINT22) | (1 << PCINT23); //Enable interrupt mask for PCINT22 and PCINT23 PD6 and PD7

    PCIFR |= (1 << PCIF0);  // Clear pending PCINT0 flag
    PCIFR |= (1 << PCIF2); // Clear pending PCINT2 Flag

    SREG |= 0x80; /* set Global Interrupt Enable */
}
/*
void encoder_init(void)
{
    // Read initial states
    uint8_t initA1 = (PINA & (1 << PA0)) ? 1 : 0;
    uint8_t initB1 = (PINA & (1 << PA1)) ? 1 : 0;
    old_state_1 = (initA1 << 1) | initB1;

    uint8_t initA2 = (PINA & (1 << PA2)) ? 1 : 0;
    uint8_t initB2 = (PINA & (1 << PA3)) ? 1 : 0;
    old_state_2 = (initA2 << 1) | initB2;
}
 * */


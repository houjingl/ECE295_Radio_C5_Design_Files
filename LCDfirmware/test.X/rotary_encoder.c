#include <avr/io.h>

#include <avr/interrupt.h>




void encoder_setup(void)
{ //pin + interrupt
    DDRA &= ~((1 << DDA0) | (1 << DDA1) | (1 << DDA2) | (1 << DDA3)); //set PA0-3 = input
    PORTA |= ((1 << PA0)|(1 << PA1)|(1 << PA2)|(1 << PA3)); // enable internal pull-up

    PCICR |= (1 << PCIE0);  //PCIE = Pin Change Interrupt Enable for PCINT0..7 A0-7 
    PCMSK0 |= (1 << PCINT0) | (1 << PCINT1) | (1 << PCINT2) | (1 << PCINT3); //Enable the specific pin masks for PA0..PA3 

    PCIFR |= (1 << PCIF0);  // Clear pending PCINT0 flag
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


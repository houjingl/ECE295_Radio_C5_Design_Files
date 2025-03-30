/*
 * File:   main.c
 * Author: 18701
 *
 * Created on 2025?2?1?, ??4:33
 */


#include <avr/io.h>
#include <util/delay.h>

int main(void) {
    /* Replace with your application code */
    DDRD &= ~(1 << DDD0);
    PORTD &= ~(1 << PORTD0);
    DDRB |= (1 << DDB4 );
    volatile uint8_t pin9_value;
    
    
    while (1) {
        pin9_value = (PIND & (1 << PIND0)) >> PIND0; //get the value of PIND, and with 00000001, shift left 0bits to just get PIND0
       // _delay_ms(1000);
       //PORTB ^= (1 << PORTB4);
        if (!pin9_value){
            _delay_ms(20); //debouncing
            while (((PIND & (1 << PIND0)) >> PIND0) == 0); //hold when button is pressed, change when released 
            _delay_ms(20);//also for debouncingv
            PORTB ^= (1 << PORTB4);
        }
        
        
        
    }
}

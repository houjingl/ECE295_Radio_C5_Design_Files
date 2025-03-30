
#include <avr/io.h>
#include <util/delay.h>

int main(){
    DDRD |= (1 << PORTD6);
    PORTD &= ~(1 << PORTD6);
    while (1){
        PORTD ^= (1 << PORTD6);
        _delay_ms(1000);
    }
}
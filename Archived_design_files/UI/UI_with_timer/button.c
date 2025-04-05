#include "button.h"

void button_init()
{
    //set require bits in DDRA to 0 as inputs
    //clear ButtonPort to disable all internal pull up

    BUTTON_PORT_CONTROL &= ~((1 << BUTTON1) | (1 << BUTTON2) | (1 <<BUTTON3));
    BUTTON_PORT &= ~((1 << BUTTON1) | (1 << BUTTON2) | (1 <<BUTTON3)); 
}

//Button inputs, all button input pins are default low
unsigned char button1_read()
{
    if ((BUTTON_PORT_INPUT & (1 << BUTTON1)) >> BUTTON1){
        _delay_ms(20); //debouncing
        while ((BUTTON_PORT_INPUT & (1 << BUTTON1)) >> BUTTON1); //hold when button is pressed, change when released 
        _delay_ms(20);//also for debouncing
        return 1;
    }
    return 0;
}

unsigned char button2_read()
{
    if ((BUTTON_PORT_INPUT & (1 << BUTTON2)) >> BUTTON2){
        _delay_ms(20); //debouncing
        while ((BUTTON_PORT_INPUT & (1 << BUTTON2)) >> BUTTON2); //hold when button is pressed, change when released 
        _delay_ms(20);//also for debouncing
        return 1;
    }
    return 0;
}

unsigned char button3_read()
{
    if ((BUTTON_PORT_INPUT & (1 << BUTTON3)) >> BUTTON3){
        _delay_ms(20); //debouncing
        while ((BUTTON_PORT_INPUT & (1 << BUTTON3)) >> BUTTON3); //hold when button is pressed, change when released 
        _delay_ms(20);//also for debouncing
        return 1;
    }
    return 0;
}



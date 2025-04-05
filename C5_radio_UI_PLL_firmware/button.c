#include "button.h"

void button_init()
{
    //set require bits in DDRA to 0 as inputs
    //clear ButtonPort to disable all internal pull up

    //Modification before M3:
    //Adding SW4 and SW5 button read

    BUTTON_PORT_CONTROL &= ~((1 << BUTTON1) | (1 << BUTTON2) | (1 <<BUTTON3));
    BUTTON_PORT &= ~((1 << BUTTON1) | (1 << BUTTON2) | (1 <<BUTTON3)); 

    DDRE &= ~((1 << KNOBL) | (1 << KNOBR));
    PORTE &= ~((1 << KNOBL) | (1 << KNOBR));

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

unsigned char knobL_read()
{
    if((PINE & (1 << KNOBL)) >> KNOBL){
        _delay_ms(20);
        while((PINE & (1 << KNOBL)) >> KNOBL);
        _delay_ms(20);
        return 1;
    }
    return 0;
}

unsigned char knobR_read()
{
    if((PINE & (1 << KNOBR)) >> KNOBR){
        _delay_ms(20);
        while((PINE & (1 << KNOBR)) >> KNOBR);
        _delay_ms(20);
        return 1;
    }
    return 0;
}



#ifndef __BUTTON__
#define __BUTTON__

#include <util/delay.h>
#include <avr/io.h>
#include <stdint.h>
#include <stdbool.h>
#include <math.h>

#define BUTTON1 PORTA6
#define BUTTON2 PORTA5
#define BUTTON3 PORTA4

#define KNOBL   PORTE0
#define KNOBR   PORTE1

#define BUTTON_PORT PORTA
#define BUTTON_PORT_CONTROL DDRA
#define BUTTON_PORT_INPUT PINA

void button_init();
unsigned char button1_read();
unsigned char button2_read();
unsigned char button3_read();
unsigned char knobR_read();
unsigned char knobL_read();



#endif
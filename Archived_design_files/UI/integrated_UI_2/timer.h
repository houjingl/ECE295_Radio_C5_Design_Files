#ifndef __BUTTON__
#define __BUTTON__

#include <stdbool.h>
#include <stdint.h>
#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>

#define F_CPU 1000000UL
// CS0[2:0] vector that represent prescaler:
#define NO_CLOCK (0b000)
#define PRESCALER_1 (0b001)  
#define PRESCALER_8 (0b010)
#define PRESCALER_64 (0b011)
#define PRESCALER_256 (0b100)
#define PRESCALER_1024 (0b101)
#define Target_frequency (1000)

void timer_setup();

#endif
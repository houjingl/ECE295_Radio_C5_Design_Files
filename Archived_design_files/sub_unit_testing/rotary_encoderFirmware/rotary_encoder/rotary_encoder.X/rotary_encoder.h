#include <stdbool.h>
#include <stdint.h>
#include <util/delay.h>
#include "twi.h"

void encoder_setup(void);
void encoder_init(void);
ISR(PCINT0_vect);
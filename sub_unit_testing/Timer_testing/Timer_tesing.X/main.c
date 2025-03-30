#include "timer_testing.h"

// toggle LED every 1 second
int counter = 0;
int main() {
  DDRD |= (1 << PD4);  // set PA7 as output
  timer_setup();       // set up timer
  while (1) {
  }
}

ISR(TIMER0_COMPA_vect) {
  counter = (counter + 1) % 10;
  if (counter == 9) {
    PORTD ^= (1 << PD4);
  }
}
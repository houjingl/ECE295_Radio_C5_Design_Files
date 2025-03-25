#include "timer.h"

// toggle LED every 1 second
int counter = 0;
int main() {
  DDRA |= (1 << PA7);  // set PA7 as output
  timer_setup();       // set up timer
  while (1) {
  }
}

ISR(TIMER0_COMPA_vect) {
  counter = (counter + 1) % 1000;
  if (counter == 999) {
    PORTA ^= (1 << PA7);
  }
}
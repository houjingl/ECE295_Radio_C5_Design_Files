#include "timer.h"

void timer_setup() {
  /* The TC0 is enabled by writing the PRTIM0 bit in ?Minimizing Power
   * Consumption? to '0'. The TC0 is enabled when the PRTIM0 bit in the Power
   * Reduction Register (PRR0.PRTIM0) is written to '1'
   */
  PRR0 &= ~(1 << PRTIM0);  // to enable TC0, write PRTIM0 bit to 0
  TCCR0A |= (1 << WGM01);  // WGM0[2:0] bits are set to CTC mode:0x2
  TCCR0B |= PRESCALER_64;          // CS0[2:0]: prescaler 64
  OCR0A = F_CPU / (PRESCALER_64 * Target_frequency) - 1;  // OCR0A = F_CPU / (Prescaler * Target frequency) - 1;
  TIMSK0 = 0b010;          // OCIE0A bit = 1, enable OCR0A comparison
 // SREG|= 0x80;            /* set Global Interrupt Enable */
  sei();
}
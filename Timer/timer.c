#include "time.h"

void timer_setup() {
  /* The TC0 is enabled by writing the PRTIM0 bit in ”Minimizing Power
   * Consumption” to '0'. The TC0 is enabled when the PRTIM0 bit in the Power
   * Reduction Register (PRR0.PRTIM0) is written to '1'
   */
  PRR0 &= ~(1 << PRTIM0);  // to enable TC0, write PRTIM0 bit to 0
  TCCR0A |= (1 << WGM01);  // WGM0[2:0] bits are set to CTC mode:0x2
  TCCR0B |= 0b11;          // CS0[2:0]: prescalling 64
  OCR0A = 249;             // OCR0A = (fCPU * Ttarget) / (Prescaler) - 1;  1ms
  TIMSK0 = 0b010;          // OCIE0A bit = 1, enable OCR0A comparison
  SREG |= 0x80;            /* set Global Interrupt Enable */
}

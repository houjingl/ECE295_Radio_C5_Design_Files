include "rotary_encoder.h"

// Global variables to store the encoder counts
int16_t encoder1_count_new = 0; 
int16_t encoder2_count_new = 0;
int main(void)
{
    init_encoders();
    init_encoder_states();
    __enable_interrupt(); // ensure global interrupts are on


    while (1)
    {
        if (encoder1_count != encoder1_count_new)
        {
            encoder1_count_new = encoder1_count;
            // e.g. update local oscillator 1 or parameter 1
            // frequency1 = base_freq1 + step_size1 * last1;
            // set_LO_1(frequency1);
        }

        if (encoder2_count != encoder2_count_new)
        {
            encoder2_count_new = encoder2_count;
            // e.g. update local oscillator 2 or parameter 2
            // frequency2 = base_freq2 + step_size2 * last2;
            // set_LO_2(frequency2);
        }

        // ... other tasks ...
    }
}

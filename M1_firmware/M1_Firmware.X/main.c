
/*
1. Set the SCL clock frequency (TWBRn and TWSRn).
2. Enable I2C on the microcontroller, send a START (TWCRn).
3. Confirm the START was sent correctly (TWSRn).
4. Send the slave address and the write bit (TWDRn and TWCRn).
5. Confirm the byte was acknowledged by the slave device (TWSRn).
6. Send a data byte, confirm it is acknowledged (TWDRn, TWCRn and TWSRn).
7. Send a STOP command (TWCRn).
 */

/*
 How to output a desired frequency
1. Initialize the PLL (Section 6.1),
2. Reset the PLL (Section 6.2),
3. choose your PLL (Section 6.3, or the multiplexer in synthesis stage 1 of Figure 8),
4. determine desired fV CO using the multiplier block (Section 6.4, or synthesis stage 1 in
Figure 8),
5. calculate appropriate fOUT with the divider block (Section 6.5, or synthesis stage 2 in
Figure 8),
6. enable output at the desired pin (Section 6.6 or output stage in Figure 8).
 */

#define F_CPU 1000000

#include <avr/io.h>
#include <util/delay.h>
#include <stdio.h>
#include <stdbool.h>
#include <stdint.h>
#include "../Si5351.h"
#include "../twi.h"


int main(void)
{
	bool enabled = true;
    uint32_t division;
	// Initialize the I2C Bus
	twi_init();
    //Initialize the LO
    si5351_init();
    //reset PLL
    reset_pll();
    // choose PLL & setup desired fvco
    setup_PLL(SI5351_PLL_A, 32, 0, 1); // 25 * 32 = 800 Mhz for Fvco, this does not change
    set_phase(90); //set port1 phase to be 90, and port 0 to be 0
        enable_clocks(enabled);
	while(1)
	{
        /*
        division = 80;
        setup_clock(SI5351_PLL_A, SI5351_PORT0, division, 0, 1);//800 / 80 = 10 Mhz
        enable_clocks(enabled);
        _delay_ms(2000); //wait 2s
         *
        
        division = 266;
        setup_clock(SI5351_PLL_A, SI5351_PORT0, division, 0, 1);//800 / 266 =3 Mhz
        enable_clocks(enabled);
        _delay_ms(2000); //wait 2s
         */

        reset_pll();
        division = 27;
        setup_clock(SI5351_PLL_A, SI5351_PORT0, division, 0, 1);//800 / (80/3) =30 Mhz
        setup_clock(SI5351_PLL_A, SI5351_PORT1, division, 0, 1);//800 / (80/3) =30 Mhz
        _delay_ms(10000); //wait 2s
        
        reset_pll();
        division = 267;
        setup_clock(SI5351_PLL_A, SI5351_PORT0, division, 0, 1);//800 / (160/21) =10.5 Mhz --> accurate to within 1Khz
        setup_clock(SI5351_PLL_A, SI5351_PORT1, division, 0, 1);//800 / (80/3) =30 Mhz
        //enable_clocks(enabled);
        _delay_ms(10000); //wait 2s
        

        //800 / user input freqency, simplify, get the denom and num e.g. 800 / 10.5 = 8000 / 105, finding least common multiple 
 
	}
}


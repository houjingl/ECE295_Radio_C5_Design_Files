
/*
 * Si5351_SkeletonCode.c
 * This project contains the skeleton code to get started with the 
 * Si5351 PLL chip
 *
 * Created: 2023-02-28 4:39:21 PM
 * Author : StewartPearson
 */

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
#define FVCO 800000000
#define AD 10
#define BD 100000

#include <avr/io.h>
#include <stdio.h>
#include <stdbool.h>
#include <stdint.h>
#include "./Si5351.h"
#include "./twi.h"


int main(void)
{
	bool enabled = true;
	
	
	// Initialize the I2C Bus
	twi_init();
    //Initialize the LO
    si5351_init();
	
	//TODO: Output a 10 MHz frequency using the Si5351.c commands. Also, you must complete the write function in Si5351.c.
    //reset PLL
    reset_pll();
    int PLL_freq = 80; //8000000 / 100000 800000000 / 1000000
    int cd = 0;
    double FVCO_PLLfreqRatio = 0.0;
    // choose PLL & setup desired fvco
     setup_PLL(SI5351_PLL_A, 32, 0, 1);  // 25 * 32 = 800 Mhz for Fvco, this does

    FVCO_PLLfreqRatio = 8000 / PLL_freq;
    double dummy = FVCO_PLLfreqRatio - AD;
    cd = 100000.0 / dummy;
        setup_clock(SI5351_PLL_A, SI5351_PORT0, 10, 100000, cd);
        setup_clock(SI5351_PLL_A, SI5351_PORT1,10, 100000, cd );
        enable_clocks(enabled);

    
    
	while(1)
	{
        
	}
}


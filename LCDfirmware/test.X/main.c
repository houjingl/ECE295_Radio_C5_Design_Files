/*
   Example for interfacing EA DOGS104-A LCD via I²C (TWI)
   on an ATmega324PB running at 8 MHz.
   
   The EA DOGS104-A (with an SSD1803A controller) can work with either SPI or I²C.
   This example uses I²C:
     - The TWI interface is initialized for a 100 kHz SCL frequency.
     - The LCD 7-bit I²C address is assumed to be 0x3C.
     - A control byte is sent: 0x00 before a command and 0x40 before data.
     
   Adjust the initialization sequence (command values and delays) as per your datasheet.
*/

#define F_CPU 8000000UL
#define SCL_CLOCK 100000L

#include <avr/io.h>
#include <util/delay.h>
#include <stdint.h>

// LCD I²C slave address (7-bit)
// If SA0 is tied to VSS, address is 0x3C (write = 0x78, read = 0x79).
#define LCD_I2C_ADDR 0x3C

// I²C (TWI) Functions

// Initialize TWI for I²C communication
void i2c_init(void) {
    // Set prescaler to 1 (TWSR prescaler bits = 0)
    TWSR = 0x00;
    // Calculate and set bit rate for SCL frequency (formula from datasheet)
    TWBR = ((F_CPU / SCL_CLOCK) - 16) / 2;
    // Enable TWI
    TWCR = (1 << TWEN);
}

// Send a START condition; returns 0 if OK or nonzero status code
uint8_t i2c_start(void) {
    // Transmit START condition
    TWCR = (1 << TWINT) | (1 << TWSTA) | (1 << TWEN);
    // Wait for TWINT flag to be set indicating completion
    while (!(TWCR & (1 << TWINT)));
    // Check TWI status; 0x08 means START transmitted
    uint8_t status = TWSR & 0xF8;
    return status;
}

// Transmit a STOP condition
void i2c_stop(void) {
    // Transmit STOP condition
    TWCR = (1 << TWINT) | (1 << TWEN) | (1 << TWSTO);
    // Small delay to ensure bus release
    _delay_us(10);
}

// Write a byte via TWI; returns status from TWSR after transmission
uint8_t i2c_write(uint8_t data) {
    TWDR = data;
    TWCR = (1 << TWINT) | (1 << TWEN);
    while (!(TWCR & (1 << TWINT)));
    return TWSR & 0xF8;
}

// LCD Functions using I²C

// Send a command byte to the LCD.
// A control byte (0x00) is sent first to indicate a command.
void lcd_send_command(uint8_t cmd) {
    // Initiate I²C transmission
    if(i2c_start() != 0x08) return;
    // Send slave address (shifted left by 1) with write bit (0)
    if(i2c_write((LCD_I2C_ADDR << 1) | 0) != 0x18) return;
    // Send control byte for command (assumed 0x00: RS = 0, continuation = 0)
    if(i2c_write(0x00) != 0x28) return;
    // Send the command itself
    i2c_write(cmd);
    i2c_stop();
}

// Send a data byte to the LCD.
// A control byte (0x40) is sent first to indicate data.
void lcd_send_data(uint8_t data) {
    if(i2c_start() != 0x08) return;
    if(i2c_write((LCD_I2C_ADDR << 1) | 0) != 0x18) return;
    // Control byte for data: 0x40 (RS = 1)
    if(i2c_write(0x40) != 0x28) return;
    i2c_write(data);
    i2c_stop();
}

// A basic LCD initialization sequence for the SSD1803A controller
// (This sequence is taken as an example; check your datasheet for details.)
void lcd_init(void) {
    _delay_ms(50); // wait for power-up
    
    lcd_send_command(0x3A);  // Function Set: 8-bit mode extension, e.g. RE=1 (example)
    _delay_ms(10);
    
    lcd_send_command(0x09);  // Extended Function Set: 4-line display (if applicable)
    _delay_ms(10);
    
    lcd_send_command(0x06);  // Entry Mode Set: bottom view (example)
    _delay_ms(10);
    
    lcd_send_command(0x1E);  // Bias Setting command (e.g. BS1=1)
    _delay_ms(10);
    
    lcd_send_command(0x39);  // Function Set: 8-bit mode extension, e.g. RE=0; IS=1
    _delay_ms(10);
    
    lcd_send_command(0x1B);  // Internal OSC command, set bias=1/6 (example)
    _delay_ms(10);
    
    lcd_send_command(0x6E);  // Follower Control: divider on and set value
    _delay_ms(10);
    
    lcd_send_command(0x56);  // Power Control: booster on and set contrast (example)
    _delay_ms(10);
    
    lcd_send_command(0x7A);  // Contrast Set: set contrast value (example)
    _delay_ms(10);
    
    lcd_send_command(0x38);  // Function Set: return to normal 8-bit mode (extension bits off)
    _delay_ms(10);
    
    lcd_send_command(0x0F);  // Display ON, cursor ON, blink ON
    _delay_ms(10);
}

// Simple routine to clear the display
void lcd_clear(void) {
    lcd_send_command(0x01); // Clear display command
    _delay_ms(2);
}

int main(void) {
    // Initialize I²C and LCD
    i2c_init();
    lcd_init();
    lcd_clear();
    
    // Write a simple test string to the LCD (one character at a time)
    char *str = "HELLO, I2C!";
    for (uint8_t i = 0; str[i] != '\0'; i++) {
        lcd_send_data(str[i]);
        _delay_ms(50);
    }
    
    while (1) {
        // Main loop ? additional application code can be added here.
    }
    
    return 0;
}

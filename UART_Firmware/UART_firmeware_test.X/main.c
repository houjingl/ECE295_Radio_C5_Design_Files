#include <avr/io.h>
#include <util/delay.h>
#include <stdint.h>
#include <avr/eeprom.h>

// Define the CPU clock frequency; adjust as needed.
#ifndef F_CPU
#define F_CPU 16000000UL  // 16 MHz clock
#endif

// Desired baud rate
#define BAUD 9600
// Calculate the baud rate register value using the formula from the datasheet
#define UBRR_VALUE ((F_CPU / (16UL * BAUD)) - 1)

// USART0 initialization based on datasheet sections 23.12 and 24.5:
// Frame format: 1 start bit, 8 data bits, no parity, 1 stop bit.
void USART0_Init(void) {
    // Set the baud rate registers.
    UBRR0H = (unsigned char)(UBRR_VALUE >> 8);
    UBRR0L = (unsigned char)UBRR_VALUE;
    
    // UCSR0A (USART Control and Status Register A)
    // Clear U2X0 (Double Speed) and MPCM0 (Multi-processor Communication Mode)
    UCSR0A = 0;  // Normal speed operation
    
    // UCSR0B (USART Control and Status Register B)
    // Enable transmitter (TXEN0) and receiver (RXEN0)
    // (Optionally, you can enable RX complete interrupt by adding (1 << RXCIE0))
    UCSR0B = (1 << TXEN) | (1 << RXEN);
    
    // UCSR0C (USART Control and Status Register C)
    // Configure frame format: Asynchronous mode (UMSEL01:0 = 00), no parity (UPM01:0 = 00),
    // one stop bit (USBS0 = 0), and 8 data bits (UCSZ01:0 = 11).
    UCSR0C = (1 << UCSZ1) | (1 << UCSZ0);
    // The start bit and stop bit are added automatically by the hardware.
}

// Transmit a single character over USART0.
void USART0_Transmit(uint8_t data) {
    // Wait for the transmit buffer to be empty (UDRE0 bit in UCSR0A).
    while (!(UCSR0A & (1 << UDRE)));
    UDR0 = data;  // Write data to USART Data Register.
}

// Transmit a null-terminated string over USART0.
void USART0_SendString(const char *str) {
    while (*str) {
        USART0_Transmit(*str++);
    }
}

// Receive a single character over USART0.
unsigned char USART0_Receive(void) {
    // Wait for data to be received (RXC0 bit in UCSR0A).
while (!(UCSR0A & (1 << RXC)));
    return UDR0;
}

// Example function to send a test frame.
// According to section 24.5, the hardware automatically frames the data with 1 start bit and 1 stop bit.
void USART0_SendTestFrame(void) {
    // For demonstration, send the ASCII character 'A' (0x41)
    USART0_Transmit('A');
}

int main(void) {
    // Initialize USART0
    USART0_Init();
    
    while (1) {
        // Send a text string (this is converted to serial frames with the configurewd frame format).
        USART0_SendString("ATmega324PB USART test: Sending 'A' as a frame\r\n");
        // Send a test frame (the character 'A' with Astart and stop bits added by hardware)
        USART0_SendTestFrame();
        USART0_SendString("\r\n");
        // Wait for 1 second before sending again.
        _delay_ms(100);
    }
    
    return 0;
}

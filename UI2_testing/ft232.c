#include "ft232.h"


// Initialize USART0 in asynchronous mode with frame format: 
// 1 start bit, 8 data bits, no parity, 1 stop bit.
// (See datasheet sections 23.12 and 24.5 for details on register settings.)

//two global variables
int Mhz =0;
int Khz =0;
int state = 0; // state for UART display

void USART0_Init(void) {
    // Set baud rate registers
    UBRR0H = (unsigned char)(UBRR_VALUE >> 8);
    UBRR0L = (unsigned char)UBRR_VALUE;
    
    // Clear UCSR0A (normal speed mode, no multi-processor mode)
    UCSR0A = (1<<U2X);
    
    // Enable receiver and transmitter; 
    // You can later add RX complete interrupts if desired.
    UCSR0B = (1 << RXEN) | (1 << TXEN);
    
    // Set frame format: asynchronous mode, no parity, 1 stop bit, 8 data bits.
    UCSR0C = (1 << UCSZ1) | (1 << UCSZ0);
}

// Transmit one character via USART0.
void USART0_Transmit(uint8_t data) {
    // Wait until transmit buffer is empty (UDRE0 flag set).
    while (!(UCSR0A & (1 << UDRE)));
    UDR0 = data;
}

// Receive one character via USART0.
uint8_t USART0_Receive(void) {
    // Wait until data is received (RXC0 flag set).
    while (!(UCSR0A & (1 << RXC)));
    return UDR0;
}

// Transmit a null-terminated string via USART0.
void USART0_SendString(const char *str) {
    while (*str) {
        USART0_Transmit(*str++);
    }
}

// Process CAT commands received over USART.
// This function supports the following commands:
//   TX: e.g., "TX1;" to enable TX, "TX0;" to disable TX.
//   FA: e.g., "FA014250000;" to set VFO-A frequency.
//   FB: e.g., "FB014300000;" to set VFO-B frequency.
//   IF: e.g., "IF;" for additional information command.
void ProcessCATCommand(const char *cmd) {
    if (strncmp(cmd, "TX", 2) == 0) {
        // TX command: expects a parameter '1' (enable) or '0' (disable) after "TX"
        if (strlen(cmd) >= 3) {
            if (cmd[2] == '1') {
                PORTD |= (1 << PD3);  // Example: set PD2 high to enable TX
                USART0_SendString("TX Enabled\r\n");
            } else if (cmd[2] == '0') {
                PORTD &= ~(1 << PD3); // Set PD2 low to disable TX
                USART0_SendString("TX Disabled\r\n");
            } else {
                USART0_SendString("Invalid TX parameter\r\n");
            }
        } else {
            USART0_SendString("TX command missing parameter\r\n");
        }
    } else if (strncmp(cmd, "FA", 2) == 0) {
        // FA command: set or read VFO-A frequency.
        // For example, "FA014250000;" sets VFO-A to 14,250,000 Hz.
        state = 1; // set state to 1 for FA command
        if (strlen(cmd) > 2) {
            long freq = atol(cmd + 2);
            char buffer[32];
            // In a complete design, you'd update your LO (Local Oscillator) setting here.
            sprintf(buffer, "VFO-A set to %ld Hz\r\n", freq);
            USART0_SendString(buffer);
            // Update global variables for frequency display
            Mhz = freq / 1000000; // Extract MHz part
            Khz = (freq % 1000000) / 1000; // Extract kHz part
        } else {
            USART0_SendString("FA command missing frequency\r\n");
        }
    } else if (strncmp(cmd, "FB", 2) == 0) {
        // FB command: set or read VFO-B frequency.
        if (strlen(cmd) > 2) {
            long freq = atol(cmd + 2);
            char buffer[32];
            sprintf(buffer, "VFO-B set to %ld Hz\r\n", freq);
            USART0_SendString(buffer);
        } else {
            USART0_SendString("FB command missing frequency\r\n");
        }
    } else if (strncmp(cmd, "IF", 2) == 0) {
        // IF command: process IF settings.
        // Depending on your design, you might extract additional parameters.
        USART0_SendString("IF command processed\r\n");
    } else {
        USART0_SendString("Unknown CAT command\r\n");
    }
}

#ifndef __FT232__
#define __FT232__

#include <avr/io.h>
#include <util/delay.h>
#include <stdlib.h>
#include <string.h>
#include <stdio.h>

#ifndef F_CPU
#define F_CPU 16000000UL    // 16 MHz clock
#endif

#define BAUD 9600
#define UBRR_VALUE ((F_CPU / (8UL * BAUD)) - 1)

#define CMD_BUFFER_SIZE 64

// Initialize USART0 in asynchronous mode with frame format: 
// 1 start bit, 8 data bits, no parity, 1 stop bit.
// (See datasheet sections 23.12 and 24.5 for details on register settings.)

void USART0_Init(void);

// Transmit one character via USART0.
void USART0_Transmit(uint8_t data);

// Receive one character via USART0.
uint8_t USART0_Receive(void);

// Transmit a null-terminated string via USART0.
void USART0_SendString(const char *str);

// Process CAT commands received over USART.
// This function supports the following commands:
//   TX: e.g., "TX1;" to enable TX, "TX0;" to disable TX.
//   FA: e.g., "FA014250000;" to set VFO-A frequency.
//   FB: e.g., "FB014300000;" to set VFO-B frequency.
//   IF: e.g., "IF;" for additional information command.
void ProcessCATCommand(const char *cmd);

#endif
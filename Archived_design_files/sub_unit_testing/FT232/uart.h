#include <stdint.h>  // For uint8_t, etc.

// =========================
// Configuration Macros
// =========================
#ifndef F_CPU
#define F_CPU 16000000UL    // 16 MHz clock
#endif

// Desired baud rate
#define BAUD 9600

// Double speed mode (U2X = 1) changes the formula:
// UBRR = (F_CPU / (8 * BAUD)) - 1
// If you are running at 1 MHz, adjust the formula accordingly.


// Size of the command buffer used for CAT parsing
#define CMD_BUFFER_SIZE 64
#define UBRR_VALUE ((F_CPU / (8UL * BAUD)) - 1)
// =========================
// Public Function Prototypes
// =========================

// Initializes USART0 in double-speed mode (U2X=1) with 8N1 frame format.
// See sections 23.12 and 24.5 of the ATmega324PB datasheet for details.
void USART0_Init(void);

// Transmits a single byte over USART0.
void USART0_Transmit(uint8_t data);

// Receives a single byte from USART0 (blocking).
uint8_t USART0_Receive(void);

// Transmits a null-terminated string over USART0.
void USART0_SendString(const char *str);

// Processes a CAT command (e.g., "TX1;", "FA014250000;", etc.).
// Modifies MCU state or replies based on the command.
void ProcessCATCommand(const char *cmd);



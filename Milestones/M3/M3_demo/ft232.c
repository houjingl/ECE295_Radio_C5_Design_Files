#include "ft232.h"

// Initialize USART0 in asynchronous mode with frame format:
// 1 start bit, 8 data bits, no parity, 1 stop bit.
// (See datasheet sections 23.12 and 24.5 for details on register settings.)

// two global variables
int Mhz = 0;
int Khz = 0;
int state = 0;    // state for UART display // 1 -> FA 2->TX  3-> RX 4-> IF
int IF_freq = 0;  // IF frequency

char fa[32];
/*
Using TX/RX0
Check UDR0 for Transmitted and Received Data
Important control regs UCSRnA-D:
    1.UCSRnA: indicate errors happened during data transmission. Indicate state
of UDR buffer Doubling the transmission speed and Multi processor mode 2.UCSRnB:
USART TXEN and RXEN. USART interrput device enable. Character size bit 3. bit 8
in 9bits mode 3.UCSRnC: USART mode & frame format. Character size config
    4.UCSRnD: only 3 LSB in effect. enable and config USART control over MCU in
sleep mode

UBRRnL & UBRRnH -> Baud rate reg low and high. Total of 12 bits without reg
address offset
*/

void USART0_Init(void) {
  // Set baud rate registers
  UBRR0H = (unsigned char)(UBRR_VALUE >> 8);
  UBRR0L = (unsigned char)UBRR_VALUE;

  // Clear UCSR0A (normal speed mode, no multi-processor mode)
  UCSR0A = (1 << U2X);

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
  unsigned char ai_register = 0;
  unsigned char st_register = 0;
  if (strncmp(cmd, "TX", 2) == 0) {
    // TX command: expects a parameter '1' (enable) or '0' (disable) after "TX"
    if (strlen(cmd) >= 3) {
      if (cmd[2] == '1') {
        // set state
        state = 2;
        PORTD |= (1 << PD3);  // Example: set PD3 high to enable TX
        //USART0_SendString("TX Enabled\r\n");
      } else if (cmd[2] == '0') {
        // set state
        state = 3;
        PORTD &= ~(1 << PD3);  // Set PD3 low to disable TX
        //USART0_SendString("TX Disabled\r\n");
      }
    } else {
      if(state==2){
        USART0_SendString("TX1\r\n");
      }else{
        USART0_SendString("TX0\r\n");
      }
    }
  } else if (strncmp(cmd, "FA", 2) == 0) {
    // FA command: set or read VFO-A frequency.
    // For example, "FA014250000;" sets VFO-A to 14,250,000 Hz.
    state = 1;  // set state to 1 for FA command
    if (strlen(cmd) > 2) {
      // In a complete design, you'd update your LO (Local Oscillator) setting
      // here.
      // Update global variables for frequency display
      long freq = atol(cmd + 2);
      Mhz = freq / 1000000;           // Extract MHz part
      Khz = (freq % 1000000) / 1000;  // Extract kHz part
      if(Mhz<10){
        sprintf(fa,"FA00%ld",freq);
      }else{
        sprintf(fa,"FA0%ld",freq);
      }
      IF_freq = freq;                 // Save frequency for IF query
    } else {
       USART0_SendString(fa);
       fa[0]='\0';
    }
  } else if (strncmp(cmd, "FB", 2) == 0) {
    // FB command: set or read VFO-B frequency.
    if (strlen(cmd) > 2) {
      long freq = atol(cmd + 2);
      char buffer[32];
      // sprintf(buffer, "VFO-B set to %ld Hz\r\n", freq);
      USART0_SendString(buffer);
    }
    //  else {
    //     USART0_SendString("FB command missing frequency\r\n");
    // }
  }
  // --- New commands added below without changing any existing code ---

  else if (strncmp(cmd, "AI", 2) == 0) {
    // AI command: does not change the state of the transmitter.
    // If a parameter is provided (e.g., "AI0;" or "AI1;"), update the internal
    // register. If no parameter (i.e., "AI;"), return the current setting.
    if (strlen(cmd) > 3) {  // expecting "AI0;" or "AI1;"
      if (cmd[2] == '0') {
        ai_register = 0;
        USART0_SendString("AI0;");
      } else if (cmd[2] == '1') {
        ai_register = 1;
        USART0_SendString("AI1;");
      } else {
        USART0_SendString("Invalid AI parameter\r\n");
      }
    } else {
      // Query: return current AI register setting
      if (ai_register == 0) {
        USART0_SendString("AI0;");
      } else {
        USART0_SendString("AI1;");
      }
    }
  } else if (strncmp(cmd, "ST", 2) == 0) {
    // ST command: works similar to the AI command.
    if (strlen(cmd) > 3) {  // expecting "ST0;" or "ST1;"
      if (cmd[2] == '0') {
        st_register = 0;
        USART0_SendString("ST0;");
      } else if (cmd[2] == '1') {
        st_register = 1;
        USART0_SendString("ST1;");
      } else {
        USART0_SendString("Invalid ST parameter\r\n");
      }
    } else {
      // Query: return current ST register setting
      if (st_register == 0) {
        USART0_SendString("ST0;");
      } else {
        USART0_SendString("ST1;");
      }
    }
  } else if (strncmp(cmd, "ID", 2) == 0) {
    // ID query: return a 7-character string: "ID0650;"
    USART0_SendString("ID0650;");
  } else if (strncmp(cmd, "MD0", 3) == 0) {
    // MD0 query: return a 5-character string: "MD0C;"
    USART0_SendString("MD0C;");
  } else if (strncmp(cmd, "SH0", 3) == 0) {
    // SH0 query: return a 7-character string: "SH0000;"
    USART0_SendString("SH0000;");
  } else if (strncmp(cmd, "NA0", 3) == 0) {
    // NA0 query: return a 5-character string: "NA00;"
    USART0_SendString("NA00;");
  } else if (strncmp(cmd, "IF", 2) == 0) {
    // Updated IF command:
    // For an IF query ("IF;"), return a 28-character string:
    // "IF001xxxxxxxxx+000000C00000;" where xxxxxxxxx is the 9-digit integer
    // from the FA command.
    if (strcmp(cmd, "IF;") == 0) {
      char freqStr[10];  // 9 digits plus terminating null
                         // sprintf(freqStr, "%09ld", IF_freq);
      char buffer[40];
      //sprintf(buffer, "IF001%s+000000C00000;", freqStr);
      USART0_SendString(buffer);
    } else {
      // Otherwise, use the original IF command behavior
      state = 4;
      USART0_SendString("IF command processed\r\n");
    }
  } else if (strncmp(cmd, "EX", 2) == 0) {
    // EX command remains unchanged.
    state = 5;
  } else {
    USART0_SendString("Unknown CAT command\r\n");
  }
}

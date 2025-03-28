/*
 * File:   main.c
 * Author: 18701
 *
 * Created on 2025?3?7?, ??3:01
 */

#define F_CPU 1000000

#include <avr/interrupt.h>
#include <avr/io.h>
#include <math.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>

#include "Si5351.h"
#include "button.h"
#include "ft232.h"
#include "lcd1602.h"
#include "rotary_encoder.h"
#include "timer.h"

#define TXEN_BIT PD3

// global variables
volatile int encoder1_count = 0;         // Mhz
volatile int encoder2_count = 0;         // Khz
volatile unsigned char old_state_1 = 0;  // old state for encoder 1 (PA0,PA1)
volatile unsigned char old_state_2 = 0;  // old state for encoder 2 (PA2,PA3)
char cmdBuffer[CMD_BUFFER_SIZE];         // CAT command buffer
uint8_t index = 0;                       // Index for command buffer
int counter = 0;                         // counter for timer
bool computer_input_detected = false;    // Flag for computer input

// FSM
typedef enum {
  STATE_WAIT,
  STATE_TUTORIAL,
  STATE_LAYER2_STAGE1,
  STATE_LAYER2_STAGE2,
  STATE_LAYER3,
  STATE_CONFIG_PLL_TXEN,
  STATE_COMPUTER_MODE
} State;

// user interface state machine
int page_index = 0;
State current_state = STATE_WAIT;  // set initial state to STATE_WAIT

// additional function
void handle_UART(bool computer_input_detected);
void encoder_init(void);

// main
int main(void) {
  // INIT SECTION
  // TXEN
  DDRD |= (1 << TXEN_BIT);
  PORTD &= ~(1 << TXEN_BIT);  // default TXEN = 0 -> TX mode

  // LCD
  LCD_regInit();
  LCD_Init();
  char* homepageMessage = "PUSH ANY BUTTONTO START";
  char* frequency = "Frequency:";
  char* MHz = "MHz";
  char* KHz = "KHz";
  char space = ' ';
  char* modeselection = "Please";
  char* TX = "TX";
  char* RX = "RX";

  // TIMER:
  timer_setup();

  // UART:
  USART0_Init();
  //  For the TX command, assume PD3 controls a TX enable signal.
  //  Configure PD3 as output.
  DDRD |= (1 << PD3);

  // ENCODER:
  encoder_setup();
  encoder_init();
  ISR(PCINT0_vect);          // ISR for SW4A and SW4B
  ISR(PCINT2_vect);          // ISR for SW5A and SW5B
  ISR(TIMER0_COMPA_vector);  // ISR for TIMER0

  // BUTTON
  button_init();

  // PLL
  bool enabled = true;
  // Initialize the I2C Bus
  // twi_init();
  // Initialize the LO
  // si5351_init();
  // reset PLL
  // reset_pll();
  //  choose PLL & setup desired fvco
  // setup_PLL(SI5351_PLL_A, 32, 0, 1); // 25 * 32 = 800 Mhz for Fvco, this does
  // not change set_phase(90); //set port1 phase to be 90, and port 0 to be 0
  // enable_clocks(enabled);

  // Important variables
  bool user_input_detected = false;
  unsigned char TXEN_N = 0;
  unsigned int user_confirmed_freq_Mhz = 0;
  unsigned int user_confirmed_freq_Khz = 0;
  unsigned int PLL_freq = 0;
  unsigned int division = 0;

  while (1) {
    switch (current_state) {
      case STATE_WAIT:
        if (computer_input_detected) {
          current_state = STATE_COMPUTER_MODE;
          break;
        }

        LCD_showString(1, 1, "PUSH ANY BUTTON");
        LCD_showString(2, 1, "TO START");
        if (button1_read() || button2_read() ||
            button3_read()) {  // if any of the keys is pressed: go to TUTORIAL
          current_state = STATE_TUTORIAL;
        }
        break;

      case STATE_TUTORIAL:  // timer ISR will increment and control page_index
        if (computer_input_detected) {
          current_state = STATE_COMPUTER_MODE;
          break;
        }

        if (page_index == 0) {
          LCD_showString(1, 1, "Top Button");
          LCD_showString(2, 1, "for TX");
        } else if (page_index == 1) {
          LCD_showString(1, 1, "Bottom Button");
          LCD_showString(2, 1, "for RX");
        } else if (page_index == 2) {
          LCD_showString(1, 1, "Middle Button");
          LCD_showString(2, 1, "to Confirm");
        }

        // 在每次loop的时候都会检测 button2
        // 是不是被按下。如果被按下的话就可以直接离开tutorial stage来到 layer2
        if (button2_read()) {
          current_state = STATE_LAYER2_STAGE1;
          break;
        }
        break;

      case STATE_LAYER2_STAGE1:  // Layer2: handle TX/RX MODE. Stage1: SELECT
        if (computer_input_detected) {
          current_state = STATE_COMPUTER_MODE;
          break;
        }

        LCD_showString(1, 2, TX);
        LCD_showString(1, 11, modeselection);
        LCD_showString(2, 6, "Select Mode");
        LCD_showString(2, 2, RX);
        if (button1_read()) {
          TXEN_N = 1;
          current_state = STATE_LAYER2_STAGE2;
        } else if (button3_read()) {
          TXEN_N = 0;
          current_state = STATE_LAYER2_STAGE2;
        }
        break;

      case STATE_LAYER2_STAGE2:  // Layer2: handle TX/RX MODE. Stage2: CONFIRM
        if (computer_input_detected) {
          current_state = STATE_COMPUTER_MODE;
          break;
        }
        LCD_showString(1, 1, "Mode Confirmed:");
        if (TXEN_N) {
          LCD_showString_clear_delay_1s(2, 1, "RX Mode");
        } else {
          LCD_showString_clear_delay_1s(2, 1, "TX Mode");
        }
        current_state = STATE_LAYER3;
        break;

      case STATE_LAYER3:  // Layer3: frequency adjustment
        if (computer_input_detected) {
          current_state = STATE_COMPUTER_MODE;
          break;
        }
        LCD_showString(1, 1, frequency);
        LCD_showNum(2, 1, encoder1_count, 3);
        LCD_showString(2, 4, MHz);
        LCD_showChar(2, 7, space);
        LCD_showNum(2, 8, encoder2_count, 3);
        LCD_showString(2, 11, KHz);
        if (button2_read()) {
          user_confirmed_freq_Mhz = encoder1_count;
          user_confirmed_freq_Khz = encoder2_count;
          PLL_freq = encoder1_count * 1000000 + encoder2_count * 1000;
          LCD_showString(1, 1, "Confirmed Freq:");
          LCD_showNum(2, 1, user_confirmed_freq_Mhz, 3);
          LCD_showString(2, 4, MHz);
          LCD_showChar(2, 7, space);
          LCD_showNum(2, 8, user_confirmed_freq_Khz, 3);
          LCD_showString(2, 11, KHz);
          LCD_showString_clear_delay_1s(1, 16, " ");
          current_state = STATE_CONFIG_PLL_TXEN;
        }
        break;

      case STATE_CONFIG_PLL_TXEN:  // configure PLL and TXEN.
        // DO NOT deal with computer input when configure PLL and TXEN

        // configure PLL
        division = (800 * 1000000) / PLL_freq;
        // setup_clock(SI5351_PLL_A, SI5351_PORT0, division, 0, 1);
        // setup_clock(SI5351_PLL_A, SI5351_PORT1, division, 0, 1);

        // configure TX/RX mode
        if (TXEN_N) {
          PORTD |= (1 << TXEN_BIT);
        } else {
          PORTD &= ~(1 << TXEN_BIT);
        }
        current_state = STATE_WAIT;
        break;

      case STATE_COMPUTER_MODE:
        // parse computer command
        handle_UART(computer_input_detected);
        if (computer_input_detected) {
          current_state = STATE_COMPUTER_MODE;
        } else {
          current_state = STATE_WAIT;
        }
        break;

      default:
        current_state = STATE_WAIT;
        break;
    }
  }
}

// Interrupt for Encoder
ISR(PCINT0_vect) {
  // --- ENCODER 1 (PA0, PA1) --- Mhz
  unsigned char newA1 = (PINA & (1 << PA0)) ? 1 : 0;
  unsigned char newB1 = (PINA & (1 << PA1)) ? 1 : 0;
  unsigned char new_state_1 = (newA1 << 1) | newB1;

  if ((old_state_1 == 0b00 &&
       new_state_1 == 0b01))  // Only increment at SW4B rising edge
  {
    // Encoder 1 CW
    encoder1_count++;
  } else if ((old_state_1 == 0b00 && new_state_1 == 0b10)) {
    // Encoder 1 CCW
    encoder1_count--;
  }

  if (encoder1_count >= 30) {
    encoder1_count = 30;
  } else if (encoder1_count <= 0) {
    encoder1_count = 0;
  }

  old_state_1 = new_state_1;
}

ISR(PCINT2_vect) {
  // --- ENCODER 2 (PD6, PD7) --- Khz
  unsigned char newA2 = (PINC & (1 << PC6)) ? 1 : 0;
  unsigned char newB2 = (PINC & (1 << PC7)) ? 1 : 0;
  unsigned char new_state_2 = (newA2 << 1) | newB2;

  if ((old_state_2 == 0b00 &&
       new_state_2 == 0b01))  // Only increment at SW5B rising edge
  {
    // Encoder 2 CW
    encoder2_count++;
  }

  else if ((old_state_2 == 0b00 && new_state_2 == 0b10)) {
    // Encoder 2 CCW
    encoder2_count--;
  }

  if (encoder2_count >= 999) {
    encoder2_count = 999;
  } else if (encoder2_count <= 0) {
    encoder2_count = 0;
  }

  old_state_2 = new_state_2;
}

// set up encoder
void encoder_init() {
  unsigned char initA1 = (PINA & (1 << PA0)) ? 1 : 0;
  unsigned char initB1 = (PINA & (1 << PA1)) ? 1 : 0;
  old_state_1 = (initA1 << 1) | initB1;

  unsigned char initA2 = (PINC & (1 << PC6)) ? 1 : 0;
  unsigned char initB2 = (PINC & (1 << PC7)) ? 1 : 0;
  old_state_2 = (initA2 << 1) | initB2;
}

// Interrupt for Timer
ISR(TIMER0_COMPA_vector) {  // count for 1 second
  // counter = (counter + 1) % 1000;
  // if (counter == 999) {
  // 等待1s
  if (counter != 999) {
    counter++;
    return;
  } else {
    counter = 0;
  }

  // 1s到了
  // do something
  if (current_state != STATE_TUTORIAL) {
    page_index = 0;
  } else if (page_index == 2) {
    page_index = 2;
  } else {
    page_index++;
  }
}

// uart
void handle_UART(bool computer_input_detected) {
  USART0_SendString("ATmega324PB no Interface Ready\r\n");
  while (computer_input_detected) {
    uint8_t received = USART0_Receive();
    // Echo back the received character (optional)
    USART0_Transmit(received);

    if (received == ';') {
      // End-of-command detected; terminate string and process command.
      cmdBuffer[index] = '\0';
      ProcessCATCommand(
          cmdBuffer);  // 这个函数会更改TX和RX
                       // pin，以及PLL的频率，所以不需要再跳转到STATE_CONFIG_PLL_TXEN
      index = 0;  // Reset buffer for next command.
    } else {
      // Append character to command buffer if there is room.
      if (index < CMD_BUFFER_SIZE - 1) {
        cmdBuffer[index++] = received;
      } else {
        // Buffer overflow: reset index and notify error.
        index = 0;
        USART0_SendString("\r\nError: Command too long\r\n");
      }
    }
  }
}

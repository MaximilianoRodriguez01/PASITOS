### **display.c** / **display.h**
- **Purpose**:
  - Implements the interface for controlling a 20x4 character LCD display using a 4-bit parallel connection via GPIO.
  - Provides functions for initializing the display, setting the character position, and writing strings.

- **Features**:
  - Initialization sequence for 4-bit mode communication.
  - Functions to write instructions and data to the display.
  - Functions to set the cursor position on the display (for 4 lines).
  - Function to write null-terminated strings to the display.
  - Uses HAL library for GPIO control.
  - Handles the initial 8-bit communication steps required to switch to 4-bit mode.

- **Main Functions**:
  - `displayInit()` - Initializes the LCD display. This includes the initial 8-bit communication attempts, setting the display to 4-bit mode, configuring the number of lines and font, turning the display on, clearing the display, and setting the entry mode.
  - `displayCharPositionWrite(uint8_t charPositionX, uint8_t charPositionY)` - Sets the cursor position to the specified row (charPositionY) and column (charPositionX). It uses pre-defined addresses for each of the four lines of the display.
  - `displayStringWrite(const char *str)` - Writes a null-terminated string to the display at the current cursor position.
  - `displayCodeWrite(bool type, uint8_t dataBus)` - Writes a byte to the display, either as an instruction (type = DISPLAY_RS_INSTRUCTION) or as data (type = DISPLAY_RS_DATA). This function manages the RS, RW, and EN control signals.
  - `displayDataBusWrite(uint8_t dataBus)` - Writes the data to the 4-bit data bus. This function handles the sending of the upper and lower nibbles with the appropriate enable pulses.
  - `displayPinWrite(uint8_t pinName, int value)` - Writes a value (HIGH or LOW) to a specific display pin using the HAL GPIO library.
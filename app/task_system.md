### **task_system.c** / **task_system.h** / **task_system_attribute.h** / **task_system_interface.h**
- **Purpose**:
  - Implements the main control system logic, managing the overall system state, user interaction (through events), actuator control (LEDs, buzzer), and display output.
  - Uses a Finite State Machine (FSM) to handle different operation modes: IDLE, CONTROL, and SETUP.
  - Performs non-blocking time-based updates.

- **Features**:
  - Initialization and configuration of the system module.
  - Event management for state transitions.
  - LED control to indicate system status (IDLE, CONTROL, MIN_SPEED, MAX_SPEED).
  - Buzzer control.
  - Interface with the display to show relevant information (speed, number of packs, temperatures).
  - Control logic to adjust speed based on the number of packs.
  - Implementation of a SETUP mode to configure the pack rate and waiting time.
  - Shared resource protection by disabling/enabling interrupts.
  - Internal and external temperature readings via ADC.

- **Main Functions**:
  - `task_system_init()` - Initializes the system module, including the initial FSM configuration, event queue initialization, and display initialization. Prints log messages with initial state information.
  - `task_system_update()` - Main system update function. Executes periodically and manages state transitions based on events and conditions. Updates the display, controls LEDs and the buzzer, and performs the main control logic. Handles pack in/out events, no-pack timeout, and transitions between IDLE, CONTROL, and SETUP modes. Within the SETUP mode, it manages a sub-state for configuring the pack rate and waiting time.
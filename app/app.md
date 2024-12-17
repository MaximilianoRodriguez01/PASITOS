### **app.c**
- **Purpose**:  
  - Implements the **application layer** for the Bare Metal Event-Triggered System (ETS).  
  - Manages **task execution**, **WCET** (Worst-Case Execution Time) monitoring, and **system updates**.  
  - Coordinates **initialization** and **periodic execution** of tasks in a structured manner.

- **Features**:  
  - Initializes and executes **multiple tasks** (e.g., sensor, system, and actuator).  
  - Monitors **execution time** for each task to identify worst-case performance.  
  - Periodically **logs WCET values** for system performance analysis.  
  - Integrates a **cycle counter** to measure execution time accurately in microseconds.

- **Main Functions**:  
  - app_init() - **Initializes the application**, resets counters, and executes task-specific initialization routines.  
  - app_update() - **Executes task update functions**, measures execution time, updates WCET values, and logs performance periodically.  
  - logWCET() - **Prints the WCET values** for all tasks to the logger.  
  - HAL_SYSTICK_Callback() - **Handles system tick interrupts** and increments tick counters for tasks.
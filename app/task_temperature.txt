### **task_temperature.c**
- **Purpose**:  
  - Implements **temperature reading** functionality for both internal and external temperature sensors.  
  - Provides methods to convert **ADC readings to temperature values** using predefined calibration constants.  
  - Interacts with the **ADC** hardware to read temperature values from different channels.

- **Features**:  
  - **ADC-based temperature measurement** for both external (via ADC_CHANNEL_1) and internal (via ADC_TEMPSENSOR) sensors.  
  - **Temperature conversion** using the **V25** and **AVG_SLOPE** calibration constants.  
  - **Polls ADC readings** and converts them to temperature values, logging errors if the readings fail.

- **Main Functions**:  
  - ADC_Ext_Temperature() - Reads external temperature via ADC channel, converts to temperature, and returns the value.  
  - ADC_Int_Temperature() - Reads internal temperature via ADC temperature sensor, converts to temperature using calibration constants, and returns the value.  
  - ADC_Poll_Read_Channel() - Handles **ADC polling** for the specified channel and returns the read value.  
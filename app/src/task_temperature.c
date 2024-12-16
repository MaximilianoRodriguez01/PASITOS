/* Project includes. */
#include "main.h"

/* Demo includes. */
#include "logger.h"
#include "dwt.h"

/* Application & Tasks includes. */
#include "app.h"
#include "task_temperature.h"

/********************** macros and definitions *******************************/

#define V25 1.43
#define AVG_SLOPE 0.0043

/********************** internal functions declaration ***********************/

HAL_StatusTypeDef ADC_Poll_Read_Channel(uint16_t *value);

/********************** external data declaration *****************************/

extern ADC_HandleTypeDef hadc1;

/********************** external functions declaration ***********************/

float ADC_Ext_Temperature() {
	uint16_t value;

	if (HAL_OK == ADC_Poll_Read_Channel(&value, ADC_CHANNEL_1)) {
		float temperature = ((float)value * 0.456 * 3.3 * 100.0) / 4096.0;
    	return temperature;
	}

	LOGGER_LOG("ERROR TEMPERATURE");
	return ERROR;
}

float ADC_Int_Temperature() {
    uint16_t value;

    if (HAL_OK == ADC_Poll_Read_Channel(&value, ADC_CHANNEL_TEMPSENSOR)) {
        float temperature = ((((float)value * 0.456 * 3.3 / 4096.0) - V25) / AVG_SLOPE) + 25.0;
        return temperature;
    }

    LOGGER_LOG("ERROR LEYENDO TEMPERATURA INTERNA");
    return ERROR;
}

/*
float ADC_Temperature(uint16_t value)
{
	float temperature = 2 + value * 100;

	return temperature;
}*/

/********************** internal functions definition ************************/

//	Requests start of conversion, waits until conversion done
static HAL_StatusTypeDef ADC_Poll_Read_Channel(uint16_t *value, uint32_t channel)
{
    HAL_StatusTypeDef res;
    ADC_ChannelConfTypeDef sConfig = {0};

    sConfig.Channel = channel;
    sConfig.Rank = ADC_REGULAR_RANK_1;
    sConfig.SamplingTime = (channel == ADC_CHANNEL_TEMPSENSOR) ? ADC_SAMPLETIME_239CYCLES_5 : ADC_SAMPLETIME_1CYCLE_5;

    res = HAL_ADC_ConfigChannel(&hadc1, &sConfig);
    if (res != HAL_OK) {
        return res;
    }

    res = HAL_ADC_Start(&hadc1);
    if (HAL_OK == res) {
        res = HAL_ADC_PollForConversion(&hadc1, HAL_MAX_DELAY);
        if (HAL_OK == res) {
            *value = HAL_ADC_GetValue(&hadc1);
        }
    }
    HAL_ADC_Stop(&hadc1);
    return res;
}

/********************** end of file ******************************************/

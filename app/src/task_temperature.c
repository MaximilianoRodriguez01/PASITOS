#include "main.h"
#include "logger.h"
#include "dwt.h"
#include "app.h"
#include "task_temperature.h"

/********************** macros and definitions *******************************/
#define V25 1.43F
#define AVG_SLOPE 0.0043F

/********************** external data declaration *****************************/
extern ADC_HandleTypeDef hadc1;
extern ADC_HandleTypeDef hadc2;

/********************** internal functions declaration ************************/
HAL_StatusTypeDef ADC_Read_Value(ADC_HandleTypeDef *hadc, uint16_t *value, uint32_t channel);

/********************** external functions declaration ************************/

float ADC_Ext_Temperature() {
    uint16_t value;

    if (HAL_OK == ADC_Read_Value(&hadc2, &value, ADC_CHANNEL_TEMPSENSOR)) {
        float temperature = ((float)value * 0.100 * 5 * 100.0) / 4096.0;
        return temperature;
    }

    LOGGER_LOG("ERROR: Lectura de temperatura externa fallida");
    return ERROR;
}

float ADC_Int_Temperature() {
    uint16_t value;

    if (HAL_OK == ADC_Read_Value(&hadc1, &value, ADC_CHANNEL_1)) {
        float temperature = ((V25 - ((float)value * 3.3 / 4096.0)) / AVG_SLOPE) + 25.0;
        return temperature;
    }

    LOGGER_LOG("ERROR: Lectura de temperatura interna fallida");
    return ERROR;
}

/********************** internal functions definition ************************/

HAL_StatusTypeDef ADC_Read_Value(ADC_HandleTypeDef *hadc, uint16_t *value, uint32_t channel) {
    HAL_StatusTypeDef res;
    ADC_ChannelConfTypeDef sConfig = {0};

    sConfig.Channel = channel;
    sConfig.Rank = ADC_REGULAR_RANK_1;
    sConfig.SamplingTime = channel == ADC_CHANNEL_1? ADC_SAMPLETIME_1CYCLE_5 : ADC_SAMPLETIME_239CYCLES_5;

    res = HAL_ADC_ConfigChannel(hadc, &sConfig);
    if (res != HAL_OK) {
        return res;
    }

    res = HAL_ADC_Start(hadc);
    if (res == HAL_OK) {
        res = HAL_ADC_PollForConversion(hadc, HAL_MAX_DELAY);
        if (res == HAL_OK) {
            *value = HAL_ADC_GetValue(hadc);
        }
    }
    HAL_ADC_Stop(hadc);
    return res;
}

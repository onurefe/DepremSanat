/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.h
  * @brief          : Header for main.c file.
  *                   This file contains the common defines of the application.
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2021 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under Ultimate Liberty license
  * SLA0044, the "License"; You may not use this file except in compliance with
  * the License. You may obtain a copy of the License at:
  *                             www.st.com/SLA0044
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32f2xx_hal.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Exported types ------------------------------------------------------------*/
/* USER CODE BEGIN ET */

/* USER CODE END ET */

/* Exported constants --------------------------------------------------------*/
/* USER CODE BEGIN EC */

/* USER CODE END EC */

/* Exported macro ------------------------------------------------------------*/
/* USER CODE BEGIN EM */

/* USER CODE END EM */

void HAL_TIM_MspPostInit(TIM_HandleTypeDef *htim);

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);

/* USER CODE BEGIN EFP */

/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/
#define POWER_ELEMENTS_SAMPLING_FREQ 64
#define TIM6_RELOAD (((TIM6_CLOCK_FREQ/(TIM6_PRESCALER+1))/AUDIO_SAMPLING_FREQ)-1)
#define TIM6_CLOCK_FREQ 60000000
#define AUDIO_SAMPLING_FREQ 4096
#define TIM1_RELOAD (((TIM1_CLOCK_FREQ/(TIM1_PRESCALER+1))/POWER_ELEMENTS_SAMPLING_FREQ)-1)
#define TIM6_PRESCALER 0
#define TIM1_CLOCK_FREQ 60000000
#define TIM1_PRESCALER 59
#define TIM3_CLOCK_FREQ 60000000
#define TIM3_RELOAD (((TIM3_CLOCK_FREQ/(TIM3_PRESCALER+1))/POWER_ELEMENTS_SAMPLING_FREQ)-1)
#define TIM3_PRESCALER 59
#define VOID_CARD_DETECT_Pin GPIO_PIN_1
#define VOID_CARD_DETECT_GPIO_Port GPIOA
#define VIBRATION_CTRL_Pin GPIO_PIN_11
#define VIBRATION_CTRL_GPIO_Port GPIOB
#define LAMP_E_CTRL_Pin GPIO_PIN_6
#define LAMP_E_CTRL_GPIO_Port GPIOC
#define LAMP_F_CTRL_Pin GPIO_PIN_7
#define LAMP_F_CTRL_GPIO_Port GPIOC
#define LAMP_A_CTRL_Pin GPIO_PIN_8
#define LAMP_A_CTRL_GPIO_Port GPIOA
#define LAMP_B_CTRL_Pin GPIO_PIN_9
#define LAMP_B_CTRL_GPIO_Port GPIOA
#define LAMP_C_CTRL_Pin GPIO_PIN_10
#define LAMP_C_CTRL_GPIO_Port GPIOA
#define LAMP_D_CTRL_Pin GPIO_PIN_11
#define LAMP_D_CTRL_GPIO_Port GPIOA
/* USER CODE BEGIN Private defines */

/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/

/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
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
/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "fatfs.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "global.h"
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
#define AUDIO_CACHE_SIZE 4096
#define POWER_CTRL_CACHE_SIZE 512
#define POWER_CTRL_CHANNELS 8
/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
DAC_HandleTypeDef hdac;
DMA_HandleTypeDef hdma_dac1;

SD_HandleTypeDef hsd;

TIM_HandleTypeDef htim1;
TIM_HandleTypeDef htim3;
TIM_HandleTypeDef htim6;

/* USER CODE BEGIN PV */
static FATFS fatFsObj;
static FIL audioFile;
static FIL powerCtrlFile;

uint8_t AudioDoubleBuffer[AUDIO_CACHE_SIZE * 2];
uint8_t PowerCtrlDoubleBuffer[POWER_CTRL_CACHE_SIZE * 2];

volatile Bool_t ToggleAudioCache = 0;
volatile uint8_t AudioCacheIdx = 0;
volatile Bool_t TogglePowerCtrlCache = 0;
volatile uint8_t PowerCtrlCacheIdx = 0;
volatile uint16_t PowerCtrlTransferCnt = 0;
/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
static void MX_GPIO_Init(void);
static void MX_DAC_Init(void);
static void MX_SDIO_SD_Init(void);
static void MX_TIM1_Init(void);
static void MX_DMA_Init(void);
static void MX_TIM6_Init(void);
static void MX_TIM3_Init(void);
/* USER CODE BEGIN PFP */

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */

/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{
  /* USER CODE BEGIN 1 */

  /* USER CODE END 1 */

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_DAC_Init();
  MX_SDIO_SD_Init();
  MX_TIM1_Init();
  MX_FATFS_Init();
  MX_DMA_Init();
  MX_TIM6_Init();
  MX_TIM3_Init();
  /* USER CODE BEGIN 2 */
  // Startup delay for the system to be stabilized.
  HAL_Delay(250);

  // Mount file system.
  if (f_mount(&fatFsObj, SDPath, 1) != FR_OK)
  {
    while (1)
      ;
  }

  char fname1[] = "audio.bin";
  if (f_open(&audioFile, fname1, FA_READ) != FR_OK)
  {
    while (1)
      ;
  }

  char fname2[] = "power.bin";
  if (f_open(&powerCtrlFile, fname2, FA_READ) != FR_OK)
  {
    while (1)
      ;
  }

  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  UINT __unused;
  if (f_read(&audioFile, AudioDoubleBuffer, AUDIO_CACHE_SIZE, &__unused) != FR_OK)
  {
    while (1)
      ;
  }

  if (f_read(&powerCtrlFile, PowerCtrlDoubleBuffer, POWER_CTRL_CACHE_SIZE, &__unused) != FR_OK)
  {
    while (1)
      ;
  }

  // Start PWM channels.
  if (HAL_TIM_PWM_Start(&htim3, TIM_CHANNEL_1) != HAL_OK)
  {
    while(1);
  }
  if (HAL_TIM_PWM_Start(&htim3, TIM_CHANNEL_2) != HAL_OK)
  {
    while(1);
  }

  if (HAL_TIM_PWM_Start(&htim1, TIM_CHANNEL_1) != HAL_OK)
  {
    while(1);
  }

  if (HAL_TIM_PWM_Start(&htim1, TIM_CHANNEL_2) != HAL_OK)
  {
    while(1);
  }

  if (HAL_TIM_PWM_Start(&htim1, TIM_CHANNEL_3) != HAL_OK)
  {
    while(1);
  }

  if (HAL_TIM_PWM_Start(&htim1, TIM_CHANNEL_4) != HAL_OK)
  {
    while(1);
  }

  if (HAL_TIM_Base_Start_IT(&htim1) != HAL_OK)
  {
    while(1);
  }

  // Start audio file timebase.
  if (HAL_TIM_Base_Start(&htim6) != HAL_OK)
  {
    while (1)
      ;
  }

  if (HAL_DAC_Start_DMA(&hdac, DAC_CHANNEL_1, (uint32_t *)AudioDoubleBuffer, ((2 * AUDIO_CACHE_SIZE) / sizeof(uint16_t)),
                        DAC_ALIGN_12B_R) != HAL_OK)
  {
    while (1)
      ;
  }
  
  PowerCtrlTransferCnt = ((POWER_CTRL_CACHE_SIZE) / POWER_CTRL_CHANNELS);
  ToggleAudioCache = 1;
  TogglePowerCtrlCache = 1;
  AudioCacheIdx = 1;
  PowerCtrlCacheIdx = 1;

  while (1)
  {
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
    // Read audio file.
    if (ToggleAudioCache)
    {
      Bool_t success = TRUE;
      UINT read_bytes;

      if (f_read(&audioFile, &AudioDoubleBuffer[AudioCacheIdx * AUDIO_CACHE_SIZE], AUDIO_CACHE_SIZE, &read_bytes) != FR_OK)
      {
        success = FALSE;
      }

      if (success && (read_bytes < AUDIO_CACHE_SIZE))
      {
        // Restart file pointer.
        f_rewind(&audioFile);

        // Read the leftovers.
        if (f_read(&audioFile, &AudioDoubleBuffer[AudioCacheIdx * AUDIO_CACHE_SIZE + read_bytes],
                   (AUDIO_CACHE_SIZE - read_bytes), &read_bytes) != FR_OK)
        {
          success = FALSE;
        }
      }

      if (success)
      {
        ToggleAudioCache = FALSE;
        AudioCacheIdx = (AudioCacheIdx + 1) & 0x01;
      }
    }

    // Read power ctrl file.
    if (TogglePowerCtrlCache)
    {
      Bool_t success = TRUE;
      UINT read_bytes;

      if (f_read(&powerCtrlFile, &PowerCtrlDoubleBuffer[PowerCtrlCacheIdx * POWER_CTRL_CACHE_SIZE], POWER_CTRL_CACHE_SIZE,
                 &read_bytes) != FR_OK)
      {
        success = FALSE;
      }

      if (success && (read_bytes < POWER_CTRL_CACHE_SIZE))
      {
        // Restart file pointer.
        f_rewind(&powerCtrlFile);

        // Read the leftovers.
        if (f_read(&powerCtrlFile, &PowerCtrlDoubleBuffer[PowerCtrlCacheIdx * POWER_CTRL_CACHE_SIZE + read_bytes],
                   (POWER_CTRL_CACHE_SIZE - read_bytes), &read_bytes) != FR_OK)
        {
          success = FALSE;
        }
      }

      // If succeeded,
      if (success)
      {
        TogglePowerCtrlCache = FALSE;
        PowerCtrlCacheIdx = (PowerCtrlCacheIdx + 1) & 0x01;
      }
    }
  }

  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

  /** Initializes the RCC Oscillators according to the specified parameters
  * in the RCC_OscInitTypeDef structure.
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSE;
  RCC_OscInitStruct.HSEState = RCC_HSE_ON;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
  RCC_OscInitStruct.PLL.PLLM = 8;
  RCC_OscInitStruct.PLL.PLLN = 240;
  RCC_OscInitStruct.PLL.PLLP = RCC_PLLP_DIV2;
  RCC_OscInitStruct.PLL.PLLQ = 5;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }
  /** Initializes the CPU, AHB and APB buses clocks
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV4;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV4;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_3) != HAL_OK)
  {
    Error_Handler();
  }
}

/**
  * @brief DAC Initialization Function
  * @param None
  * @retval None
  */
static void MX_DAC_Init(void)
{

  /* USER CODE BEGIN DAC_Init 0 */

  /* USER CODE END DAC_Init 0 */

  DAC_ChannelConfTypeDef sConfig = {0};

  /* USER CODE BEGIN DAC_Init 1 */

  /* USER CODE END DAC_Init 1 */
  /** DAC Initialization
  */
  hdac.Instance = DAC;
  if (HAL_DAC_Init(&hdac) != HAL_OK)
  {
    Error_Handler();
  }
  /** DAC channel OUT1 config
  */
  sConfig.DAC_Trigger = DAC_TRIGGER_T6_TRGO;
  sConfig.DAC_OutputBuffer = DAC_OUTPUTBUFFER_ENABLE;
  if (HAL_DAC_ConfigChannel(&hdac, &sConfig, DAC_CHANNEL_1) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN DAC_Init 2 */

  /* USER CODE END DAC_Init 2 */

}

/**
  * @brief SDIO Initialization Function
  * @param None
  * @retval None
  */
static void MX_SDIO_SD_Init(void)
{

  /* USER CODE BEGIN SDIO_Init 0 */

  /* USER CODE END SDIO_Init 0 */

  /* USER CODE BEGIN SDIO_Init 1 */

  /* USER CODE END SDIO_Init 1 */
  hsd.Instance = SDIO;
  hsd.Init.ClockEdge = SDIO_CLOCK_EDGE_RISING;
  hsd.Init.ClockBypass = SDIO_CLOCK_BYPASS_DISABLE;
  hsd.Init.ClockPowerSave = SDIO_CLOCK_POWER_SAVE_DISABLE;
  hsd.Init.BusWide = SDIO_BUS_WIDE_1B;
  hsd.Init.HardwareFlowControl = SDIO_HARDWARE_FLOW_CONTROL_DISABLE;
  hsd.Init.ClockDiv = 3;
  /* USER CODE BEGIN SDIO_Init 2 */

  /* USER CODE END SDIO_Init 2 */

}

/**
  * @brief TIM1 Initialization Function
  * @param None
  * @retval None
  */
static void MX_TIM1_Init(void)
{

  /* USER CODE BEGIN TIM1_Init 0 */

  /* USER CODE END TIM1_Init 0 */

  TIM_ClockConfigTypeDef sClockSourceConfig = {0};
  TIM_MasterConfigTypeDef sMasterConfig = {0};
  TIM_OC_InitTypeDef sConfigOC = {0};
  TIM_BreakDeadTimeConfigTypeDef sBreakDeadTimeConfig = {0};

  /* USER CODE BEGIN TIM1_Init 1 */

  /* USER CODE END TIM1_Init 1 */
  htim1.Instance = TIM1;
  htim1.Init.Prescaler = TIM1_PRESCALER;
  htim1.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim1.Init.Period = TIM1_RELOAD;
  htim1.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
  htim1.Init.RepetitionCounter = 0;
  htim1.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE;
  if (HAL_TIM_Base_Init(&htim1) != HAL_OK)
  {
    Error_Handler();
  }
  sClockSourceConfig.ClockSource = TIM_CLOCKSOURCE_INTERNAL;
  if (HAL_TIM_ConfigClockSource(&htim1, &sClockSourceConfig) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_TIM_PWM_Init(&htim1) != HAL_OK)
  {
    Error_Handler();
  }
  sMasterConfig.MasterOutputTrigger = TIM_TRGO_ENABLE;
  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
  if (HAL_TIMEx_MasterConfigSynchronization(&htim1, &sMasterConfig) != HAL_OK)
  {
    Error_Handler();
  }
  sConfigOC.OCMode = TIM_OCMODE_PWM1;
  sConfigOC.Pulse = 0;
  sConfigOC.OCPolarity = TIM_OCPOLARITY_HIGH;
  sConfigOC.OCNPolarity = TIM_OCNPOLARITY_HIGH;
  sConfigOC.OCFastMode = TIM_OCFAST_DISABLE;
  sConfigOC.OCIdleState = TIM_OCIDLESTATE_RESET;
  sConfigOC.OCNIdleState = TIM_OCNIDLESTATE_RESET;
  if (HAL_TIM_PWM_ConfigChannel(&htim1, &sConfigOC, TIM_CHANNEL_1) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_TIM_PWM_ConfigChannel(&htim1, &sConfigOC, TIM_CHANNEL_2) != HAL_OK)
  {
    Error_Handler();
  }
  sConfigOC.Pulse = 1;
  if (HAL_TIM_PWM_ConfigChannel(&htim1, &sConfigOC, TIM_CHANNEL_3) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_TIM_PWM_ConfigChannel(&htim1, &sConfigOC, TIM_CHANNEL_4) != HAL_OK)
  {
    Error_Handler();
  }
  sBreakDeadTimeConfig.OffStateRunMode = TIM_OSSR_DISABLE;
  sBreakDeadTimeConfig.OffStateIDLEMode = TIM_OSSI_DISABLE;
  sBreakDeadTimeConfig.LockLevel = TIM_LOCKLEVEL_OFF;
  sBreakDeadTimeConfig.DeadTime = 0;
  sBreakDeadTimeConfig.BreakState = TIM_BREAK_DISABLE;
  sBreakDeadTimeConfig.BreakPolarity = TIM_BREAKPOLARITY_HIGH;
  sBreakDeadTimeConfig.AutomaticOutput = TIM_AUTOMATICOUTPUT_DISABLE;
  if (HAL_TIMEx_ConfigBreakDeadTime(&htim1, &sBreakDeadTimeConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN TIM1_Init 2 */

  /* USER CODE END TIM1_Init 2 */
  HAL_TIM_MspPostInit(&htim1);

}

/**
  * @brief TIM3 Initialization Function
  * @param None
  * @retval None
  */
static void MX_TIM3_Init(void)
{

  /* USER CODE BEGIN TIM3_Init 0 */

  /* USER CODE END TIM3_Init 0 */

  TIM_ClockConfigTypeDef sClockSourceConfig = {0};
  TIM_SlaveConfigTypeDef sSlaveConfig = {0};
  TIM_MasterConfigTypeDef sMasterConfig = {0};
  TIM_OC_InitTypeDef sConfigOC = {0};

  /* USER CODE BEGIN TIM3_Init 1 */

  /* USER CODE END TIM3_Init 1 */
  htim3.Instance = TIM3;
  htim3.Init.Prescaler = TIM3_PRESCALER;
  htim3.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim3.Init.Period = TIM3_RELOAD;
  htim3.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
  htim3.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE;
  if (HAL_TIM_Base_Init(&htim3) != HAL_OK)
  {
    Error_Handler();
  }
  sClockSourceConfig.ClockSource = TIM_CLOCKSOURCE_INTERNAL;
  if (HAL_TIM_ConfigClockSource(&htim3, &sClockSourceConfig) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_TIM_PWM_Init(&htim3) != HAL_OK)
  {
    Error_Handler();
  }
  sSlaveConfig.SlaveMode = TIM_SLAVEMODE_GATED;
  sSlaveConfig.InputTrigger = TIM_TS_ITR0;
  if (HAL_TIM_SlaveConfigSynchro(&htim3, &sSlaveConfig) != HAL_OK)
  {
    Error_Handler();
  }
  sMasterConfig.MasterOutputTrigger = TIM_TRGO_RESET;
  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
  if (HAL_TIMEx_MasterConfigSynchronization(&htim3, &sMasterConfig) != HAL_OK)
  {
    Error_Handler();
  }
  sConfigOC.OCMode = TIM_OCMODE_PWM1;
  sConfigOC.Pulse = 1;
  sConfigOC.OCPolarity = TIM_OCPOLARITY_HIGH;
  sConfigOC.OCFastMode = TIM_OCFAST_DISABLE;
  if (HAL_TIM_PWM_ConfigChannel(&htim3, &sConfigOC, TIM_CHANNEL_1) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_TIM_PWM_ConfigChannel(&htim3, &sConfigOC, TIM_CHANNEL_2) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN TIM3_Init 2 */

  /* USER CODE END TIM3_Init 2 */
  HAL_TIM_MspPostInit(&htim3);

}

/**
  * @brief TIM6 Initialization Function
  * @param None
  * @retval None
  */
static void MX_TIM6_Init(void)
{

  /* USER CODE BEGIN TIM6_Init 0 */

  /* USER CODE END TIM6_Init 0 */

  TIM_MasterConfigTypeDef sMasterConfig = {0};

  /* USER CODE BEGIN TIM6_Init 1 */

  /* USER CODE END TIM6_Init 1 */
  htim6.Instance = TIM6;
  htim6.Init.Prescaler = TIM6_PRESCALER;
  htim6.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim6.Init.Period = TIM6_RELOAD;
  htim6.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE;
  if (HAL_TIM_Base_Init(&htim6) != HAL_OK)
  {
    Error_Handler();
  }
  sMasterConfig.MasterOutputTrigger = TIM_TRGO_UPDATE;
  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
  if (HAL_TIMEx_MasterConfigSynchronization(&htim6, &sMasterConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN TIM6_Init 2 */

  /* USER CODE END TIM6_Init 2 */

}

/**
  * Enable DMA controller clock
  */
static void MX_DMA_Init(void)
{

  /* DMA controller clock enable */
  __HAL_RCC_DMA1_CLK_ENABLE();

  /* DMA interrupt init */
  /* DMA1_Stream5_IRQn interrupt configuration */
  HAL_NVIC_SetPriority(DMA1_Stream5_IRQn, 0, 0);
  HAL_NVIC_EnableIRQ(DMA1_Stream5_IRQn);

}

/**
  * @brief GPIO Initialization Function
  * @param None
  * @retval None
  */
static void MX_GPIO_Init(void)
{
  GPIO_InitTypeDef GPIO_InitStruct = {0};

  /* GPIO Ports Clock Enable */
  __HAL_RCC_GPIOH_CLK_ENABLE();
  __HAL_RCC_GPIOA_CLK_ENABLE();
  __HAL_RCC_GPIOB_CLK_ENABLE();
  __HAL_RCC_GPIOC_CLK_ENABLE();
  __HAL_RCC_GPIOD_CLK_ENABLE();

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(VIBRATION_CTRL_GPIO_Port, VIBRATION_CTRL_Pin, GPIO_PIN_RESET);

  /*Configure GPIO pin : VOID_CARD_DETECT_Pin */
  GPIO_InitStruct.Pin = VOID_CARD_DETECT_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
  GPIO_InitStruct.Pull = GPIO_PULLDOWN;
  HAL_GPIO_Init(VOID_CARD_DETECT_GPIO_Port, &GPIO_InitStruct);

  /*Configure GPIO pin : VIBRATION_CTRL_Pin */
  GPIO_InitStruct.Pin = VIBRATION_CTRL_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(VIBRATION_CTRL_GPIO_Port, &GPIO_InitStruct);

}

/* USER CODE BEGIN 4 */
void HAL_DAC_ConvHalfCpltCallbackCh1(DAC_HandleTypeDef *__hdac)
{
  if (__hdac == &hdac)
  {
    ToggleAudioCache = TRUE;
  }
}

void HAL_DAC_ConvCpltCallbackCh1(DAC_HandleTypeDef *__hdac)
{
  if (__hdac == &hdac)
  {
    ToggleAudioCache = TRUE;
  }
}

void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *__htim)
{
  if (__htim == &htim1)
  {
    if (PowerCtrlTransferCnt == ((POWER_CTRL_CACHE_SIZE) / POWER_CTRL_CHANNELS))
    {
      TogglePowerCtrlCache = TRUE;
    }
    
    if (PowerCtrlTransferCnt >= ((2 * POWER_CTRL_CACHE_SIZE) / POWER_CTRL_CHANNELS))
    {
      TogglePowerCtrlCache = TRUE;
      PowerCtrlTransferCnt = 0;
    }

    // Parse and set compare values.
    uint16_t comp1, comp2, comp3, comp4, comp5, comp6;
    Bool_t vib;
    comp1 = ((uint32_t)PowerCtrlDoubleBuffer[PowerCtrlTransferCnt * POWER_CTRL_CHANNELS] * TIM1_RELOAD) >> 8;
    comp2 = ((uint32_t)PowerCtrlDoubleBuffer[PowerCtrlTransferCnt * POWER_CTRL_CHANNELS + 1] * TIM1_RELOAD) >> 8;
    comp3 = ((uint32_t)PowerCtrlDoubleBuffer[PowerCtrlTransferCnt * POWER_CTRL_CHANNELS + 2] * TIM1_RELOAD) >> 8;
    comp4 = ((uint32_t)PowerCtrlDoubleBuffer[PowerCtrlTransferCnt * POWER_CTRL_CHANNELS + 3] * TIM1_RELOAD) >> 8;
    comp5 = ((uint32_t)PowerCtrlDoubleBuffer[PowerCtrlTransferCnt * POWER_CTRL_CHANNELS + 4] * TIM3_RELOAD) >> 8;
    comp6 = ((uint32_t)PowerCtrlDoubleBuffer[PowerCtrlTransferCnt * POWER_CTRL_CHANNELS + 5] * TIM3_RELOAD) >> 8;

    vib = PowerCtrlDoubleBuffer[PowerCtrlTransferCnt * POWER_CTRL_CHANNELS + 6] != 0 ? TRUE:FALSE;

    __HAL_TIM_SET_COMPARE(&htim1, TIM_CHANNEL_1, comp1);
    __HAL_TIM_SET_COMPARE(&htim1, TIM_CHANNEL_2, comp2);
    __HAL_TIM_SET_COMPARE(&htim1, TIM_CHANNEL_3, comp3);
    __HAL_TIM_SET_COMPARE(&htim1, TIM_CHANNEL_4, comp4);
    __HAL_TIM_SET_COMPARE(&htim3, TIM_CHANNEL_1, comp5);
    __HAL_TIM_SET_COMPARE(&htim3, TIM_CHANNEL_2, comp6);

    if (vib)
    {
      HAL_GPIO_WritePin(VIBRATION_CTRL_GPIO_Port, VIBRATION_CTRL_Pin, GPIO_PIN_SET);
    }
    else
    {
      HAL_GPIO_WritePin(VIBRATION_CTRL_GPIO_Port, VIBRATION_CTRL_Pin, GPIO_PIN_RESET);
    }

    PowerCtrlTransferCnt++;
  }
}
/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */
  __disable_irq();
  while (1)
  {
  }
  /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/

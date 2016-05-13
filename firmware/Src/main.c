/**
  ******************************************************************************
  * File Name          : main.c
  * Description        : Main program body
  ******************************************************************************
  *
  * COPYRIGHT(c) 2016 STMicroelectronics
  *
  * Redistribution and use in source and binary forms, with or without modification,
  * are permitted provided that the following conditions are met:
  *   1. Redistributions of source code must retain the above copyright notice,
  *      this list of conditions and the following disclaimer.
  *   2. Redistributions in binary form must reproduce the above copyright notice,
  *      this list of conditions and the following disclaimer in the documentation
  *      and/or other materials provided with the distribution.
  *   3. Neither the name of STMicroelectronics nor the names of its contributors
  *      may be used to endorse or promote products derived from this software
  *      without specific prior written permission.
  *
  * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
  * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
  * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
  * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
  * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
  * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
  * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
  * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  *
  ******************************************************************************
  */
/* Includes ------------------------------------------------------------------*/
#include "stm32f3xx_hal.h"
#include "adc.h"
#include "dma.h"
#include "opamp.h"
#include "spi.h"
#include "tim.h"
#include "usart.h"
#include "gpio.h"

/* USER CODE BEGIN Includes */
#include <string.h>
/* USER CODE END Includes */

/* Private variables ---------------------------------------------------------*/

/* USER CODE BEGIN PV */
/* Private variables ---------------------------------------------------------*/

struct ADC_Packet{
	uint32_t preamble;
	uint16_t channel;
	uint16_t buffer[1001];
};

#define PREAMBLE 0xFFFFF0F0

struct __attribute__((packed)) ADC_Packet ADC1_Packet = {PREAMBLE,1,{0}};
struct __attribute__((packed)) ADC_Packet ADC2_Packet = {PREAMBLE,2,{0}};
struct __attribute__((packed)) ADC_Packet ADC3_Packet = {PREAMBLE,3,{0}};
struct __attribute__((packed)) ADC_Packet ADC4_Packet = {PREAMBLE,4,{0}};

uint8_t ADC_doublebufferbit[4] = {0};
uint8_t ADC1_doublebuffer[2][2000] = {{0},{0}};
uint8_t ADC2_doublebuffer[2][2000] = {{0},{0}};
uint8_t ADC3_doublebuffer[2][2000] = {{0},{0}};
uint8_t ADC4_doublebuffer[2][2000] = {{0},{0}};

extern const unsigned short me_encode_tab[];
/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);

/* USER CODE BEGIN PFP */
/* Private function prototypes -----------------------------------------------*/

/* USER CODE END PFP */

/* USER CODE BEGIN 0 */

void me_encode(uint8_t raw[],uint16_t encoded[], uint16_t length)
{
	for (int i = 0; i < length; i++) {
		encoded[i] = me_encode_tab[raw[i]];
	}
}

void HAL_UART_TxCpltCallback(UART_HandleTypeDef* huart)
{
//	__HAL_UART_SEND_REQ(&huart1 ,UART_SENDBREAK_REQUEST);
}

void HAL_ADC_ConvCpltCallback(ADC_HandleTypeDef* hadc)
{
	HAL_ADC_Stop(hadc);
	if (&hadc1 == hadc) {
		//me_encode(ADC1_doublebuffer[ADC_doublebufferbit[0]],ADC1_Packet.buffer, 2000);
		//ADC_doublebufferbit[0] = ADC_doublebufferbit[0] ? 0 : 1;
		HAL_UART_Transmit_DMA(&huart1, (uint8_t*)&ADC1_Packet, sizeof(struct ADC_Packet));
	}
	if (&hadc4 == hadc) {
		//me_encode(ADC4_doublebuffer[ADC_doublebufferbit[3]],ADC4_Packet.buffer, 2000);
		//ADC_doublebufferbit[3] = ADC_doublebufferbit[3] ? 0 : 1;
		HAL_UART_Transmit_DMA(&huart1, (uint8_t*)&ADC4_Packet, sizeof(struct ADC_Packet));
	}
}

void HAL_ADC_ConvHalfCpltCallback(ADC_HandleTypeDef* hadc)
{
	if (&hadc1 == hadc) {
		HAL_ADC_Start_DMA(&hadc4, (uint32_t*)ADC4_Packet.buffer, 1000);
	}
	if (&hadc4 == hadc) {
		HAL_ADC_Start_DMA(&hadc1, (uint32_t*)ADC1_Packet.buffer, 1000);
	}
}

/* USER CODE END 0 */

int main(void)
{

  /* USER CODE BEGIN 1 */
  /* USER CODE END 1 */

  /* MCU Configuration----------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* Configure the system clock */
  SystemClock_Config();

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_DMA_Init();
  MX_ADC1_Init();
  MX_OPAMP1_Init();
  MX_OPAMP2_Init();
  MX_OPAMP3_Init();
  MX_OPAMP4_Init();
  MX_USART1_UART_Init();
  MX_ADC4_Init();
  MX_SPI1_Init();
  MX_TIM3_Init();

  /* USER CODE BEGIN 2 */
  HAL_ADC_Stop_DMA(&hadc1);
  //  HAL_ADC_Stop_DMA(&hadc2);
  //  HAL_ADC_Stop_DMA(&hadc3);
  HAL_ADC_Stop_DMA(&hadc4);

  HAL_StatusTypeDef HAL_Status;
  HAL_Status = HAL_ADCEx_Calibration_SetValue(&hadc1, ADC_SINGLE_ENDED, 0);
  if (HAL_Status != HAL_OK)
	  return 0;
  HAL_Status = HAL_OPAMP_Start(&hopamp1);
  if (HAL_Status != HAL_OK)
	  return 0;

  HAL_Status = HAL_ADCEx_Calibration_SetValue(&hadc4, ADC_SINGLE_ENDED, 0);
    if (HAL_Status != HAL_OK)
  	  return 0;
    HAL_Status = HAL_OPAMP_Start(&hopamp4);
    if (HAL_Status != HAL_OK)
  	  return 0;

  HAL_StatusTypeDef ADC_DMA_Status = HAL_ADC_Start_DMA(&hadc1, (uint32_t*)ADC1_Packet.buffer, 1000);
  if (ADC_DMA_Status != HAL_OK)
	  return 0;

  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1)
  {
  /* USER CODE END WHILE */

  /* USER CODE BEGIN 3 */
	  HAL_PWR_EnterSLEEPMode(PWR_MAINREGULATOR_ON, PWR_SLEEPENTRY_WFI);
  }
  /* USER CODE END 3 */

}

/** System Clock Configuration
*/
void SystemClock_Config(void)
{

  RCC_OscInitTypeDef RCC_OscInitStruct;
  RCC_ClkInitTypeDef RCC_ClkInitStruct;
  RCC_PeriphCLKInitTypeDef PeriphClkInit;

  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSE;
  RCC_OscInitStruct.HSEState = RCC_HSE_ON;
  RCC_OscInitStruct.HSEPredivValue = RCC_HSE_PREDIV_DIV1;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
  RCC_OscInitStruct.PLL.PLLMUL = RCC_PLL_MUL8;
  HAL_RCC_OscConfig(&RCC_OscInitStruct);

  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV2;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;
  HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_2);

  PeriphClkInit.PeriphClockSelection = RCC_PERIPHCLK_USART1;
  PeriphClkInit.Usart1ClockSelection = RCC_USART1CLKSOURCE_SYSCLK;
  HAL_RCCEx_PeriphCLKConfig(&PeriphClkInit);

  HAL_SYSTICK_Config(HAL_RCC_GetHCLKFreq()/1000);

  HAL_SYSTICK_CLKSourceConfig(SYSTICK_CLKSOURCE_HCLK);

  /* SysTick_IRQn interrupt configuration */
  HAL_NVIC_SetPriority(SysTick_IRQn, 0, 0);
}

/* USER CODE BEGIN 4 */

/* USER CODE END 4 */

#ifdef USE_FULL_ASSERT

/**
   * @brief Reports the name of the source file and the source line number
   * where the assert_param error has occurred.
   * @param file: pointer to the source file name
   * @param line: assert_param error line source number
   * @retval None
   */
void assert_failed(uint8_t* file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
    ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */

}

#endif

/**
  * @}
  */ 

/**
  * @}
*/ 

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/

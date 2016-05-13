/**
  ******************************************************************************
  * File Name          : OPAMP.c
  * Description        : This file provides code for the configuration
  *                      of the OPAMP instances.
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
#include "opamp.h"

#include "gpio.h"

/* USER CODE BEGIN 0 */

/* USER CODE END 0 */

OPAMP_HandleTypeDef hopamp1;
OPAMP_HandleTypeDef hopamp2;
OPAMP_HandleTypeDef hopamp3;
OPAMP_HandleTypeDef hopamp4;

/* OPAMP1 init function */
void MX_OPAMP1_Init(void)
{

  hopamp1.Instance = OPAMP1;
  hopamp1.Init.Mode = OPAMP_STANDALONE_MODE;
  hopamp1.Init.NonInvertingInput = OPAMP_NONINVERTINGINPUT_VP0;
  hopamp1.Init.InvertingInput = IOPAMP_INVERTINGINPUT_VM1;
  hopamp1.Init.TimerControlledMuxmode = OPAMP_TIMERCONTROLLEDMUXMODE_DISABLE;
  hopamp1.Init.UserTrimming = OPAMP_TRIMMING_FACTORY;
  HAL_OPAMP_Init(&hopamp1);

}
/* OPAMP2 init function */
void MX_OPAMP2_Init(void)
{

  hopamp2.Instance = OPAMP2;
  hopamp2.Init.Mode = OPAMP_STANDALONE_MODE;
  hopamp2.Init.NonInvertingInput = OPAMP_NONINVERTINGINPUT_VP0;
  hopamp2.Init.InvertingInput = IOPAMP_INVERTINGINPUT_VM1;
  hopamp2.Init.TimerControlledMuxmode = OPAMP_TIMERCONTROLLEDMUXMODE_DISABLE;
  hopamp2.Init.UserTrimming = OPAMP_TRIMMING_FACTORY;
  HAL_OPAMP_Init(&hopamp2);

}
/* OPAMP3 init function */
void MX_OPAMP3_Init(void)
{

  hopamp3.Instance = OPAMP3;
  hopamp3.Init.Mode = OPAMP_STANDALONE_MODE;
  hopamp3.Init.NonInvertingInput = OPAMP_NONINVERTINGINPUT_VP0;
  hopamp3.Init.InvertingInput = IOPAMP_INVERTINGINPUT_VM1;
  hopamp3.Init.TimerControlledMuxmode = OPAMP_TIMERCONTROLLEDMUXMODE_DISABLE;
  hopamp3.Init.UserTrimming = OPAMP_TRIMMING_FACTORY;
  HAL_OPAMP_Init(&hopamp3);

}
/* OPAMP4 init function */
void MX_OPAMP4_Init(void)
{

  hopamp4.Instance = OPAMP4;
  hopamp4.Init.Mode = OPAMP_STANDALONE_MODE;
  hopamp4.Init.NonInvertingInput = OPAMP_NONINVERTINGINPUT_VP0;
  hopamp4.Init.InvertingInput = IOPAMP_INVERTINGINPUT_VM0;
  hopamp4.Init.TimerControlledMuxmode = OPAMP_TIMERCONTROLLEDMUXMODE_DISABLE;
  hopamp4.Init.UserTrimming = OPAMP_TRIMMING_FACTORY;
  HAL_OPAMP_Init(&hopamp4);

}

void HAL_OPAMP_MspInit(OPAMP_HandleTypeDef* hopamp)
{

  GPIO_InitTypeDef GPIO_InitStruct;
  if(hopamp->Instance==OPAMP1)
  {
  /* USER CODE BEGIN OPAMP1_MspInit 0 */

  /* USER CODE END OPAMP1_MspInit 0 */
  
    /**OPAMP1 GPIO Configuration    
    PA1     ------> OPAMP1_VINP
    PA2     ------> OPAMP1_VOUT
    PA3     ------> OPAMP1_VINM 
    */
    GPIO_InitStruct.Pin = GPIO_PIN_1|GPIO_PIN_2|GPIO_PIN_3;
    GPIO_InitStruct.Mode = GPIO_MODE_ANALOG;
    GPIO_InitStruct.Pull = GPIO_NOPULL;
    HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

  /* USER CODE BEGIN OPAMP1_MspInit 1 */

  /* USER CODE END OPAMP1_MspInit 1 */
  }
  else if(hopamp->Instance==OPAMP2)
  {
  /* USER CODE BEGIN OPAMP2_MspInit 0 */

  /* USER CODE END OPAMP2_MspInit 0 */
  
    /**OPAMP2 GPIO Configuration    
    PA5     ------> OPAMP2_VINM
    PA6     ------> OPAMP2_VOUT
    PA7     ------> OPAMP2_VINP 
    */
    GPIO_InitStruct.Pin = GPIO_PIN_5|GPIO_PIN_6|GPIO_PIN_7;
    GPIO_InitStruct.Mode = GPIO_MODE_ANALOG;
    GPIO_InitStruct.Pull = GPIO_NOPULL;
    HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

  /* USER CODE BEGIN OPAMP2_MspInit 1 */

  /* USER CODE END OPAMP2_MspInit 1 */
  }
  else if(hopamp->Instance==OPAMP3)
  {
  /* USER CODE BEGIN OPAMP3_MspInit 0 */

  /* USER CODE END OPAMP3_MspInit 0 */
  
    /**OPAMP3 GPIO Configuration    
    PB0     ------> OPAMP3_VINP
    PB1     ------> OPAMP3_VOUT
    PB2     ------> OPAMP3_VINM 
    */
    GPIO_InitStruct.Pin = GPIO_PIN_0|GPIO_PIN_1|GPIO_PIN_2;
    GPIO_InitStruct.Mode = GPIO_MODE_ANALOG;
    GPIO_InitStruct.Pull = GPIO_NOPULL;
    HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);

  /* USER CODE BEGIN OPAMP3_MspInit 1 */

  /* USER CODE END OPAMP3_MspInit 1 */
  }
  else if(hopamp->Instance==OPAMP4)
  {
  /* USER CODE BEGIN OPAMP4_MspInit 0 */

  /* USER CODE END OPAMP4_MspInit 0 */
  
    /**OPAMP4 GPIO Configuration    
    PB10     ------> OPAMP4_VINM
    PB12     ------> OPAMP4_VOUT
    PB13     ------> OPAMP4_VINP 
    */
    GPIO_InitStruct.Pin = GPIO_PIN_10|GPIO_PIN_12|GPIO_PIN_13;
    GPIO_InitStruct.Mode = GPIO_MODE_ANALOG;
    GPIO_InitStruct.Pull = GPIO_NOPULL;
    HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);

  /* USER CODE BEGIN OPAMP4_MspInit 1 */

  /* USER CODE END OPAMP4_MspInit 1 */
  }
}

void HAL_OPAMP_MspDeInit(OPAMP_HandleTypeDef* hopamp)
{

  if(hopamp->Instance==OPAMP1)
  {
  /* USER CODE BEGIN OPAMP1_MspDeInit 0 */

  /* USER CODE END OPAMP1_MspDeInit 0 */
  
    /**OPAMP1 GPIO Configuration    
    PA1     ------> OPAMP1_VINP
    PA2     ------> OPAMP1_VOUT
    PA3     ------> OPAMP1_VINM 
    */
    HAL_GPIO_DeInit(GPIOA, GPIO_PIN_1|GPIO_PIN_2|GPIO_PIN_3);

  /* USER CODE BEGIN OPAMP1_MspDeInit 1 */

  /* USER CODE END OPAMP1_MspDeInit 1 */
  }
  else if(hopamp->Instance==OPAMP2)
  {
  /* USER CODE BEGIN OPAMP2_MspDeInit 0 */

  /* USER CODE END OPAMP2_MspDeInit 0 */
  
    /**OPAMP2 GPIO Configuration    
    PA5     ------> OPAMP2_VINM
    PA6     ------> OPAMP2_VOUT
    PA7     ------> OPAMP2_VINP 
    */
    HAL_GPIO_DeInit(GPIOA, GPIO_PIN_5|GPIO_PIN_6|GPIO_PIN_7);

  /* USER CODE BEGIN OPAMP2_MspDeInit 1 */

  /* USER CODE END OPAMP2_MspDeInit 1 */
  }
  else if(hopamp->Instance==OPAMP3)
  {
  /* USER CODE BEGIN OPAMP3_MspDeInit 0 */

  /* USER CODE END OPAMP3_MspDeInit 0 */
  
    /**OPAMP3 GPIO Configuration    
    PB0     ------> OPAMP3_VINP
    PB1     ------> OPAMP3_VOUT
    PB2     ------> OPAMP3_VINM 
    */
    HAL_GPIO_DeInit(GPIOB, GPIO_PIN_0|GPIO_PIN_1|GPIO_PIN_2);

  /* USER CODE BEGIN OPAMP3_MspDeInit 1 */

  /* USER CODE END OPAMP3_MspDeInit 1 */
  }
  else if(hopamp->Instance==OPAMP4)
  {
  /* USER CODE BEGIN OPAMP4_MspDeInit 0 */

  /* USER CODE END OPAMP4_MspDeInit 0 */
  
    /**OPAMP4 GPIO Configuration    
    PB10     ------> OPAMP4_VINM
    PB12     ------> OPAMP4_VOUT
    PB13     ------> OPAMP4_VINP 
    */
    HAL_GPIO_DeInit(GPIOB, GPIO_PIN_10|GPIO_PIN_12|GPIO_PIN_13);

  /* USER CODE BEGIN OPAMP4_MspDeInit 1 */

  /* USER CODE END OPAMP4_MspDeInit 1 */
  }
} 

/* USER CODE BEGIN 1 */

/* USER CODE END 1 */

/**
  * @}
  */

/**
  * @}
  */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/

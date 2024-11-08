/**
  ******************************************************************************
  * @file      startup_cw32l010.s
  * @author    Ankali-Aylina
  * @brief     CW32L010 devices vector table GCC toolchain.
  *            This module performs:
  *                - Set the initial SP
  *                - Set the initial PC == Reset_Handler,
  *                - Set the vector table entries with the exceptions ISR address
  *                - Branches to main in the C library (which eventually
  *                  calls main()).
  *            After Reset the Cortex-M0+ processor is in Thread mode,
  *            priority is Privileged, and the Stack is set to Main.
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2024-2028 Ankali-Aylina
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  * P.s: I hope this document can help you and make it easier for you to learn CW32L010. 
  *      At the same time, when sharing this document, I hope you will not delete this paragraph. 
  *      Only when everyone starts to maintain the open source environment can our open source spirit continue. 
  *      Thank you for reading here!
  ******************************************************************************
  */

.syntax unified
.cpu cortex-m0plus
.fpu softvfp
.thumb

.global g_pfnVectors
.global Default_Handler

/* start address for the initialization values of the .data section.
defined in linker script */
/* .data部分初始化值的开始地址 */
.word _sidata
/* start address for the .data section. defined in linker script */
/* .data开始地址 */
.word _sdata
/* end address for the .data section. defined in linker script */
/* .data结束地址 */
.word _edata
/* start address for the .bss section. defined in linker script */
/* .bss开始地址 */
.word _sbss
/* end address for the .bss section. defined in linker script */
/* .bss的结束地址 */
.word _ebss

/**
 * @brief  This is the code that gets called when the processor first
 *          starts execution following a reset event. Only the absolutely
 *          necessary set is performed, after which the application
 *          supplied main() routine is called.
 * @param  None
 * @retval None
*/

  .section .text.Reset_Handler
  .weak Reset_Handler
  .type Reset_Handler, %function
Reset_Handler:
  ldr   r0, =_estack
  mov   sp, r0          /* set stack pointer */

/* Call the clock system initialization function.*/
/*调用时钟系统初始化函数。*/
  bl  SystemInit

/* Copy the data segment initializers from flash to SRAM */
/*将数据段初始化器从闪存复制到SRAM */
  ldr r0, =_sdata
  ldr r1, =_edata
  ldr r2, =_sidata
  movs r3, #0
  b LoopCopyDataInit

CopyDataInit:
  ldr r4, [r2, r3]
  str r4, [r0, r3]
  adds r3, r3, #4

LoopCopyDataInit:
  adds r4, r0, r3
  cmp r4, r1
  bcc CopyDataInit

/* Zero fill the bss segment. */
/*零填充bss区段。*/
  ldr r2, =_sbss
  ldr r4, =_ebss
  movs r3, #0
  b LoopFillZerobss

FillZerobss:
  str  r3, [r2]
  adds r2, r2, #4

LoopFillZerobss:
  cmp r2, r4
  bcc FillZerobss

/* Call static constructors */
/*调用静态构造函数*/
  bl __libc_init_array
/* Call the application s entry point.*/
/*调用应用程序的入口点。*/
  bl main

LoopForever:
  b LoopForever

.size Reset_Handler, .-Reset_Handler

/**
 * @brief  This is the code that gets called when the processor receives an
 *         unexpected interrupt.  This simply enters an infinite loop, preserving
 *         the system state for examination by a debugger.
 *
 * @param  None
 * @retval None
*/

/**
* @brief这是当处理器收到
*意外中断。这只是进入一个无限循环，保留
*由调试器检查的系统状态。
*
* @param None
* @retval None
*/
  .section .text.Default_Handler,"ax",%progbits
Default_Handler:
Infinite_Loop:
  b Infinite_Loop
  .size Default_Handler, .-Default_Handler

/******************************************************************************
*
* The minimal vector table for a Cortex M0.  Note that the proper constructs
* must be placed on this to ensure that it ends up at physical address
* 0x0000.0000.
*
******************************************************************************/
/******************************************************************************
*
*Cortex M0的最小向量表。请注意，正确的构造
*必须放置在此，以确保它最终到达物理地址
* 0x0000.0000。
*
******************************************************************************/
  .section .isr_vector,"a",%progbits
  .type g_pfnVectors, %object
  .size g_pfnVectors, .-g_pfnVectors

g_pfnVectors:
  .word  _estack
  .word  Reset_Handler                  /* Reset Handler */
  .word  NMI_Handler                    /* NMI Handler */
  .word  HardFault_Handler              /* Hard Fault Handler */
  .word  0                              /* Reserved */
  .word  0                              /* Reserved */
  .word  0                              /* Reserved */
  .word  0                              /* Reserved */
  .word  0                              /* Reserved */
  .word  0                              /* Reserved */
  .word  0                              /* Reserved */
  .word  SVC_Handler                    /* SVCall Handler */
  .word  0                              /* Reserved */
  .word  0                              /* Reserved */
  .word  PendSV_Handler                 /* PendSV Handler */
  .word  SysTick_Handler                /* SysTick Handler */

  .word WDT_IRQHandler            /* 0 Watch Dog Timer Interrupt Handler         */
  .word LVD_IRQHandler            /* 1 Low Voltage Detect Interrupt Handler      */
  .word RTC_IRQHandler            /* 2 Real Time Clock Interrupt Handler         */
  .word FLASHRAM_IRQHandler       /* 3 Flash/RAM Interrupt Handler               */
  .word SYSCTRL_IRQHandler        /* 4 System Control Interrupt Handler          */
  .word GPIOA_IRQHandler          /* 5 GPIOA Interrupt Handler                   */
  .word GPIOB_IRQHandler          /* 6 GPIOB Interrupt Handler                   */
  .word 0                         /* 7 Reserved                                  */
  .word 0                         /* 8 Reserved                                  */
  .word 0                         /* 9 Reserved                                  */
  .word 0                         /* 10 Reserved                                 */
  .word 0                         /* 11 Reserved                                 */
  .word ADC_IRQHandler            /* 12 ADC Interrupt Handler                    */
  .word ATIM_IRQHandler           /* 13 Advanced Timer Interrupt Handler         */
  .word VC1_IRQHandler            /* 14 Voltage Comparator 1 Interrupt Handler   */
  .word VC2_IRQHandler            /* 15 Voltage Comparator 2 Interrupt Handler   */
  .word GTIM1_IRQHandler          /* 16 General Timer1 Interrupt Handler         */
  .word 0                         /* 17 Reserved                                 */
  .word 0                         /* 18 Reserved                                 */
  .word LPTIM_IRQHandler          /* 19 Low Power Timer Interrupt Handler        */
  .word BTIM1_IRQHandler          /* 20 Base Timer1 Interrupt Handler            */
  .word BTIM2_IRQHandler          /* 21 Base Timer2 Interrupt Handler            */
  .word BTIM3_IRQHandler          /* 22 Base Timer3 Interrupt Handler            */
  .word I2C1_IRQHandler           /* 23 I2C1 Interrupt Handler                   */
  .word 0                         /* 24 Reserved                                 */
  .word SPI_IRQHandler            /* 25 SPI Interrupt Handler                    */
  .word 0                         /* 26 Reserved                                 */
  .word UART1_IRQHandler          /* 27 UART1 Interrupt Handler                  */
  .word UART2_IRQHandler          /* 28 UART2 Interrupt Handler                  */
  .word 0                         /* 29 Reserved                                 */
  .word 0                         /* 30 Reserved                                 */
  .word CLKFAULT_IRQHandler       /* 31 Clock Fault Interrupt Handler            */

/*******************************************************************************
*
*为Default_Handler的每个异常处理程序提供弱别名。
*由于它们是弱别名，任何同名的函数都将被覆盖
*这个定义。
*
*******************************************************************************/

  .weak      NMI_Handler
  .thumb_set NMI_Handler,Default_Handler

  .weak      HardFault_Handler
  .thumb_set HardFault_Handler,Default_Handler

  .weak      SVC_Handler
  .thumb_set SVC_Handler,Default_Handler

  .weak      PendSV_Handler
  .thumb_set PendSV_Handler,Default_Handler

  .weak      SysTick_Handler
  .thumb_set SysTick_Handler,Default_Handler

  .weak      WDT_IRQHandler
  .thumb_set WDT_IRQHandler,Default_Handler

  .weak      LVD_IRQHandler
  .thumb_set LVD_IRQHandler,Default_Handler

  .weak      RTC_IRQHandler
  .thumb_set RTC_IRQHandler,Default_Handler

  .weak      FLASHRAM_IRQHandler
  .thumb_set FLASHRAM_IRQHandler,Default_Handler

  .weak      SYSCTRL_IRQHandler
  .thumb_set SYSCTRL_IRQHandler,Default_Handler

  .weak      GPIOA_IRQHandler
  .thumb_set GPIOA_IRQHandler,Default_Handler

  .weak      GPIOB_IRQHandler
  .thumb_set GPIOB_IRQHandler,Default_Handler

  .weak      ADC_IRQHandler
  .thumb_set ADC_IRQHandler,Default_Handler

  .weak      ATIM_IRQHandler
  .thumb_set ATIM_IRQHandler,Default_Handler

  .weak      VC1_IRQHandler
  .thumb_set VC1_IRQHandler,Default_Handler

  .weak      VC2_IRQHandler
  .thumb_set VC2_IRQHandler,Default_Handler

  .weak      GTIM1_IRQHandler
  .thumb_set GTIM1_IRQHandler,Default_Handler

  .weak      LPTIM_IRQHandler
  .thumb_set LPTIM_IRQHandler,Default_Handler

  .weak      BTIM1_IRQHandler
  .thumb_set BTIM1_IRQHandler,Default_Handler

  .weak      BTIM2_IRQHandler
  .thumb_set BTIM2_IRQHandler,Default_Handler

  .weak      BTIM3_IRQHandler
  .thumb_set BTIM3_IRQHandler,Default_Handler

  .weak      I2C1_IRQHandler
  .thumb_set I2C1_IRQHandler,Default_Handler

  .weak      SPI_IRQHandler
  .thumb_set SPI_IRQHandler,Default_Handler

  .weak      UART1_IRQHandler
  .thumb_set UART1_IRQHandler,Default_Handler

  .weak      UART2_IRQHandler
  .thumb_set UART2_IRQHandler,Default_Handler

  .weak      CLKFAULT_IRQHandler
  .thumb_set CLKFAULT_IRQHandler,Default_Handler
EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:stm32
LIBS:ADC-cache
EELAYER 25 0
EELAYER END
$Descr A2 23386 16535
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L STM32F303C(B-C)Tx U2
U 1 1 56AFA82C
P 11700 6850
F 0 "U2" H 11700 6950 50  0000 C CNN
F 1 "STM32F303C(B-C)Tx" H 11700 6750 50  0000 C CNN
F 2 "Housings_QFP:LQFP-48_7x7mm_Pitch0.5mm" H 11700 6650 50  0000 C CIN
F 3 "" H 11700 6850 50  0000 C CNN
F 4 "STM32F303CCT6" H 11700 6850 60  0001 C CNN "Part Number"
	1    11700 6850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR34
U 1 1 56AFA9CD
P 22250 8650
F 0 "#PWR34" H 22250 8400 50  0001 C CNN
F 1 "GND" H 22250 8500 50  0000 C CNN
F 2 "" H 22250 8650 50  0000 C CNN
F 3 "" H 22250 8650 50  0000 C CNN
	1    22250 8650
	0    -1   -1   0   
$EndComp
$Comp
L GNDA #PWR35
U 1 1 56AFA9F2
P 22250 8850
F 0 "#PWR35" H 22250 8600 50  0001 C CNN
F 1 "GNDA" H 22250 8700 50  0000 C CNN
F 2 "" H 22250 8850 50  0000 C CNN
F 3 "" H 22250 8850 50  0000 C CNN
	1    22250 8850
	0    -1   -1   0   
$EndComp
$Comp
L +3.3V #PWR3
U 1 1 56AFAA89
P 1200 8550
F 0 "#PWR3" H 1200 8400 50  0001 C CNN
F 1 "+3.3V" H 1200 8690 50  0000 C CNN
F 2 "" H 1200 8550 50  0000 C CNN
F 3 "" H 1200 8550 50  0000 C CNN
	1    1200 8550
	0    -1   -1   0   
$EndComp
$Comp
L +3.3VADC #PWR4
U 1 1 56AFAAAC
P 1200 8850
F 0 "#PWR4" H 1350 8800 50  0001 C CNN
F 1 "+3.3VADC" H 1200 8950 50  0000 C CNN
F 2 "" H 1200 8850 50  0000 C CNN
F 3 "" H 1200 8850 50  0000 C CNN
	1    1200 8850
	0    -1   -1   0   
$EndComp
$Comp
L Crystal Y1
U 1 1 56AFAB64
P 22400 6600
F 0 "Y1" H 22400 6750 50  0000 C CNN
F 1 "Crystal" H 22400 6450 50  0000 C CNN
F 2 "abm3:ABM3" H 22400 6600 50  0001 C CNN
F 3 "" H 22400 6600 50  0000 C CNN
	1    22400 6600
	1    0    0    -1  
$EndComp
$Comp
L C C9
U 1 1 56AFABBD
P 22250 7000
F 0 "C9" H 22275 7100 50  0000 L CNN
F 1 "18p" H 22275 6900 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 22288 6850 50  0001 C CNN
F 3 "" H 22250 7000 50  0000 C CNN
	1    22250 7000
	1    0    0    -1  
$EndComp
$Comp
L C C10
U 1 1 56AFAC01
P 22550 7000
F 0 "C10" H 22575 7100 50  0000 L CNN
F 1 "18p" H 22575 6900 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 22588 6850 50  0001 C CNN
F 3 "" H 22550 7000 50  0000 C CNN
	1    22550 7000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR33
U 1 1 56AFAC5A
P 22250 7150
F 0 "#PWR33" H 22250 6900 50  0001 C CNN
F 1 "GND" H 22250 7000 50  0000 C CNN
F 2 "" H 22250 7150 50  0000 C CNN
F 3 "" H 22250 7150 50  0000 C CNN
	1    22250 7150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR36
U 1 1 56AFAC82
P 22550 7150
F 0 "#PWR36" H 22550 6900 50  0001 C CNN
F 1 "GND" H 22550 7000 50  0000 C CNN
F 2 "" H 22550 7150 50  0000 C CNN
F 3 "" H 22550 7150 50  0000 C CNN
	1    22550 7150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR2
U 1 1 56AFAD06
P 1200 8150
F 0 "#PWR2" H 1200 7900 50  0001 C CNN
F 1 "GND" H 1200 8000 50  0000 C CNN
F 2 "" H 1200 8150 50  0000 C CNN
F 3 "" H 1200 8150 50  0000 C CNN
	1    1200 8150
	0    1    1    0   
$EndComp
$Comp
L L_Small L1
U 1 1 56AFFB9D
P 3300 11000
F 0 "L1" H 3330 11040 50  0000 L CNN
F 1 "L_Small" H 3330 10960 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 3300 11000 50  0001 C CNN
F 3 "" H 3300 11000 50  0000 C CNN
	1    3300 11000
	0    -1   -1   0   
$EndComp
$Comp
L C C7
U 1 1 56AFFC7A
P 2950 11300
F 0 "C7" H 2975 11400 50  0000 L CNN
F 1 "100n" H 2975 11200 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2988 11150 50  0001 C CNN
F 3 "" H 2950 11300 50  0000 C CNN
	1    2950 11300
	1    0    0    -1  
$EndComp
$Comp
L C C8
U 1 1 56AFFCAA
P 3600 11300
F 0 "C8" H 3625 11400 50  0000 L CNN
F 1 "10n" H 3625 11200 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3638 11150 50  0001 C CNN
F 3 "" H 3600 11300 50  0000 C CNN
	1    3600 11300
	1    0    0    -1  
$EndComp
$Comp
L GNDA #PWR8
U 1 1 56AFFD03
P 3600 11450
F 0 "#PWR8" H 3600 11200 50  0001 C CNN
F 1 "GNDA" H 3600 11300 50  0000 C CNN
F 2 "" H 3600 11450 50  0000 C CNN
F 3 "" H 3600 11450 50  0000 C CNN
	1    3600 11450
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR6
U 1 1 56AFFD2C
P 2750 11000
F 0 "#PWR6" H 2750 10850 50  0001 C CNN
F 1 "+3.3V" H 2750 11140 50  0000 C CNN
F 2 "" H 2750 11000 50  0000 C CNN
F 3 "" H 2750 11000 50  0000 C CNN
	1    2750 11000
	1    0    0    -1  
$EndComp
$Comp
L +3.3VADC #PWR7
U 1 1 56AFFD55
P 3600 11000
F 0 "#PWR7" H 3750 10950 50  0001 C CNN
F 1 "+3.3VADC" H 3600 11100 50  0000 C CNN
F 2 "" H 3600 11000 50  0000 C CNN
F 3 "" H 3600 11000 50  0000 C CNN
	1    3600 11000
	1    0    0    -1  
$EndComp
$Comp
L LD3985M33R U1
U 1 1 56B00B92
P 1500 11050
F 0 "U1" H 1250 11250 50  0000 C CNN
F 1 "LD3985M33R" H 1700 11250 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-5" H 1500 11150 50  0000 C CIN
F 3 "" H 1500 11050 50  0000 C CNN
F 4 "LD3985M33R" H 1500 11050 60  0001 C CNN "Part Number"
	1    1500 11050
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 56B00CEB
P 900 11150
F 0 "C1" H 925 11250 50  0000 L CNN
F 1 "1u" H 925 11050 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 938 11000 50  0001 C CNN
F 3 "" H 900 11150 50  0000 C CNN
	1    900  11150
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR1
U 1 1 56B00D26
P 900 10500
F 0 "#PWR1" H 900 10350 50  0001 C CNN
F 1 "+5V" H 900 10640 50  0000 C CNN
F 2 "" H 900 10500 50  0000 C CNN
F 3 "" H 900 10500 50  0000 C CNN
	1    900  10500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR5
U 1 1 56B00DA3
P 1500 11450
F 0 "#PWR5" H 1500 11200 50  0001 C CNN
F 1 "GND" H 1500 11300 50  0000 C CNN
F 2 "" H 1500 11450 50  0000 C CNN
F 3 "" H 1500 11450 50  0000 C CNN
	1    1500 11450
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 56B00DD2
P 1950 11300
F 0 "C2" H 1975 11400 50  0000 L CNN
F 1 "10n" H 1975 11200 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 1988 11150 50  0001 C CNN
F 3 "" H 1950 11300 50  0000 C CNN
	1    1950 11300
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 56B00F1C
P 2150 11300
F 0 "C3" H 2175 11400 50  0000 L CNN
F 1 "1u" H 2175 11200 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2188 11150 50  0001 C CNN
F 3 "" H 2150 11300 50  0000 C CNN
	1    2150 11300
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 56B00F57
P 2350 11300
F 0 "C4" H 2375 11400 50  0000 L CNN
F 1 "100n" H 2375 11200 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2388 11150 50  0001 C CNN
F 3 "" H 2350 11300 50  0000 C CNN
	1    2350 11300
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 56B00FA8
P 2550 11300
F 0 "C5" H 2575 11400 50  0000 L CNN
F 1 "100n" H 2575 11200 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2588 11150 50  0001 C CNN
F 3 "" H 2550 11300 50  0000 C CNN
	1    2550 11300
	1    0    0    -1  
$EndComp
Text GLabel 1300 4750 0    60   Input ~ 0
ADC1_IN1
Text GLabel 1300 4850 0    60   Input ~ 0
OPAMP1_VINP
Text GLabel 1300 4950 0    60   Output ~ 0
OPAMP1_VOUT
Text GLabel 1300 5050 0    60   Input ~ 0
OPAMP1_VINM
Text GLabel 1300 5150 0    60   Input ~ 0
ADC2_IN1
Text GLabel 1300 5250 0    60   Input ~ 0
OPAMP2_VINM
Text GLabel 1300 5350 0    60   Output ~ 0
OPAMP2_VOUT
Text GLabel 1300 5450 0    60   Input ~ 0
OPAMP2_VINP
Text GLabel 22100 4750 2    60   Input ~ 0
OPAMP3_VINP
Text GLabel 22100 4850 2    60   Output ~ 0
OPAMP3_VOUT
Text GLabel 22100 4950 2    60   Input ~ 0
OPAMP3_VINM
Text GLabel 22100 5750 2    60   Input ~ 0
OPAMP4_VINM
Text GLabel 22100 6050 2    60   Input ~ 0
OPAMP4_VINP
Text GLabel 22100 5950 2    60   Output ~ 0
OPAMP4_VOUT
Text GLabel 1300 5550 0    60   Output ~ 0
RCC_MCO
Text GLabel 1300 5950 0    60   BiDi ~ 0
USB_DP
Text GLabel 1300 5850 0    60   BiDi ~ 0
USB_DM
Text GLabel 1300 6050 0    60   BiDi ~ 0
SWDIO
Text GLabel 1300 6150 0    60   Input ~ 0
SWCLK
Text GLabel 22100 5350 2    60   Output ~ 0
USART1_TX
Text GLabel 22100 5450 2    60   Input ~ 0
USART1_RX
Text GLabel 22100 5550 2    60   Output ~ 0
I2C1_SCL
Text GLabel 22100 5650 2    60   BiDi ~ 0
I2C1_SDA
Text GLabel 22100 5050 2    60   Output ~ 0
SPI1_SCK
Text GLabel 22100 5150 2    60   Input ~ 0
SPI1_MISO
Text GLabel 22100 5250 2    60   Output ~ 0
SPI1_MOSI
Text GLabel 1300 6450 0    60   Output ~ 0
LED0
$Comp
L LED D1
U 1 1 56B2C379
P 5300 11100
F 0 "D1" H 5300 11200 50  0000 C CNN
F 1 "LED" H 5300 11000 50  0000 C CNN
F 2 "LEDs:LED_0603" H 5300 11100 50  0001 C CNN
F 3 "" H 5300 11100 50  0000 C CNN
	1    5300 11100
	-1   0    0    1   
$EndComp
$Comp
L LED D2
U 1 1 56B2C473
P 5300 11400
F 0 "D2" H 5300 11500 50  0000 C CNN
F 1 "LED" H 5300 11300 50  0000 C CNN
F 2 "LEDs:LED_0603" H 5300 11400 50  0001 C CNN
F 3 "" H 5300 11400 50  0000 C CNN
	1    5300 11400
	-1   0    0    1   
$EndComp
$Comp
L R R1
U 1 1 56B2C5BA
P 4950 11100
F 0 "R1" V 5030 11100 50  0000 C CNN
F 1 "330" V 4950 11100 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4880 11100 50  0001 C CNN
F 3 "" H 4950 11100 50  0000 C CNN
	1    4950 11100
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 56B2C615
P 4950 11400
F 0 "R2" V 5030 11400 50  0000 C CNN
F 1 "330" V 4950 11400 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4880 11400 50  0001 C CNN
F 3 "" H 4950 11400 50  0000 C CNN
	1    4950 11400
	0    1    1    0   
$EndComp
$Comp
L GND #PWR10
U 1 1 56B2C733
P 5600 11450
F 0 "#PWR10" H 5600 11200 50  0001 C CNN
F 1 "GND" H 5600 11300 50  0000 C CNN
F 2 "" H 5600 11450 50  0000 C CNN
F 3 "" H 5600 11450 50  0000 C CNN
	1    5600 11450
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR9
U 1 1 56B2CF9C
P 4700 11100
F 0 "#PWR9" H 4700 10950 50  0001 C CNN
F 1 "+3.3V" H 4700 11240 50  0000 C CNN
F 2 "" H 4700 11100 50  0000 C CNN
F 3 "" H 4700 11100 50  0000 C CNN
	1    4700 11100
	1    0    0    -1  
$EndComp
Text GLabel 4800 11400 0    60   Input ~ 0
LED0
$Comp
L CONN_01X03 P1
U 1 1 56B324F9
P 7450 11250
F 0 "P1" H 7450 11450 50  0000 C CNN
F 1 "CONN_01X03" V 7550 11250 50  0000 C CNN
F 2 "ADC:Toslink Tranceiver" H 7450 11250 50  0001 C CNN
F 3 "" H 7450 11250 50  0000 C CNN
	1    7450 11250
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03 P2
U 1 1 56B32566
P 8350 11250
F 0 "P2" H 8350 11450 50  0000 C CNN
F 1 "CONN_01X03" V 8450 11250 50  0000 C CNN
F 2 "ADC:Toslink Tranceiver" H 8350 11250 50  0001 C CNN
F 3 "" H 8350 11250 50  0000 C CNN
	1    8350 11250
	1    0    0    -1  
$EndComp
$Comp
L BNC P4
U 1 1 56B89FE1
P 9700 10750
F 0 "P4" H 9710 10870 50  0000 C CNN
F 1 "SMA" V 9810 10690 50  0000 C CNN
F 2 "ADC:SMA-ThroughHole" H 9700 10750 50  0001 C CNN
F 3 "" H 9700 10750 50  0000 C CNN
	1    9700 10750
	-1   0    0    1   
$EndComp
$Comp
L BNC P5
U 1 1 56B8A200
P 12250 10750
F 0 "P5" H 12260 10870 50  0000 C CNN
F 1 "SMA" V 12360 10690 50  0000 C CNN
F 2 "ADC:SMA-ThroughHole" H 12250 10750 50  0001 C CNN
F 3 "" H 12250 10750 50  0000 C CNN
	1    12250 10750
	-1   0    0    1   
$EndComp
$Comp
L BNC P6
U 1 1 56B8A273
P 14800 10750
F 0 "P6" H 14810 10870 50  0000 C CNN
F 1 "SMA" V 14910 10690 50  0000 C CNN
F 2 "ADC:SMA-ThroughHole" H 14800 10750 50  0001 C CNN
F 3 "" H 14800 10750 50  0000 C CNN
	1    14800 10750
	-1   0    0    1   
$EndComp
$Comp
L BNC P7
U 1 1 56B8A2DD
P 17150 10750
F 0 "P7" H 17160 10870 50  0000 C CNN
F 1 "SMA" V 17260 10690 50  0000 C CNN
F 2 "ADC:SMA-ThroughHole" H 17150 10750 50  0001 C CNN
F 3 "" H 17150 10750 50  0000 C CNN
	1    17150 10750
	-1   0    0    1   
$EndComp
$Comp
L GNDA #PWR15
U 1 1 56B8B03E
P 9700 10550
F 0 "#PWR15" H 9700 10300 50  0001 C CNN
F 1 "GNDA" H 9700 10400 50  0000 C CNN
F 2 "" H 9700 10550 50  0000 C CNN
F 3 "" H 9700 10550 50  0000 C CNN
	1    9700 10550
	-1   0    0    1   
$EndComp
$Comp
L GNDA #PWR19
U 1 1 56B8B0A6
P 12250 10550
F 0 "#PWR19" H 12250 10300 50  0001 C CNN
F 1 "GNDA" H 12250 10400 50  0000 C CNN
F 2 "" H 12250 10550 50  0000 C CNN
F 3 "" H 12250 10550 50  0000 C CNN
	1    12250 10550
	-1   0    0    1   
$EndComp
$Comp
L GNDA #PWR23
U 1 1 56B8B10E
P 14800 10550
F 0 "#PWR23" H 14800 10300 50  0001 C CNN
F 1 "GNDA" H 14800 10400 50  0000 C CNN
F 2 "" H 14800 10550 50  0000 C CNN
F 3 "" H 14800 10550 50  0000 C CNN
	1    14800 10550
	-1   0    0    1   
$EndComp
$Comp
L GNDA #PWR27
U 1 1 56B8B176
P 17150 10550
F 0 "#PWR27" H 17150 10300 50  0001 C CNN
F 1 "GNDA" H 17150 10400 50  0000 C CNN
F 2 "" H 17150 10550 50  0000 C CNN
F 3 "" H 17150 10550 50  0000 C CNN
	1    17150 10550
	-1   0    0    1   
$EndComp
Text GLabel 10750 10750 2    60   Output ~ 0
OPAMP1_VINP
Text GLabel 10750 11050 2    60   Output ~ 0
OPAMP1_VINM
Text GLabel 11450 10900 0    60   Input ~ 0
OPAMP1_VOUT
Text GLabel 13300 10750 2    60   Output ~ 0
OPAMP2_VINP
Text GLabel 13300 11050 2    60   Output ~ 0
OPAMP2_VINM
Text GLabel 14000 10900 0    60   Input ~ 0
OPAMP2_VOUT
Text GLabel 15850 10750 2    60   Output ~ 0
OPAMP3_VINP
Text GLabel 15850 11050 2    60   Output ~ 0
OPAMP3_VINM
Text GLabel 16550 10900 0    60   Input ~ 0
OPAMP3_VOUT
Text GLabel 18200 10750 2    60   Output ~ 0
OPAMP4_VINP
Text GLabel 18200 11050 2    60   Output ~ 0
OPAMP4_VINM
Text GLabel 18900 10900 0    60   Input ~ 0
OPAMP4_VOUT
$Comp
L R R17
U 1 1 56C2AEC9
P 17650 10600
F 0 "R17" V 17730 10600 50  0000 C CNN
F 1 "10K" V 17650 10600 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 17580 10600 50  0001 C CNN
F 3 "" H 17650 10600 50  0000 C CNN
	1    17650 10600
	1    0    0    -1  
$EndComp
$Comp
L R R18
U 1 1 56C2AF3E
P 17650 10900
F 0 "R18" V 17730 10900 50  0000 C CNN
F 1 "10K" V 17650 10900 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 17580 10900 50  0001 C CNN
F 3 "" H 17650 10900 50  0000 C CNN
	1    17650 10900
	1    0    0    -1  
$EndComp
$Comp
L GNDA #PWR29
U 1 1 56C2AFB0
P 17650 11050
F 0 "#PWR29" H 17650 10800 50  0001 C CNN
F 1 "GNDA" H 17650 10900 50  0000 C CNN
F 2 "" H 17650 11050 50  0000 C CNN
F 3 "" H 17650 11050 50  0000 C CNN
	1    17650 11050
	1    0    0    -1  
$EndComp
$Comp
L +3.3VADC #PWR28
U 1 1 56C2B917
P 17650 10450
F 0 "#PWR28" H 17800 10400 50  0001 C CNN
F 1 "+3.3VADC" H 17650 10550 50  0000 C CNN
F 2 "" H 17650 10450 50  0000 C CNN
F 3 "" H 17650 10450 50  0000 C CNN
	1    17650 10450
	1    0    0    -1  
$EndComp
$Comp
L C C20
U 1 1 56C2B9DC
P 17450 10750
F 0 "C20" H 17475 10850 50  0000 L CNN
F 1 "100n" H 17475 10650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 17488 10600 50  0001 C CNN
F 3 "" H 17450 10750 50  0000 C CNN
	1    17450 10750
	0    1    1    0   
$EndComp
$Comp
L R R19
U 1 1 56C2BFB8
P 18550 11350
F 0 "R19" V 18630 11350 50  0000 C CNN
F 1 "10K" V 18550 11350 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 18480 11350 50  0001 C CNN
F 3 "" H 18550 11350 50  0000 C CNN
	1    18550 11350
	0    1    1    0   
$EndComp
$Comp
L R R20
U 1 1 56C2C7A3
P 18100 11500
F 0 "R20" V 18180 11500 50  0000 C CNN
F 1 "10K" V 18100 11500 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 18030 11500 50  0001 C CNN
F 3 "" H 18100 11500 50  0000 C CNN
	1    18100 11500
	1    0    0    -1  
$EndComp
$Comp
L GNDA #PWR30
U 1 1 56C2C821
P 18100 11950
F 0 "#PWR30" H 18100 11700 50  0001 C CNN
F 1 "GNDA" H 18100 11800 50  0000 C CNN
F 2 "" H 18100 11950 50  0000 C CNN
F 3 "" H 18100 11950 50  0000 C CNN
	1    18100 11950
	1    0    0    -1  
$EndComp
$Comp
L C C22
U 1 1 56C2CAB6
P 18100 11800
F 0 "C22" H 18125 11900 50  0000 L CNN
F 1 "100n" H 18125 11700 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 18138 11650 50  0001 C CNN
F 3 "" H 18100 11800 50  0000 C CNN
	1    18100 11800
	1    0    0    -1  
$EndComp
$Comp
L C C21
U 1 1 56C2D778
P 18550 11600
F 0 "C21" H 18575 11700 50  0000 L CNN
F 1 "1p" H 18575 11500 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 18588 11450 50  0001 C CNN
F 3 "" H 18550 11600 50  0000 C CNN
	1    18550 11600
	0    1    1    0   
$EndComp
Connection ~ 2950 11450
Connection ~ 2950 11000
Wire Wire Line
	4800 11100 4700 11100
Wire Wire Line
	5500 11400 5600 11400
Wire Wire Line
	5500 11100 5600 11100
Wire Wire Line
	3600 11000 3600 11150
Connection ~ 2550 11450
Connection ~ 2350 11450
Connection ~ 2150 11450
Connection ~ 1950 11450
Wire Wire Line
	3400 11000 3600 11000
Wire Wire Line
	2950 11000 2950 11150
Connection ~ 2750 11000
Connection ~ 2550 11000
Connection ~ 2350 11000
Wire Wire Line
	2550 11000 2550 11150
Connection ~ 2150 11000
Wire Wire Line
	2350 11000 2350 11150
Wire Wire Line
	2150 11000 2150 11150
Wire Wire Line
	1500 11350 1500 11450
Connection ~ 1500 11450
Wire Wire Line
	900  11300 900  11450
Wire Wire Line
	1050 11000 900  11000
Wire Wire Line
	1050 11150 1050 11000
Wire Wire Line
	1200 8150 1300 8150
Connection ~ 22550 6600
Connection ~ 22250 6600
Wire Wire Line
	22250 6550 22250 6850
Wire Wire Line
	22100 6550 22250 6550
Wire Wire Line
	22550 6450 22550 6850
Wire Wire Line
	22100 6450 22550 6450
Wire Wire Line
	1300 8850 1200 8850
Wire Wire Line
	1200 8550 1300 8550
Connection ~ 1300 8650
Connection ~ 1300 8550
Wire Wire Line
	1300 8350 1300 8750
Wire Wire Line
	22100 8850 22250 8850
Wire Wire Line
	22100 8650 22250 8650
Connection ~ 22100 8650
Wire Wire Line
	22100 8550 22100 8750
Wire Wire Line
	17600 10750 18200 10750
Connection ~ 17650 10750
Wire Wire Line
	18900 10900 18950 10900
Wire Wire Line
	18950 10900 18950 11350
$Comp
L R R13
U 1 1 56C2EA8A
P 15300 10600
F 0 "R13" V 15380 10600 50  0000 C CNN
F 1 "10K" V 15300 10600 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 15230 10600 50  0001 C CNN
F 3 "" H 15300 10600 50  0000 C CNN
	1    15300 10600
	1    0    0    -1  
$EndComp
$Comp
L R R14
U 1 1 56C2EA90
P 15300 10900
F 0 "R14" V 15380 10900 50  0000 C CNN
F 1 "10K" V 15300 10900 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 15230 10900 50  0001 C CNN
F 3 "" H 15300 10900 50  0000 C CNN
	1    15300 10900
	1    0    0    -1  
$EndComp
$Comp
L GNDA #PWR25
U 1 1 56C2EA96
P 15300 11050
F 0 "#PWR25" H 15300 10800 50  0001 C CNN
F 1 "GNDA" H 15300 10900 50  0000 C CNN
F 2 "" H 15300 11050 50  0000 C CNN
F 3 "" H 15300 11050 50  0000 C CNN
	1    15300 11050
	1    0    0    -1  
$EndComp
$Comp
L +3.3VADC #PWR24
U 1 1 56C2EA9C
P 15300 10450
F 0 "#PWR24" H 15450 10400 50  0001 C CNN
F 1 "+3.3VADC" H 15300 10550 50  0000 C CNN
F 2 "" H 15300 10450 50  0000 C CNN
F 3 "" H 15300 10450 50  0000 C CNN
	1    15300 10450
	1    0    0    -1  
$EndComp
$Comp
L C C17
U 1 1 56C2EAA2
P 15100 10750
F 0 "C17" H 15125 10850 50  0000 L CNN
F 1 "100n" H 15125 10650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 15138 10600 50  0001 C CNN
F 3 "" H 15100 10750 50  0000 C CNN
	1    15100 10750
	0    1    1    0   
$EndComp
$Comp
L R R15
U 1 1 56C2EAA8
P 16200 11350
F 0 "R15" V 16280 11350 50  0000 C CNN
F 1 "10K" V 16200 11350 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 16130 11350 50  0001 C CNN
F 3 "" H 16200 11350 50  0000 C CNN
	1    16200 11350
	0    1    1    0   
$EndComp
$Comp
L R R16
U 1 1 56C2EAAE
P 15750 11500
F 0 "R16" V 15830 11500 50  0000 C CNN
F 1 "10K" V 15750 11500 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 15680 11500 50  0001 C CNN
F 3 "" H 15750 11500 50  0000 C CNN
	1    15750 11500
	1    0    0    -1  
$EndComp
$Comp
L GNDA #PWR26
U 1 1 56C2EAB4
P 15750 11950
F 0 "#PWR26" H 15750 11700 50  0001 C CNN
F 1 "GNDA" H 15750 11800 50  0000 C CNN
F 2 "" H 15750 11950 50  0000 C CNN
F 3 "" H 15750 11950 50  0000 C CNN
	1    15750 11950
	1    0    0    -1  
$EndComp
$Comp
L C C19
U 1 1 56C2EABA
P 15750 11800
F 0 "C19" H 15775 11900 50  0000 L CNN
F 1 "100n" H 15775 11700 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 15788 11650 50  0001 C CNN
F 3 "" H 15750 11800 50  0000 C CNN
	1    15750 11800
	1    0    0    -1  
$EndComp
$Comp
L C C18
U 1 1 56C2EAC0
P 16200 11600
F 0 "C18" H 16225 11700 50  0000 L CNN
F 1 "1p" H 16225 11500 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 16238 11450 50  0001 C CNN
F 3 "" H 16200 11600 50  0000 C CNN
	1    16200 11600
	0    1    1    0   
$EndComp
Wire Wire Line
	15250 10750 15850 10750
Connection ~ 15300 10750
Wire Wire Line
	16550 10900 16600 10900
Wire Wire Line
	16600 10900 16600 11350
$Comp
L R R9
U 1 1 56C2EDB4
P 12750 10600
F 0 "R9" V 12830 10600 50  0000 C CNN
F 1 "10K" V 12750 10600 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 12680 10600 50  0001 C CNN
F 3 "" H 12750 10600 50  0000 C CNN
	1    12750 10600
	1    0    0    -1  
$EndComp
$Comp
L R R10
U 1 1 56C2EDBA
P 12750 10900
F 0 "R10" V 12830 10900 50  0000 C CNN
F 1 "10K" V 12750 10900 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 12680 10900 50  0001 C CNN
F 3 "" H 12750 10900 50  0000 C CNN
	1    12750 10900
	1    0    0    -1  
$EndComp
$Comp
L GNDA #PWR21
U 1 1 56C2EDC0
P 12750 11050
F 0 "#PWR21" H 12750 10800 50  0001 C CNN
F 1 "GNDA" H 12750 10900 50  0000 C CNN
F 2 "" H 12750 11050 50  0000 C CNN
F 3 "" H 12750 11050 50  0000 C CNN
	1    12750 11050
	1    0    0    -1  
$EndComp
$Comp
L +3.3VADC #PWR20
U 1 1 56C2EDC6
P 12750 10450
F 0 "#PWR20" H 12900 10400 50  0001 C CNN
F 1 "+3.3VADC" H 12750 10550 50  0000 C CNN
F 2 "" H 12750 10450 50  0000 C CNN
F 3 "" H 12750 10450 50  0000 C CNN
	1    12750 10450
	1    0    0    -1  
$EndComp
$Comp
L C C14
U 1 1 56C2EDCC
P 12550 10750
F 0 "C14" H 12575 10850 50  0000 L CNN
F 1 "100n" H 12575 10650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 12588 10600 50  0001 C CNN
F 3 "" H 12550 10750 50  0000 C CNN
	1    12550 10750
	0    1    1    0   
$EndComp
$Comp
L R R11
U 1 1 56C2EDD2
P 13650 11350
F 0 "R11" V 13730 11350 50  0000 C CNN
F 1 "10K" V 13650 11350 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 13580 11350 50  0001 C CNN
F 3 "" H 13650 11350 50  0000 C CNN
	1    13650 11350
	0    1    1    0   
$EndComp
$Comp
L R R12
U 1 1 56C2EDD8
P 13200 11500
F 0 "R12" V 13280 11500 50  0000 C CNN
F 1 "10K" V 13200 11500 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 13130 11500 50  0001 C CNN
F 3 "" H 13200 11500 50  0000 C CNN
	1    13200 11500
	1    0    0    -1  
$EndComp
$Comp
L GNDA #PWR22
U 1 1 56C2EDDE
P 13200 11950
F 0 "#PWR22" H 13200 11700 50  0001 C CNN
F 1 "GNDA" H 13200 11800 50  0000 C CNN
F 2 "" H 13200 11950 50  0000 C CNN
F 3 "" H 13200 11950 50  0000 C CNN
	1    13200 11950
	1    0    0    -1  
$EndComp
$Comp
L C C16
U 1 1 56C2EDE4
P 13200 11800
F 0 "C16" H 13225 11900 50  0000 L CNN
F 1 "100n" H 13225 11700 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 13238 11650 50  0001 C CNN
F 3 "" H 13200 11800 50  0000 C CNN
	1    13200 11800
	1    0    0    -1  
$EndComp
$Comp
L C C15
U 1 1 56C2EDEA
P 13650 11600
F 0 "C15" H 13675 11700 50  0000 L CNN
F 1 "1p" H 13675 11500 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 13688 11450 50  0001 C CNN
F 3 "" H 13650 11600 50  0000 C CNN
	1    13650 11600
	0    1    1    0   
$EndComp
Wire Wire Line
	13200 11050 13300 11050
Wire Wire Line
	12700 10750 13300 10750
Connection ~ 12750 10750
Wire Wire Line
	14000 10900 14050 10900
Wire Wire Line
	14050 10900 14050 11350
$Comp
L R R5
U 1 1 56C2F5F6
P 10200 10600
F 0 "R5" V 10280 10600 50  0000 C CNN
F 1 "10K" V 10200 10600 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 10130 10600 50  0001 C CNN
F 3 "" H 10200 10600 50  0000 C CNN
	1    10200 10600
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 56C2F5FC
P 10200 10900
F 0 "R6" V 10280 10900 50  0000 C CNN
F 1 "10K" V 10200 10900 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 10130 10900 50  0001 C CNN
F 3 "" H 10200 10900 50  0000 C CNN
	1    10200 10900
	1    0    0    -1  
$EndComp
$Comp
L GNDA #PWR17
U 1 1 56C2F602
P 10200 11050
F 0 "#PWR17" H 10200 10800 50  0001 C CNN
F 1 "GNDA" H 10200 10900 50  0000 C CNN
F 2 "" H 10200 11050 50  0000 C CNN
F 3 "" H 10200 11050 50  0000 C CNN
	1    10200 11050
	1    0    0    -1  
$EndComp
$Comp
L +3.3VADC #PWR16
U 1 1 56C2F608
P 10200 10450
F 0 "#PWR16" H 10350 10400 50  0001 C CNN
F 1 "+3.3VADC" H 10200 10550 50  0000 C CNN
F 2 "" H 10200 10450 50  0000 C CNN
F 3 "" H 10200 10450 50  0000 C CNN
	1    10200 10450
	1    0    0    -1  
$EndComp
$Comp
L C C11
U 1 1 56C2F60E
P 10000 10750
F 0 "C11" H 10025 10850 50  0000 L CNN
F 1 "100n" H 10025 10650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 10038 10600 50  0001 C CNN
F 3 "" H 10000 10750 50  0000 C CNN
	1    10000 10750
	0    1    1    0   
$EndComp
$Comp
L R R7
U 1 1 56C2F614
P 11100 11350
F 0 "R7" V 11180 11350 50  0000 C CNN
F 1 "10K" V 11100 11350 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 11030 11350 50  0001 C CNN
F 3 "" H 11100 11350 50  0000 C CNN
	1    11100 11350
	0    -1   -1   0   
$EndComp
$Comp
L R R8
U 1 1 56C2F61A
P 10650 11500
F 0 "R8" V 10730 11500 50  0000 C CNN
F 1 "10K" V 10650 11500 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 10580 11500 50  0001 C CNN
F 3 "" H 10650 11500 50  0000 C CNN
	1    10650 11500
	1    0    0    -1  
$EndComp
$Comp
L GNDA #PWR18
U 1 1 56C2F620
P 10650 11950
F 0 "#PWR18" H 10650 11700 50  0001 C CNN
F 1 "GNDA" H 10650 11800 50  0000 C CNN
F 2 "" H 10650 11950 50  0000 C CNN
F 3 "" H 10650 11950 50  0000 C CNN
	1    10650 11950
	1    0    0    -1  
$EndComp
$Comp
L C C13
U 1 1 56C2F626
P 10650 11800
F 0 "C13" H 10675 11900 50  0000 L CNN
F 1 "100n" H 10675 11700 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 10688 11650 50  0001 C CNN
F 3 "" H 10650 11800 50  0000 C CNN
	1    10650 11800
	1    0    0    -1  
$EndComp
$Comp
L C C12
U 1 1 56C2F62C
P 11100 11550
F 0 "C12" H 11125 11650 50  0000 L CNN
F 1 "1p" H 11125 11450 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 11138 11400 50  0001 C CNN
F 3 "" H 11100 11550 50  0000 C CNN
	1    11100 11550
	0    1    1    0   
$EndComp
Wire Wire Line
	10150 10750 10750 10750
Connection ~ 10200 10750
Wire Wire Line
	11450 10900 11500 10900
Wire Wire Line
	11500 10900 11500 11350
Wire Wire Line
	5600 11100 5600 11450
Connection ~ 5600 11400
$Comp
L GND #PWR14
U 1 1 56C48EB9
P 7950 11550
F 0 "#PWR14" H 7950 11300 50  0001 C CNN
F 1 "GND" H 7950 11400 50  0000 C CNN
F 2 "" H 7950 11550 50  0000 C CNN
F 3 "" H 7950 11550 50  0000 C CNN
	1    7950 11550
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR13
U 1 1 56C49089
P 7950 11250
F 0 "#PWR13" H 7950 11100 50  0001 C CNN
F 1 "+3.3V" H 7950 11390 50  0000 C CNN
F 2 "" H 7950 11250 50  0000 C CNN
F 3 "" H 7950 11250 50  0000 C CNN
	1    7950 11250
	1    0    0    -1  
$EndComp
$Comp
L C C24
U 1 1 56C49319
P 7950 11400
F 0 "C24" H 7975 11500 50  0000 L CNN
F 1 "100n" H 7975 11300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 7988 11250 50  0001 C CNN
F 3 "" H 7950 11400 50  0000 C CNN
	1    7950 11400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 11250 7950 11250
Wire Wire Line
	8150 11350 8150 11550
Wire Wire Line
	8150 11550 7950 11550
$Comp
L GND #PWR12
U 1 1 56C49BBE
P 7050 11250
F 0 "#PWR12" H 7050 11000 50  0001 C CNN
F 1 "GND" H 7050 11100 50  0000 C CNN
F 2 "" H 7050 11250 50  0000 C CNN
F 3 "" H 7050 11250 50  0000 C CNN
	1    7050 11250
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR11
U 1 1 56C49BC4
P 7050 10950
F 0 "#PWR11" H 7050 10800 50  0001 C CNN
F 1 "+3.3V" H 7050 11090 50  0000 C CNN
F 2 "" H 7050 10950 50  0000 C CNN
F 3 "" H 7050 10950 50  0000 C CNN
	1    7050 10950
	1    0    0    -1  
$EndComp
$Comp
L C C23
U 1 1 56C49BCA
P 7050 11100
F 0 "C23" H 7075 11200 50  0000 L CNN
F 1 "100n" H 7075 11000 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 7088 10950 50  0001 C CNN
F 3 "" H 7050 11100 50  0000 C CNN
	1    7050 11100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 11250 7050 11250
Text GLabel 7250 11350 3    60   Output ~ 0
USART1_RX
Text GLabel 8150 11150 1    60   Input ~ 0
USART1_TX
Wire Wire Line
	7050 10950 7250 10950
Wire Wire Line
	7250 10950 7250 11150
$Comp
L GND #PWR32
U 1 1 56C50536
P 21100 10800
F 0 "#PWR32" H 21100 10550 50  0001 C CNN
F 1 "GND" H 21100 10650 50  0000 C CNN
F 2 "" H 21100 10800 50  0000 C CNN
F 3 "" H 21100 10800 50  0000 C CNN
	1    21100 10800
	-1   0    0    1   
$EndComp
$Comp
L +5V #PWR31
U 1 1 56C505EF
P 20900 10800
F 0 "#PWR31" H 20900 10650 50  0001 C CNN
F 1 "+5V" H 20900 10940 50  0000 C CNN
F 2 "" H 20900 10800 50  0000 C CNN
F 3 "" H 20900 10800 50  0000 C CNN
	1    20900 10800
	1    0    0    -1  
$EndComp
Wire Wire Line
	21100 10800 21100 10900
Wire Wire Line
	20900 10800 20900 11000
Wire Wire Line
	20900 11000 21100 11000
Text GLabel 21100 11100 0    60   Input ~ 0
SPI1_MOSI
Text GLabel 21100 11200 0    60   Output ~ 0
SPI1_MISO
Text GLabel 21100 11300 0    60   Input ~ 0
SPI1_SCK
Text GLabel 21100 11400 0    60   Input ~ 0
SPI1_CS
Text GLabel 21100 11500 0    60   Input ~ 0
SWCLK
Text GLabel 21100 11600 0    60   Input ~ 0
SWDIO
$Comp
L CONN_01X08 P3
U 1 1 56C528F6
P 21300 11250
F 0 "P3" H 21300 11700 50  0000 C CNN
F 1 "CONN_01X08" V 21400 11250 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x08" H 21300 11250 50  0001 C CNN
F 3 "" H 21300 11250 50  0000 C CNN
	1    21300 11250
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P W1
U 1 1 56C5C1E5
P 1100 8250
F 0 "W1" H 1100 8520 50  0000 C CNN
F 1 "TEST_1P" H 1100 8450 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 1300 8250 50  0001 C CNN
F 3 "" H 1300 8250 50  0000 C CNN
	1    1100 8250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1100 8250 1300 8250
Text Notes 15750 13050 2    394  ~ 0
Frontend
Text Notes 3150 12300 2    394  ~ 0
+3.3V
Text Notes 7000 12450 0    197  ~ 0
Tranceiver
Text Notes 4750 12100 0    197  ~ 0
LEDs
Text Notes 10050 4300 0    394  ~ 0
STM32F303
Text Notes 20350 12150 0    197  ~ 0
Pin Header
$Comp
L C C6
U 1 1 56EAF8F3
P 3400 11300
F 0 "C6" H 3425 11400 50  0000 L CNN
F 1 "1u" H 3425 11200 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3438 11150 50  0001 C CNN
F 3 "" H 3400 11300 50  0000 C CNN
	1    3400 11300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 11000 3400 11150
Connection ~ 3400 11450
Wire Wire Line
	1950 11000 3200 11000
Wire Wire Line
	11250 11350 11250 11550
Wire Wire Line
	10950 11350 10950 11550
Wire Wire Line
	10650 11050 10750 11050
Wire Wire Line
	11500 11350 11250 11350
Wire Wire Line
	10650 11350 10950 11350
Wire Wire Line
	10650 11350 10650 11050
Wire Wire Line
	14050 11350 13800 11350
Wire Wire Line
	16600 11350 16350 11350
Wire Wire Line
	18950 11350 18700 11350
Wire Wire Line
	18700 11350 18700 11600
Wire Wire Line
	18400 11600 18400 11350
Wire Wire Line
	18400 11350 18100 11350
Wire Wire Line
	18100 11350 18100 11050
Wire Wire Line
	18100 11050 18200 11050
Wire Wire Line
	16050 11350 15750 11350
Wire Wire Line
	15750 11350 15750 11050
Wire Wire Line
	15750 11050 15850 11050
Wire Wire Line
	16050 11600 16050 11350
Wire Wire Line
	16350 11350 16350 11600
Wire Wire Line
	13800 11350 13800 11600
Wire Wire Line
	13500 11600 13500 11350
Wire Wire Line
	13500 11350 13200 11350
Wire Wire Line
	13200 11350 13200 11050
Text GLabel 1300 6250 0    60   Output ~ 0
SPI1_CS
$Comp
L FUSE F1
U 1 1 5712E294
P 900 10750
F 0 "F1" V 854 10853 50  0000 L CNN
F 1 "FUSE" V 945 10853 50  0000 L CNN
F 2 "Fuse_Holders_and_Fuses:Fuse_SMD1206_Reflow" H 900 10750 50  0001 C CNN
F 3 "" H 900 10750 50  0000 C CNN
	1    900  10750
	0    1    1    0   
$EndComp
$Comp
L C C25
U 1 1 57130121
P 2750 11300
F 0 "C25" H 2800 11400 50  0000 L CNN
F 1 "100n" H 2750 11200 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2788 11150 50  0001 C CNN
F 3 "" H 2750 11300 50  0000 C CNN
	1    2750 11300
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  11450 3600 11450
Connection ~ 2750 11450
Wire Wire Line
	2750 11150 2750 11000
$EndSCHEMATC

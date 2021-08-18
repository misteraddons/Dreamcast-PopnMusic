EESchema Schematic File Version 4
LIBS:DriverBoard-cache
LIBS:MiSTercade_P3P4-cache
EELAYER 29 0
EELAYER END
$Descr A3 16535 11693
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
L Device:D_Schottky D1
U 1 1 6043B0B1
P 11350 2500
F 0 "D1" V 11450 2650 50  0000 C CNN
F 1 "BAT54S" V 11450 2300 50  0000 C CNN
F 2 "Diode_SMD:D_SOT-23_ANK" H 11350 2500 50  0001 C CNN
F 3 "https://www.vishay.com/docs/85508/bat54.pdf" H 11350 2500 50  0001 C CNN
F 4 "C408389" H 0   0   50  0001 C CNN "LCSC Part"
	1    11350 2500
	0    -1   -1   0   
$EndComp
NoConn ~ 10950 3600
NoConn ~ 10950 2900
NoConn ~ 10950 3100
NoConn ~ 10950 3000
NoConn ~ 10950 3300
$Comp
L Connector_Generic:Conn_01x05 J2
U 1 1 604464C8
P 10550 1600
F 0 "J2" H 10630 1642 50  0000 L CNN
F 1 "Conn_01x05" H 10630 1551 50  0000 L CNN
F 2 "TerminalBlock_RND:TerminalBlock_RND_205-00015_1x05_P5.00mm_Horizontal" H 10550 1600 50  0001 C CNN
F 3 "~" H 10550 1600 50  0001 C CNN
F 4 "C192780" H 0   0   50  0001 C CNN "LCSC Part"
	1    10550 1600
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0110
U 1 1 60447602
P 9700 1300
F 0 "#PWR0110" H 9700 1150 50  0001 C CNN
F 1 "VDD" H 9715 1428 50  0000 L CNN
F 2 "" H 9700 1300 50  0001 C CNN
F 3 "" H 9700 1300 50  0001 C CNN
	1    9700 1300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 60448058
P 9700 1850
F 0 "#PWR0111" H 9700 1600 50  0001 C CNN
F 1 "GND" H 9950 1800 50  0000 R CNN
F 2 "" H 9700 1850 50  0001 C CNN
F 3 "" H 9700 1850 50  0001 C CNN
	1    9700 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	10350 1700 10050 1700
Wire Wire Line
	10050 1700 10050 1600
Connection ~ 10050 1600
Wire Wire Line
	10050 1600 10350 1600
$Comp
L DriverBoard-rescue:Pico-MCU_RaspberryPi_and_Boards U1
U 1 1 6043939A
P 10250 3550
F 0 "U1" H 10250 4765 50  0000 C CNN
F 1 "Pico" H 10250 4674 50  0000 C CNN
F 2 "MCU_Raspberry_Pi:RPi_Pico_SMD_TH" V 10250 3550 50  0001 C CNN
F 3 "" H 10250 3550 50  0001 C CNN
F 4 "-" H 0   0   50  0001 C CNN "LCSC Part"
	1    10250 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	10950 2700 11350 2700
NoConn ~ 10350 4700
NoConn ~ 10150 4700
NoConn ~ 10950 2600
NoConn ~ 10950 3200
NoConn ~ 9550 4200
Text Label 9550 2900 2    50   ~ 0
P2UP_ATTEN
Text Label 9550 3000 2    50   ~ 0
P2DOWN_ATTEN
Text Label 9550 3100 2    50   ~ 0
P2LEFT_ATTEN
Text Label 9550 3200 2    50   ~ 0
P2RIGHT_ATTEN
Text Label 9550 3400 2    50   ~ 0
P2START_ATTEN
Text Label 9550 3500 2    50   ~ 0
P2A_ATTEN
Text Label 9550 3600 2    50   ~ 0
P2B_ATTEN
Text Label 9550 3700 2    50   ~ 0
P2C_ATTEN
Text Label 9550 3900 2    50   ~ 0
P2X_ATTEN
Text Label 9550 4000 2    50   ~ 0
P2Y_ATTEN
Text Label 9550 4100 2    50   ~ 0
P2Z_ATTEN
Text Label 10950 4500 0    50   ~ 0
P2LT_ATTEN
Text Label 10950 4400 0    50   ~ 0
P2RT_ATTEN
NoConn ~ 10950 4000
NoConn ~ 10950 3900
NoConn ~ 10950 3700
NoConn ~ 10950 3400
NoConn ~ 10950 3500
Text Label 10950 4100 0    50   ~ 0
P2_ANALOG_VER_1
Text Label 10950 4200 0    50   ~ 0
P2_ANALOG_HOR_1
Text Label 9550 2600 2    50   ~ 0
P2TX
$Comp
L power:GND #PWR019
U 1 1 611DB1B0
P 8800 4800
F 0 "#PWR019" H 8800 4550 50  0001 C CNN
F 1 "GND" H 8805 4627 50  0000 C CNN
F 2 "" H 8800 4800 50  0001 C CNN
F 3 "" H 8800 4800 50  0001 C CNN
	1    8800 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 2800 8800 2800
Wire Wire Line
	8800 2800 8800 3300
Wire Wire Line
	9550 3300 8800 3300
Connection ~ 8800 3300
Wire Wire Line
	8800 3300 8800 3800
Wire Wire Line
	9550 3800 8800 3800
Connection ~ 8800 3800
Wire Wire Line
	8800 3800 8800 4300
Wire Wire Line
	9550 4300 8800 4300
Connection ~ 8800 4300
Wire Wire Line
	8800 4300 8800 4800
$Comp
L power:GND #PWR020
U 1 1 611DCC71
P 10250 4800
F 0 "#PWR020" H 10250 4550 50  0001 C CNN
F 1 "GND" H 10255 4627 50  0000 C CNN
F 2 "" H 10250 4800 50  0001 C CNN
F 3 "" H 10250 4800 50  0001 C CNN
	1    10250 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 4700 10250 4800
$Comp
L power:GND #PWR021
U 1 1 611DD30D
P 11700 4800
F 0 "#PWR021" H 11700 4550 50  0001 C CNN
F 1 "GND" H 11705 4627 50  0000 C CNN
F 2 "" H 11700 4800 50  0001 C CNN
F 3 "" H 11700 4800 50  0001 C CNN
	1    11700 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	10950 3800 11700 3800
Wire Wire Line
	11700 3800 11700 4300
Wire Wire Line
	10950 4300 11700 4300
Connection ~ 11700 4300
Wire Wire Line
	11700 4300 11700 4800
Wire Wire Line
	10950 2800 11700 2800
Wire Wire Line
	11700 2800 11700 3800
Connection ~ 11700 3800
Wire Wire Line
	11350 2300 11350 2350
Wire Wire Line
	11350 2700 11350 2650
Text Label 9550 4400 2    50   ~ 0
P2_MAPLE_PIN1
Text Label 9550 4500 2    50   ~ 0
P2_MAPLE_PIN5
Text Label 10350 1400 2    50   ~ 0
P2_MAPLE_PIN1
Text Label 10350 1800 2    50   ~ 0
P2_MAPLE_PIN5
Wire Wire Line
	9700 1500 9700 1300
Wire Wire Line
	9700 1600 9700 1850
$Comp
L Video_Games:TVS_RCLAMP0524P-N U4
U 1 1 76455349
P 5850 8350
F 0 "U4" H 5850 8815 50  0000 C CNN
F 1 "TVS_RCLAMP0524P-N" H 5850 8724 50  0000 C CNN
F 2 "Package_DFN_QFN:UDFN-10_1.35x2.6mm_P0.5mm" H 5700 8350 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Bourne-Semicon-Shenzhen-RCLAMP0524P-N_C316044.pdf" H 5700 8350 50  0001 C CNN
F 4 "C316044" H 5850 8633 50  0000 C CNN "LCSC Part"
	1    5850 8350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 8850 5750 8900
Wire Wire Line
	5750 8900 5850 8900
Wire Wire Line
	5950 8900 5950 8850
$Comp
L power:GND #PWR08
U 1 1 76455356
P 5850 8950
F 0 "#PWR08" H 5850 8700 50  0001 C CNN
F 1 "GND" H 5855 8777 50  0000 C CNN
F 2 "" H 5850 8950 50  0001 C CNN
F 3 "" H 5850 8950 50  0001 C CNN
	1    5850 8950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 8900 5850 8950
Connection ~ 5850 8900
Wire Wire Line
	5850 8900 5950 8900
Text Label 5500 8400 2    50   ~ 0
P1Z
Text Label 5500 8500 2    50   ~ 0
P2Z
Text Label 6950 8200 2    50   ~ 0
P1A
Text Label 6950 8300 2    50   ~ 0
P2A
Text Label 9050 7000 0    50   ~ 0
P1X
Text Label 9050 7100 0    50   ~ 0
P2X
Text Label 6200 8200 0    50   ~ 0
P1Y
Text Label 6200 8300 0    50   ~ 0
P2Y
Text Label 6200 8400 0    50   ~ 0
P1Z
Text Label 6200 8500 0    50   ~ 0
P2Z
Text Label 7650 8200 0    50   ~ 0
P1A
Text Label 7650 8300 0    50   ~ 0
P2A
$Comp
L Video_Games:TVS_RCLAMP0524P-N U8
U 1 1 7695A619
P 8700 8350
F 0 "U8" H 8700 8815 50  0000 C CNN
F 1 "TVS_RCLAMP0524P-N" H 8700 8724 50  0000 C CNN
F 2 "Package_DFN_QFN:UDFN-10_1.35x2.6mm_P0.5mm" H 8550 8350 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Bourne-Semicon-Shenzhen-RCLAMP0524P-N_C316044.pdf" H 8550 8350 50  0001 C CNN
F 4 "C316044" H 8700 8633 50  0000 C CNN "LCSC Part"
	1    8700 8350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 8850 8600 8900
Wire Wire Line
	8600 8900 8700 8900
Wire Wire Line
	8800 8900 8800 8850
$Comp
L power:GND #PWR018
U 1 1 7695A626
P 8700 8950
F 0 "#PWR018" H 8700 8700 50  0001 C CNN
F 1 "GND" H 8705 8777 50  0000 C CNN
F 2 "" H 8700 8950 50  0001 C CNN
F 3 "" H 8700 8950 50  0001 C CNN
	1    8700 8950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 8900 8700 8950
Connection ~ 8700 8900
Wire Wire Line
	8700 8900 8800 8900
Wire Notes Line
	10300 6350 10300 10600
$Comp
L Device:R_Pack04 RN6
U 1 1 6348ECC5
P 8700 10200
F 0 "RN6" V 8900 10300 50  0000 C CNN
F 1 "10K_4xArray" V 8900 10100 50  0000 C CNN
F 2 "Resistor_SMD:R_Array_Convex_4x0402" V 8975 10200 50  0001 C CNN
F 3 "~" H 8700 10200 50  0001 C CNN
F 4 "C25725" V 8700 10200 50  0001 C CNN "LCSC Part"
	1    8700 10200
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Pack04 RN2
U 1 1 6355D416
P 5850 10200
F 0 "RN2" V 6050 10300 50  0000 C CNN
F 1 "10K_4xArray" V 6050 10100 50  0000 C CNN
F 2 "Resistor_SMD:R_Array_Convex_4x0402" V 6125 10200 50  0001 C CNN
F 3 "~" H 5850 10200 50  0001 C CNN
F 4 "C25725" V 5850 10200 50  0001 C CNN "LCSC Part"
	1    5850 10200
	0    -1   -1   0   
$EndComp
Text Label 5650 10300 2    50   ~ 0
P1Z
Text Label 5650 10400 2    50   ~ 0
P2Z
Text Label 7100 10200 2    50   ~ 0
P2A
Text Label 7500 10100 0    50   ~ 0
P1A_ATTEN
Text Label 7500 10200 0    50   ~ 0
P2A_ATTEN
Text Label 7500 9650 0    50   ~ 0
P1LEFT_ATTEN
Text Label 7500 9750 0    50   ~ 0
P2LEFT_ATTEN
Text Label 8900 9450 0    50   ~ 0
P1RIGHT_ATTEN
Text Label 8900 9550 0    50   ~ 0
P2RIGHT_ATTEN
Text Label 7100 9650 2    50   ~ 0
P1LEFT
Text Label 7100 9750 2    50   ~ 0
P2LEFT
Text Label 8500 9450 2    50   ~ 0
P1RIGHT
Text Label 8500 9550 2    50   ~ 0
P2RIGHT
Text Label 7500 10400 0    50   ~ 0
P2B_ATTEN
Text Label 7500 10300 0    50   ~ 0
P1B_ATTEN
Text Label 8500 10200 2    50   ~ 0
P2C
Text Label 8500 10100 2    50   ~ 0
P1C
Text Label 7100 10400 2    50   ~ 0
P2B
Text Label 7100 10300 2    50   ~ 0
P1B
Text Label 8900 9750 0    50   ~ 0
P2X_ATTEN
Text Label 8900 9650 0    50   ~ 0
P1X_ATTEN
Text Label 5650 10200 2    50   ~ 0
P2Y
Text Label 5650 10100 2    50   ~ 0
P1Y
Text Label 8500 9750 2    50   ~ 0
P2X
Text Label 8500 9650 2    50   ~ 0
P1X
Text Label 6200 7000 0    50   ~ 0
P1UP
Text Label 6200 7100 0    50   ~ 0
P2UP
Text Label 7650 6800 0    50   ~ 0
P1DOWN
Text Label 7650 6900 0    50   ~ 0
P2DOWN
Text Label 5650 9650 2    50   ~ 0
P1UP
Text Label 5650 9750 2    50   ~ 0
P2UP
Text Label 7100 9450 2    50   ~ 0
P1DOWN
Text Label 7100 9550 2    50   ~ 0
P2DOWN
Text Label 5650 9450 2    50   ~ 0
P1START
Text Label 5650 9550 2    50   ~ 0
P2START
Text Label 6200 6800 0    50   ~ 0
P1START
Text Label 6200 6900 0    50   ~ 0
P2START
Wire Notes Line
	4350 10600 10300 10600
Wire Notes Line
	4350 6350 10300 6350
$Comp
L Device:R_Pack04 RN5
U 1 1 632F2EAE
P 7300 9550
F 0 "RN5" V 7500 9650 50  0000 C CNN
F 1 "10K_4xArray" V 7500 9450 50  0000 C CNN
F 2 "Resistor_SMD:R_Array_Convex_4x0402" V 7575 9550 50  0001 C CNN
F 3 "~" H 7300 9550 50  0001 C CNN
F 4 "C25725" V 7300 9550 50  0001 C CNN "LCSC Part"
	1    7300 9550
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Pack04 RN4
U 1 1 62E1B428
P 7300 10200
F 0 "RN4" V 7500 10300 50  0000 C CNN
F 1 "10K_4xArray" V 7500 10100 50  0000 C CNN
F 2 "Resistor_SMD:R_Array_Convex_4x0402" V 7575 10200 50  0001 C CNN
F 3 "~" H 7300 10200 50  0001 C CNN
F 4 "C25725" V 7300 10200 50  0001 C CNN "LCSC Part"
	1    7300 10200
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Pack04 RN7
U 1 1 61520550
P 8700 9550
F 0 "RN7" V 8900 9650 50  0000 C CNN
F 1 "10K_4xArray" V 8900 9450 50  0000 C CNN
F 2 "Resistor_SMD:R_Array_Convex_4x0402" V 8975 9550 50  0001 C CNN
F 3 "~" H 8700 9550 50  0001 C CNN
F 4 "C25725" V 8700 9550 50  0001 C CNN "LCSC Part"
	1    8700 9550
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Pack04 RN3
U 1 1 6151F4BF
P 5850 9550
F 0 "RN3" V 6050 9650 50  0000 C CNN
F 1 "10K_4xArray" V 6050 9450 50  0000 C CNN
F 2 "Resistor_SMD:R_Array_Convex_4x0402" V 6125 9550 50  0001 C CNN
F 3 "~" H 5850 9550 50  0001 C CNN
F 4 "C25725" V 5850 9550 50  0001 C CNN "LCSC Part"
	1    5850 9550
	0    -1   -1   0   
$EndComp
Text Notes 4350 6350 0    50   ~ 0
ESD PROTECTION TVS DIODES AND RESISTORS
Wire Notes Line
	4350 10600 4350 6350
Text Label 5500 6800 2    50   ~ 0
P1START
Text Label 5500 6900 2    50   ~ 0
P2START
$Comp
L Video_Games:TVS_RCLAMP0524P-N U3
U 1 1 761BAB4C
P 5850 6950
F 0 "U3" H 5850 7415 50  0000 C CNN
F 1 "TVS_RCLAMP0524P-N" H 5850 7324 50  0000 C CNN
F 2 "Package_DFN_QFN:UDFN-10_1.35x2.6mm_P0.5mm" H 5700 6950 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Bourne-Semicon-Shenzhen-RCLAMP0524P-N_C316044.pdf" H 5700 6950 50  0001 C CNN
F 4 "C316044" H 5850 7233 50  0000 C CNN "LCSC Part"
	1    5850 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 7450 5750 7500
Wire Wire Line
	5750 7500 5850 7500
Wire Wire Line
	5950 7500 5950 7450
$Comp
L power:GND #PWR07
U 1 1 761BAB59
P 5850 7550
F 0 "#PWR07" H 5850 7300 50  0001 C CNN
F 1 "GND" H 5855 7377 50  0000 C CNN
F 2 "" H 5850 7550 50  0001 C CNN
F 3 "" H 5850 7550 50  0001 C CNN
	1    5850 7550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 7500 5850 7550
Connection ~ 5850 7500
Text Label 5500 7000 2    50   ~ 0
P1UP
Text Label 5500 7100 2    50   ~ 0
P2UP
Text Label 6950 6800 2    50   ~ 0
P1DOWN
Text Label 6950 6900 2    50   ~ 0
P2DOWN
$Comp
L Video_Games:TVS_RCLAMP0524P-N U5
U 1 1 762299F4
P 7300 6950
F 0 "U5" H 7300 7415 50  0000 C CNN
F 1 "TVS_RCLAMP0524P-N" H 7300 7324 50  0000 C CNN
F 2 "Package_DFN_QFN:UDFN-10_1.35x2.6mm_P0.5mm" H 7150 6950 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Bourne-Semicon-Shenzhen-RCLAMP0524P-N_C316044.pdf" H 7150 6950 50  0001 C CNN
F 4 "C316044" H 7300 7233 50  0000 C CNN "LCSC Part"
	1    7300 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 7450 7200 7500
Wire Wire Line
	7200 7500 7300 7500
Wire Wire Line
	7400 7500 7400 7450
$Comp
L power:GND #PWR012
U 1 1 76229A01
P 7300 7550
F 0 "#PWR012" H 7300 7300 50  0001 C CNN
F 1 "GND" H 7305 7377 50  0000 C CNN
F 2 "" H 7300 7550 50  0001 C CNN
F 3 "" H 7300 7550 50  0001 C CNN
	1    7300 7550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 7500 7300 7550
Connection ~ 7300 7500
Wire Wire Line
	7300 7500 7400 7500
Text Label 6950 7000 2    50   ~ 0
P1LEFT
Text Label 6950 7100 2    50   ~ 0
P2LEFT
Text Label 8350 6800 2    50   ~ 0
P1RIGHT
Text Label 8350 6900 2    50   ~ 0
P2RIGHT
Wire Wire Line
	5850 7500 5950 7500
Text Label 6050 9450 0    50   ~ 0
P1START_ATTEN
Text Label 6050 9550 0    50   ~ 0
P2START_ATTEN
Text Label 6050 9650 0    50   ~ 0
P1UP_ATTEN
Text Label 6050 9750 0    50   ~ 0
P2UP_ATTEN
Text Label 7500 9450 0    50   ~ 0
P1DOWN_ATTEN
Text Label 7500 9550 0    50   ~ 0
P2DOWN_ATTEN
Text Label 7650 7000 0    50   ~ 0
P1LEFT
Text Label 7650 7100 0    50   ~ 0
P2LEFT
Text Label 9050 6800 0    50   ~ 0
P1RIGHT
Text Label 9050 6900 0    50   ~ 0
P2RIGHT
Text Label 9050 8300 0    50   ~ 0
P2C
Text Label 9050 8200 0    50   ~ 0
P1C
Text Label 7650 8500 0    50   ~ 0
P2B
Text Label 7650 8400 0    50   ~ 0
P1B
Text Label 8350 8300 2    50   ~ 0
P2C
Text Label 8350 8200 2    50   ~ 0
P1C
Text Label 6950 8500 2    50   ~ 0
P2B
Text Label 6950 8400 2    50   ~ 0
P1B
Wire Wire Line
	7300 8900 7400 8900
Connection ~ 7300 8900
Wire Wire Line
	7300 8900 7300 8950
$Comp
L power:GND #PWR013
U 1 1 7653D429
P 7300 8950
F 0 "#PWR013" H 7300 8700 50  0001 C CNN
F 1 "GND" H 7305 8777 50  0000 C CNN
F 2 "" H 7300 8950 50  0001 C CNN
F 3 "" H 7300 8950 50  0001 C CNN
	1    7300 8950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 8900 7400 8850
Wire Wire Line
	7200 8900 7300 8900
Wire Wire Line
	7200 8850 7200 8900
$Comp
L Video_Games:TVS_RCLAMP0524P-N U6
U 1 1 7653D41C
P 7300 8350
F 0 "U6" H 7300 8815 50  0000 C CNN
F 1 "TVS_RCLAMP0524P-N" H 7300 8724 50  0000 C CNN
F 2 "Package_DFN_QFN:UDFN-10_1.35x2.6mm_P0.5mm" H 7150 8350 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Bourne-Semicon-Shenzhen-RCLAMP0524P-N_C316044.pdf" H 7150 8350 50  0001 C CNN
F 4 "C316044" H 7300 8633 50  0000 C CNN "LCSC Part"
	1    7300 8350
	1    0    0    -1  
$EndComp
Text Label 5500 8300 2    50   ~ 0
P2Y
Text Label 5500 8200 2    50   ~ 0
P1Y
Text Label 8350 7100 2    50   ~ 0
P2X
Text Label 8350 7000 2    50   ~ 0
P1X
Wire Wire Line
	8700 7500 8800 7500
Connection ~ 8700 7500
Wire Wire Line
	8700 7500 8700 7550
$Comp
L power:GND #PWR017
U 1 1 763E37F9
P 8700 7550
F 0 "#PWR017" H 8700 7300 50  0001 C CNN
F 1 "GND" H 8705 7377 50  0000 C CNN
F 2 "" H 8700 7550 50  0001 C CNN
F 3 "" H 8700 7550 50  0001 C CNN
	1    8700 7550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 7500 8800 7450
Wire Wire Line
	8600 7500 8700 7500
Wire Wire Line
	8600 7450 8600 7500
$Comp
L Video_Games:TVS_RCLAMP0524P-N U7
U 1 1 763E37EC
P 8700 6950
F 0 "U7" H 8700 7415 50  0000 C CNN
F 1 "TVS_RCLAMP0524P-N" H 8700 7324 50  0000 C CNN
F 2 "Package_DFN_QFN:UDFN-10_1.35x2.6mm_P0.5mm" H 8550 6950 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Bourne-Semicon-Shenzhen-RCLAMP0524P-N_C316044.pdf" H 8550 6950 50  0001 C CNN
F 4 "C316044" H 8700 7233 50  0000 C CNN "LCSC Part"
	1    8700 6950
	1    0    0    -1  
$EndComp
NoConn ~ -30500 -12850
NoConn ~ -32150 -8150
NoConn ~ 23950 2450
$Comp
L MiSTercade_P3P4-rescue:GND-power-MiSTercade-20201022-rescue-MiSTercade-rescue-MiSTercade_VS-rescue #PWR011
U 1 1 60E7889F
P 7000 4750
F 0 "#PWR011" H 7000 4500 50  0001 C CNN
F 1 "GND" H 6950 4750 50  0000 R CNN
F 2 "" H 7000 4750 50  0001 C CNN
F 3 "" H 7000 4750 50  0001 C CNN
	1    7000 4750
	1    0    0    -1  
$EndComp
Text Label 7050 4500 2    50   ~ 0
P2C
Text Label 7550 4500 0    50   ~ 0
P1C
Text Label 7550 4400 0    50   ~ 0
P1B
Text Label 7050 4400 2    50   ~ 0
P2B
Text Label 7550 4300 0    50   ~ 0
P1A
Text Label 7050 4300 2    50   ~ 0
P2A
Text Label 7550 4200 0    50   ~ 0
P1Z
Text Label 7050 4200 2    50   ~ 0
P2Z
Text Label 7550 4100 0    50   ~ 0
P1Y
Text Label 7050 4100 2    50   ~ 0
P2Y
Text Label 7550 4000 0    50   ~ 0
P1X
Text Label 7050 4000 2    50   ~ 0
P2X
Text Label 7550 3900 0    50   ~ 0
P1RIGHT
Text Label 7050 3900 2    50   ~ 0
P2RIGHT
Text Label 7550 3800 0    50   ~ 0
P1LEFT
Text Label 7050 3800 2    50   ~ 0
P2LEFT
Text Label 7550 3700 0    50   ~ 0
P1DOWN
Text Label 7050 3700 2    50   ~ 0
P2DOWN
Text Label 7550 3600 0    50   ~ 0
P1UP
Text Label 7050 3600 2    50   ~ 0
P2UP
Text Label 7550 3500 0    50   ~ 0
P1START
Text Label 7050 3500 2    50   ~ 0
P2START
Text Label 7550 3400 0    50   ~ 0
P1COIN
Text Label 7050 3400 2    50   ~ 0
P2COIN
$Comp
L power:+3.3V #PWR09
U 1 1 65594CC8
P 6800 2850
F 0 "#PWR09" H 6800 2700 50  0001 C CNN
F 1 "+3.3V" H 6815 3023 50  0000 C CNN
F 2 "" H 6800 2850 50  0001 C CNN
F 3 "" H 6800 2850 50  0001 C CNN
	1    6800 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 2900 6800 2900
Wire Wire Line
	6800 2900 6800 2850
Wire Wire Line
	7050 4700 7000 4700
Wire Wire Line
	7000 4700 7000 4750
$Comp
L Connector_Generic:Conn_02x20_Odd_Even J5
U 1 1 6587D0A0
P 7250 3700
F 0 "J5" H 7300 5050 50  0000 C CNN
F 1 "Conn_02x20_Odd_Even" H 7300 4950 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x20_P2.54mm_Vertical" H 7250 3700 50  0001 C CNN
F 3 "~" H 7250 3700 50  0001 C CNN
F 4 "C429965" H 7250 3700 50  0001 C CNN "LCSC Part"
	1    7250 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 2800 7600 2800
$Comp
L MiSTercade_P3P4-rescue:GND-power-MiSTercade-20201022-rescue-MiSTercade-rescue-MiSTercade_VS-rescue #PWR015
U 1 1 6593B6DB
P 7600 4750
F 0 "#PWR015" H 7600 4500 50  0001 C CNN
F 1 "GND" H 7550 4750 50  0000 R CNN
F 2 "" H 7600 4750 50  0001 C CNN
F 3 "" H 7600 4750 50  0001 C CNN
	1    7600 4750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7550 4700 7600 4700
Wire Wire Line
	7600 4700 7600 4750
Text Label 7050 3200 2    50   ~ 0
BLUE_IN
Text Label 7050 3100 2    50   ~ 0
GREEN_IN
Text Label 7050 3000 2    50   ~ 0
RED_IN
Text Label 7550 3300 0    50   ~ 0
P1B8
Text Label 7050 3300 2    50   ~ 0
P1B7
Text Label 7050 4600 2    50   ~ 0
P2B7
Text Label 7550 4600 0    50   ~ 0
P2B8
$Comp
L Video_Games:MiSTer_Addons_Logo Logo1
U 1 1 619E8739
P 7000 950
F 0 "Logo1" H 7113 895 50  0000 L CNN
F 1 "MiSTer_Addons_Logo" H 7113 804 50  0000 L CNN
F 2 "VideoGames:MiSTer_Addons_copper_15mm" H 7000 950 50  0001 C CNN
F 3 "" H 7000 950 50  0001 C CNN
F 4 "-" H 0   0   50  0001 C CNN "LCSC Part"
	1    7000 950 
	1    0    0    -1  
$EndComp
NoConn ~ 7550 2900
NoConn ~ 7550 3000
NoConn ~ 7550 3100
NoConn ~ 7550 3200
NoConn ~ 7050 3200
NoConn ~ 7050 3100
NoConn ~ 7050 3000
NoConn ~ 7050 3400
NoConn ~ 7550 3400
NoConn ~ 7550 4600
NoConn ~ 7050 4600
NoConn ~ 7050 3300
NoConn ~ 7550 3300
$Comp
L Device:D_Schottky D2
U 1 1 612C5243
P 5450 2450
F 0 "D2" V 5550 2600 50  0000 C CNN
F 1 "BAT54S" V 5550 2250 50  0000 C CNN
F 2 "Diode_SMD:D_SOT-23_ANK" H 5450 2450 50  0001 C CNN
F 3 "https://www.vishay.com/docs/85508/bat54.pdf" H 5450 2450 50  0001 C CNN
F 4 "C408389" H 0   0   50  0001 C CNN "LCSC Part"
	1    5450 2450
	0    -1   -1   0   
$EndComp
NoConn ~ 5050 3550
NoConn ~ 5050 2850
NoConn ~ 5050 3050
NoConn ~ 5050 2950
NoConn ~ 5050 3250
$Comp
L Connector_Generic:Conn_01x05 J4
U 1 1 612C525C
P 4650 1550
F 0 "J4" H 4730 1592 50  0000 L CNN
F 1 "Conn_01x05" H 4730 1501 50  0000 L CNN
F 2 "TerminalBlock_RND:TerminalBlock_RND_205-00015_1x05_P5.00mm_Horizontal" H 4650 1550 50  0001 C CNN
F 3 "~" H 4650 1550 50  0001 C CNN
F 4 "C192780" H 0   0   50  0001 C CNN "LCSC Part"
	1    4650 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 612C5270
P 3800 1800
F 0 "#PWR03" H 3800 1550 50  0001 C CNN
F 1 "GND" H 4050 1750 50  0000 R CNN
F 2 "" H 3800 1800 50  0001 C CNN
F 3 "" H 3800 1800 50  0001 C CNN
	1    3800 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 1650 4150 1650
Wire Wire Line
	4150 1650 4150 1550
Wire Wire Line
	4150 1550 4450 1550
$Comp
L DriverBoard-rescue:Pico-MCU_RaspberryPi_and_Boards U2
U 1 1 612C527E
P 4350 3500
F 0 "U2" H 4350 4715 50  0000 C CNN
F 1 "Pico" H 4350 4624 50  0000 C CNN
F 2 "MCU_Raspberry_Pi:RPi_Pico_SMD_TH" V 4350 3500 50  0001 C CNN
F 3 "" H 4350 3500 50  0001 C CNN
F 4 "-" H 0   0   50  0001 C CNN "LCSC Part"
	1    4350 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 2650 5450 2650
NoConn ~ 4450 4650
NoConn ~ 4250 4650
NoConn ~ 5050 2550
NoConn ~ 5050 3150
NoConn ~ 3650 4150
Text Label 3650 2850 2    50   ~ 0
P1UP_ATTEN
Text Label 3650 2950 2    50   ~ 0
P1DOWN_ATTEN
Text Label 3650 3050 2    50   ~ 0
P1LEFT_ATTEN
Text Label 3650 3150 2    50   ~ 0
P1RIGHT_ATTEN
Text Label 3650 3350 2    50   ~ 0
P1START_ATTEN
Text Label 3650 3450 2    50   ~ 0
P1A_ATTEN
Text Label 3650 3550 2    50   ~ 0
P1B_ATTEN
Text Label 3650 3650 2    50   ~ 0
P1C_ATTEN
Text Label 3650 3850 2    50   ~ 0
P1X_ATTEN
Text Label 3650 3950 2    50   ~ 0
P1Y_ATTEN
Text Label 3650 4050 2    50   ~ 0
P1Z_ATTEN
Text Label 5050 4450 0    50   ~ 0
P1LT_ATTEN
Text Label 5050 4350 0    50   ~ 0
P1RT_ATTEN
NoConn ~ 5050 3950
NoConn ~ 5050 3850
NoConn ~ 5050 3650
NoConn ~ 5050 3350
NoConn ~ 5050 3450
Text Label 5050 4050 0    50   ~ 0
P1_ANALOG_VER_1
Text Label 5050 4150 0    50   ~ 0
P1_ANALOG_HOR_1
Text Label 3650 2550 2    50   ~ 0
P1TX
Text Label 3650 2650 2    50   ~ 0
P1RX
$Comp
L power:GND #PWR01
U 1 1 612C52A4
P 2900 4750
F 0 "#PWR01" H 2900 4500 50  0001 C CNN
F 1 "GND" H 2905 4577 50  0000 C CNN
F 2 "" H 2900 4750 50  0001 C CNN
F 3 "" H 2900 4750 50  0001 C CNN
	1    2900 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 2750 2900 2750
Wire Wire Line
	2900 2750 2900 3250
Wire Wire Line
	3650 3250 2900 3250
Connection ~ 2900 3250
Wire Wire Line
	2900 3250 2900 3750
Wire Wire Line
	3650 3750 2900 3750
Connection ~ 2900 3750
Wire Wire Line
	2900 3750 2900 4250
Wire Wire Line
	3650 4250 2900 4250
Connection ~ 2900 4250
Wire Wire Line
	2900 4250 2900 4750
$Comp
L power:GND #PWR04
U 1 1 612C52B9
P 4350 4750
F 0 "#PWR04" H 4350 4500 50  0001 C CNN
F 1 "GND" H 4355 4577 50  0000 C CNN
F 2 "" H 4350 4750 50  0001 C CNN
F 3 "" H 4350 4750 50  0001 C CNN
	1    4350 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 4650 4350 4750
$Comp
L power:GND #PWR06
U 1 1 612C52C4
P 5800 4750
F 0 "#PWR06" H 5800 4500 50  0001 C CNN
F 1 "GND" H 5805 4577 50  0000 C CNN
F 2 "" H 5800 4750 50  0001 C CNN
F 3 "" H 5800 4750 50  0001 C CNN
	1    5800 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 3750 5800 3750
Wire Wire Line
	5800 3750 5800 4250
Wire Wire Line
	5050 4250 5800 4250
Connection ~ 5800 4250
Wire Wire Line
	5800 4250 5800 4750
Wire Wire Line
	5050 2750 5800 2750
Wire Wire Line
	5800 2750 5800 3750
Connection ~ 5800 3750
Wire Wire Line
	5450 2250 5450 2300
Wire Wire Line
	5450 2650 5450 2600
Text Label 3650 4350 2    50   ~ 0
P1_MAPLE_PIN1
Text Label 3650 4450 2    50   ~ 0
P1_MAPLE_PIN5
Text Label 4450 1350 2    50   ~ 0
P1_MAPLE_PIN1
Text Label 4450 1750 2    50   ~ 0
P1_MAPLE_PIN5
Wire Wire Line
	3800 1450 3800 1250
Wire Wire Line
	3800 1550 3800 1800
Wire Wire Line
	9700 1500 10350 1500
Wire Wire Line
	9700 1600 10050 1600
Wire Wire Line
	3800 1550 4150 1550
Connection ~ 4150 1550
Wire Wire Line
	3800 1450 4450 1450
$Comp
L Connector_Generic:Conn_01x02 J6
U 1 1 61345E42
P 10300 5300
F 0 "J6" H 10380 5292 50  0000 L CNN
F 1 "Conn_01x02" H 10380 5201 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 10300 5300 50  0001 C CNN
F 3 "~" H 10300 5300 50  0001 C CNN
F 4 "C358684" H 0   0   50  0001 C CNN "LCSC Part"
	1    10300 5300
	1    0    0    -1  
$EndComp
Text Label 10100 5300 2    50   ~ 0
P2C_ATTEN
Text Label 10100 5400 2    50   ~ 0
P2RT_ATTEN
$Comp
L Connector_Generic:Conn_01x02 J7
U 1 1 613472E8
P 10300 5700
F 0 "J7" H 10380 5692 50  0000 L CNN
F 1 "Conn_01x02" H 10380 5601 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 10300 5700 50  0001 C CNN
F 3 "~" H 10300 5700 50  0001 C CNN
F 4 "C358684" H 0   0   50  0001 C CNN "LCSC Part"
	1    10300 5700
	1    0    0    -1  
$EndComp
Text Label 10100 5800 2    50   ~ 0
P2LT_ATTEN
Text Label 10100 5700 2    50   ~ 0
P2Z_ATTEN
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 613475FD
P 4450 5350
F 0 "J1" H 4530 5342 50  0000 L CNN
F 1 "Conn_01x02" H 4530 5251 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4450 5350 50  0001 C CNN
F 3 "~" H 4450 5350 50  0001 C CNN
F 4 "C358684" H 0   0   50  0001 C CNN "LCSC Part"
	1    4450 5350
	1    0    0    -1  
$EndComp
Text Label 4250 5350 2    50   ~ 0
P1C_ATTEN
Text Label 4250 5450 2    50   ~ 0
P1RT_ATTEN
$Comp
L Connector_Generic:Conn_01x02 J3
U 1 1 61347609
P 4450 5750
F 0 "J3" H 4530 5742 50  0000 L CNN
F 1 "Conn_01x02" H 4530 5651 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4450 5750 50  0001 C CNN
F 3 "~" H 4450 5750 50  0001 C CNN
F 4 "C358684" H 0   0   50  0001 C CNN "LCSC Part"
	1    4450 5750
	1    0    0    -1  
$EndComp
Text Label 4250 5850 2    50   ~ 0
P1LT_ATTEN
Text Label 4250 5750 2    50   ~ 0
P1Z_ATTEN
NoConn ~ 9050 8400
NoConn ~ 9050 8500
NoConn ~ 8350 8400
NoConn ~ 8350 8500
Text Label 6050 10100 0    50   ~ 0
P1Y_ATTEN
Text Label 6050 10200 0    50   ~ 0
P2Y_ATTEN
Text Label 6050 10300 0    50   ~ 0
P1Z_ATTEN
Text Label 6050 10400 0    50   ~ 0
P2Z_ATTEN
Text Label 7100 10100 2    50   ~ 0
P1A
NoConn ~ 8500 10300
NoConn ~ 8500 10400
NoConn ~ 8900 10300
NoConn ~ 8900 10400
Text Label 9550 2700 2    50   ~ 0
P2RX
Text Label 8900 10100 0    50   ~ 0
P1C_ATTEN
Text Label 8900 10200 0    50   ~ 0
P2C_ATTEN
Text Label 7550 2900 0    50   ~ 0
COIN_METER_1
Text Label 7550 3100 0    50   ~ 0
GREEN_IN
Text Label 7550 3000 0    50   ~ 0
RED_IN
Text Label 7550 3200 0    50   ~ 0
BLUE_IN
Wire Wire Line
	7000 2800 7050 2800
Wire Wire Line
	7000 2750 7000 2800
$Comp
L power:+5V #PWR010
U 1 1 6570FE85
P 7000 2750
F 0 "#PWR010" H 7000 2600 50  0001 C CNN
F 1 "+5V" H 7015 2923 50  0000 C CNN
F 2 "" H 7000 2750 50  0001 C CNN
F 3 "" H 7000 2750 50  0001 C CNN
	1    7000 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 2800 7600 2750
$Comp
L power:+5V #PWR014
U 1 1 658B6EE0
P 7600 2750
F 0 "#PWR014" H 7600 2600 50  0001 C CNN
F 1 "+5V" H 7615 2923 50  0000 C CNN
F 2 "" H 7600 2750 50  0001 C CNN
F 3 "" H 7600 2750 50  0001 C CNN
	1    7600 2750
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0101
U 1 1 614E0CB0
P 3800 1250
F 0 "#PWR0101" H 3800 1100 50  0001 C CNN
F 1 "VCC" H 3815 1378 50  0000 L CNN
F 2 "" H 3800 1250 50  0001 C CNN
F 3 "" H 3800 1250 50  0001 C CNN
	1    3800 1250
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0102
U 1 1 614E4B2B
P 11350 2300
F 0 "#PWR0102" H 11350 2150 50  0001 C CNN
F 1 "VDD" H 11365 2428 50  0000 L CNN
F 2 "" H 11350 2300 50  0001 C CNN
F 3 "" H 11350 2300 50  0001 C CNN
	1    11350 2300
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0103
U 1 1 614E878C
P 5450 2250
F 0 "#PWR0103" H 5450 2100 50  0001 C CNN
F 1 "VCC" H 5465 2378 50  0000 L CNN
F 2 "" H 5450 2250 50  0001 C CNN
F 3 "" H 5450 2250 50  0001 C CNN
	1    5450 2250
	1    0    0    -1  
$EndComp
NoConn ~ 3650 2550
NoConn ~ 3650 2650
NoConn ~ 9550 2700
NoConn ~ 9550 2600
$EndSCHEMATC
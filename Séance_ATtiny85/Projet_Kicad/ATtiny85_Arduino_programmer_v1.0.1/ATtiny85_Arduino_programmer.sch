EESchema Schematic File Version 4
LIBS:ATtiny85_Arduino_programmer-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Shield ATtiny"
Date "2018-12-14"
Rev "v1.0.0"
Comp "electroLAB"
Comment1 "Auteur : Vincent STRAGIER"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ATtiny85_Arduino_programmer-rescue:ATtiny85-20PU-MCU_Microchip_ATtiny U1
U 1 1 5BAB4AF7
P 7200 5400
F 0 "U1" H 6670 5446 50  0000 R CNN
F 1 "ATtiny85-20PU" H 6670 5355 50  0000 R CNN
F 2 "Housings_DIP:DIP-8_W7.62mm_LongPads" H 7200 5400 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/atmel-2586-avr-8-bit-microcontroller-attiny25-attiny45-attiny85_datasheet.pdf" H 7200 5400 50  0001 C CNN
	1    7200 5400
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x03_Counter_Clockwise J1
U 1 1 5BAB4C1E
P 1950 2900
F 0 "J1" H 2000 3217 50  0000 C CNN
F 1 "Conn_02x03_Counter_Clockwise" H 2000 3126 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03_Pitch2.54mm" H 1950 2900 50  0001 C CNN
F 3 "~" H 1950 2900 50  0001 C CNN
	1    1950 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 5BAB4C99
P 4950 5950
F 0 "D1" H 4941 6166 50  0000 C CNN
F 1 "LED-ORANGE" H 4941 6075 50  0000 C CNN
F 2 "LEDs:LED_1206_HandSoldering" H 4950 5950 50  0001 C CNN
F 3 "~" H 4950 5950 50  0001 C CNN
	1    4950 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D2
U 1 1 5BAB4D6B
P 4950 6400
F 0 "D2" H 4941 6616 50  0000 C CNN
F 1 "LED-RED" H 4941 6525 50  0000 C CNN
F 2 "LEDs:LED_1206_HandSoldering" H 4950 6400 50  0001 C CNN
F 3 "~" H 4950 6400 50  0001 C CNN
	1    4950 6400
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D3
U 1 1 5BAB4DB8
P 4950 6850
F 0 "D3" H 4941 7066 50  0000 C CNN
F 1 "LED-GREEN" H 4941 6975 50  0000 C CNN
F 2 "LEDs:LED_1206_HandSoldering" H 4950 6850 50  0001 C CNN
F 3 "~" H 4950 6850 50  0001 C CNN
	1    4950 6850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5BAB4DDB
P 5400 5950
F 0 "R1" V 5193 5950 50  0000 C CNN
F 1 "220" V 5284 5950 50  0000 C CNN
F 2 "Resistors_SMD:R_1210_HandSoldering" V 5330 5950 50  0001 C CNN
F 3 "~" H 5400 5950 50  0001 C CNN
	1    5400 5950
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5BAB4E43
P 5400 6400
F 0 "R2" V 5193 6400 50  0000 C CNN
F 1 "220" V 5284 6400 50  0000 C CNN
F 2 "Resistors_SMD:R_1210_HandSoldering" V 5330 6400 50  0001 C CNN
F 3 "~" H 5400 6400 50  0001 C CNN
	1    5400 6400
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 5BAB4EA9
P 5400 6850
F 0 "R3" V 5193 6850 50  0000 C CNN
F 1 "220" V 5284 6850 50  0000 C CNN
F 2 "Resistors_SMD:R_1210_HandSoldering" V 5330 6850 50  0001 C CNN
F 3 "~" H 5400 6850 50  0001 C CNN
	1    5400 6850
	0    1    1    0   
$EndComp
Wire Wire Line
	5100 5950 5250 5950
Wire Wire Line
	5100 6400 5250 6400
Wire Wire Line
	5100 6850 5250 6850
$Comp
L arduino_shieldsNCL:ARDUINO_SHIELD SHIELD1
U 1 1 5BAB5999
P 2150 6500
F 0 "SHIELD1" H 2150 7587 60  0000 C CNN
F 1 "ARDUINO_SHIELD" H 2150 7481 60  0000 C CNN
F 2 "arduino_shields:ARDUINO_SHIELD_040pins" H 2150 6500 50  0001 C CNN
F 3 "" H 2150 6500 50  0001 C CNN
	1    2150 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 5950 4700 6400
Wire Wire Line
	4700 5950 4800 5950
Wire Wire Line
	4800 6400 4700 6400
Connection ~ 4700 6400
Wire Wire Line
	4700 6400 4700 6850
Wire Wire Line
	4800 6850 4700 6850
Connection ~ 4700 6850
Wire Wire Line
	4700 6850 4700 7050
$Comp
L power:GND #PWR04
U 1 1 5BAB62D4
P 4700 7050
F 0 "#PWR04" H 4700 6800 50  0001 C CNN
F 1 "GND" H 4705 6877 50  0000 C CNN
F 2 "" H 4700 7050 50  0001 C CNN
F 3 "" H 4700 7050 50  0001 C CNN
	1    4700 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 5800 2150 5800
Wire Wire Line
	2150 5800 2150 6400
Wire Wire Line
	2150 6400 1200 6400
Wire Wire Line
	1200 6400 1200 6500
Connection ~ 1200 6400
Wire Wire Line
	3100 5800 3300 5800
Wire Wire Line
	3300 5800 3300 5350
Wire Wire Line
	3300 5350 3550 5350
Wire Wire Line
	3550 5350 3550 5450
Connection ~ 3100 5800
$Comp
L power:GND #PWR02
U 1 1 5BAB6A1F
P 3550 5450
F 0 "#PWR02" H 3550 5200 50  0001 C CNN
F 1 "GND" H 3555 5277 50  0000 C CNN
F 2 "" H 3550 5450 50  0001 C CNN
F 3 "" H 3550 5450 50  0001 C CNN
	1    3550 5450
	1    0    0    -1  
$EndComp
Text GLabel 3100 5900 2    50   Input ~ 0
13
Text GLabel 3100 6000 2    50   Input ~ 0
12
Text GLabel 3100 6100 2    50   Input ~ 0
11
Text GLabel 3100 6200 2    50   Input ~ 0
10
NoConn ~ 3100 6700
NoConn ~ 3100 6800
NoConn ~ 3100 6900
NoConn ~ 3100 7000
NoConn ~ 3100 7100
NoConn ~ 3100 7200
NoConn ~ 3100 7300
NoConn ~ 1200 6600
NoConn ~ 1200 6800
NoConn ~ 1200 6900
NoConn ~ 1200 7000
NoConn ~ 1200 7100
NoConn ~ 1200 7200
NoConn ~ 1200 7300
NoConn ~ 1200 6200
$Comp
L Device:CP1 C1
U 1 1 5BAB845C
P 700 6250
F 0 "C1" H 815 6296 50  0000 L CNN
F 1 "10µ" H 815 6205 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D6.3mm_P2.50mm" H 700 6250 50  0001 C CNN
F 3 "~" H 700 6250 50  0001 C CNN
	1    700  6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 6100 700  6100
Wire Wire Line
	700  6400 1200 6400
NoConn ~ 3100 5700
Text GLabel 3100 6300 2    50   Input ~ 0
9
Text GLabel 3100 6400 2    50   Input ~ 0
8
Text GLabel 3100 6600 2    50   Input ~ 0
7
Text GLabel 5650 5950 2    50   Input ~ 0
7
Text GLabel 5650 6400 2    50   Input ~ 0
8
Text GLabel 5650 6850 2    50   Input ~ 0
9
Wire Wire Line
	5550 5950 5650 5950
Wire Wire Line
	5650 6400 5550 6400
Wire Wire Line
	5650 6850 5550 6850
Text GLabel 1150 6300 0    50   Input ~ 0
5V
Wire Wire Line
	1150 6300 1200 6300
Text GLabel 7200 4200 1    50   Input ~ 0
5V
$Comp
L power:GND #PWR05
U 1 1 5BABAFBE
P 7200 6000
F 0 "#PWR05" H 7200 5750 50  0001 C CNN
F 1 "GND" H 7205 5827 50  0000 C CNN
F 2 "" H 7200 6000 50  0001 C CNN
F 3 "" H 7200 6000 50  0001 C CNN
	1    7200 6000
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Female J3
U 1 1 5BABB4BC
P 5600 1200
F 0 "J3" H 5627 1176 50  0000 L CNN
F 1 "Conn_01x04_Female" H 5627 1085 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 5600 1200 50  0001 C CNN
F 3 "~" H 5600 1200 50  0001 C CNN
	1    5600 1200
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Female J2
U 1 1 5BABB8CF
P 4150 1200
F 0 "J2" H 4044 1485 50  0000 C CNN
F 1 "Conn_01x04_Female" H 4044 1394 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 4150 1200 50  0001 C CNN
F 3 "~" H 4150 1200 50  0001 C CNN
	1    4150 1200
	-1   0    0    -1  
$EndComp
Text GLabel 7800 5600 2    50   Input ~ 0
AT1
Text GLabel 7800 5500 2    50   Input ~ 0
AT3
Text GLabel 7800 5400 2    50   Input ~ 0
AT2
Text GLabel 7800 5300 2    50   Input ~ 0
AT7
Text GLabel 7800 5200 2    50   Input ~ 0
AT6
Text GLabel 7800 5100 2    50   Input ~ 0
AT5
Text GLabel 4350 1100 2    50   Input ~ 0
AT1
Text GLabel 4350 1200 2    50   Input ~ 0
AT2
Text GLabel 4350 1300 2    50   Input ~ 0
AT3
$Comp
L power:GND #PWR03
U 1 1 5BABF0BD
P 4450 1500
F 0 "#PWR03" H 4450 1250 50  0001 C CNN
F 1 "GND" H 4455 1327 50  0000 C CNN
F 2 "" H 4450 1500 50  0001 C CNN
F 3 "" H 4450 1500 50  0001 C CNN
	1    4450 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 1400 4450 1400
Wire Wire Line
	4450 1400 4450 1500
Text GLabel 5400 1100 0    50   Input ~ 0
5V
Text GLabel 5400 1200 0    50   Input ~ 0
AT7
Text GLabel 5400 1300 0    50   Input ~ 0
AT6
Text GLabel 5400 1400 0    50   Input ~ 0
AT5
$Comp
L Switch:SW_Push_Open SW1
U 1 1 5BABFB98
P 7200 4500
F 0 "SW1" V 7154 4577 50  0000 L CNN
F 1 "SW_Push_Open" V 7245 4577 50  0000 L CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm" H 7200 4700 50  0001 C CNN
F 3 "" H 7200 4700 50  0001 C CNN
	1    7200 4500
	0    1    1    0   
$EndComp
Wire Wire Line
	7200 4200 7200 4250
Text GLabel 1750 2800 0    50   Input ~ 0
11
Text GLabel 1750 2900 0    50   Input ~ 0
13
Text GLabel 1750 3000 0    50   Input ~ 0
10
Text GLabel 2250 2800 2    50   Input ~ 0
5V
Text GLabel 2250 2900 2    50   Input ~ 0
12
$Comp
L power:GND #PWR01
U 1 1 5BAC12B2
P 2350 3100
F 0 "#PWR01" H 2350 2850 50  0001 C CNN
F 1 "GND" H 2355 2927 50  0000 C CNN
F 2 "" H 2350 3100 50  0001 C CNN
F 3 "" H 2350 3100 50  0001 C CNN
	1    2350 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 3000 2350 3000
Wire Wire Line
	2350 3000 2350 3100
Wire Wire Line
	7200 4700 7200 4750
Text GLabel 5200 4550 2    50   Input ~ 0
AT7
Text GLabel 5200 3850 2    50   Input ~ 0
AT6
Text GLabel 5200 3150 2    50   Input ~ 0
AT5
Text GLabel 5200 2450 2    50   Input ~ 0
AT1
Text GLabel 4600 4550 0    50   Input ~ 0
13
Text GLabel 4600 3850 0    50   Input ~ 0
12
Text GLabel 4600 3150 0    50   Input ~ 0
11
Text GLabel 4600 2450 0    50   Input ~ 0
10
$Comp
L Device:Jumper JP4
U 1 1 5BABCC31
P 4900 4550
F 0 "JP4" H 4900 4814 50  0000 C CNN
F 1 "Jumper" H 4900 4723 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 4900 4550 50  0001 C CNN
F 3 "~" H 4900 4550 50  0001 C CNN
	1    4900 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper JP3
U 1 1 5BABC96A
P 4900 3850
F 0 "JP3" H 4900 4114 50  0000 C CNN
F 1 "Jumper" H 4900 4023 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 4900 3850 50  0001 C CNN
F 3 "~" H 4900 3850 50  0001 C CNN
	1    4900 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper JP2
U 1 1 5BABC6A7
P 4900 3150
F 0 "JP2" H 4900 3414 50  0000 C CNN
F 1 "Jumper" H 4900 3323 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 4900 3150 50  0001 C CNN
F 3 "~" H 4900 3150 50  0001 C CNN
	1    4900 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper JP1
U 1 1 5BABC5ED
P 4900 2450
F 0 "JP1" H 4900 2714 50  0000 C CNN
F 1 "Jumper" H 4900 2623 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 4900 2450 50  0001 C CNN
F 3 "~" H 4900 2450 50  0001 C CNN
	1    4900 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper JP5
U 1 1 5BB6A3CB
P 4900 2800
F 0 "JP5" H 4900 3064 50  0000 C CNN
F 1 "Jumper" H 4900 2973 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 4900 2800 50  0001 C CNN
F 3 "~" H 4900 2800 50  0001 C CNN
	1    4900 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper JP6
U 1 1 5BB6A7AC
P 4900 3500
F 0 "JP6" H 4900 3764 50  0000 C CNN
F 1 "Jumper" H 4900 3673 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 4900 3500 50  0001 C CNN
F 3 "~" H 4900 3500 50  0001 C CNN
	1    4900 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper JP7
U 1 1 5BB6ABDF
P 4900 4200
F 0 "JP7" H 4900 4464 50  0000 C CNN
F 1 "Jumper" H 4900 4373 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 4900 4200 50  0001 C CNN
F 3 "~" H 4900 4200 50  0001 C CNN
	1    4900 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper JP8
U 1 1 5BB6AFB6
P 4900 4900
F 0 "JP8" H 4900 5164 50  0000 C CNN
F 1 "Jumper" H 4900 5073 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 4900 4900 50  0001 C CNN
F 3 "~" H 4900 4900 50  0001 C CNN
	1    4900 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 2450 5200 2800
Wire Wire Line
	4600 2450 4600 2800
Wire Wire Line
	4600 3150 4600 3500
Wire Wire Line
	5200 3150 5200 3500
Wire Wire Line
	5200 3850 5200 4200
Wire Wire Line
	4600 3850 4600 4200
Wire Wire Line
	4600 4550 4600 4900
Wire Wire Line
	5200 4550 5200 4900
$Comp
L Switch:SW_Push_SPDT SW2
U 1 1 5BB6DE86
P 7750 4250
F 0 "SW2" H 7750 4535 50  0000 C CNN
F 1 "SW_Push_SPDT" H 7750 4444 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 7750 4250 50  0001 C CNN
F 3 "" H 7750 4250 50  0001 C CNN
	1    7750 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 4250 7400 4250
Connection ~ 7200 4250
Wire Wire Line
	7200 4250 7200 4300
Wire Wire Line
	7950 4150 8050 4150
Wire Wire Line
	8050 4150 8050 3900
Wire Wire Line
	8050 3900 7400 3900
Wire Wire Line
	7400 3900 7400 4250
Connection ~ 7400 4250
Wire Wire Line
	7400 4250 7550 4250
Wire Wire Line
	7950 4350 7950 4750
Wire Wire Line
	7950 4750 7200 4750
Connection ~ 7200 4750
Wire Wire Line
	7200 4750 7200 4800
$EndSCHEMATC

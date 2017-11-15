EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
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
LIBS:practice-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
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
L MMBT3904 Q1
U 1 1 4AE15818
P 6250 5250
F 0 "Q1" H 6450 5325 50  0000 L CNN
F 1 "NPN" H 6450 5250 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 6450 5175 50  0001 L CIN
F 3 "" H 6250 5250 50  0001 L CNN
	1    6250 5250
	1    0    0    -1  
$EndComp
$Comp
L Fan M1
U 1 1 4AE158D0
P 6350 4650
F 0 "M1" H 6450 4850 50  0000 L CNN
F 1 "Fan" H 6450 4550 50  0000 L TNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" H 6350 4660 50  0001 C CNN
F 3 "" H 6350 4660 50  0001 C CNN
	1    6350 4650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 4AE15F27
P 2600 6050
F 0 "#PWR01" H 2600 5800 50  0001 C CNN
F 1 "GND" H 2600 5900 50  0000 C CNN
F 2 "" H 2600 6050 50  0001 C CNN
F 3 "" H 2600 6050 50  0001 C CNN
	1    2600 6050
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 4AE167C4
P 5900 5250
F 0 "R1" V 5980 5250 50  0000 C CNN
F 1 "1 k" V 5900 5250 50  0000 C CNN
F 2 "Resistors_Universal:Resistor_SMD+THTuniversal_0805to1206_RM10_HandSoldering" V 5830 5250 50  0001 C CNN
F 3 "" H 5900 5250 50  0001 C CNN
	1    5900 5250
	0    1    1    0   
$EndComp
$Comp
L D D1
U 1 1 4AE16956
P 6750 4600
F 0 "D1" H 6750 4700 50  0000 C CNN
F 1 "D" H 6750 4500 50  0000 C CNN
F 2 "Diodes_THT:D_A-405_P7.62mm_Horizontal" H 6750 4600 50  0001 C CNN
F 3 "" H 6750 4600 50  0001 C CNN
	1    6750 4600
	0    1    1    0   
$EndComp
$Comp
L C C1
U 1 1 4AE1698F
P 2600 5600
F 0 "C1" H 2625 5700 50  0000 L CNN
F 1 "100 u" H 2625 5500 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_Tantal_D6.0mm_P2.50mm" H 2638 5450 50  0001 C CNN
F 3 "" H 2600 5600 50  0001 C CNN
	1    2600 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 5250 5750 5250
Wire Wire Line
	6350 5450 6350 6050
$Comp
L GND #PWR02
U 1 1 4AE16EBB
P 5700 7300
F 0 "#PWR02" H 5700 7050 50  0001 C CNN
F 1 "GND" H 5700 7150 50  0000 C CNN
F 2 "" H 5700 7300 50  0001 C CNN
F 3 "" H 5700 7300 50  0001 C CNN
	1    5700 7300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 4AE16EEA
P 6350 6050
F 0 "#PWR03" H 6350 5800 50  0001 C CNN
F 1 "GND" H 6350 5900 50  0000 C CNN
F 2 "" H 6350 6050 50  0001 C CNN
F 3 "" H 6350 6050 50  0001 C CNN
	1    6350 6050
	1    0    0    -1  
$EndComp
$Comp
L ATTINY85-20PU U1
U 1 1 4AE185FF
P 4150 5500
F 0 "U1" H 3000 5900 50  0000 C CNN
F 1 "ATTINY85" H 5150 5100 50  0000 C CNN
F 2 "Housings_DIP:DIP-8_W7.62mm" H 5150 5500 50  0001 C CIN
F 3 "" H 4150 5500 50  0001 C CNN
	1    4150 5500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5500 5650 5800 5650
Connection ~ 2450 2250
Wire Wire Line
	5500 5750 5600 5750
Wire Wire Line
	5600 5750 5600 6050
Wire Wire Line
	5600 6050 5500 6050
Connection ~ 2600 5450
Text Notes 7200 6650 0    60   ~ 0
A simple temperature controlled fan using the attiny85. 
Text Notes 7400 7600 0    60   ~ 0
Temperature Controlled Fan Version 2\n\n
Text Notes 8200 7650 0    60   ~ 0
11/14/2017 2:10 PM
Wire Wire Line
	6350 4800 6350 5050
$Comp
L +5V #PWR04
U 1 1 59F1801C
P 2200 5450
F 0 "#PWR04" H 2200 5300 50  0001 C CNN
F 1 "+5V" H 2200 5590 50  0000 C CNN
F 2 "" H 2200 5450 50  0001 C CNN
F 3 "" H 2200 5450 50  0001 C CNN
	1    2200 5450
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR05
U 1 1 59F180E8
P 5200 6050
F 0 "#PWR05" H 5200 5900 50  0001 C CNN
F 1 "+5V" H 5200 6190 50  0000 C CNN
F 2 "" H 5200 6050 50  0001 C CNN
F 3 "" H 5200 6050 50  0001 C CNN
	1    5200 6050
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR06
U 1 1 59F181E1
P 5700 6800
F 0 "#PWR06" H 5700 6650 50  0001 C CNN
F 1 "+5V" H 5700 6940 50  0000 C CNN
F 2 "" H 5700 6800 50  0001 C CNN
F 3 "" H 5700 6800 50  0001 C CNN
	1    5700 6800
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR07
U 1 1 59F182A4
P 6350 4350
F 0 "#PWR07" H 6350 4200 50  0001 C CNN
F 1 "+5V" H 6350 4490 50  0000 C CNN
F 2 "" H 6350 4350 50  0001 C CNN
F 3 "" H 6350 4350 50  0001 C CNN
	1    6350 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 5450 2600 5250
Wire Wire Line
	2600 5250 2800 5250
Wire Wire Line
	2600 5750 2600 6050
Wire Wire Line
	2200 5450 2600 5450
$Comp
L GND #PWR08
U 1 1 59F18F73
P 3850 6350
F 0 "#PWR08" H 3850 6100 50  0001 C CNN
F 1 "GND" H 3850 6200 50  0000 C CNN
F 2 "" H 3850 6350 50  0001 C CNN
F 3 "" H 3850 6350 50  0001 C CNN
	1    3850 6350
	1    0    0    -1  
$EndComp
Text GLabel 5500 5350 2    60   Input ~ 0
Out3
Text GLabel 4300 6450 0    60   Input ~ 0
Out1
Text GLabel 4300 6550 0    60   Input ~ 0
Out2
Text GLabel 4300 6650 0    60   Input ~ 0
Out3
Text GLabel 5500 5450 2    60   Input ~ 0
Out2
Text GLabel 5500 5550 2    60   Input ~ 0
Out1
Wire Wire Line
	3950 6250 4300 6250
Wire Wire Line
	4300 6350 3850 6350
$Comp
L R R4
U 1 1 5A0B6A50
P 5350 6050
F 0 "R4" V 5430 6050 50  0000 C CNN
F 1 "100" V 5350 6050 50  0000 C CNN
F 2 "Resistors_SMD:R_0201_NoSilk" V 5280 6050 50  0001 C CNN
F 3 "" H 5350 6050 50  0001 C CNN
	1    5350 6050
	0    1    1    0   
$EndComp
Wire Wire Line
	6750 4750 6750 4850
Wire Wire Line
	6750 4850 6350 4850
Connection ~ 6350 4850
$Comp
L MCP1700-5002E_TO92 U2
U 1 1 5A0B6FC2
P 2900 6500
F 0 "U2" H 2750 6375 50  0000 C CNN
F 1 "5V Reg" H 2900 6375 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Narrow_Oval" H 2900 6300 50  0001 C CIN
F 3 "" H 2900 6500 50  0001 C CNN
	1    2900 6500
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR09
U 1 1 5A0B7055
P 3200 6500
F 0 "#PWR09" H 3200 6350 50  0001 C CNN
F 1 "+5V" H 3200 6640 50  0000 C CNN
F 2 "" H 3200 6500 50  0001 C CNN
F 3 "" H 3200 6500 50  0001 C CNN
	1    3200 6500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 5A0B707B
P 3050 6100
F 0 "#PWR010" H 3050 5850 50  0001 C CNN
F 1 "GND" H 3050 5950 50  0000 C CNN
F 2 "" H 3050 6100 50  0001 C CNN
F 3 "" H 3050 6100 50  0001 C CNN
	1    3050 6100
	1    0    0    -1  
$EndComp
$Comp
L +9V #PWR011
U 1 1 5A0B7156
P 2600 6500
F 0 "#PWR011" H 2600 6350 50  0001 C CNN
F 1 "+9V" H 2600 6640 50  0000 C CNN
F 2 "" H 2600 6500 50  0001 C CNN
F 3 "" H 2600 6500 50  0001 C CNN
	1    2600 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 6100 2900 6100
Wire Wire Line
	2900 6100 2900 6200
$Comp
L +9V #PWR012
U 1 1 5A0B7261
P 3950 6250
F 0 "#PWR012" H 3950 6100 50  0001 C CNN
F 1 "+9V" H 3950 6390 50  0000 C CNN
F 2 "" H 3950 6250 50  0001 C CNN
F 3 "" H 3950 6250 50  0001 C CNN
	1    3950 6250
	1    0    0    -1  
$EndComp
$Comp
L Thermistor_NTC_3wire TH1
U 1 1 5A0B72C9
P 5700 7050
F 0 "TH1" H 5775 7200 50  0000 L CNN
F 1 "Temp Sensor" H 5775 7100 50  0000 L CNN
F 2 "Transistors_OldSowjetAera:OldSowjetaera_Transistor_Type-I_SmallPads" H 5700 7100 50  0001 C CNN
F 3 "" H 5700 7100 50  0001 C CNN
	1    5700 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 4450 6750 4350
Wire Wire Line
	6750 4350 6350 4350
Wire Wire Line
	2600 5750 2800 5750
$Comp
L Battery BT1
U 1 1 5A0B929A
P 2200 6500
F 0 "BT1" H 2300 6600 50  0000 L CNN
F 1 "Battery" H 2300 6500 50  0000 L CNN
F 2 "" V 2200 6560 50  0001 C CNN
F 3 "" V 2200 6560 50  0001 C CNN
	1    2200 6500
	1    0    0    -1  
$EndComp
$Comp
L +9V #PWR013
U 1 1 5A0B92EE
P 2200 6300
F 0 "#PWR013" H 2200 6150 50  0001 C CNN
F 1 "+9V" H 2200 6440 50  0000 C CNN
F 2 "" H 2200 6300 50  0001 C CNN
F 3 "" H 2200 6300 50  0001 C CNN
	1    2200 6300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 5A0B9351
P 2200 6700
F 0 "#PWR014" H 2200 6450 50  0001 C CNN
F 1 "GND" H 2200 6550 50  0000 C CNN
F 2 "" H 2200 6700 50  0001 C CNN
F 3 "" H 2200 6700 50  0001 C CNN
	1    2200 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 5650 5800 6800
$Comp
L Conn_01x06 J1
U 1 1 5A0BA390
P 4500 6450
F 0 "J1" H 4500 6750 50  0000 C CNN
F 1 "Conn_01x06" H 4500 6050 50  0000 C CNN
F 2 "" H 4500 6450 50  0001 C CNN
F 3 "" H 4500 6450 50  0001 C CNN
	1    4500 6450
	1    0    0    -1  
$EndComp
Text GLabel 4300 6750 0    60   Input ~ 0
Out4
Text GLabel 5650 5250 1    60   Input ~ 0
Out4
$EndSCHEMATC

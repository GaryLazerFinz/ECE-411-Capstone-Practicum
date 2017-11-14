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
P 6750 4050
F 0 "Q1" H 6950 4125 50  0000 L CNN
F 1 "NPN" H 6950 4050 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 6950 3975 50  0001 L CIN
F 3 "" H 6750 4050 50  0001 L CNN
	1    6750 4050
	1    0    0    -1  
$EndComp
$Comp
L Fan M1
U 1 1 4AE158D0
P 6850 4650
F 0 "M1" H 6950 4850 50  0000 L CNN
F 1 "Fan" H 6950 4550 50  0000 L TNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" H 6850 4660 50  0001 C CNN
F 3 "" H 6850 4660 50  0001 C CNN
	1    6850 4650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 4AE15F27
P 3100 4850
F 0 "#PWR01" H 3100 4600 50  0001 C CNN
F 1 "GND" H 3100 4700 50  0000 C CNN
F 2 "" H 3100 4850 50  0001 C CNN
F 3 "" H 3100 4850 50  0001 C CNN
	1    3100 4850
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 4AE15FCF
P 6600 5750
F 0 "R3" V 6680 5750 50  0000 C CNN
F 1 "10 k" V 6600 5750 50  0000 C CNN
F 2 "Resistors_Universal:Resistor_SMD+THTuniversal_0805to1206_RM10_HandSoldering" V 6530 5750 50  0001 C CNN
F 3 "" H 6600 5750 50  0001 C CNN
	1    6600 5750
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 4AE166D6
P 6600 5450
F 0 "R2" V 6680 5450 50  0000 C CNN
F 1 "10 k" V 6600 5450 50  0000 C CNN
F 2 "Resistors_Universal:Resistor_SMD+THTuniversal_0805to1206_RM10_HandSoldering" V 6530 5450 50  0001 C CNN
F 3 "" H 6600 5450 50  0001 C CNN
	1    6600 5450
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 4AE167C4
P 6400 4050
F 0 "R1" V 6480 4050 50  0000 C CNN
F 1 "1 k" V 6400 4050 50  0000 C CNN
F 2 "Resistors_Universal:Resistor_SMD+THTuniversal_0805to1206_RM10_HandSoldering" V 6330 4050 50  0001 C CNN
F 3 "" H 6400 4050 50  0001 C CNN
	1    6400 4050
	0    1    1    0   
$EndComp
$Comp
L D D1
U 1 1 4AE16956
P 7300 4600
F 0 "D1" H 7300 4700 50  0000 C CNN
F 1 "D" H 7300 4500 50  0000 C CNN
F 2 "Diodes_THT:D_A-405_P7.62mm_Horizontal" H 7300 4600 50  0001 C CNN
F 3 "" H 7300 4600 50  0001 C CNN
	1    7300 4600
	0    1    1    0   
$EndComp
$Comp
L C C1
U 1 1 4AE1698F
P 3100 4400
F 0 "C1" H 3125 4500 50  0000 L CNN
F 1 "100 u" H 3125 4300 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_Tantal_D6.0mm_P2.50mm" H 3138 4250 50  0001 C CNN
F 3 "" H 3100 4400 50  0001 C CNN
	1    3100 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 4050 6250 4050
Wire Wire Line
	7300 4750 6850 4750
Wire Wire Line
	6850 4750 6850 4850
Wire Wire Line
	6850 4350 7300 4350
Wire Wire Line
	7300 4350 7300 4450
Wire Wire Line
	6200 5600 7050 5600
Wire Wire Line
	6600 5900 7050 5900
$Comp
L GND #PWR02
U 1 1 4AE16EBB
P 6750 6050
F 0 "#PWR02" H 6750 5800 50  0001 C CNN
F 1 "GND" H 6750 5900 50  0000 C CNN
F 2 "" H 6750 6050 50  0001 C CNN
F 3 "" H 6750 6050 50  0001 C CNN
	1    6750 6050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 4AE16EEA
P 6850 4850
F 0 "#PWR03" H 6850 4600 50  0001 C CNN
F 1 "GND" H 6850 4700 50  0000 C CNN
F 2 "" H 6850 4850 50  0001 C CNN
F 3 "" H 6850 4850 50  0001 C CNN
	1    6850 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 4250 6850 4350
Wire Wire Line
	6200 4450 6200 5600
Connection ~ 6600 5600
$Comp
L ATTINY85-20PU U1
U 1 1 4AE185FF
P 4650 4300
F 0 "U1" H 3500 4700 50  0000 C CNN
F 1 "ATTINY85" H 5650 3900 50  0000 C CNN
F 2 "Housings_DIP:DIP-8_W7.62mm" H 5650 4300 50  0001 C CIN
F 3 "" H 4650 4300 50  0001 C CNN
	1    4650 4300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6200 4450 6000 4450
Connection ~ 2450 2250
Wire Wire Line
	6000 4550 6100 4550
Wire Wire Line
	6100 4550 6100 4850
Connection ~ 3100 4550
Wire Wire Line
	3100 4550 3300 4550
Wire Wire Line
	6100 4850 6000 4850
Wire Wire Line
	6600 5200 6600 5300
Connection ~ 3100 4250
Text Notes 7200 6650 0    60   ~ 0
A simple temperature controlled fan using the attiny85. 
Text Notes 7400 7500 0    60   ~ 0
Temperature Controlled Fan\n
Text Notes 8200 7650 0    60   ~ 0
10/15/2017 12:28 AM
Wire Wire Line
	6850 3600 6850 3850
Connection ~ 6750 5900
$Comp
L Thermistor_NTC TH1
U 1 1 59F1629A
P 7050 5750
F 0 "TH1" V 6875 5750 50  0000 C CNN
F 1 "Thermistor_NTC" V 7175 5750 50  0000 C CNN
F 2 "Resistors_Universal:Resistor_SMD+THTuniversal_0805to1206_RM10_HandSoldering" H 7050 5800 50  0001 C CNN
F 3 "" H 7050 5800 50  0001 C CNN
	1    7050 5750
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR04
U 1 1 59F1801C
P 2700 4250
F 0 "#PWR04" H 2700 4100 50  0001 C CNN
F 1 "+5V" H 2700 4390 50  0000 C CNN
F 2 "" H 2700 4250 50  0001 C CNN
F 3 "" H 2700 4250 50  0001 C CNN
	1    2700 4250
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR05
U 1 1 59F180E8
P 6000 4850
F 0 "#PWR05" H 6000 4700 50  0001 C CNN
F 1 "+5V" H 6000 4990 50  0000 C CNN
F 2 "" H 6000 4850 50  0001 C CNN
F 3 "" H 6000 4850 50  0001 C CNN
	1    6000 4850
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR06
U 1 1 59F181E1
P 6600 5200
F 0 "#PWR06" H 6600 5050 50  0001 C CNN
F 1 "+5V" H 6600 5340 50  0000 C CNN
F 2 "" H 6600 5200 50  0001 C CNN
F 3 "" H 6600 5200 50  0001 C CNN
	1    6600 5200
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR07
U 1 1 59F182A4
P 6850 3600
F 0 "#PWR07" H 6850 3450 50  0001 C CNN
F 1 "+5V" H 6850 3740 50  0000 C CNN
F 2 "" H 6850 3600 50  0001 C CNN
F 3 "" H 6850 3600 50  0001 C CNN
	1    6850 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 4250 3100 4050
Wire Wire Line
	3100 4050 3300 4050
Wire Wire Line
	3100 4550 3100 4850
Wire Wire Line
	6750 5900 6750 6050
Wire Wire Line
	2700 4250 3100 4250
$Comp
L GND #PWR08
U 1 1 59F18F73
P 4350 5150
F 0 "#PWR08" H 4350 4900 50  0001 C CNN
F 1 "GND" H 4350 5000 50  0000 C CNN
F 2 "" H 4350 5150 50  0001 C CNN
F 3 "" H 4350 5150 50  0001 C CNN
	1    4350 5150
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR09
U 1 1 59F18FB0
P 4450 5050
F 0 "#PWR09" H 4450 4900 50  0001 C CNN
F 1 "+5V" H 4450 5190 50  0000 C CNN
F 2 "" H 4450 5050 50  0001 C CNN
F 3 "" H 4450 5050 50  0001 C CNN
	1    4450 5050
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x05 J1
U 1 1 59FCCF8B
P 5000 5250
F 0 "J1" H 5000 5550 50  0000 C CNN
F 1 "Conn_01x05" H 5000 4950 50  0000 C CNN
F 2 "" H 5000 5250 50  0001 C CNN
F 3 "" H 5000 5250 50  0001 C CNN
	1    5000 5250
	1    0    0    -1  
$EndComp
Text GLabel 6000 4150 2    60   Input ~ 0
Out1
Text GLabel 4800 5250 0    60   Input ~ 0
Out1
Text GLabel 4800 5350 0    60   Input ~ 0
Out2
Text GLabel 4800 5450 0    60   Input ~ 0
Out3
Text GLabel 6000 4250 2    60   Input ~ 0
Out2
Text GLabel 6000 4350 2    60   Input ~ 0
Out3
Wire Wire Line
	4450 5050 4800 5050
Wire Wire Line
	4800 5150 4350 5150
$EndSCHEMATC

EESchema Schematic File Version 4
LIBS:kc_car_boards-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 6
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
L Driver_Motor:L298HN U3
U 1 1 5DAC0267
P 3050 2000
F 0 "U3" H 3050 2881 50  0000 C CNN
F 1 "L298HN" H 3050 2790 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-15_P2.54x2.54mm_StaggerOdd_Lead4.58mm_Vertical" H 3100 1350 50  0001 L CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/CD00000240.pdf" H 3200 2250 50  0001 C CNN
	1    3050 2000
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N5818 D1
U 1 1 5DAC0F85
P 3800 1400
F 0 "D1" V 3650 1450 50  0000 L CNN
F 1 "1N5818" H 3750 1500 50  0000 L CNN
F 2 "Diode_SMD:D_SMA_Handsoldering" H 3800 1225 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88525/1n5817.pdf" H 3800 1400 50  0001 C CNN
	1    3800 1400
	0    1    1    0   
$EndComp
$Comp
L Diode:1N5818 D2
U 1 1 5DAC2555
P 4100 1400
F 0 "D2" V 3950 1450 50  0000 L CNN
F 1 "1N5818" H 4050 1500 50  0000 L CNN
F 2 "Diode_SMD:D_SMA_Handsoldering" H 4100 1225 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88525/1n5817.pdf" H 4100 1400 50  0001 C CNN
	1    4100 1400
	0    1    1    0   
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J4
U 1 1 5DAC4332
P 5050 1800
F 0 "J4" H 5130 1792 50  0000 L CNN
F 1 "Motor1" H 5130 1701 50  0000 L CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 5050 1800 50  0001 C CNN
F 3 "~" H 5050 1800 50  0001 C CNN
	1    5050 1800
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J5
U 1 1 5DAC4DCC
P 5050 2100
F 0 "J5" H 5130 2092 50  0000 L CNN
F 1 "Motor2" H 5130 2001 50  0000 L CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 5050 2100 50  0001 C CNN
F 3 "~" H 5050 2100 50  0001 C CNN
	1    5050 2100
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N5818 D3
U 1 1 5DAC7CBB
P 4400 1400
F 0 "D3" V 4250 1450 50  0000 L CNN
F 1 "1N5818" H 4350 1500 50  0000 L CNN
F 2 "Diode_SMD:D_SMA_Handsoldering" H 4400 1225 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88525/1n5817.pdf" H 4400 1400 50  0001 C CNN
	1    4400 1400
	0    1    1    0   
$EndComp
$Comp
L Diode:1N5818 D4
U 1 1 5DAC8218
P 4650 1400
F 0 "D4" V 4500 1450 50  0000 L CNN
F 1 "1N5818" H 4600 1500 50  0000 L CNN
F 2 "Diode_SMD:D_SMA_Handsoldering" H 4650 1225 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88525/1n5817.pdf" H 4650 1400 50  0001 C CNN
	1    4650 1400
	0    1    1    0   
$EndComp
$Comp
L Diode:1N5818 D5
U 1 1 5DACBE5B
P 3800 2500
F 0 "D5" V 3650 2550 50  0000 L CNN
F 1 "1N5818" H 3750 2600 50  0000 L CNN
F 2 "Diode_SMD:D_SMA_Handsoldering" H 3800 2325 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88525/1n5817.pdf" H 3800 2500 50  0001 C CNN
	1    3800 2500
	0    1    1    0   
$EndComp
$Comp
L Diode:1N5818 D6
U 1 1 5DACC76E
P 4100 2500
F 0 "D6" V 3950 2550 50  0000 L CNN
F 1 "1N5818" H 4050 2600 50  0000 L CNN
F 2 "Diode_SMD:D_SMA_Handsoldering" H 4100 2325 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88525/1n5817.pdf" H 4100 2500 50  0001 C CNN
	1    4100 2500
	0    1    1    0   
$EndComp
$Comp
L Diode:1N5818 D7
U 1 1 5DACCBA2
P 4400 2500
F 0 "D7" V 4250 2550 50  0000 L CNN
F 1 "1N5818" H 4350 2600 50  0000 L CNN
F 2 "Diode_SMD:D_SMA_Handsoldering" H 4400 2325 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88525/1n5817.pdf" H 4400 2500 50  0001 C CNN
	1    4400 2500
	0    1    1    0   
$EndComp
$Comp
L Diode:1N5818 D8
U 1 1 5DACCE8E
P 4650 2500
F 0 "D8" V 4500 2550 50  0000 L CNN
F 1 "1N5818" H 4600 2600 50  0000 L CNN
F 2 "Diode_SMD:D_SMA_Handsoldering" H 4650 2325 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88525/1n5817.pdf" H 4650 2500 50  0001 C CNN
	1    4650 2500
	0    1    1    0   
$EndComp
Wire Wire Line
	3800 1550 3800 1800
Wire Wire Line
	4100 1550 4100 1900
Wire Wire Line
	4400 1550 4400 2100
Wire Wire Line
	4650 1550 4650 2200
Wire Wire Line
	3800 2650 4100 2650
Wire Wire Line
	4100 2650 4250 2650
Connection ~ 4100 2650
Wire Wire Line
	4400 2650 4650 2650
Connection ~ 4400 2650
Wire Wire Line
	3800 1250 4100 1250
Wire Wire Line
	4100 1250 4250 1250
Connection ~ 4100 1250
Wire Wire Line
	4400 1250 4650 1250
Connection ~ 4400 1250
Text HLabel 4250 950  1    50   Input ~ 0
VCC
Wire Wire Line
	4250 950  4250 1100
Connection ~ 4250 1250
Wire Wire Line
	4250 1250 4400 1250
Text HLabel 4250 3050 3    50   Input ~ 0
GND
Wire Wire Line
	4250 3050 4250 2900
Connection ~ 4250 2650
Wire Wire Line
	4250 2650 4400 2650
Wire Wire Line
	3050 2700 3050 2900
Wire Wire Line
	3050 2900 4250 2900
Connection ~ 4250 2900
Wire Wire Line
	4250 2900 4250 2650
Wire Wire Line
	3150 1300 3150 1250
Wire Wire Line
	3150 1250 3800 1250
Connection ~ 3800 1250
Text HLabel 3050 950  1    50   Input ~ 0
+5V
Wire Wire Line
	3050 950  3050 1300
Wire Wire Line
	2750 2700 2750 2900
Wire Wire Line
	2750 2900 2850 2900
Connection ~ 3050 2900
Wire Wire Line
	2850 2700 2850 2900
Connection ~ 2850 2900
Wire Wire Line
	2850 2900 3050 2900
Wire Wire Line
	3650 1800 3800 1800
Wire Wire Line
	3650 1900 4100 1900
Wire Wire Line
	3650 2100 4400 2100
Wire Wire Line
	3650 2200 4650 2200
Connection ~ 3800 1800
Wire Wire Line
	3800 1800 3800 2350
Wire Wire Line
	3800 1800 4850 1800
Connection ~ 4100 1900
Wire Wire Line
	4100 1900 4100 2350
Wire Wire Line
	4100 1900 4850 1900
Connection ~ 4400 2100
Wire Wire Line
	4400 2100 4400 2350
Wire Wire Line
	4400 2100 4850 2100
Connection ~ 4650 2200
Wire Wire Line
	4650 2200 4650 2350
Wire Wire Line
	4650 2200 4850 2200
$Comp
L Device:CP_Small C4
U 1 1 5DAD297E
P 6300 2000
F 0 "C4" H 6388 2046 50  0000 L CNN
F 1 "220uF/35V" H 6388 1955 50  0000 L CNN
F 2 "" H 6300 2000 50  0001 C CNN
F 3 "~" H 6300 2000 50  0001 C CNN
	1    6300 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 1900 6300 1100
Wire Wire Line
	6300 1100 4250 1100
Connection ~ 4250 1100
Wire Wire Line
	4250 1100 4250 1250
Wire Wire Line
	6300 2100 6300 2900
Wire Wire Line
	6300 2900 4250 2900
Text HLabel 2250 1500 0    50   Input ~ 0
IN1
Text HLabel 2250 1600 0    50   Input ~ 0
IN2
Text HLabel 2250 1700 0    50   Input ~ 0
ENA
Text HLabel 2250 1900 0    50   Input ~ 0
IN3
Text HLabel 2250 2000 0    50   Input ~ 0
IN4
Text HLabel 2250 2100 0    50   Input ~ 0
ENB
Wire Wire Line
	2250 2100 2450 2100
Wire Wire Line
	2250 2000 2450 2000
Wire Wire Line
	2250 1900 2450 1900
Wire Wire Line
	2250 1700 2450 1700
Wire Wire Line
	2250 1600 2450 1600
Wire Wire Line
	2250 1500 2450 1500
$EndSCHEMATC

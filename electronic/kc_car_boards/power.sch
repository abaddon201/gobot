EESchema Schematic File Version 4
LIBS:kc_car_boards-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 6
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
L Regulator_Linear:AMS1117CD-5.0 U1
U 1 1 5DAAD10A
P 1750 1800
F 0 "U1" H 1750 2042 50  0000 C CNN
F 1 "AMS1117CD-5.0" H 1750 1951 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 1750 2000 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 1850 1550 50  0001 C CNN
	1    1750 1800
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:AMS1117-3.3 U2
U 1 1 5DAADB69
P 2800 1800
F 0 "U2" H 2800 2042 50  0000 C CNN
F 1 "AMS1117-3.3" H 2800 1951 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 2800 2000 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 2900 1550 50  0001 C CNN
	1    2800 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:CP_Small C1
U 1 1 5DAAEF09
P 1300 2000
F 0 "C1" H 1388 2046 50  0000 L CNN
F 1 "10uF" H 1388 1955 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3216-18_Kemet-A_Pad1.58x1.35mm_HandSolder" H 1300 2000 50  0001 C CNN
F 3 "~" H 1300 2000 50  0001 C CNN
	1    1300 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:CP_Small C2
U 1 1 5DAAF709
P 2150 2000
F 0 "C2" H 2238 2046 50  0000 L CNN
F 1 "22uF" H 2238 1955 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3528-15_AVX-H_Pad1.50x2.35mm_HandSolder" H 2150 2000 50  0001 C CNN
F 3 "~" H 2150 2000 50  0001 C CNN
	1    2150 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:CP_Small C3
U 1 1 5DAB003A
P 3250 2000
F 0 "C3" H 3338 2046 50  0000 L CNN
F 1 "22uF" H 3338 1955 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3528-15_AVX-H_Pad1.50x2.35mm_HandSolder" H 3250 2000 50  0001 C CNN
F 3 "~" H 3250 2000 50  0001 C CNN
	1    3250 2000
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0101
U 1 1 5DAB1E3A
P 1750 2200
F 0 "#PWR0101" H 1750 1950 50  0001 C CNN
F 1 "GNDD" H 1754 2045 50  0000 C CNN
F 2 "" H 1750 2200 50  0001 C CNN
F 3 "" H 1750 2200 50  0001 C CNN
	1    1750 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 1450 1000 1800
Wire Wire Line
	1000 1800 1300 1800
Wire Wire Line
	1300 1900 1300 1800
Connection ~ 1300 1800
Wire Wire Line
	1300 1800 1450 1800
Wire Wire Line
	1300 2100 1600 2100
Wire Wire Line
	1750 2100 1750 2200
Connection ~ 1750 2100
Wire Wire Line
	1750 2100 2150 2100
Wire Wire Line
	2050 1800 2150 1800
Wire Wire Line
	2150 1900 2150 1800
Connection ~ 2150 1800
Wire Wire Line
	2150 1800 2500 1800
NoConn ~ 3050 1650
Wire Wire Line
	2150 1400 2150 1800
Wire Wire Line
	2150 2100 2800 2100
Connection ~ 2150 2100
Wire Wire Line
	3250 2100 2800 2100
Connection ~ 2800 2100
Wire Wire Line
	3250 1900 3250 1800
Wire Wire Line
	3250 1800 3100 1800
Wire Wire Line
	3250 1400 3250 1800
Connection ~ 3250 1800
Text GLabel 1000 1450 1    50   Input ~ 0
VCC
Text GLabel 2150 1400 1    50   Input ~ 0
+5V
Text GLabel 3250 1400 1    50   Input ~ 0
+3.3V
Text GLabel 1100 2400 0    50   Input ~ 0
GND
Wire Wire Line
	1100 2400 1600 2400
Wire Wire Line
	1600 2400 1600 2100
Connection ~ 1600 2100
Wire Wire Line
	1600 2100 1750 2100
Text HLabel 1000 1650 0    50   BiDi ~ 0
VCC
Text HLabel 2150 1500 0    50   Output ~ 0
+5V
Text HLabel 3250 1500 0    50   Output ~ 0
+3.3V
Text HLabel 1300 2400 3    50   BiDi ~ 0
GND
$EndSCHEMATC

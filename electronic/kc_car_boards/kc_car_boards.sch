EESchema Schematic File Version 4
LIBS:kc_car_boards-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 6
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 1200 1100 1100 750 
U 5DABDBDF
F0 "PowerSupply" 50
F1 "power.sch" 50
F2 "VCC" I R 2300 1200 50 
F3 "+5V" I R 2300 1350 50 
F4 "+3.3V" I R 2300 1500 50 
F5 "GND" I R 2300 1650 50 
$EndSheet
$Sheet
S 2700 1100 1000 700 
U 5DABDC16
F0 "MotorsController" 50
F1 "motors_controller.sch" 50
F2 "VCC" I L 2700 1200 50 
F3 "GND" I L 2700 1650 50 
F4 "+5V" I L 2700 1350 50 
F5 "IN1" I R 3700 1150 50 
F6 "IN2" I R 3700 1250 50 
F7 "ENA" I R 3700 1350 50 
F8 "IN3" I R 3700 1500 50 
F9 "IN4" I R 3700 1600 50 
F10 "ENB" I R 3700 1700 50 
$EndSheet
$Sheet
S 1950 2500 800  1350
U 5DABDC5A
F0 "Sheet5DABDC59" 50
F1 "microcontroller.sch" 50
F2 "+5V" I L 1950 2550 50 
F3 "GND" I L 1950 2650 50 
F4 "SPI_SCK" B L 1950 3100 50 
F5 "SPI_MISO" B L 1950 3000 50 
F6 "SPI_MOSI" B L 1950 2900 50 
F7 "ENA" O R 2750 3200 50 
F8 "ENB" O R 2750 3500 50 
F9 "IN1" O R 2750 3100 50 
F10 "IN2" O R 2750 3300 50 
F11 "IN3" O R 2750 3600 50 
F12 "IN4" O R 2750 3700 50 
F13 "SPI_SEL1" O L 1950 3200 50 
F14 "SPI_SEL2" O L 1950 3300 50 
F15 "SPI_SEL3" O L 1950 3400 50 
F16 "MOSF1" O R 2750 2700 50 
F17 "MOSF2" O R 2750 2800 50 
$EndSheet
Wire Wire Line
	2300 1200 2700 1200
Wire Wire Line
	2550 1650 2550 2250
Wire Wire Line
	2550 2250 1650 2250
Wire Wire Line
	1650 2250 1650 2650
Wire Wire Line
	1650 2650 1950 2650
Wire Wire Line
	2300 1650 2550 1650
Connection ~ 2550 1650
Wire Wire Line
	2550 1650 2700 1650
Wire Wire Line
	2450 1350 2450 2150
Wire Wire Line
	2450 2150 1800 2150
Wire Wire Line
	1800 2150 1800 2550
Wire Wire Line
	1800 2550 1950 2550
Wire Wire Line
	2300 1350 2450 1350
Connection ~ 2450 1350
Wire Wire Line
	2450 1350 2700 1350
Text Label 3800 1150 0    50   ~ 0
IN1
Wire Wire Line
	3700 1150 3800 1150
Wire Wire Line
	3700 1250 3800 1250
Wire Wire Line
	3700 1350 3800 1350
Wire Wire Line
	3700 1500 3800 1500
Wire Wire Line
	3700 1600 3800 1600
Wire Wire Line
	3700 1700 3800 1700
Text Label 3800 1250 0    50   ~ 0
IN2
Text Label 3800 1350 0    50   ~ 0
ENA
Text Label 3800 1500 0    50   ~ 0
IN3
Text Label 3800 1600 0    50   ~ 0
IN4
Text Label 3800 1700 0    50   ~ 0
ENB
Wire Wire Line
	2750 3100 2850 3100
Wire Wire Line
	2750 3200 2850 3200
Wire Wire Line
	2750 3300 2850 3300
Wire Wire Line
	2750 3500 2850 3500
Wire Wire Line
	2750 3600 2850 3600
Wire Wire Line
	2750 3700 2850 3700
Text Label 2850 3100 0    50   ~ 0
IN1
Text Label 2850 3200 0    50   ~ 0
ENA
Text Label 2850 3300 0    50   ~ 0
IN2
Text Label 2850 3500 0    50   ~ 0
ENB
Text Label 2850 3600 0    50   ~ 0
IN3
Text Label 2850 3700 0    50   ~ 0
IN4
$Sheet
S 3500 2500 900  1400
U 5DB049B2
F0 "Mosfets" 50
F1 "mosfets.sch" 50
F2 "Key1" I L 3500 2700 50 
F3 "Key2" I L 3500 2800 50 
$EndSheet
Text Label 2500 1200 0    50   ~ 0
VCC
Wire Wire Line
	2750 2800 3500 2800
$Comp
L Connector:Conn_01x04_Male J6
U 1 1 5DB1E135
P 2150 4550
F 0 "J6" H 2122 4432 50  0000 R CNN
F 1 "SPI3" H 2122 4523 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 2150 4550 50  0001 C CNN
F 3 "~" H 2150 4550 50  0001 C CNN
	1    2150 4550
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x04_Male J7
U 1 1 5DB227B2
P 2150 5100
F 0 "J7" H 2122 4982 50  0000 R CNN
F 1 "SPI2" H 2122 5073 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 2150 5100 50  0001 C CNN
F 3 "~" H 2150 5100 50  0001 C CNN
	1    2150 5100
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x04_Male J8
U 1 1 5DB22E53
P 2150 5600
F 0 "J8" H 2122 5482 50  0000 R CNN
F 1 "SPI1" H 2122 5573 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 2150 5600 50  0001 C CNN
F 3 "~" H 2150 5600 50  0001 C CNN
	1    2150 5600
	-1   0    0    1   
$EndComp
Wire Wire Line
	1950 3200 1400 3200
Wire Wire Line
	1400 3200 1400 5400
Wire Wire Line
	1400 5400 1950 5400
Wire Wire Line
	1950 3400 1800 3400
Wire Wire Line
	1800 3400 1800 4350
Wire Wire Line
	1800 4350 1950 4350
Wire Wire Line
	1950 3300 1500 3300
Wire Wire Line
	1500 3300 1500 4900
Wire Wire Line
	1500 4900 1950 4900
Wire Wire Line
	1950 4450 1650 4450
Wire Wire Line
	1950 4550 1650 4550
Wire Wire Line
	1950 4650 1650 4650
Wire Wire Line
	1950 5000 1650 5000
Wire Wire Line
	1950 5100 1650 5100
Wire Wire Line
	1950 5200 1650 5200
Wire Wire Line
	1950 5500 1650 5500
Wire Wire Line
	1950 5600 1650 5600
Wire Wire Line
	1950 5700 1650 5700
Text Label 1650 4450 0    50   ~ 0
SPI_MOSI
Text Label 1650 4550 0    50   ~ 0
SPI_MISO
Text Label 1650 4650 0    50   ~ 0
SPI_SCK
Text Label 1650 5000 0    50   ~ 0
SPI_MOSI
Text Label 1650 5100 0    50   ~ 0
SPI_MISO
Text Label 1650 5200 0    50   ~ 0
SPI_SCK
Text Label 1650 5500 0    50   ~ 0
SPI_MOSI
Text Label 1650 5600 0    50   ~ 0
SPI_MISO
Text Label 1650 5700 0    50   ~ 0
SPI_SCK
Wire Wire Line
	1950 2900 1550 2900
Wire Wire Line
	1550 3000 1950 3000
Wire Wire Line
	1950 3100 1550 3100
Text Label 1550 2900 0    50   ~ 0
SPI_MOSI
Text Label 1550 3000 0    50   ~ 0
SPI_MISO
Text Label 1550 3100 0    50   ~ 0
SPI_SCK
$Sheet
S 3500 4450 900  900 
U 5DAB7FC0
F0 "Police sound" 50
F1 "police_sound.sch" 50
F2 "CONTROL" I L 3500 4600 50 
F3 "POWER" I L 3500 4750 50 
$EndSheet
Wire Wire Line
	2750 2700 3200 2700
Wire Wire Line
	3200 2700 3200 4600
Wire Wire Line
	3200 4600 3500 4600
Wire Wire Line
	3500 4750 3200 4750
Text Label 3200 4750 0    50   ~ 0
VCC
$EndSCHEMATC

EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Tank schematic diagram"
Date "2020-10-19"
Rev "1.0"
Comp "XHD"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:R R10
U 1 1 5F4FD6A0
P 7150 2850
F 0 "R10" V 6943 2850 50  0000 C CNN
F 1 "10K" V 7034 2850 50  0000 C CNN
F 2 "" V 7080 2850 50  0001 C CNN
F 3 "~" H 7150 2850 50  0001 C CNN
	1    7150 2850
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:BC547 Q4
U 1 1 5F4FDBDE
P 7650 2850
F 0 "Q4" H 7840 2896 50  0000 L CNN
F 1 "2N2222" H 7840 2805 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 7850 2775 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 7650 2850 50  0001 L CNN
	1    7650 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 2850 7450 2850
$Comp
L Motor:Motor_DC M1
U 1 1 5F503615
P 7750 2100
F 0 "M1" H 7908 2096 50  0000 L CNN
F 1 "RADAR_Motor_DC_3V" H 7908 2005 50  0000 L CNN
F 2 "" H 7750 2010 50  0001 C CNN
F 3 "~" H 7750 2010 50  0001 C CNN
	1    7750 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 2400 7750 2450
Wire Wire Line
	7750 1650 7750 1850
$Comp
L Diode:1N4004 D11
U 1 1 5F505AF8
P 7350 2150
F 0 "D11" V 7350 1850 50  0000 L CNN
F 1 "1N4004" V 7450 1800 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 7350 1975 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 7350 2150 50  0001 C CNN
	1    7350 2150
	0    1    1    0   
$EndComp
Wire Wire Line
	7350 2000 7350 1850
Wire Wire Line
	7350 1850 7750 1850
Connection ~ 7750 1850
Wire Wire Line
	7750 1850 7750 1900
Wire Wire Line
	7350 2300 7350 2450
Wire Wire Line
	7350 2450 7750 2450
Connection ~ 7750 2450
Wire Wire Line
	7750 2450 7750 2650
$Comp
L MCU_Module:Arduino_UNO_R3 A1
U 1 1 5F520893
P 3350 2950
F 0 "A1" H 2900 4000 50  0000 C CNN
F 1 "Arduino_UNO_R3" H 2650 3900 50  0000 C CNN
F 2 "Module:Arduino_UNO_R3" H 3350 2950 50  0001 C CIN
F 3 "https://www.arduino.cc/en/Main/arduinoBoardUno" H 3350 2950 50  0001 C CNN
	1    3350 2950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7000 2850 3850 2850
$Comp
L Transistor_BJT:BC547 Q3
U 1 1 5F5513D4
P 6500 5150
F 0 "Q3" H 6690 5196 50  0000 L CNN
F 1 "2N2222" H 6690 5105 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 6700 5075 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 6500 5150 50  0001 L CNN
	1    6500 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 5F5513DE
P 6050 5150
F 0 "R8" V 5843 5150 50  0000 C CNN
F 1 "10K" V 5934 5150 50  0000 C CNN
F 2 "" V 5980 5150 50  0001 C CNN
F 3 "~" H 6050 5150 50  0001 C CNN
	1    6050 5150
	0    1    1    0   
$EndComp
Wire Wire Line
	6200 5150 6300 5150
$Comp
L Device:LED D10
U 1 1 5F555FE7
P 6600 4100
F 0 "D10" V 6639 3982 50  0000 R CNN
F 1 "YELLOW" V 6548 3982 50  0000 R CNN
F 2 "" H 6600 4100 50  0001 C CNN
F 3 "~" H 6600 4100 50  0001 C CNN
	1    6600 4100
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R9
U 1 1 5F555FF1
P 6600 3500
F 0 "R9" H 6670 3546 50  0000 L CNN
F 1 "120" H 6670 3455 50  0000 L CNN
F 2 "" V 6530 3500 50  0001 C CNN
F 3 "~" H 6600 3500 50  0001 C CNN
	1    6600 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D9
U 1 1 5F555FFB
P 6600 3800
F 0 "D9" V 6639 3682 50  0000 R CNN
F 1 "YELLOW" V 6548 3682 50  0000 R CNN
F 2 "" H 6600 3800 50  0001 C CNN
F 3 "~" H 6600 3800 50  0001 C CNN
	1    6600 3800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6600 4250 6600 4950
Wire Wire Line
	5900 5150 4400 5150
Wire Wire Line
	4400 5150 4400 3650
Wire Wire Line
	4400 3650 3850 3650
$Comp
L Device:Battery_Cell BT1
U 1 1 5F55E4CD
P 2200 3500
F 0 "BT1" H 1950 3600 50  0000 L CNN
F 1 "3.6V 18650 cell" H 1500 3500 50  0000 L CNN
F 2 "" V 2200 3560 50  0001 C CNN
F 3 "~" V 2200 3560 50  0001 C CNN
	1    2200 3500
	1    0    0    -1  
$EndComp
Text Label 3950 3650 0    50   ~ 0
RATTLE
Text Label 3950 2850 0    50   ~ 0
RADAR
$Comp
L Device:Battery_Cell BT2
U 1 1 5F577CA2
P 2200 3900
F 0 "BT2" H 1950 3950 50  0000 L CNN
F 1 "3.6V 18650 cell" H 1500 3850 50  0000 L CNN
F 2 "" V 2200 3960 50  0001 C CNN
F 3 "~" V 2200 3960 50  0001 C CNN
	1    2200 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 3600 2200 3700
Wire Wire Line
	2200 4000 2200 5600
$Comp
L Device:Battery_Cell BT4
U 1 1 5F587018
P 9000 3700
F 0 "BT4" H 9118 3796 50  0000 L CNN
F 1 "3.6V 18650 cell" H 9118 3705 50  0000 L CNN
F 2 "" V 9000 3760 50  0001 C CNN
F 3 "~" V 9000 3760 50  0001 C CNN
	1    9000 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 4050 3450 5600
Wire Wire Line
	9000 3800 9000 5600
Wire Wire Line
	6600 5350 6600 5600
Connection ~ 6600 5600
Wire Wire Line
	7750 3050 7750 5600
Connection ~ 7750 5600
Wire Wire Line
	6600 5600 7750 5600
Wire Wire Line
	3450 5600 2200 5600
Connection ~ 3450 5600
Wire Wire Line
	2200 1600 3450 1600
Wire Wire Line
	2200 1600 2200 3300
Wire Wire Line
	3450 1950 3450 1600
Connection ~ 3450 1600
$Comp
L Connector_Generic:Conn_01x04 J1
U 1 1 5F5ABB3F
P 5350 2200
F 0 "J1" H 5430 2192 50  0000 L CNN
F 1 "RedMP3 player" H 5430 2101 50  0000 L CNN
F 2 "" H 5350 2200 50  0001 C CNN
F 3 "~" H 5350 2200 50  0001 C CNN
	1    5350 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 2100 4850 2100
Wire Wire Line
	4850 2100 4850 1750
Wire Wire Line
	4850 1750 3150 1750
Wire Wire Line
	3150 1750 3150 1950
Wire Wire Line
	6600 1600 6600 3350
Wire Wire Line
	3450 1600 6600 1600
Wire Wire Line
	5150 2400 4750 2400
Wire Wire Line
	4750 2400 4750 5600
Connection ~ 4750 5600
Wire Wire Line
	4750 5600 3450 5600
Wire Wire Line
	5150 2300 4600 2300
Wire Wire Line
	4600 2300 4600 3150
Wire Wire Line
	4600 3150 3850 3150
Wire Wire Line
	5150 2200 4500 2200
Wire Wire Line
	4500 2200 4500 3050
Wire Wire Line
	4500 3050 3850 3050
Text Label 3950 3150 0    50   ~ 0
MP3_RX
Text Label 3950 3050 0    50   ~ 0
MP3_TX
Wire Wire Line
	4750 5600 6600 5600
Wire Wire Line
	7750 1650 9000 1650
Wire Wire Line
	7750 5600 9000 5600
Wire Wire Line
	9000 1650 9000 3500
$EndSCHEMATC

EESchema Schematic File Version 4
EELAYER 30 0
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
L MCU_Microchip_ATmega:ATmega328P-AU U1
U 1 1 61421C99
P 3650 3550
F 0 "U1" H 2950 2100 50  0000 C CNN
F 1 "ATmega328P-AU" H 3100 2000 50  0000 C CNN
F 2 "Package_QFP:TQFP-32_7x7mm_P0.8mm" H 3650 3550 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 3650 3550 50  0001 C CNN
	1    3650 3550
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J6
U 1 1 6142611F
P 4900 3250
F 0 "J6" H 5600 3250 50  0000 L CNN
F 1 "Fire2" H 5000 3250 50  0000 L CNN
F 2 "Connector_Wire:SolderWire-0.25sqmm_1x01_D0.65mm_OD1.7mm" H 4900 3250 50  0001 C CNN
F 3 "~" H 4900 3250 50  0001 C CNN
	1    4900 3250
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J7
U 1 1 61426700
P 4900 3350
F 0 "J7" H 5600 3350 50  0000 L CNN
F 1 "Fire" H 5000 3350 50  0000 L CNN
F 2 "Connector_Wire:SolderWire-0.25sqmm_1x01_D0.65mm_OD1.7mm" H 4900 3350 50  0001 C CNN
F 3 "~" H 4900 3350 50  0001 C CNN
	1    4900 3350
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J8
U 1 1 61426E5E
P 4900 3450
F 0 "J8" H 5600 3450 50  0000 L CNN
F 1 "Right" H 5000 3450 50  0000 L CNN
F 2 "Connector_Wire:SolderWire-0.25sqmm_1x01_D0.65mm_OD1.7mm" H 4900 3450 50  0001 C CNN
F 3 "~" H 4900 3450 50  0001 C CNN
	1    4900 3450
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J9
U 1 1 61427440
P 4900 3550
F 0 "J9" H 5600 3550 50  0000 L CNN
F 1 "Left" H 5000 3550 50  0000 L CNN
F 2 "Connector_Wire:SolderWire-0.25sqmm_1x01_D0.65mm_OD1.7mm" H 4900 3550 50  0001 C CNN
F 3 "~" H 4900 3550 50  0001 C CNN
	1    4900 3550
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J10
U 1 1 614277E5
P 4900 3650
F 0 "J10" H 5600 3650 50  0000 L CNN
F 1 "Down" H 5000 3650 50  0000 L CNN
F 2 "Connector_Wire:SolderWire-0.25sqmm_1x01_D0.65mm_OD1.7mm" H 4900 3650 50  0001 C CNN
F 3 "~" H 4900 3650 50  0001 C CNN
	1    4900 3650
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J11
U 1 1 61427AF4
P 4900 3750
F 0 "J11" H 5600 3750 50  0000 L CNN
F 1 "Up" H 5000 3750 50  0000 L CNN
F 2 "Connector_Wire:SolderWire-0.25sqmm_1x01_D0.65mm_OD1.7mm" H 4900 3750 50  0001 C CNN
F 3 "~" H 4900 3750 50  0001 C CNN
	1    4900 3750
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J5
U 1 1 61427E83
P 4900 2850
F 0 "J5" H 5600 2850 50  0000 L CNN
F 1 "CLK/SCK" H 5000 2850 50  0000 L CNN
F 2 "Connector_Wire:SolderWire-0.25sqmm_1x01_D0.65mm_OD1.7mm" H 4900 2850 50  0001 C CNN
F 3 "~" H 4900 2850 50  0001 C CNN
	1    4900 2850
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J4
U 1 1 61428192
P 4900 2750
F 0 "J4" H 5600 2750 50  0000 L CNN
F 1 "DATA/MISO" H 5000 2750 50  0000 L CNN
F 2 "Connector_Wire:SolderWire-0.25sqmm_1x01_D0.65mm_OD1.7mm" H 4900 2750 50  0001 C CNN
F 3 "~" H 4900 2750 50  0001 C CNN
	1    4900 2750
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J3
U 1 1 6142856A
P 4900 2650
F 0 "J3" H 5600 2650 50  0000 L CNN
F 1 "LATCH/MOSI" H 5000 2650 50  0000 L CNN
F 2 "Connector_Wire:SolderWire-0.25sqmm_1x01_D0.65mm_OD1.7mm" H 4900 2650 50  0001 C CNN
F 3 "~" H 4900 2650 50  0001 C CNN
	1    4900 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 61430CDE
P 6100 3400
F 0 "C1" H 5850 3450 50  0000 L CNN
F 1 "22p" H 5850 3350 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 6138 3250 50  0001 C CNN
F 3 "~" H 6100 3400 50  0001 C CNN
	1    6100 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 614313D1
P 6400 3400
F 0 "C2" H 6515 3446 50  0000 L CNN
F 1 "22p" H 6515 3355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 6438 3250 50  0001 C CNN
F 3 "~" H 6400 3400 50  0001 C CNN
	1    6400 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal Y1
U 1 1 6143202E
P 6250 3100
F 0 "Y1" H 6250 3368 50  0000 C CNN
F 1 "Crystal" H 6250 3277 50  0000 C CNN
F 2 "Crystal:Crystal_HC49-U_Vertical" H 6250 3100 50  0001 C CNN
F 3 "~" H 6250 3100 50  0001 C CNN
	1    6250 3100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 61433599
P 6250 3550
F 0 "#PWR03" H 6250 3300 50  0001 C CNN
F 1 "GND" H 6255 3377 50  0000 C CNN
F 2 "" H 6250 3550 50  0001 C CNN
F 3 "" H 6250 3550 50  0001 C CNN
	1    6250 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 3100 6100 3250
Wire Wire Line
	6400 3100 6400 3250
Wire Wire Line
	6100 3550 6250 3550
Connection ~ 6250 3550
Wire Wire Line
	6250 3550 6400 3550
Wire Wire Line
	4250 3050 6100 3050
Wire Wire Line
	6100 3050 6100 3100
Connection ~ 6100 3100
Wire Wire Line
	4250 2950 6100 2950
Wire Wire Line
	6100 2950 6100 2750
Wire Wire Line
	6100 2750 6400 2750
Wire Wire Line
	6400 2750 6400 3100
Connection ~ 6400 3100
Wire Wire Line
	4250 2650 4700 2650
Wire Wire Line
	4700 2750 4250 2750
Wire Wire Line
	4250 2850 4700 2850
Wire Wire Line
	4700 3250 4250 3250
Wire Wire Line
	4250 3350 4700 3350
Wire Wire Line
	4700 3450 4250 3450
Wire Wire Line
	4250 3550 4700 3550
Wire Wire Line
	4700 3650 4250 3650
Wire Wire Line
	4250 3750 4700 3750
Wire Wire Line
	3650 1900 3650 2000
$Comp
L power:GND #PWR02
U 1 1 6144086F
P 3650 5150
F 0 "#PWR02" H 3650 4900 50  0001 C CNN
F 1 "GND" H 3655 4977 50  0000 C CNN
F 2 "" H 3650 5150 50  0001 C CNN
F 3 "" H 3650 5150 50  0001 C CNN
	1    3650 5150
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J12
U 1 1 61442840
P 4900 3850
F 0 "J12" H 5600 3850 50  0000 L CNN
F 1 "RESET" H 5000 3850 50  0000 L CNN
F 2 "Connector_Wire:SolderWire-0.25sqmm_1x01_D0.65mm_OD1.7mm" H 4900 3850 50  0001 C CNN
F 3 "~" H 4900 3850 50  0001 C CNN
	1    4900 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 3850 4250 3850
NoConn ~ 3050 2350
NoConn ~ 3050 2550
NoConn ~ 3050 2650
$Comp
L Connector_Generic:Conn_01x01 J13
U 1 1 61445C28
P 4900 5100
F 0 "J13" H 5600 5100 50  0000 L CNN
F 1 "GND" H 5000 5100 50  0000 L CNN
F 2 "Connector_Wire:SolderWire-0.25sqmm_1x01_D0.65mm_OD1.7mm" H 4900 5100 50  0001 C CNN
F 3 "~" H 4900 5100 50  0001 C CNN
	1    4900 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 5100 4550 5100
Wire Wire Line
	3650 5100 3650 5050
Wire Wire Line
	3650 5100 3650 5150
Connection ~ 3650 5100
NoConn ~ 3750 2050
NoConn ~ 4250 2350
NoConn ~ 4250 2450
NoConn ~ 4250 2550
NoConn ~ 4250 4050
NoConn ~ 4250 4150
NoConn ~ 4250 4250
NoConn ~ 4250 4350
NoConn ~ 4250 4450
NoConn ~ 4250 4550
NoConn ~ 4250 4650
NoConn ~ 4250 4750
$Comp
L power:GND #PWR05
U 1 1 61450433
P 7000 3250
F 0 "#PWR05" H 7000 3000 50  0001 C CNN
F 1 "GND" H 7005 3077 50  0000 C CNN
F 2 "" H 7000 3250 50  0001 C CNN
F 3 "" H 7000 3250 50  0001 C CNN
	1    7000 3250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR04
U 1 1 61451950
P 7000 2950
F 0 "#PWR04" H 7000 2800 50  0001 C CNN
F 1 "+5V" H 7015 3123 50  0000 C CNN
F 2 "" H 7000 2950 50  0001 C CNN
F 3 "" H 7000 2950 50  0001 C CNN
	1    7000 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C3
U 1 1 6144F628
P 7000 3100
F 0 "C3" H 7118 3146 50  0000 L CNN
F 1 "1uF" H 7118 3055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 7038 2950 50  0001 C CNN
F 3 "~" H 7000 3100 50  0001 C CNN
	1    7000 3100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01
U 1 1 61453EEF
P 3650 1900
F 0 "#PWR01" H 3650 1750 50  0001 C CNN
F 1 "+5V" H 3665 2073 50  0000 C CNN
F 2 "" H 3650 1900 50  0001 C CNN
F 3 "" H 3650 1900 50  0001 C CNN
	1    3650 1900
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J1
U 1 1 614568D9
P 4900 2000
F 0 "J1" H 5600 2000 50  0000 L CNN
F 1 "ATARI 5v" H 5000 2000 50  0000 L CNN
F 2 "Connector_Wire:SolderWire-0.25sqmm_1x01_D0.65mm_OD1.7mm" H 4900 2000 50  0001 C CNN
F 3 "~" H 4900 2000 50  0001 C CNN
	1    4900 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 2000 4500 2000
Connection ~ 3650 2000
Wire Wire Line
	3650 2000 3650 2050
$Comp
L Connector_Generic:Conn_01x01 J2
U 1 1 61470884
P 4900 2100
F 0 "J2" H 5600 2100 50  0000 L CNN
F 1 "SNES 5v" H 5000 2100 50  0000 L CNN
F 2 "Connector_Wire:SolderWire-0.25sqmm_1x01_D0.65mm_OD1.7mm" H 4900 2100 50  0001 C CNN
F 3 "~" H 4900 2100 50  0001 C CNN
	1    4900 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 2100 4500 2100
Wire Wire Line
	4500 2100 4500 2000
Connection ~ 4500 2000
Wire Wire Line
	4500 2000 3650 2000
$Comp
L Connector_Generic:Conn_01x01 J14
U 1 1 61472F3E
P 4900 5200
F 0 "J14" H 5600 5200 50  0000 L CNN
F 1 "GND" H 5000 5200 50  0000 L CNN
F 2 "Connector_Wire:SolderWire-0.25sqmm_1x01_D0.65mm_OD1.7mm" H 4900 5200 50  0001 C CNN
F 3 "~" H 4900 5200 50  0001 C CNN
	1    4900 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 5200 4550 5200
Wire Wire Line
	4550 5200 4550 5100
Connection ~ 4550 5100
Wire Wire Line
	4550 5100 3650 5100
$EndSCHEMATC

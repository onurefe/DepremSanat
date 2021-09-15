EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 7
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
L MCU_ST_STM32F4:STM32F405RGTx U?
U 1 1 6138F470
P 5700 4550
AR Path="/6138F470" Ref="U?"  Part="1" 
AR Path="/613723A1/6138F470" Ref="U1"  Part="1" 
F 0 "U1" H 6700 6400 50  0000 C CNN
F 1 "STM32F405RGTx" H 6700 6500 50  0000 C CNN
F 2 "Package_QFP:LQFP-64_10x10mm_P0.5mm" H 5100 2850 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00037051.pdf" H 5700 4550 50  0001 C CNN
F 4 "https://lcsc.com/product-detail/ST-Microelectronics_STMicroelectronics-STM32F405RGT6_C15742.html" H 5700 4550 50  0001 C CNN "Link"
	1    5700 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6138F476
P 5700 6450
AR Path="/6138F476" Ref="#PWR?"  Part="1" 
AR Path="/613723A1/6138F476" Ref="#PWR07"  Part="1" 
F 0 "#PWR07" H 5700 6200 50  0001 C CNN
F 1 "GND" H 5705 6277 50  0000 C CNN
F 2 "" H 5700 6450 50  0001 C CNN
F 3 "" H 5700 6450 50  0001 C CNN
	1    5700 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 6350 5600 6400
Wire Wire Line
	5700 6400 5700 6350
$Comp
L power:VDD #PWR?
U 1 1 6138F47E
P 5500 1700
AR Path="/6138F47E" Ref="#PWR?"  Part="1" 
AR Path="/613723A1/6138F47E" Ref="#PWR06"  Part="1" 
F 0 "#PWR06" H 5500 1550 50  0001 C CNN
F 1 "VDD" H 5515 1873 50  0000 C CNN
F 2 "" H 5500 1700 50  0001 C CNN
F 3 "" H 5500 1700 50  0001 C CNN
	1    5500 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6138F485
P 5350 2250
AR Path="/6138F485" Ref="C?"  Part="1" 
AR Path="/613723A1/6138F485" Ref="C8"  Part="1" 
F 0 "C8" V 5350 2150 50  0000 C CNN
F 1 "100n" V 5350 2350 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5350 2250 50  0001 C CNN
F 3 "~" H 5350 2250 50  0001 C CNN
F 4 "https://ozdisan.com/passive-components/capacitors/smt-smd-and-mlcc-capacitors/CL21B104KCFSFNE" H 5350 2250 50  0001 C CNN "Link"
	1    5350 2250
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6138F48B
P 5200 2600
AR Path="/6138F48B" Ref="#PWR?"  Part="1" 
AR Path="/613723A1/6138F48B" Ref="#PWR05"  Part="1" 
F 0 "#PWR05" H 5200 2350 50  0001 C CNN
F 1 "GND" H 5100 2600 50  0000 C CNN
F 2 "" H 5200 2600 50  0001 C CNN
F 3 "" H 5200 2600 50  0001 C CNN
	1    5200 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 2600 5200 2550
Wire Wire Line
	5200 1950 5250 1950
Wire Wire Line
	5250 2100 5200 2100
Connection ~ 5200 2100
Wire Wire Line
	5200 2100 5200 1950
Wire Wire Line
	5250 2250 5200 2250
Connection ~ 5200 2250
Wire Wire Line
	5200 2250 5200 2100
Wire Wire Line
	5250 2400 5200 2400
Connection ~ 5200 2400
Wire Wire Line
	5200 2400 5200 2250
$Comp
L Device:C_Small C?
U 1 1 6138F49D
P 5350 2400
AR Path="/6138F49D" Ref="C?"  Part="1" 
AR Path="/613723A1/6138F49D" Ref="C9"  Part="1" 
F 0 "C9" V 5350 2300 50  0000 C CNN
F 1 "100n" V 5350 2500 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5350 2400 50  0001 C CNN
F 3 "~" H 5350 2400 50  0001 C CNN
F 4 "https://ozdisan.com/passive-components/capacitors/smt-smd-and-mlcc-capacitors/CL21B104KCFSFNE" H 5350 2400 50  0001 C CNN "Link"
	1    5350 2400
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6138F4A4
P 5350 2100
AR Path="/6138F4A4" Ref="C?"  Part="1" 
AR Path="/613723A1/6138F4A4" Ref="C7"  Part="1" 
F 0 "C7" V 5350 2000 50  0000 C CNN
F 1 "100n" V 5350 2200 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5350 2100 50  0001 C CNN
F 3 "~" H 5350 2100 50  0001 C CNN
F 4 "https://ozdisan.com/passive-components/capacitors/smt-smd-and-mlcc-capacitors/CL21B104KCFSFNE" H 5350 2100 50  0001 C CNN "Link"
	1    5350 2100
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6138F4AB
P 5350 1800
AR Path="/6138F4AB" Ref="C?"  Part="1" 
AR Path="/613723A1/6138F4AB" Ref="C5"  Part="1" 
F 0 "C5" V 5350 1700 50  0000 C CNN
F 1 "4.7u" V 5350 1900 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5350 1800 50  0001 C CNN
F 3 "~" H 5350 1800 50  0001 C CNN
F 4 "https://ozdisan.com/passive-components/capacitors/smt-smd-and-mlcc-capacitors/CL21A475KACLRNC" H 5350 1800 50  0001 C CNN "Link"
	1    5350 1800
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6138F4B2
P 5350 1950
AR Path="/6138F4B2" Ref="C?"  Part="1" 
AR Path="/613723A1/6138F4B2" Ref="C6"  Part="1" 
F 0 "C6" V 5350 1850 50  0000 C CNN
F 1 "100n" V 5350 2050 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5350 1950 50  0001 C CNN
F 3 "~" H 5350 1950 50  0001 C CNN
F 4 "https://ozdisan.com/passive-components/capacitors/smt-smd-and-mlcc-capacitors/CL21B104KCFSFNE" H 5350 1950 50  0001 C CNN "Link"
	1    5350 1950
	0    1    1    0   
$EndComp
Wire Wire Line
	5250 1800 5200 1800
Wire Wire Line
	5200 1800 5200 1950
Connection ~ 5200 1950
$Comp
L Device:C_Small C?
U 1 1 6138F4BC
P 6150 2600
AR Path="/6138F4BC" Ref="C?"  Part="1" 
AR Path="/613723A1/6138F4BC" Ref="C12"  Part="1" 
F 0 "C12" V 6150 2500 50  0000 C CNN
F 1 "100n" V 6150 2700 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6150 2600 50  0001 C CNN
F 3 "~" H 6150 2600 50  0001 C CNN
F 4 "https://ozdisan.com/passive-components/capacitors/smt-smd-and-mlcc-capacitors/CL21B104KCFSFNE" H 6150 2600 50  0001 C CNN "Link"
	1    6150 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	6000 2750 6000 2600
Wire Wire Line
	6050 2600 6000 2600
Connection ~ 6000 2600
Wire Wire Line
	6000 2600 6000 2450
Wire Wire Line
	6050 2450 6000 2450
$Comp
L power:GND #PWR?
U 1 1 6138F4C7
P 6300 2650
AR Path="/6138F4C7" Ref="#PWR?"  Part="1" 
AR Path="/613723A1/6138F4C7" Ref="#PWR09"  Part="1" 
F 0 "#PWR09" H 6300 2400 50  0001 C CNN
F 1 "GND" H 6400 2650 50  0000 C CNN
F 2 "" H 6300 2650 50  0001 C CNN
F 3 "" H 6300 2650 50  0001 C CNN
	1    6300 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 2450 6300 2450
Wire Wire Line
	6300 2450 6300 2600
Wire Wire Line
	6250 2600 6300 2600
Connection ~ 6300 2600
Wire Wire Line
	6300 2600 6300 2650
$Comp
L power:VDDA #PWR?
U 1 1 6138F4D2
P 6000 2400
AR Path="/6138F4D2" Ref="#PWR?"  Part="1" 
AR Path="/613723A1/6138F4D2" Ref="#PWR08"  Part="1" 
F 0 "#PWR08" H 6000 2250 50  0001 C CNN
F 1 "VDDA" H 6015 2573 50  0000 C CNN
F 2 "" H 6000 2400 50  0001 C CNN
F 3 "" H 6000 2400 50  0001 C CNN
	1    6000 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 2400 6000 2450
Connection ~ 6000 2450
Wire Wire Line
	5600 6400 5700 6400
Wire Wire Line
	5700 6400 5800 6400
Wire Wire Line
	5800 6400 5800 6350
Connection ~ 5700 6400
Wire Wire Line
	5700 6450 5700 6400
$Comp
L Device:R_Small R?
U 1 1 6138F4E4
P 4800 3150
AR Path="/6138F4E4" Ref="R?"  Part="1" 
AR Path="/613723A1/6138F4E4" Ref="R2"  Part="1" 
F 0 "R2" V 4750 3150 50  0000 C CNN
F 1 "10k" V 4850 3150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 4800 3150 50  0001 C CNN
F 3 "~" H 4800 3150 50  0001 C CNN
F 4 "https://ozdisan.com/passive-components/resistors/smt-smd-and-chip-resistors/0805S8F1002T5E" H 4800 3150 50  0001 C CNN "Link"
	1    4800 3150
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6138F4EA
P 4650 3200
AR Path="/6138F4EA" Ref="#PWR?"  Part="1" 
AR Path="/613723A1/6138F4EA" Ref="#PWR03"  Part="1" 
F 0 "#PWR03" H 4650 2950 50  0001 C CNN
F 1 "GND" H 4550 3200 50  0000 C CNN
F 2 "" H 4650 3200 50  0001 C CNN
F 3 "" H 4650 3200 50  0001 C CNN
	1    4650 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 3150 5000 3150
$Comp
L Device:R_Small R?
U 1 1 6138F4F2
P 4800 2950
AR Path="/6138F4F2" Ref="R?"  Part="1" 
AR Path="/613723A1/6138F4F2" Ref="R1"  Part="1" 
F 0 "R1" V 4750 2950 50  0000 C CNN
F 1 "10k" V 4850 2950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 4800 2950 50  0001 C CNN
F 3 "~" H 4800 2950 50  0001 C CNN
F 4 "https://ozdisan.com/passive-components/resistors/smt-smd-and-chip-resistors/0805S8F1002T5E" H 4800 2950 50  0001 C CNN "Link"
	1    4800 2950
	0    1    1    0   
$EndComp
$Comp
L power:VDD #PWR?
U 1 1 6138F4F8
P 4650 2900
AR Path="/6138F4F8" Ref="#PWR?"  Part="1" 
AR Path="/613723A1/6138F4F8" Ref="#PWR02"  Part="1" 
F 0 "#PWR02" H 4650 2750 50  0001 C CNN
F 1 "VDD" H 4665 3073 50  0000 C CNN
F 2 "" H 4650 2900 50  0001 C CNN
F 3 "" H 4650 2900 50  0001 C CNN
	1    4650 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 2950 4950 2950
Text Label 4950 2800 2    50   ~ 0
NRST
Connection ~ 4950 2950
Wire Wire Line
	4950 2950 5000 2950
Wire Wire Line
	4650 2900 4650 2950
Wire Wire Line
	4650 2950 4700 2950
Wire Wire Line
	4950 2800 4950 2950
Wire Wire Line
	4700 3150 4650 3150
Wire Wire Line
	4650 3150 4650 3200
$Comp
L power:GND #PWR?
U 1 1 6138F507
P 4850 3800
AR Path="/6138F507" Ref="#PWR?"  Part="1" 
AR Path="/613723A1/6138F507" Ref="#PWR04"  Part="1" 
F 0 "#PWR04" H 4850 3550 50  0001 C CNN
F 1 "GND" H 4750 3800 50  0000 C CNN
F 2 "" H 4850 3800 50  0001 C CNN
F 3 "" H 4850 3800 50  0001 C CNN
	1    4850 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 3350 4750 3350
Wire Wire Line
	4750 3350 4750 3500
Wire Wire Line
	5000 3450 4950 3450
Wire Wire Line
	4950 3450 4950 3500
Wire Wire Line
	4750 3700 4750 3750
Wire Wire Line
	4750 3750 4850 3750
Wire Wire Line
	4950 3750 4950 3700
Wire Wire Line
	4850 3800 4850 3750
Connection ~ 4850 3750
Wire Wire Line
	4850 3750 4950 3750
$Comp
L Device:C_Small C?
U 1 1 6138F518
P 4950 3600
AR Path="/6138F518" Ref="C?"  Part="1" 
AR Path="/613723A1/6138F518" Ref="C4"  Part="1" 
F 0 "C4" H 4900 3650 50  0000 L CNN
F 1 "4.7u" H 4900 3500 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4950 3600 50  0001 C CNN
F 3 "~" H 4950 3600 50  0001 C CNN
F 4 "https://ozdisan.com/passive-components/capacitors/smt-smd-and-mlcc-capacitors/CL21A475KACLRNC" H 4950 3600 50  0001 C CNN "Link"
	1    4950 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6138F51F
P 4750 3600
AR Path="/6138F51F" Ref="C?"  Part="1" 
AR Path="/613723A1/6138F51F" Ref="C3"  Part="1" 
F 0 "C3" H 4700 3650 50  0000 L CNN
F 1 "4.7u" H 4650 3500 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4750 3600 50  0001 C CNN
F 3 "~" H 4750 3600 50  0001 C CNN
F 4 "https://ozdisan.com/passive-components/capacitors/smt-smd-and-mlcc-capacitors/CL21A475KACLRNC" H 4750 3600 50  0001 C CNN "Link"
	1    4750 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal Y?
U 1 1 6138F529
P 4650 4200
AR Path="/6138F529" Ref="Y?"  Part="1" 
AR Path="/613723A1/6138F529" Ref="Y1"  Part="1" 
F 0 "Y1" V 4604 4331 50  0000 L CNN
F 1 "8MHz" V 4695 4331 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_HC49-SD" H 4650 4200 50  0001 C CNN
F 3 "~" H 4650 4200 50  0001 C CNN
F 4 "https://ozdisan.com/passive-components/crystals-oscillators-and-resonators/crystals/ABLS2-8-000MHZ-D4Y-T" H 4650 4200 50  0001 C CNN "Link"
	1    4650 4200
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6138F530
P 4500 4000
AR Path="/6138F530" Ref="C?"  Part="1" 
AR Path="/613723A1/6138F530" Ref="C1"  Part="1" 
F 0 "C1" V 4271 4000 50  0000 C CNN
F 1 "18p" V 4362 4000 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4500 4000 50  0001 C CNN
F 3 "~" H 4500 4000 50  0001 C CNN
F 4 "https://ozdisan.com/passive-components/capacitors/smt-smd-and-mlcc-capacitors/CL21C180JBANNNC" H 4500 4000 50  0001 C CNN "Link"
	1    4500 4000
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6138F537
P 4500 4400
AR Path="/6138F537" Ref="C?"  Part="1" 
AR Path="/613723A1/6138F537" Ref="C2"  Part="1" 
F 0 "C2" V 4271 4400 50  0000 C CNN
F 1 "18p" V 4362 4400 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4500 4400 50  0001 C CNN
F 3 "~" H 4500 4400 50  0001 C CNN
F 4 "https://ozdisan.com/passive-components/capacitors/smt-smd-and-mlcc-capacitors/CL21C180JBANNNC" H 4500 4400 50  0001 C CNN "Link"
	1    4500 4400
	0    1    1    0   
$EndComp
Wire Wire Line
	4600 4000 4650 4000
Wire Wire Line
	4900 4000 4900 4150
Wire Wire Line
	4900 4150 5000 4150
Wire Wire Line
	4600 4400 4650 4400
Wire Wire Line
	4900 4400 4900 4250
Wire Wire Line
	4900 4250 5000 4250
Wire Wire Line
	4650 4350 4650 4400
Connection ~ 4650 4400
Wire Wire Line
	4650 4400 4900 4400
Wire Wire Line
	4650 4050 4650 4000
Connection ~ 4650 4000
Wire Wire Line
	4650 4000 4900 4000
Wire Wire Line
	4400 4000 4350 4000
Wire Wire Line
	4350 4000 4350 4200
Wire Wire Line
	4350 4400 4400 4400
$Comp
L power:GND #PWR?
U 1 1 6138F54C
P 4250 4250
AR Path="/6138F54C" Ref="#PWR?"  Part="1" 
AR Path="/613723A1/6138F54C" Ref="#PWR01"  Part="1" 
F 0 "#PWR01" H 4250 4000 50  0001 C CNN
F 1 "GND" H 4150 4250 50  0000 C CNN
F 2 "" H 4250 4250 50  0001 C CNN
F 3 "" H 4250 4250 50  0001 C CNN
	1    4250 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 4250 4250 4200
Wire Wire Line
	4250 4200 4350 4200
Connection ~ 4350 4200
Wire Wire Line
	4350 4200 4350 4400
$Comp
L Device:C_Small C?
U 1 1 6138F557
P 6150 2450
AR Path="/6138F557" Ref="C?"  Part="1" 
AR Path="/613723A1/6138F557" Ref="C11"  Part="1" 
F 0 "C11" V 6150 2350 50  0000 C CNN
F 1 "4.7u" V 6150 2550 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6150 2450 50  0001 C CNN
F 3 "~" H 6150 2450 50  0001 C CNN
F 4 "https://ozdisan.com/passive-components/capacitors/smt-smd-and-mlcc-capacitors/CL21A475KACLRNC" H 6150 2450 50  0001 C CNN "Link"
	1    6150 2450
	0    -1   -1   0   
$EndComp
Text Label 6450 4250 0    50   ~ 0
SWDIO
Text Label 6450 4350 0    50   ~ 0
SWCLK
Wire Wire Line
	6450 4250 6400 4250
Wire Wire Line
	6450 4350 6400 4350
$Comp
L Device:C_Small C?
U 1 1 6138F579
P 5350 2550
AR Path="/6138F579" Ref="C?"  Part="1" 
AR Path="/613723A1/6138F579" Ref="C10"  Part="1" 
F 0 "C10" V 5350 2450 50  0000 C CNN
F 1 "100n" V 5350 2650 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5350 2550 50  0001 C CNN
F 3 "~" H 5350 2550 50  0001 C CNN
F 4 "https://ozdisan.com/passive-components/capacitors/smt-smd-and-mlcc-capacitors/CL21B104KCFSFNE" H 5350 2550 50  0001 C CNN "Link"
	1    5350 2550
	0    1    1    0   
$EndComp
Wire Wire Line
	5250 2550 5200 2550
Connection ~ 5200 2550
Wire Wire Line
	5200 2550 5200 2400
Wire Wire Line
	5500 2750 5500 2550
Wire Wire Line
	5450 2550 5500 2550
Wire Wire Line
	5450 2400 5500 2400
Wire Wire Line
	5600 2400 5600 2750
Wire Wire Line
	5450 2250 5500 2250
Wire Wire Line
	5700 2250 5700 2750
Wire Wire Line
	5450 2100 5500 2100
Wire Wire Line
	5800 2100 5800 2750
Wire Wire Line
	5450 1950 5500 1950
Wire Wire Line
	5900 1950 5900 2750
Wire Wire Line
	5450 1800 5500 1800
Wire Wire Line
	5500 1800 5500 1700
Wire Wire Line
	5500 1800 5500 1950
Connection ~ 5500 1800
Connection ~ 5500 1950
Wire Wire Line
	5500 1950 5900 1950
Wire Wire Line
	5500 1950 5500 2100
Connection ~ 5500 2100
Wire Wire Line
	5500 2100 5800 2100
Wire Wire Line
	5500 2100 5500 2250
Connection ~ 5500 2250
Wire Wire Line
	5500 2250 5700 2250
Wire Wire Line
	5500 2250 5500 2400
Connection ~ 5500 2400
Wire Wire Line
	5500 2400 5600 2400
Wire Wire Line
	5500 2400 5500 2550
Connection ~ 5500 2550
NoConn ~ 6400 2950
NoConn ~ 6400 3050
NoConn ~ 6400 3150
NoConn ~ 6400 3250
NoConn ~ 6400 3550
NoConn ~ 6400 3650
NoConn ~ 6400 4150
NoConn ~ 6400 4450
NoConn ~ 6400 4650
NoConn ~ 6400 4750
NoConn ~ 6400 4850
NoConn ~ 6400 4950
NoConn ~ 6400 5050
NoConn ~ 6400 5150
NoConn ~ 6400 5250
NoConn ~ 6400 5350
NoConn ~ 6400 5450
NoConn ~ 6400 5550
NoConn ~ 6400 5650
NoConn ~ 6400 5850
NoConn ~ 6400 5950
NoConn ~ 6400 6050
NoConn ~ 6400 6150
NoConn ~ 5000 6150
NoConn ~ 5000 6050
NoConn ~ 5000 5950
NoConn ~ 5000 5150
NoConn ~ 5000 5050
NoConn ~ 5000 4950
NoConn ~ 5000 4850
NoConn ~ 5000 4750
NoConn ~ 5000 4650
Text HLabel 6950 3350 2    50   Output ~ 0
AUDIO_CH0
Text HLabel 6950 3450 2    50   Output ~ 0
AUDIO_CH1
Wire Wire Line
	6400 3350 6950 3350
Wire Wire Line
	6400 3450 6950 3450
Text HLabel 6950 3750 2    50   Output ~ 0
LAMP_A_CTRL
Text HLabel 6950 3850 2    50   Output ~ 0
LAMP_B_CTRL
Text HLabel 6950 3950 2    50   Output ~ 0
LAMP_C_CTRL
Text HLabel 6950 4050 2    50   Output ~ 0
LAMP_D_CTRL
Wire Wire Line
	6400 3750 6950 3750
Wire Wire Line
	6400 3850 6950 3850
Wire Wire Line
	6400 3950 6950 3950
Wire Wire Line
	6400 4050 6950 4050
$Comp
L Connector:Conn_01x04_Male J?
U 1 1 613E4FCC
P 9550 2200
AR Path="/613E4FCC" Ref="J?"  Part="1" 
AR Path="/613723A1/613E4FCC" Ref="J1"  Part="1" 
F 0 "J1" H 9522 2082 50  0000 R CNN
F 1 "Conn_01x04_Male" H 9522 2173 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 9550 2200 50  0001 C CNN
F 3 "~" H 9550 2200 50  0001 C CNN
F 4 "https://ozdisan.com/connectors-and-interconnects/headers/pin-headers/L-KLS1-207-1-04-S" H 9550 2200 50  0001 C CNN "Link"
	1    9550 2200
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 613E4FD2
P 9300 2350
AR Path="/613E4FD2" Ref="#PWR?"  Part="1" 
AR Path="/613723A1/613E4FD2" Ref="#PWR010"  Part="1" 
F 0 "#PWR010" H 9300 2100 50  0001 C CNN
F 1 "GND" H 9305 2177 50  0000 C CNN
F 2 "" H 9300 2350 50  0001 C CNN
F 3 "" H 9300 2350 50  0001 C CNN
	1    9300 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 2300 9300 2300
Wire Wire Line
	9300 2300 9300 2350
Text Label 9300 2000 2    50   ~ 0
NRST
Text Label 9300 2200 2    50   ~ 0
SWCLK
Text Label 9300 2100 2    50   ~ 0
SWDIO
Wire Wire Line
	9300 2200 9350 2200
Wire Wire Line
	9350 2100 9300 2100
Wire Wire Line
	9300 2000 9350 2000
Text HLabel 4400 5250 0    50   Output ~ 0
LAMP_E_CTRL
Text HLabel 4400 5350 0    50   Output ~ 0
LAMP_F_CTRL
Wire Wire Line
	4400 5250 5000 5250
Wire Wire Line
	4400 5350 5000 5350
Text HLabel 4400 5450 0    50   BiDi ~ 0
SD_D0
Text HLabel 4400 5550 0    50   BiDi ~ 0
SD_D1
Text HLabel 4400 5650 0    50   BiDi ~ 0
SD_D2
Text HLabel 4400 5750 0    50   BiDi ~ 0
SD_D3
Text HLabel 4400 5850 0    50   Output ~ 0
SD_CLK
Wire Wire Line
	4400 5450 5000 5450
Wire Wire Line
	4400 5550 5000 5550
Wire Wire Line
	4400 5650 5000 5650
Wire Wire Line
	4400 5750 5000 5750
Wire Wire Line
	4400 5850 5000 5850
Text HLabel 7000 5750 2    50   Output ~ 0
VIBRATION_CTRL
Wire Wire Line
	6400 5750 7000 5750
Text HLabel 4400 4450 0    50   Output ~ 0
SD_CMD
Wire Wire Line
	4400 4450 5000 4450
$EndSCHEMATC

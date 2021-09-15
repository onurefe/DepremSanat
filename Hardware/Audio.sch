EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 7
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
L Device:R_Small R23
U 1 1 6155DD99
P 5200 2900
F 0 "R23" V 5150 2900 50  0000 C CNN
F 1 "13k" V 5250 2900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 5200 2900 50  0001 C CNN
F 3 "~" H 5200 2900 50  0001 C CNN
F 4 "https://ozdisan.com/passive-components/resistors/smt-smd-and-chip-resistors/0805S8F1302T5E" H 5200 2900 50  0001 C CNN "Link"
	1    5200 2900
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C16
U 1 1 6155DDA0
P 5350 3050
F 0 "C16" H 5300 3050 50  0000 L CNN
F 1 "1n" H 5200 2950 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5350 3050 50  0001 C CNN
F 3 "~" H 5350 3050 50  0001 C CNN
F 4 "https://ozdisan.com/passive-components/capacitors/smt-smd-and-mlcc-capacitors/CL21C102JBC1PNC" H 5350 3050 50  0001 C CNN "Link"
	1    5350 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C14
U 1 1 6155DDA7
P 5050 2750
F 0 "C14" H 5000 2900 50  0000 L CNN
F 1 "1.8n" H 4900 2850 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5050 2750 50  0001 C CNN
F 3 "~" H 5050 2750 50  0001 C CNN
F 4 "https://ozdisan.com/passive-components/capacitors/smt-smd-and-mlcc-capacitors/CL21C182JBFNNNE" H 5050 2750 50  0001 C CNN "Link"
	1    5050 2750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR024
U 1 1 6155DDAD
P 5350 3200
F 0 "#PWR024" H 5350 2950 50  0001 C CNN
F 1 "GND" H 5355 3027 50  0000 C CNN
F 2 "" H 5350 3200 50  0001 C CNN
F 3 "" H 5350 3200 50  0001 C CNN
	1    5350 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 2900 5050 2900
Wire Wire Line
	5050 2850 5050 2900
Connection ~ 5050 2900
Wire Wire Line
	5050 2900 5100 2900
Wire Wire Line
	5300 2900 5350 2900
Wire Wire Line
	5350 2900 5350 2950
Wire Wire Line
	5350 3200 5350 3150
Wire Wire Line
	5550 2900 5350 2900
Connection ~ 5350 2900
Wire Wire Line
	5550 3100 5500 3100
Wire Wire Line
	5500 3100 5500 3250
Wire Wire Line
	5500 3250 6200 3250
Wire Wire Line
	6200 3250 6200 3000
Wire Wire Line
	6200 3000 6150 3000
Wire Wire Line
	5050 2650 6200 2650
Wire Wire Line
	6200 2650 6200 3000
Connection ~ 6200 3000
$Comp
L Device:R_Small R24
U 1 1 6155DDC5
P 5200 3800
F 0 "R24" V 5150 3800 50  0000 C CNN
F 1 "13k" V 5250 3800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 5200 3800 50  0001 C CNN
F 3 "~" H 5200 3800 50  0001 C CNN
F 4 "https://ozdisan.com/passive-components/resistors/smt-smd-and-chip-resistors/0805S8F1302T5E" H 5200 3800 50  0001 C CNN "Link"
	1    5200 3800
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C17
U 1 1 6155DDCC
P 5350 3950
F 0 "C17" H 5300 3950 50  0000 L CNN
F 1 "1n" H 5200 3850 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5350 3950 50  0001 C CNN
F 3 "~" H 5350 3950 50  0001 C CNN
F 4 "https://ozdisan.com/passive-components/capacitors/smt-smd-and-mlcc-capacitors/CL21C102JBC1PNC" H 5350 3950 50  0001 C CNN "Link"
	1    5350 3950
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C15
U 1 1 6155DDD3
P 5050 3650
F 0 "C15" H 5000 3800 50  0000 L CNN
F 1 "1.8n" H 4900 3750 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5050 3650 50  0001 C CNN
F 3 "~" H 5050 3650 50  0001 C CNN
F 4 "https://ozdisan.com/passive-components/capacitors/smt-smd-and-mlcc-capacitors/CL21C182JBFNNNE" H 5050 3650 50  0001 C CNN "Link"
	1    5050 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR025
U 1 1 6155DDD9
P 5350 4100
F 0 "#PWR025" H 5350 3850 50  0001 C CNN
F 1 "GND" H 5355 3927 50  0000 C CNN
F 2 "" H 5350 4100 50  0001 C CNN
F 3 "" H 5350 4100 50  0001 C CNN
	1    5350 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 3800 5050 3800
Wire Wire Line
	5050 3750 5050 3800
Connection ~ 5050 3800
Wire Wire Line
	5050 3800 5100 3800
Wire Wire Line
	5300 3800 5350 3800
Wire Wire Line
	5350 3800 5350 3850
Wire Wire Line
	5350 4100 5350 4050
Wire Wire Line
	5550 3800 5350 3800
Connection ~ 5350 3800
Wire Wire Line
	5550 4000 5500 4000
Wire Wire Line
	5500 4000 5500 4150
Wire Wire Line
	5500 4150 6200 4150
Wire Wire Line
	6200 4150 6200 3900
Wire Wire Line
	6200 3900 6150 3900
Wire Wire Line
	5050 3550 6200 3550
Wire Wire Line
	6200 3550 6200 3900
Connection ~ 6200 3900
Wire Wire Line
	6300 3900 6200 3900
Wire Wire Line
	6200 3000 6300 3000
Wire Wire Line
	6500 3000 6550 3000
Wire Wire Line
	6550 3000 6550 3350
Wire Wire Line
	6500 3900 6550 3900
Wire Wire Line
	6550 3900 6550 3450
$Comp
L power:GND #PWR029
U 1 1 6155DDF8
P 6700 3500
F 0 "#PWR029" H 6700 3250 50  0001 C CNN
F 1 "GND" H 6705 3327 50  0000 C CNN
F 2 "" H 6700 3500 50  0001 C CNN
F 3 "" H 6700 3500 50  0001 C CNN
	1    6700 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:Opamp_Dual_Generic U2
U 1 1 6155DDFF
P 5850 3000
F 0 "U2" H 5850 3367 50  0000 C CNN
F 1 "AD8602" H 5850 3276 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 5850 3000 50  0001 C CNN
F 3 "~" H 5850 3000 50  0001 C CNN
F 4 "https://ozdisan.com/Product/Detail/417176/AD8602ARZ" H 5850 3000 50  0001 C CNN "Link"
	1    5850 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:Opamp_Dual_Generic U2
U 2 1 6155DE06
P 5850 3900
F 0 "U2" H 5850 4267 50  0000 C CNN
F 1 "AD8602" H 5850 4176 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 5850 3900 50  0001 C CNN
F 3 "~" H 5850 3900 50  0001 C CNN
F 4 "https://ozdisan.com/Product/Detail/417176/AD8602ARZ" H 5850 3900 50  0001 C CNN "Link"
	2    5850 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:Opamp_Dual_Generic U2
U 3 1 6155DE0D
P 5950 4800
F 0 "U2" H 5908 4846 50  0000 L CNN
F 1 "AD8602" H 5908 4755 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 5950 4800 50  0001 C CNN
F 3 "~" H 5950 4800 50  0001 C CNN
F 4 "https://ozdisan.com/Product/Detail/417176/AD8602ARZ" H 5950 4800 50  0001 C CNN "Link"
	3    5950 4800
	1    0    0    -1  
$EndComp
$Comp
L power:VDDA #PWR027
U 1 1 6155DE13
P 5850 4400
F 0 "#PWR027" H 5850 4250 50  0001 C CNN
F 1 "VDDA" H 5865 4573 50  0000 C CNN
F 2 "" H 5850 4400 50  0001 C CNN
F 3 "" H 5850 4400 50  0001 C CNN
	1    5850 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C18
U 1 1 6155DE1A
P 5700 4450
F 0 "C18" V 5471 4450 50  0000 C CNN
F 1 "100n" V 5562 4450 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5700 4450 50  0001 C CNN
F 3 "~" H 5700 4450 50  0001 C CNN
F 4 "https://ozdisan.com/passive-components/capacitors/smt-smd-and-mlcc-capacitors/CL21B104KCFSFNE" H 5700 4450 50  0001 C CNN "Link"
	1    5700 4450
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR028
U 1 1 6155DE20
P 5850 5150
F 0 "#PWR028" H 5850 4900 50  0001 C CNN
F 1 "GND" H 5700 5150 50  0000 C CNN
F 2 "" H 5850 5150 50  0001 C CNN
F 3 "" H 5850 5150 50  0001 C CNN
	1    5850 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 5100 5850 5150
Wire Wire Line
	5850 4400 5850 4450
Wire Wire Line
	5800 4450 5850 4450
Connection ~ 5850 4450
Wire Wire Line
	5850 4450 5850 4500
$Comp
L power:GND #PWR026
U 1 1 6155DE2B
P 5550 4500
F 0 "#PWR026" H 5550 4250 50  0001 C CNN
F 1 "GND" H 5400 4500 50  0000 C CNN
F 2 "" H 5550 4500 50  0001 C CNN
F 3 "" H 5550 4500 50  0001 C CNN
	1    5550 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 4450 5550 4450
Wire Wire Line
	5550 4450 5550 4500
$Comp
L Device:R_Small R22
U 1 1 6155DE34
P 4900 3800
F 0 "R22" V 4850 3800 50  0000 C CNN
F 1 "10k" V 4950 3800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 4900 3800 50  0001 C CNN
F 3 "~" H 4900 3800 50  0001 C CNN
F 4 "https://ozdisan.com/passive-components/resistors/smt-smd-and-chip-resistors/0805S8F1002T5E" H 4900 3800 50  0001 C CNN "Link"
	1    4900 3800
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R21
U 1 1 6155DE3B
P 4900 2900
F 0 "R21" V 4850 2900 50  0000 C CNN
F 1 "10k" V 4950 2900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 4900 2900 50  0001 C CNN
F 3 "~" H 4900 2900 50  0001 C CNN
F 4 "https://ozdisan.com/passive-components/resistors/smt-smd-and-chip-resistors/0805S8F1002T5E" H 4900 2900 50  0001 C CNN "Link"
	1    4900 2900
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C19
U 1 1 6155DE42
P 6400 3000
F 0 "C19" H 6492 3046 50  0000 L CNN
F 1 "4.7u" H 6492 2955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6400 3000 50  0001 C CNN
F 3 "~" H 6400 3000 50  0001 C CNN
F 4 "https://ozdisan.com/passive-components/capacitors/smt-smd-and-mlcc-capacitors/CL21A475KACLRNC" H 6400 3000 50  0001 C CNN "Link"
	1    6400 3000
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C20
U 1 1 6155DE49
P 6400 3900
F 0 "C20" H 6492 3946 50  0000 L CNN
F 1 "4.7u" H 6492 3855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6400 3900 50  0001 C CNN
F 3 "~" H 6400 3900 50  0001 C CNN
F 4 "https://ozdisan.com/passive-components/capacitors/smt-smd-and-mlcc-capacitors/CL21A475KACLRNC" H 6400 3900 50  0001 C CNN "Link"
	1    6400 3900
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x03_Male J9
U 1 1 6155DE50
P 6950 3350
F 0 "J9" H 6922 3374 50  0000 R CNN
F 1 "Audio jack" H 6922 3283 50  0000 R CNN
F 2 "oe_ds:L-KLS1-TSJ3.5-009C" H 6950 3350 50  0001 C CNN
F 3 "~" H 6950 3350 50  0001 C CNN
F 4 "https://ozdisan.com/connectors-and-interconnects/barrel-audio-connectors/phone-jacks/L-KLS1-TSJ3-5-009C" H 6950 3350 50  0001 C CNN "Link"
	1    6950 3350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6550 3450 6750 3450
Wire Wire Line
	6750 3350 6550 3350
Wire Wire Line
	6750 3250 6700 3250
Wire Wire Line
	6700 3250 6700 3500
Text HLabel 4400 2900 0    50   Input ~ 0
AUDIO_CH0
Text HLabel 4400 3800 0    50   Input ~ 0
AUDIO_CH1
Wire Wire Line
	4400 2900 4800 2900
Wire Wire Line
	4400 3800 4800 3800
$EndSCHEMATC

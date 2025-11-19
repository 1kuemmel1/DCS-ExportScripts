--[[
███╗   ███╗██╗ ██████╗       ██████╗  █████╗  █████╗         
████╗ ████║██║██╔════╝       ╚════██╗██╔══██╗██╔══██╗        
██╔████╔██║██║██║  ███╗█████╗ █████╔╝╚██████║███████║        
██║╚██╔╝██║██║██║   ██║╚════╝██╔═══╝  ╚═══██║██╔══██║        
██║ ╚═╝ ██║██║╚██████╔╝      ███████╗ █████╔╝██║  ██║        
╚═╝     ╚═╝╚═╝ ╚═════╝       ╚══════╝ ╚════╝ ╚═╝  ╚═╝        
                                                             
███████╗██╗   ██╗██╗      ██████╗██████╗ ██╗   ██╗███╗   ███╗
██╔════╝██║   ██║██║     ██╔════╝██╔══██╗██║   ██║████╗ ████║
█████╗  ██║   ██║██║     ██║     ██████╔╝██║   ██║██╔████╔██║
██╔══╝  ██║   ██║██║     ██║     ██╔══██╗██║   ██║██║╚██╔╝██║
██║     ╚██████╔╝███████╗╚██████╗██║  ██║╚██████╔╝██║ ╚═╝ ██║
╚═╝      ╚═════╝ ╚══════╝ ╚═════╝╚═╝  ╚═╝ ╚═════╝ ╚═╝     ╚═╝
]] -- kuemmel :)
-- MiG-29 Fulcrum
-- https://github.com/asherao/DCS-ExportScripts

ExportScript.FoundDCSModule = true
ExportScript.Version.MiG29_Fulcrum = "1.2.1"


ExportScript.ConfigEveryFrameArguments = 
{
	--Clock
		[19] = "%.4f", --ClockCurrentHours
		[18] = "%.4f", --ClockCurrentMinutes
		[37] = "%.4f", --ClockCurrentSeconds
		[395] = "%.4f", --ClockFlightHours
		[396] = "%.4f", --ClockFlightMinutes
		[394] = "%.4f", --ClockStopWatchMinutes
		[406] = "%.4f", --ClockStopWatchSeconds
		[58] = "%.4f", --ClockStatusWindow

	--Barometric Altimeter
		[10] = "%.4f", --BaroAltimeterPointerM
		[11] = "%.4f", --BaroAltimeterPointerKm
		[461] = "%.4f", --BaroAltimeterAltitude10000
		[460] = "%.4f", --BaroAltimeterAltitude01000
		[464] = "%.4f", --BaroAltimeterPressure001
		[463] = "%.4f", --BaroAltimeterPressure010
		[462] = "%.4f", --BaroAltimeterPressure100

	--Barometric Altimeter Imperial
		[822] = "%.4f", --ImperialBaroAltimeterPointer
		[830] = "%.4f", --ImperialBaroAltimeterAltitude1000
		[831] = "%.4f", --ImperialBaroAltimeterAltitude0100
		[832] = "%.4f", --ImperialBaroAltimeterAltitude0010
		[833] = "%.4f", --ImperialBaroAltimeterAltitude0001
		[834] = "%.4f", --ImperialBaroAltimeterPressure1000
		[835] = "%.4f", --ImperialBaroAltimeterPressure0100
		[836] = "%.4f", --ImperialBaroAltimeterPressure0010
		[837] = "%.4f", --ImperialBaroAltimeterPressure0001

	--Exhaust Gas Temperature Indicator Left
		[12] = "%.4f", --EgtPointerLeft

	--Exhaust Gas Temperature Indicator Right
		[14] = "%.4f", --EgtPointerRight

	--Engine RPM Indicator
		[16] = "%.4f", --RpmPointerLeft
		[17] = "%.4f", --RpmPointerRight

	--Fuel Indicator
		[221] = "%.4f", --FuelLedCL
		[217] = "%.4f", --FuelLedWing
		[218] = "%.4f", --FuelLedTank3
		[220] = "%.4f", --FuelLedTank1
		[63] = "%.4f", --FuelLedT
		[64] = "%.4f", --FuelLedP
		[62] = "%.4f", --FuelLedTEK
		[66] = "%.4f", --FuelLedOPT
		[22] = "%.4f", --FuelIndQuantity
		[227] = "%.4f", --FuelIndDrum001
		[226] = "%.4f", --FuelIndDrum010
		[225] = "%.4f", --FuelIndDrum100

	--Fuel Indicator Imperial
--		[227] = "%.4f", --ImperialFuelIndDrum001
--		[226] = "%.4f", --ImperialFuelIndDrum010
--		[225] = "%.4f", --ImperialFuelIndDrum100

	--Combined Pressure Indicator
		[304] = "%.4f", --CombPresCommon
		[305] = "%.4f", --CombPresBoost
		[306] = "%.4f", --CombPresMain
		[307] = "%.4f", --CombPresEmerg

	--Brake Pressure Indicator
		[124] = "%.4f", --BrakePresLeft
		[125] = "%.4f", --BrakePresRight
	
	--IAS Indicator
		[8] = "%.4f", --IASpointer
		[5] = "%.4f", --IASwindow

	--IAS Indicator Imperial
		[821] = "%.4f", --ImperialIASpointer
		[820] = "%.4f", --ImperialIASwindow		

	--TAS Indicator
		[182] = "%.4f", --TASpointer
		[79] = "%.4f", --Mpointer

	--TAS Indicator Imperial
		[823] = "%.4f", --ImperialTASpointer
		[825] = "%.4f", --ImperialMpointer
		[824] = "%.4f", --ImperialMwindow

	--Combined AOA / G Meter
		[7] = "%.4f", --AOApointer
		[6] = "%.4f", --Gpointer

	--Attitude Director Indicator
		[262] = "%.4f", --AdiLedCage
		[81] = "%.4f", --AdiPitch
		[30] = "%.4f", --AdiBank
		[31] = "%.4f", --AdiSlipBall
		[392] = "%.4f", --AdiGlideSlopeDeviation
		[393] = "%.4f", --AdiCourseDeviation
--		[28] = "%.4f", --AdiPitchSteering
		[27] = "%.4f", --AdiCourseSteering
		[94] = "%.4f", --AdiPitchOffFlag
		[96] = "%.4f", --AdiAzimuthOffFlag

	--Horizontal Situation Indicator
--		[xx] = "%.4f", --HsiCourse_input
--		[xx] = "%.4f", --HsiCourse_output
		[32] = "%.4f", --HsiCompassCard
		[35] = "%.4f", --HsiCoursePointer
		[36] = "%.4f", --HsiBearingPointer
		[33] = "%.4f", --HsiGlideSlope
		[34] = "%.4f", --HsiCourseDeviation
		[111] = "%.4f", --HsiRangeCounter100
		[112] = "%.4f", --HsiRangeCounter010
		[113] = "%.4f", --HsiRangeCounter001
		[400] = "%.4f", --HsiBearingCounter110
		[401] = "%.4f", --HsiBearingCounter001
		[121] = "%.4f", --HsiCourseOffFlag
		[122] = "%.4f", --HsiGlideSlopeOffFlag
		[402] = "%.4f", --HsiOffFlag
		[403] = "%.4f", --HsiRangeCover
		[404] = "%.4f", --HsiBearingCover

	--Horizontal Situation Indicator Imperial
--		[111] = "%.4f", --ImperialHsiRangeCounter100
--		[112] = "%.4f", --ImperialHsiRangeCounter010
--		[113] = "%.4f", --ImperialHsiRangeCounter001

	--Vertical Velocity Indicator, Turn And Slip Indicator
		[24] = "%.4f", --IndicatorVVI
		[25] = "%.4f", --IndicatorTurn
		[26] = "%.4f", --IndicatorSlipBall

	--Ramps Position Indicator
		[443] = "%.4f", --RampPositionLeft
		[444] = "%.4f", --RampPositionRight

	--Voltmeter
		[308] = "%.4f", --Voltmeter

	--RadarAltimeter
		[9] = "%.4f", --RadarAltimeterAltitude
		[13] = "%.4f", --RadarAltimeterValid
		[405] = "%.4f", --RadarAltimeterDangerousAlt
		[170] = "%.4f", --RadarAltimeterDangerousLight

	--Combined Oxygen Indicator
		[300] = "%.4f", --OxygenAltitude
		[301] = "%.4f", --OxygenReserve
		[302] = "%.4f", --OxygenConsumption
		[303] = "%.4f", --OxygenDeltaPressure

	--Flares Indicator
		[38] = "%.4f", --FlaresCount

	-- Navigation Control Panel
		[607] = "%.4f", --Light_WP_AD_1
		[311] = "%.4f", --Light_WP_AD_2
		[312] = "%.4f", --Light_WP_AD_3
		[313] = "%.4f", --Light_Beacon_1
		[314] = "%.4f", --Light_Beacon_2
		[315] = "%.4f", --Light_Beacon_3
		[316] = "%.4f", --Light_Reset
		[317] = "%.4f", --Light_CourseCmptrZero
		[318] = "%.4f", --Light_Return
		[433] = "%.4f", --Light_D40_Window
		[434] = "%.4f", --Light_Corr_Window
		[418] = "%.4f", --RSBN_1000_Window
		[419] = "%.4f", --RSBN_0100_Window
		[420] = "%.4f", --RSBN_0010_Window
		[421] = "%.4f", --RSBN_0001_Window
		[422] = "%.4f", --ILS_10_Window
		[423] = "%.4f", --ILS_01_Window

	--Ekran
		[231] = "%.4f", --Ekran_Fail
		[232] = "%.4f", --Ekran_Queue
		[233] = "%.4f", --Ekran_Memory
--		[xx] = "%.4f", --Ekran_Film

	--Canopy
		[811] = "%.4f", --CanopyHandleLock
--		[38] = "%.4f", --Canopy
		[180] = "%.4f", --CanopyLock

	--Radio R864
		[284] = "%.4f", --RadioChannelR862

	--Vibration_1
		[4] = "%.4f", --Vibration_1

	--SKAB
		[20] = "%.4f", --SKAB
	--HDD Light
		[531] = "%.4f", --HDD_light

	--SPO-15
		[191] = "%.4f", --L006LM_sector_1
		[192] = "%.4f", --L006LM_sector_2
		[193] = "%.4f", --L006LM_sector_3
		[194] = "%.4f", --L006LM_sector_4
		[195] = "%.4f", --L006LM_sector_5
		[196] = "%.4f", --L006LM_sector_6
		[197] = "%.4f", --L006LM_sector_7
		[198] = "%.4f", --L006LM_sector_8
		[200] = "%.4f", --L006LM_sector_11
		[199] = "%.4f", --L006LM_sector_14
		[150] = "%.4f", --L006LM_sector_main_1
		[151] = "%.4f", --L006LM_sector_main_2
		[152] = "%.4f", --L006LM_sector_main_3
		[153] = "%.4f", --L006LM_sector_main_4
		[154] = "%.4f", --L006LM_sector_main_5
		[155] = "%.4f", --L006LM_sector_main_6
		[156] = "%.4f", --L006LM_sector_main_7
		[157] = "%.4f", --L006LM_sector_main_8
		[159] = "%.4f", --L006LM_sector_main_11
		[158] = "%.4f", --L006LM_sector_main_14
		[164] = "%.4f", --L006LM_type_main_1
		[165] = "%.4f", --L006LM_type_main_2
		[166] = "%.4f", --L006LM_type_main_3
		[167] = "%.4f", --L006LM_type_main_4
		[168] = "%.4f", --L006LM_type_main_5
		[169] = "%.4f", --L006LM_type_main_6
		[171] = "%.4f", --L006LM_type_1
		[172] = "%.4f", --L006LM_type_2
		[173] = "%.4f", --L006LM_type_3
		[174] = "%.4f", --L006LM_type_4
		[175] = "%.4f", --L006LM_type_5
		[176] = "%.4f", --L006LM_type_6
		[162] = "%.4f", --L006LM_lock
		[160] = "%.4f", --L006LM_sector_top
		[161] = "%.4f", --L006LM_sector_bottom
		[201] = "%.4f", --L006LM_target_position
		[202] = "%.4f", --L006LM_PL_1
		[203] = "%.4f", --L006LM_PL_2
		[204] = "%.4f", --L006LM_PL_3
		[205] = "%.4f", --L006LM_PL_4
		[206] = "%.4f", --L006LM_PL_5
		[207] = "%.4f", --L006LM_PL_6
		[208] = "%.4f", --L006LM_PL_7
		[209] = "%.4f", --L006LM_PL_8
		[210] = "%.4f", --L006LM_PL_9
		[211] = "%.4f", --L006LM_PL_10
		[212] = "%.4f", --L006LM_PL_11
		[213] = "%.4f", --L006LM_PL_12
		[214] = "%.4f", --L006LM_PL_13
		[215] = "%.4f", --L006LM_PL_14
		[216] = "%.4f", --L006LM_PL_15
		[177] = "%.4f", --L006LM_active
		[163] = "%.4f", --L006LM_no_sound

	--Internal Lights
		[600] = "%.4f", --FloodLight
		[601] = "%.4f", --MapLight
		[801] = "%.4f", --InstrumentLight
		[800] = "%.4f", --ConsoleLight
		[802] = "%.4f", --Compass

	--Warning Lights
		[445] = "%.4f", --MASTER_CAUTION
		[383] = "%.4f", --LOCK_CANOPY
		[341] = "%.4f", --LH_ENG_FIRE
		[342] = "%.4f", --RH_ENG_FIRE
		[340] = "%.4f", --GBX_FIRE
		[345] = "%.4f", --OIL_PRESS_LEFT
		[343] = "%.4f", --REDUCED_RPM_LH_ENG
		[346] = "%.4f", --OIL_PRESS_RIGHT
		[344] = "%.4f", --REDUCED_RPM_RH_ENG
		[350] = "%.4f", --COC_FAIL
		[352] = "%.4f", --DAMPER_OFF
		[348] = "%.4f", --KG_550_REMAIN
		[399] = "%.4f", --NO_COC_RESERVE
		[389] = "%.4f", --TRANSFM_FAIL
		[347] = "%.4f", --OIL_GBX
		[349] = "%.4f", --DOUBLE_HYD_SYS
		[378] = "%.4f", --EXPLOSION
		[386] = "%.4f", --ENABLE_RESERVE
		[384] = "%.4f", --FAIL_CPO
--		[436] = "%.4f", --AIR
--		[437] = "%.4f", --AB_LEFT_CB
--		[438] = "%.4f", --AB_RIGHT_CB
--		[439] = "%.4f", --BRAKE_AB
--		[435] = "%.4f", --GROUND
		[362] = "%.4f", --EMERG_HYD_PUMP_ON
		[381] = "%.4f", --FEEL_UNIT_OK
--		[xx] = "%.4f", --AVAILABLE_DO
		[355] = "%.4f", --LH_ENG_AB
		[356] = "%.4f", --RH_ENG_AB
		[379] = "%.4f", --LH_ENG_START
		[380] = "%.4f", --RH_ENG_START
		[397] = "%.4f", --LH_INLET_CHECK
		[398] = "%.4f", --RH_INLET_CHECK
		[357] = "%.4f", --RUD_TRIM_NEUTRAL
		[359] = "%.4f", --FEEL_UNIT_TO_LD
		[367] = "%.4f", --MARKER_BEACON
--		[xx] = "%.4f", --AVAILABLE_IK
		[364] = "%.4f", --BEACON_INNER
--		[xx] = "%.4f", --CONTROL_CO
		[360] = "%.4f", --AIL_TRIM_NEUTRAL
		[358] = "%.4f", --STAB_TRIM_NEUTRAL
		[387] = "%.4f", --NAV_READY
		[388] = "%.4f", --FAST_PREP
		[363] = "%.4f", --REQUEST
		[365] = "%.4f", --RADAR_EMISSION
		[366] = "%.4f", --FLARE_DISPENSING
		[385] = "%.4f", --FLARE_READY
		[390] = "%.4f", --INT_KD
		[391] = "%.4f", --INT_KP
		[49] = "%.4f", --LEVELING_LIGHT

	--Landing Lights
		[44] = "%.4f", --SPEEDBRAKERS_U
		[45] = "%.4f", --SPEEDBRAKERS_D
		[320] = "%.4f", --LEF_L
		[321] = "%.4f", --LEF_R
		[42] = "%.4f", --FLAPS_L_TO
		[56] = "%.4f", --FLAPS_L_LD
		[43] = "%.4f", --FLAPS_R_TO
		[57] = "%.4f", --FLAPS_R_LD
		[39] = "%.4f", --MAIN_LANDING_GEAR_L
		[41] = "%.4f", --MAIN_LANDING_GEAR_R
		[40] = "%.4f", --NOSE_LANDING_GEAR
		[46] = "%.4f", --RED_LIGHT

	--AFCS Lights
		[83] = "%.4f", --AFCS_PNL_DAMPER
		[85] = "%.4f", --AFCS_PNL_AUTO_RECOVER
		[87] = "%.4f", --AFCS_PNL_ALT_HOLD
		[89] = "%.4f", --AFCS_PNL_ATT_HOLD
		[91] = "%.4f", --AFCS_PNL_APPROACH
		[93] = "%.4f", --AFCS_PNL_MISSED_APPROACH

}
ExportScript.ConfigArguments = 
{
	--HUD
		[536] = "%.1f", --HUD Brightness Control Knob
		[535] = "%1d", --HUD Selector Knob, DAY/NIGHT/RETICLE
		[534] = "%1d", --Test Button - Push to test
		[50] = "%1d", --Filter Operating Handle, Erect/Remove

	--HDD
		[530] = "%.4f", --Brightness Control Knob

	--PSR - 31 (special mode control)
		[520] = "%.2f", --SPAN Knob
		[523] = "%.1f", --WCS Modes Selector Knob, TOSS/NAV/RADAR/IR/CC/HELM/OPT/BS
		[525] = "%.4f", --Zone Switch, LEFT/CENTER/RIGHT
		[524] = "%.2f", --IR GAIN/HELM BRIGHT Control Knob
		[526] = "%1d", --MASTER ARM Switch, ARM/SAVE
		[521] = "%1d", --Burst Mode Switch, ALL / SINGLE/0.5 ALL
		[527] = "%1d", --Preparation Switch, MANUAL/AUTO
		[286] = "%1d", --AIR/GROUND Switch, AIR/GROUND
		[289] = "%1d", --GUID Switch, ON/OFF
		[287] = "%1d", --COOP Switch, DRAG/N DRAG

	--RH
		[555] = "%1d", --CABIN TEMP Switch, AUTO
--		[555] = "%.4f", --CABIN TEMP Switch, HOT
--		[555] = "%.4f", --CABIN TEMP Switch, COLD
--		[555] = "%.4f", --CABIN TEMP Switch, Center position
		[254] = "%1d", --Air Lever, OPEN/PILOT
		[246] = "%1d", --Cabin Air Lever, OPEN/CLOSED
		[76] = "%1d", --Canopy Emergency Jettison Handle - Pull to jettison

	--LH
		[810] = "%.1f", --Canopy Control Handle, OPEN/TAXI/CLOSE
		[247] = "%1d", --Cabin Emergency Decompression Lever, PRESSURE/DECOMPRESSION
		[108] = "%1d", --Suit Vent Control Knob, OPEN/CLOSE
		[109] = "%1d", --Suit Vent Control Knob, COLD/HOT
		[95] = "%1d", --Emergency Missile Jettison Button - Push to jettison
		[290] = "%1d", --Bombs Jettison Switch, ARMED/NOT ARMED
		[292] = "%1d", --Bombs and NURS Emergency Jettison Button - Push to jettison
		[291] = "%1d", --Bombs and NURS Emergency Jettison Button Cover, OPEN/CLOSE
		[29] = "%1d", --External Stores Switch, INBD/OUTBD

	-- Oxygen Control
		[106] = "%.2f", --Oxygen Flow Valve
		[116] = "%1d", --Oxygen MIX-100% Switch, MIX/100%
		[115] = "%1d", --Oxygen MIX-100% Switch Cover, OPEN/CLOSE
		[118] = "%1d", --Oxygen Emergency ON-OFF Switch, ON/OFF
		[117] = "%1d", --Oxygen Emergency ON-OFF Switch Cover, OPEN/CLOSE
		[120] = "%1d", --HELM VENT ON-OFF Switch, ON/OFF
		[119] = "%1d", --HELM VENT ON-OFF Switch Cover, OPEN/CLOSE

	--CTR
		[114] = "%.4f", --Cabin Temperature Control Knob
		[131] = "%.4f", --Pitot Selector Lever, MAIN/STBY
		[558] = "%.4f", --Pitot Heat Switch, ON/OFF
		[143] = "%.4f", --FLAREs Emergency Jettison Button - Push to jettison
		[140] = "%.4f", --FLAREs Program Switch, GROUND/FHS/RHS
		[68] = "%.4f", --Ejection Handle - Press to eject (3 times)
		[67] = "%.4f", --Ejection Handle - ARM/SAFE

	-- ExternalLightSystem
		[178] = "%1d", --LAND LIGHT / TAXI Switch, LAND LIGHT/TAXI/OFF
		[574] = "%1d", --NAV LTS Switch, FLASH
--		[574] = "%.4f", --NAV LTS Switch, OFF
		[548] = "%.1f", --NAV LTS Switch, 100%
--		[548] = "%.4f", --NAV LTS Switch, 10%

	-- InternalLightSystem
		[546] = "%1d", --Lamp Test Button - Press To Test Lamps
--		[97] = "%.4f", --Master Caution - Press to extinguish
		[97] = "%.4f", --Master Caution, (LMB) Press to extinguish /(MW) Rotate For Brightness Adjustment
		[549] = "%.2f", --FLOODLIGHT Control Knob
		[545] = "%.2f", --LTS ILLUM BRIGHT Control Knob
		[541] = "%.2f", --MAP ILLUM Control Knob
		[543] = "%.2f", --INSTRUMENT Control Knob
		[542] = "%.2f", --CONSOLE Control Knob
		[110] = "%.4f", --PANEL Control Knob, (LMB) Pull For Automatic Control /(MW) Rotate For Manual Control

	-- Ekran
		[184] = "%1d", --AEKRAN CALL Button

	-- Instruments

	-- Radar Altimeter
		[137] = "%.1f", --RAD ALT Minimum Height Set Knob
		[138] = "%.1f", --RAD ALT Test Button - Push to test

	-- Clock
		[278] = "%.4f", --Mech Clock Left Winding and Setting Knob 
		[277] = "%.4f", --Mech Clock Left Winding and Setting Knob (2)
		[279] = "%.4f", --Mech Clock Right Setting Knob
		[280] = "%.4f", --Mech Clock Right Setting Knob (2)

	-- Barometric Altimeter
		[272] = "%.4f", --Barometric Setting Knob

	-- Combined AOA / G Meter
		[528] = "%.4f", --Reset Button For G-Ingex Tab - Push to reset

	-- Attitude Director Indicator
		[264] = "%.4f", --ADI Aircraft Symbol Setting Knob
		[265] = "%.4f", --ADI Gyro Cage Button - Push to cage

	-- Horizontal Situation Indicator
		[270] = "%.4f", --HSI Course Selector Knob
		[269] = "%.4f", --HSI Test Button - Push to test

	-- Vertical Velocity Indicator
		[268] = "%.4f", --VVI Adjustment Knob

	-- Fuel Indicator
		[440] = "%.4f", --T/P Switch, T/P
		[446] = "%.4f", --Distance Computer Mode Switch, TEK/OPT

	-- Power Lever
--		[842] = "%.4f", --LOCK ON Button

	-- Electrical Power Panel
		[510] = "%.4f", --BAT/GROUND Supply Switch, ON/OFF
		[511] = "%.4f", --DC Generator Switch, ON/OFF
		[512] = "%.4f", --AC Generator Switch, ON/OFF
		[513] = "%.4f", --DC/AC Converter Switch, ON/OFF
		[514] = "%.4f", --Engine System Switch, ON/OFF
		[515] = "%.4f", --Fuel Pump Switch, ON/OFF
		[516] = "%.4f", --Anti Surge Switch, ON/OFF
		[517] = "%.4f", --All Electric Power Switches ON - Press to turn ON

	--System Power Panel
		[504] = "%.4f", --Radio Supply Switch, ON/OFF
		[503] = "%.4f", --Aircraft Systems Supply Switch, ON/OFF
		[502] = "%.4f", --GYRO Main Supply Switch, ON/OFF
		[501] = "%.4f", --GYRO Stby Supply Switch, ON/OFF
		[500] = "%.4f", --Navigation Supply Switch, ON/OFF
		[509] = "%.4f", --AFCS Supply Switch, ON/OFF
		[508] = "%.4f", --TRANSPONDER Supply Switch, ON/OFF
		[507] = "%.4f", --RECORD Supply Switch, ON/OFF
		[506] = "%.4f", --Weapon Supply Switch, ON/OFF
		[505] = "%.4f", --ACS Supply Switch, ON/OFF
		[518] = "%.4f", --All System Power Switches ON - Press to turn ON

	-- SPO-15
		[185] = "%.4f", --SPO-15 BIT Switch, LMB - MANUAL/RMB - AUTO
		[186] = "%.4f", --SPO-15 Lamp Brightness Knob
		[189] = "%.4f", --SPO-15 Power Switch, ON/OFF
		[188] = "%.4f", --SPO-15 Allow Search Switch, ON/OFF
		[187] = "%.4f", --SPO-15 Warning Tone Volume Knob

	-- Radio Comm
		[132] = "%.4f", --VHF/UHF Modulation Switch, AM/FM
		[248] = "%.4f", --VHF/UHF Guard Receiver Select Switch, ON/OFF
		[249] = "%.4f", --VHF/UHF ADF Switch, ON/OFF
		[250] = "%.4f", --VHF/UHF Squelch Switch, ON/OFF
		[251] = "%.4f", --VHF/UHF Volume Control Knob
		[252] = "%.4f", --VHF/UHF Channel Selector Knob

	-- VIWAS
		[141] = "%.4f", --Repeat Voice Warn Button - Push to repeat the last warning
		[142] = "%.4f", --Check Voice Warn Button - Push to initiate a self-test

	-- SPU
		[98] = "%.4f", --IR Volume Control Knob

	-- ARK
		[144] = "%.4f", --ADF Channel Select Knob, 1/2/3/4/P
		[145] = "%.4f", --ADF Voice/CW Switch, VOICE/CW
		[146] = "%.4f", --ADF Compass/Antenna Select Switch, COMP/ANT
		[147] = "%.4f", --ADF Volume Control Knob
		[179] = "%.4f", --ADF Loop Pushbutton
		[139] = "%.4f", --ADF Inner/Outer Switch, INNER/OUTER

	-- Navigation
		[498] = "%.4f", --PREPARE/OPERATE Switch, OPER/PREPARE

	-- Navigation Control Panel
		[410] = "%.4f", --GYRO Switch, MAIN/STBY
		[411] = "%.4f", --CHANNELS Switch, AUTO/MAN
		[412] = "%.4f", --WP-A/D Switch, WP / A/D
		[413] = "%.4f", --REL BEARING Switch, RSBN/ADF
		[414] = "%.4f", --COURSE Switch, 180-359/0-179
		[415] = "%.4f", --CIRCLE Switch, LEFT/RIGHT
		[416] = "%.4f", --LANDING Switch, ON/AUTO
		[417] = "%.4f", --IDENT Button - (is not in use)
		[424] = "%.4f", --WP-A/D Button, 1
		[425] = "%.4f", --WP-A/D Button, 2
		[426] = "%.4f", --WP-A/D Button, 3
		[427] = "%.4f", --BEACON Button, 1
		[428] = "%.4f", --BEACON Button, 2
		[429] = "%.4f", --BEACON Button, 3
		[430] = "%.4f", --RESET Button - Push to deselect BEACON
		[431] = "%.4f", --COURSE CMPTR ZERO Button - Push to reset NAV computer
		[432] = "%.4f", --RETURN Button - Push to activate RETURN
--		[135] = "%.4f", --RSBN Beacon Type Selector Knob
		[133] = "%.4f", --RSBN Channel Selector Knob
		[134] = "%.4f", --ILS Selector Knob
		[274] = "%.4f", --MAG HDG SLAVE Button
		[273] = "%.4f", --SET COURSE Switch, AUTO/MAN

	-- AFCS
		[82] = "%.4f", --DAMPER Pushbutton
		[84] = "%.4f", --AUTO RECOVER Pushbutton
		[86] = "%.4f", --ALT HOLD Pushbutton
		[88] = "%.4f", --ATT HOLD Pushbutton
		[90] = "%.4f", --APPROACH Pushbutton
		[92] = "%.4f", --MISSED APPROACH Pushbutton

	-- FCR
		[294] = "%.1f", --Target Elevation Select Knob, -6/-4/-2/-1/0/1/2/4/6/8/10
		[295] = "%.1f", --Radar Mode Select Knob, AUTO/CLOSE CMBT/HEAD ON/PURSUIT
		[296] = "%1d", --Radar Illumination Switch, ILLUM/DUMMY/OFF
		[297] = "%1d", --Radar Compensation Switch, COMP/OFF
		[298] = "%1d", --Radar TWF Switch, FHS/RHS
		[299] = "%1d", --Radar ECCM Switch, AJ/OFF/CAJ

	-- HYDRO
		[80] = "%.4f", --Landing Gear Handle, RETRACTED/EXTENDED
		[222] = "%.4f", --Flaps Up Pushbutton - Push to retract flaps
		[223] = "%.4f", --Flaps Down (TAKEOFF) Pushbutton - Push to extend flaps to takeoff position
		[224] = "%.4f", --Flaps Down (LANDING) Pushbutton - Push to extend flaps to landing position
		[219] = "%.4f", --Flaps Off Button - Push to reset flaps pushbuttons

	-- Control System
		[99] = "%.4f", --Rudder Trim Switch, LEFT/OFF/RIGHT

	-- Engines Start
		[282] = "%.4f", --APU Switch, START NORM
--		[282] = "%.4f", --APU Switch, START NORM
--		[282] = "%.4f", --APU Switch, APU COLD CRANK
--		[282] = "%.4f", --APU Switch, ENG COLD CRANK
--		[282] = "%.4f", --APU Switch, APU MODE
		[75] = "%.4f", --APU Switch Cover, OPEN/CLOSE
		[281] = "%.4f", --Start-Up Mode Switch, LH / START BOTH / RH
		[65] = "%.4f", --Ground Startup Button - Push to start

	-- Mirrors
--		[0] = "%.4f", --Mirrors, OPEN/CLOSE
--		[0] = "%.4f", --Mirrors, OPEN/CLOSE
--		[0] = "%.4f", --Mirrors, OPEN/CLOSE
		[690] = "%.4f", --Left Mirror Position Adjusting
		[692] = "%.4f", --Center Mirror Position Adjusting
		[694] = "%.4f", --Right Mirror Position Adjusting
		[697] = "%.4f", --Left Mirror, ON/OFF
		[698] = "%.4f", --Center Mirror, ON/OFF
		[699] = "%.4f", --Right Mirror, ON/OFF
--		[0] = "%.4f", --Left Mirror Position Adjusting - (LMB) Push/(RMB) Pull
--		[0] = "%.4f", --Left Mirror Position Adjusting - (LMB) Push/(RMB) Pull
--		[0] = "%.4f", --Left Mirror Position Adjusting - (LMB) Push/(RMB) Pull
--		[0] = "%.4f", --Left Mirror Position Adjusting - (LMB) Push/(RMB) Pull
--		[0] = "%.4f", --Center Mirror Position Adjusting - (LMB) Push/(RMB) Pull
--		[0] = "%.4f", --Center Mirror Position Adjusting - (LMB) Push/(RMB) Pull
--		[0] = "%.4f", --Center Mirror Position Adjusting - (LMB) Push/(RMB) Pull
--		[0] = "%.4f", --Center Mirror Position Adjusting - (LMB) Push/(RMB) Pull
--		[0] = "%.4f", --Right Mirror Position Adjusting - (LMB) Push/(RMB) Pull
--		[0] = "%.4f", --Right Mirror Position Adjusting - (LMB) Push/(RMB) Pull
--		[0] = "%.4f", --Right Mirror Position Adjusting - (LMB) Push/(RMB) Pull
--		[0] = "%.4f", --Right Mirror Position Adjusting - (LMB) Push/(RMB) Pull
		[2] = "%.4f", --Stick Visibility, Hide/Show

	-- IFF
		[126] = "%.4f", --DISTR Switch, ON/OFF
		[127] = "%.4f", --1/2 Switch, 1/2
		[129] = "%.4f", --ZEROIZE Button Cover, OPEN/CLOSE
		[130] = "%.4f", --ZEROIZE Button - Push to zeroize
		[149] = "%.4f", --SIGN Button
		[494] = "%.4f", --Transponder BIT Button - Push to initiate BIT
		[148] = "%.4f", --Transponder Mode Select Knob, RSP/UVD/P35
		[128] = "%.4f", --Interrogator Mode Select Knob, I/II/III-1/III-2
		[382] = "%.4f", --Encryption Key Select Knob, AUTO/KD+-15/KP
		[407] = "%.4f", --Code Select Switch, MAIN/RESERVED
		[288] = "%.4f", --LOCK Switch, FOE/FRIEND
		[23] = "%.4f", --Nose Wheel Brake Handle, ON/OFF
		[28] = "%.4f", --DragChute - Press to launch
		[243] = "%.4f", --DragChute - Press to drop

}

-----------------------------
-- HIGH IMPORTANCE EXPORTS --
-- done every export event --
-----------------------------

-- Pointed to by ProcessIkarusDCSHighImportance
function ExportScript.ProcessIkarusDCSConfigHighImportance(mainPanelDevice)
end

function ExportScript.ProcessDACConfigHighImportance(mainPanelDevice)
	--[[
	every frame export to DAC
	Example from A-10C
	Get Radio Frequencies
	get data from device
	local UHF_RADIO = GetDevice(54)
	ExportScript.Tools.SendDataDAC("ExportID", "Format")
	ExportScript.Tools.SendDataDAC("ExportID", "Format", HardwareConfigID)
	ExportScript.Tools.SendDataDAC("2000", string.format("%7.3f", UHF_RADIO:get_frequency()/1000000))
	ExportScript.Tools.SendDataDAC("2000", ExportScript.Tools.RoundFreqeuncy((UHF_RADIO:get_frequency()/1000000))) -- ExportScript.Tools.RoundFreqeuncy(frequency (MHz|KHz), format ("7.3"), PrefixZeros (false), LeastValue (0.025))
	]]
end

-----------------------------------------------------
-- LOW IMPORTANCE EXPORTS                          --
-- done every gExportLowTickInterval export events --
-----------------------------------------------------

function ExportScript.ProcessDACConfigLowImportance(mainPanelDevice)
end

-- Pointed to by ExportScript.ProcessIkarusDCSConfigLowImportance
function ExportScript.ProcessIkarusDCSConfigLowImportance(mainPanelDevice)
	--[[
	export in low tick interval to Ikarus
	Example from A-10C
	Get Radio Frequencies
	get data from device
	local lUHFRadio = GetDevice(54)
	ExportScript.Tools.SendData("ExportID", "Format")
	ExportScript.Tools.SendData(2000, string.format("%7.3f", lUHFRadio:get_frequency()/1000000)) -- <- special function for get frequency data
	-- ExportScript.Tools.RoundFreqeuncy(frequency (MHz|KHz), format ("7.3"), PrefixZeros (false), LeastValue (0.025))
	ExportScript.Tools.SendData(2000, ExportScript.Tools.RoundFreqeuncy((UHF_RADIO:get_frequency()/1000000))) 
	]]

    ---------------
    -- Log Dumps --
    ---------------
    --ExportScript.CockpitParamsLogDump(mainPanelDevice)
    --ExportScript.MetaTableLogDump(mainPanelDevice)
    --ExportScript.ListIndicationLogDump(mainPanelDevice)

end

-----------------------------
--     Custom functions    --
-----------------------------

function ExportScript.CockpitParamsLogDump(mainPanelDevice) -- Get list of cockpit params
   ExportScript.Tools.WriteToLog('list_cockpit_params(): '..ExportScript.Tools.dump(list_cockpit_params()))
end

function ExportScript.MetaTableLogDump(mainPanelDevice) -- getmetatable get function name from devices
    local ltmp1 = 0
    for ltmp2 = 1, 70, 1 do
        ltmp1 = GetDevice(ltmp2)
        ExportScript.Tools.WriteToLog(ltmp2..': '..ExportScript.Tools.dump(ltmp1))
        ExportScript.Tools.WriteToLog(ltmp2..' (metatable): '..ExportScript.Tools.dump(getmetatable(ltmp1)))
    end
end

function ExportScript.ListIndicationLogDump(mainPanelDevice) -- list_indication get the value of cockpit displays
    local ltmp1 = 0
    for ltmp2 = 0, 20, 1 do
        ltmp1 = list_indication(ltmp2)
        ExportScript.Tools.WriteToLog(ltmp2..': '..ExportScript.Tools.dump(ltmp1))
    end
end
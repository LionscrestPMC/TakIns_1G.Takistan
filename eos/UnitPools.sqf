private ["_tempArray","_InfPool","_MotPool","_ACHPool","_CHPool","_uavPool","_stPool","_shipPool","_diverPool","_crewPool","_heliCrew","_ArmPool"];
_faction=(_this select 0);
_type=(_this select 1);
_tempArray=[];

// EAST CSAT FACTION
	if (_faction==0) then {
	_InfPool=	["O_Soldier_A_F","O_Soldier_AAR_F","O_Soldier_AR_F","O_Soldier_AT_F","O_Soldier_F","O_medic_F"];	
	_ArmPool=	["B_G_Offroad_01_armed_F"];
	_MotPool=	["B_G_Offroad_01_armed_F","B_G_Offroad_01_repair_F","B_G_Offroad_01_F","B_G_Van_01_transport_F"];
	_ACHPool=	["O_Heli_Light_02_F"];
	_CHPool=	["O_Heli_Light_02_unarmed_F","O_Heli_Light_02_F"];
	_uavPool=	[];
	_stPool=	["O_Mortar_01_F","O_HMG_01_high_F","O_GMG_01_high_F","O_static_AT_F","O_static_AA_F"];
	_shipPool=	[];
	_diverPool=	[];
	_crewPool=	["O_crew_F"];
	_heliCrew=	["O_helicrew_F","O_helipilot_F"];};

// WEST NATO FACTION	
	if (_faction==1) then {
	_InfPool=	["B_sniper_F","B_Soldier_A_F","B_Soldier_AA_F","B_Soldier_AAA_F","B_Soldier_AAR_F","B_Soldier_AAT_F","B_Soldier_AR_F","B_Soldier_AT_F","B_soldier_exp_F","B_Soldier_F","B_engineer_F","B_medic_F"];	
	_ArmPool=	["B_MBT_01_arty_F","B_MBT_01_cannon_F","B_MBT_01_mlrs_F","B_APC_Tracked_01_AA_F","B_APC_Tracked_01_CRV_F","B_APC_Tracked_01_rcws_F","B_APC_Wheeled_01_cannon_F","B_MBT_02_cannon_F"];
	_MotPool=	["B_Truck_01_covered_F","B_Truck_01_transport_F","B_MRAP_01_F","B_MRAP_01_gmg_F","B_MRAP_01_hmg_F","B_Truck_01_medical_F"];
	_ACHPool=	["B_Heli_Attack_01_F","B_Heli_Light_01_armed_F"];
	_CHPool=	["B_Heli_Light_01_F","B_Heli_Transport_01_camo_F","B_Heli_Transport_01_F"];
	_uavPool=	[];
	_stPool=	[];
	_shipPool=	[];
	_diverPool=	[];
	_crewPool=	["B_crew_F"];
	_heliCrew=	["B_helicrew_F","B_helipilot_F"];};

// INDEPENDENT AAF FACTION	
	if (_faction==2) then {
	_InfPool=	["I_Soldier_A_F","I_Soldier_AAR_F","I_Soldier_AR_F","I_soldier_F","I_Soldier_lite_F","I_Soldier_GL_F","I_officer_F","I_Soldier_M_F","I_medic_F"];	
	_ArmPool=	["B_G_Offroad_01_armed_F"];
	_MotPool=	["B_G_Offroad_01_armed_F","B_G_Offroad_01_repair_F","B_G_Offroad_01_F","B_G_Van_01_transport_F"];
	_ACHPool=	["I_Heli_light_03_F","O_Heli_Light_02_F","O_Heli_Attack_02_black_F"];
	_CHPool=	["I_Heli_Transport_02_F","B_Heli_Light_02_unarmed_F","O_Heli_Light_02_unarmed_F","O_Heli_Light_02_v2_F"];
	_uavPool=	[];
	_stPool=	["I_Mortar_01_F","I_HMG_01_high_F","I_GMG_01_high_F","I_static_AT_F","I_static_AA_F"];
	_shipPool=	[];
	_diverPool=	[];
	_crewPool=	["I_crew_F"];
	_heliCrew=	["I_helipilot_F"];};

// CIVILIAN	
	if (_faction==3) then {
	_InfPool=	["C_man_1"];
	_ArmPool=	["C_Hatchback_01_F","C_Hatchback_01_sport_F","C_Quadbike_01_F","C_SUV_01_F","C_Van_01_transport_F","C_Van_01_box_F"];
	_MotPool=	["C_Hatchback_01_F","C_Hatchback_01_sport_F","C_Quadbike_01_F","C_SUV_01_F","C_Van_01_transport_F","C_Van_01_box_F"];
	_ACHPool=	["C_Heli_Light_01_civil_F"];
	_CHPool=	["C_Heli_Light_01_civil_F"];
	_uavPool=	[];
	_stPool=	[];
	_shipPool=	["C_Boat_Civil_01_F","C_Boat_Civil_01_rescue_F","C_Boat_Civil_04_F","C_Rubberboat"];
	_diverPool=	[];
	_crewPool=	["C_man_1"];
	_heliCrew=	["C_man_pilot_F"];};

// WEST FIA FACTION
	if (_faction==4) then {
	_InfPool=	["B_G_engineer_F","B_G_medic_F","B_G_officer_F","B_G_Soldier_A_F","B_G_Soldier_AR_F","B_G_Soldier_exp_F","B_G_Soldier_F","B_G_Soldier_GL_F","B_G_Soldier_LAT_F","B_G_Soldier_lite_F","B_G_Soldier_M_F","B_G_Soldier_SL_F","B_G_Soldier_TL_F"];	
	_ArmPool=	[];
	_MotPool=	["B_G_Offroad_01_F","B_G_Offroad_01_armed_F","B_G_Van_01_transport_F","B_G_Van_01_fuel_F"];
	_ACHPool=	[];
	_CHPool=	[];
	_uavPool=	[];
	_stPool=	["B_G_Mortar_01_F"];
	_shipPool=	["B_G_Boat_Transport_01_F"];
	_diverPool=	[];
	_crewPool=	[];
	_heliCrew=	[];};

// Leight's Middle Eastern Insurgents 	
	if (_faction==5) then {
	_InfPool=	["LOP_AM_Soldier_TL","LOP_AM_Soldier_SL","LOP_AM_Soldier","LOP_AM_Soldier_Marksman","LOP_AM_Soldier_Engineer","LOP_AM_Soldier_GL","LOP_AM_Soldier_AR","LOP_AM_Soldier_AT"];	
	_ArmPool=	["LOP_IT_T72BA","LOP_IT_BTR70","LOP_IT_BTR60","rhs_btr80_vmf","LOP_IT_BMP2","LOP_IT_BMP1","LOP_IT_ZSU234"];
	_MotPool=	["LOP_AM_Technical_M2","LOP_AM_Technical","LOP_AM_Landrover_M2","LOP_AM_Landrover","LOP_AM_GAZ66o"];
	_ACHPool=	["RHS_Mi24P_vvsc","RHS_Mi24V_vvsc","RHS_Mi8AMTSh_vvsc","RHS_Mi8mt_vvsc"];
	_CHPool=	["RHS_Mi8AMTSh_vvsc","RHS_Mi8mt_vvsc"];
	_uavPool=	[];
	_stPool=	["LOP_AM_NSV_TriPod","LOP_AM_Static_Mk19_TriPod","LOP_AM_Static_M2_MiniTripod","LOP_AM_Static_M2","I_Mortar_01_F","I_static_AT_F","I_static_AA_F"];
	_shipPool=	[];
	_diverPool=	[];
	_crewPool=	["LOP_AM_Soldier_TL","LOP_AM_Soldier_SL","LOP_AM_Soldier","LOP_AM_Soldier_Marksman","LOP_AM_Soldier_Engineer","LOP_AM_Soldier_GL","LOP_AM_Soldier_AR","LOP_AM_Soldier_AT"];
	_heliCrew=	["LOP_AM_Soldier_TL","LOP_AM_Soldier_SL","LOP_AM_Soldier","LOP_AM_Soldier_Marksman","LOP_AM_Soldier_Engineer","LOP_AM_Soldier_GL","LOP_AM_Soldier_AR","LOP_AM_Soldier_AT"];};
	
// Leight's Middle Eastern Civilians 	
	if (_faction==6) then {
	_InfPool=	["LOP_Afg_civ_01","LOP_Afg_civ_02","LOP_Afg_civ_03","LOP_Afg_civ_04"];	
	_ArmPool=	[];
	_MotPool=	["LOP_Afg_Civ_Landrover","RHS_Ural_Civ_01","RHS_Ural_Open_Civ_01","RHS_Ural_Civ_03","RHS_Ural_Open_Civ_03","RHS_Ural_Civ_02","RHS_Ural_Open_Civ_02"];
	_ACHPool=	[];
	_CHPool=	[];
	_uavPool=	[];
	_stPool=	[];
	_shipPool=	[];
	_diverPool=	[];
	_crewPool=	["LOP_Afg_civ_01","LOP_Afg_civ_02","LOP_Afg_civ_03","LOP_Afg_civ_04"];
	_heliCrew=	[];};
	
// ADD CLASSNAMES 	
	if (_faction==7) then {
	_InfPool=	[];	
	_ArmPool=	[];
	_MotPool=	[];
	_ACHPool=	[];
	_CHPool=	[];
	_uavPool=	[];
	_stPool=	[];
	_shipPool=	[];
	_diverPool=	[];
	_crewPool=	[];
	_heliCrew=	[];};
	
////////////////////////////////////////////////////////////////////////////////////////
if (_type==0) then {
		for "_i" from 0 to 5 do{
		_unit=_InfPool select (floor(random(count _InfPool)));
		_tempArray set [count _tempArray,_unit];};
						};
						
if (_type==1) then {_tempArray=_diverPool};
	
				
// CREATE ARMOUR & CREW			
if (_type==2) then {
				_tempUnit=_ArmPool select (floor(random(count _ArmPool)));
				_temparray set [count _temparray,_tempUnit];
				_crew=_crewPool select (floor(random(count _crewPool)));
				_temparray set [count _temparray,_crew];
};

// CREATE ATTACK CHOPPER & CREW	
if (_type==3) then {
				_tempUnit=_ACHPool select (floor(random(count _ACHPool)));
				_temparray set [count _temparray,_tempUnit];
				_crew=_heliCrew select (floor(random(count _heliCrew)));
				_temparray set [count _temparray,_crew];
};

// CREATE TRANSPORT CHOPPER & CREW		
if (_type==4) then {
				_tempUnit=_CHPool select (floor(random(count _CHPool)));
				_temparray set [count _temparray,_tempUnit];
				_crew=_heliCrew select (floor(random(count _heliCrew)));
				_temparray set [count _temparray,_crew];
						};
						
// CREATE STATIC & CREW						
if (_type==5) then {
				_tempUnit=_stPool select (floor(random(count _stPool)));
				_temparray set [count _temparray,_tempUnit];
				_crew=_crewPool select (floor(random(count _crewPool)));
				_temparray set [count _temparray,_crew];

};
if (_type==6) then {_tempArray=_uavPool select (floor(random(count _uavPool)));};

// CREATE TRANSPORT & CREW
if (_type==7) then {
				_tempUnit=_MotPool select (floor(random(count _MotPool)));
				_temparray set [count _temparray,_tempUnit];
				_crew=_crewPool select (floor(random(count _crewPool)));
				_temparray set [count _temparray,_crew];
				};

// CREATE BOAT & DIVER CREW
if (_type==8) then {
				_tempUnit=_shipPool select (floor(random(count _shipPool)));
				_temparray set [count _temparray,_tempUnit];
				_crew=_diverPool select (floor(random(count _diverPool)));
				_temparray set [count _temparray,_crew];
				};
				
// CREATE CARGO
if (_type==9) then {
		for "_i" from 0 to 4 do{
			_unit=_InfPool select (floor(random(count _InfPool)));
			_temparray set [count _temparray,_unit];
							};
};

// CREATE DIVER CARGO
if (_type==10) then {
		for "_i" from 0 to 4 do{
			_unit=_diverPool select (floor(random(count _diverPool)));
			_temparray set [count _temparray,_unit];
							};			
};

//hint format ["%1",_tempArray];
_tempArray
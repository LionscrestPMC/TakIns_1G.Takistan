InsU={
private ["_unit","_unif"];

	_unit = _this select 0;
	_unif = ["U_OG_Guerilla2_1",
             "U_BG_Guerilla2_2",
             "U_BG_Guerilla2_3",
             "U_BG_Guerilla3_1",
             "U_C_HunterBody_grn",
             "U_C_WorkerCoveralls",
             "U_OrestesBody"
			 ];
	if (isClass(configFile >> "cfgPatches" >> "Taliban_fighters")) then {
	_unif = ["U_Afghan01",
             "U_Afghan02",
             "U_Afghan03",
             "U_Afghan04",
             "U_Afghan05",
             "U_Afghan06"
			];};
	removeUniform _unit;
	_unit forceAddUniform (_unif call BIS_fnc_selectRandom)};

InsV={
private ["_unit","_vests"];

	_unit = _this select 0;
	_vests = ["V_TacVest_khk",
              "V_TacVest_oli",
              "V_TacVest_blk",
              "V_BandollierB_khk",
              "V_BandollierB_oli",
              "V_Chestrig_khk",
              "V_Chestrig_oli",
              "V_HarnessO_brn",
              "V_I_G_resistanceLeader_F"
              ];
	_unit addVest (_vests call BIS_fnc_selectRandom);};

Arab={
private ["_unit","_arab","_arabF"];
	
	_unit = _this select 0;
	_arab = ["PersianHead_A3_01",
			 "PersianHead_A3_02",
			 "PersianHead_A3_03"
			 ];
	_unit setFace (_arab call BIS_fnc_selectRandom);};

InsG={
private ["_unit","_gogg"];

	_unit = _this select 0;
	_gogg = ["G_Bandanna_blk",
             "G_Bandanna_khk",
             "G_Bandanna_oli",
             "G_Bandanna_tan"
            ];
	if (isClass(configFile >> "cfgPatches" >> "SFG_Tac_Beard")) then {
	_gogg = ["SFG_Tac_BeardD",
			"SFG_Tac_BeardO",
			"SFG_Tac_smallBeardD",
			"SFG_Tac_smallBeardO"
            ];};
	_unit addGoggles (_gogg call BIS_fnc_selectRandom)};

Hats={
private ["_unit","_hat"];

	_unit = _this select 0;
	_hat = ["H_Shemag_olive",
			 "H_Shemag_khk",
			 "H_Shemag_tan",
			 "H_ShemagOpen_khk",
			 "H_ShemagOpen_tan",
			 "H_Bandanna_gry"
            ];
	removeHeadgear _unit;
	if (isClass(configFile >> "cfgPatches" >> "Taliban_fighters")) then {} else {
	_unit addHeadgear (_hat call BIS_fnc_selectRandom)};};

Gun={
private ["_unit"];

	_unit = _this select 0;
if (isClass(configFile >> "cfgPatches" >> "CUP_BaseData")) then {
	if(round(random 3)==1) then {
		_unit addBackpackGlobal "CUP_B_RPGPack_Khaki"; 
sleep 1.0;
		_unit addMagazine "RPG32_F"; _unit addMagazine "RPG32_F"; _unit addWeaponGlobal "launch_RPG32_F";};
		switch (round(random 6)) do { 
		case 0: { _unit addMagazines ["CUP_30Rnd_762x39_AK47_M", 5]; _unit addWeaponGlobal "CUP_arifle_AK47"; _unit addMagazines ["CUP_20Rnd_B_765x17_Ball_M", 3]; _unit addWeaponGlobal "CUP_hgun_SA61";}; 
		case 1: { _unit addMagazines ["CUP_30Rnd_545x39_AK_M", 5]; _unit addMagazines ["CUP_1Rnd_HE_GP25_M", 2]; _unit addWeaponGlobal "CUP_arifle_AK74_GL";}; 
		case 2: { _unit addMagazines ["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M", 3]; _unit addWeaponGlobal "CUP_lmg_PKM";}; 
		case 3: { _unit addMagazines ["CUP_30Rnd_545x39_AK_M", 5]; _unit addWeaponGlobal "CUP_arifle_AKS74";}; 
		case 4: { _unit addMagazines ["CUP_75Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M", 4]; _unit addWeaponGlobal "CUP_RPK_74";}; 
		case 5: {_unit addMagazines ["CUP_10x_303_M", 5]; _unit addWeaponGlobal "CUP_LeeEnfield";}; 
		case 6: {_unit addMagazines ["CUP_30Rnd_762x39_AK47_M", 5]; _unit addWeaponGlobal "CUP_arifle_AKM";};};
		_unit addMagazine "CUP_HandGrenade_RGO"; _unit addItem "FirstAidKit"; _unit addMagazine "SmokeShell";} else {
if(round(random 3)==1) then {
		_unit addBackpackGlobal "B_Carryall_khk"; 
sleep 1.0;
		_unit addMagazine "RPG32_F"; _unit addMagazine "RPG32_F"; _unit addWeaponGlobal "launch_RPG32_F";};
		switch (round(random 5)) do {case 0: { _unit addMagazines ["30Rnd_65x39_caseless_mag_Tracer", 5]; _unit addWeaponGlobal "arifle_MXC_Black_F"; _unit addMagazines ["30Rnd_9x21_Mag", 3]; _unit addWeaponGlobal "hgun_Rook40_F";}; 
		case 1: { _unit addMagazines ["30Rnd_556x45_Stanag_Tracer_Green", 5]; _unit addMagazines ["1Rnd_HE_Grenade_shell", 2]; _unit addWeaponGlobal "arifle_TRG21_GL_F"; }; 
		case 2: { _unit addMagazines ["200Rnd_65x39_cased_Box_Tracer", 3]; _unit addWeaponGlobal "LMG_Mk200_F";}; 
		case 3: { _unit addMagazines ["30Rnd_9x21_Mag", 6]; _unit addWeaponGlobal "hgun_PDW2000_F";}; 
		case 4: { _unit addMagazines ["30Rnd_9x21_Mag", 6]; _unit addWeaponGlobal "hgun_PDW2000_F";}; 
		case 5: {_unit addMagazines ["20Rnd_762x51_Mag", 5]; _unit addWeaponGlobal "srifle_DMR_06_olive_F"; };}; 
		_unit addMagazine "HandGrenade"; _unit addItem "FirstAidKit"; _unit addMagazine "SmokeShell";};
sleep 1.0;};

ask={
	private ["_unit"];
	_unit = _this select 0;
	
	if(isNull _unit) exitWith {};
	if (!alive _unit) then {
		_unit removeAction 0;} else {
			if(random 10 < 0.5) then {
				_unit removeAction 0; player groupChat "A local has given us intel."; call createIntel; call pickedUpIntel;
					} else {
						_unit removeAction 0; titleText ["He doesn't know anything.","PLAIN DOWN"];
						};
					};
				};
Loc_addAction={
	private["_unit","_screenMsg","_scriptToCall"];
	_unit = _this select 0;
	_screenMsg = _this select 1;
	_scriptToCall = _this select 2;
	
	if(isNull _unit) exitWith {};
	_unit addAction [_screenMsg,_scriptToCall];};
enableSaving [false, false];
enableTeamswitch false;
if (isClass(configFile>>"CfgPatches">>"TPW_MODS")) then {
	systemChat "!: You are running TPW MODS";
		endMission "END2";};

#include "core\modules\cacheScript\functions\functions.sqf"
#include "core\modules\cacheScript\functions\cacheFunctions.sqf"
#include "core\modules\cacheScript\functions\KRON_Strings.sqf"
#include "eos\functions\fnc.sqf"
#ifndef execNow
#define execNow call compile preprocessfilelinenumbers
#endif
execNow "init-tfar.sqf";
execNow "core\init.sqf";
execNow "init-2.sqf";
//ACE support is untested and may not work properly
if (isClass(configFile >> "cfgPatches" >> "ace_common")) then {
	activateAddons ["ace_advanced_ballistics","ace_ai","ace_aircraft","ace_apl","ace_atragmx","ace_attach","ace_backpacks","ace_ballistics","ace_captives","ace_cargo","ace_common","ace_concertina_wire","ace_dagr","ace_difficulties","ace_disarming","ace_disposable","ace_dragging","ace_explosives","ace_fcs","ace_finger","ace_flashlights","ace_flashsuppressors","ace_fonts","ace_frag","ace_gforces","ace_goggles","ace_grenades","ace_hearing","ace_hitreactions","ace_huntir","ace_interact_menu","ace_interaction","ace_inventory","ace_javelin","ace_kestrel4500","ace_laser","ace_laser_selfdesignate","ace_laserpointer","ace_logistics_uavbattery","ace_logistics_wirecutter","ace_magazinerepack","ace_main","ace_map","ace_maptools","ace_markers","ace_medical","ace_medical_menu","ace_microdagr","ace_missileguidance","ace_missionmodules","ace_mk6mortar","ace_modules","ace_movement","ace_mx2a","ace_nametags","ace_nightvision","ace_noidle","ace_noradio","ace_norearm","ace_optics","ace_optionsmenu","ace_overheating","ace_overpressure","ace_parachute","ace_ragdolls","ace_rangecard","ace_realisticnames","ace_recoil","ace_reload","ace_reloadlaunchers","ace_repair","ace_respawn","ace_safemode","ace_sandbag","ace_scopes","ace_sitting","ace_slideshow","ace_smallarms","ace_spectator","ace_spottingscope","ace_switchunits","ace_tacticalladder","ace_thermals","ace_tripod","ace_ui","ace_vector","ace_vehiclelock","ace_vehicles","ace_viewdistance","ace_weaponselect","ace_weather","ace_winddeflection","ace_yardage450","ace_zeus"];};

if (isClass(configFile >> "cfgPatches" >> "Taliban_fighters")) then {
	activateAddons ["Taliban_Fighters"];};
//CUP support still has RPT spam but functions fine
if (isClass(configFile >> "cfgPatches" >> "CUP_BaseConfigs")) then {
	activateAddons ["CUP_BaseConfigs","CUP_BaseData","CUP_Weapons_AA12","CUP_Weapons_AK","CUP_Weapons_AmmoBoxes","CUP_Weapons_Ammunition","CUP_Weapons_AS50","CUP_Weapons_AWM","CUP_Weapons_Backpacks","CUP_Weapons_Bizon","CUP_Weapons_Colt1911","CUP_Weapons_Compact","CUP_Weapons_Compatibility","CUP_Weapons_Curator","CUP_Weapons_CZ750","CUP_Weapons_CZ805","CUP_Weapons_DMR","CUP_Weapons_Duty","CUP_Weapons_East_Attachments","CUP_Weapons_Evo","CUP_Weapons_FNFAL","CUP_Weapons_G36","CUP_Weapons_Glock17","CUP_Weapons_GrenadeLaunchers","CUP_Weapons_Grenades","CUP_Weapons_Huntingrifle","CUP_Weapons_Igla","CUP_Weapons_Items","CUP_Weapons_Javelin","CUP_Weapons_KSVK","CUP_Weapons_L7A2","CUP_Weapons_L85","CUP_Weapons_L110","CUP_Weapons_LeeEnfield","CUP_Weapons_M9","CUP_Weapons_M14","CUP_Weapons_M16","CUP_Weapons_M24","CUP_Weapons_M47","CUP_Weapons_M60E4","CUP_Weapons_M107","CUP_Weapons_M110","CUP_Weapons_M136","CUP_Weapons_M240","CUP_Weapons_M249","CUP_Weapons_M1014","CUP_Weapons_MAAWS","CUP_Weapons_Makarov","CUP_Weapons_Metis_AT_13","CUP_Weapons_MicroUZI","CUP_Weapons_Mk48","CUP_Weapons_MP5","CUP_Weapons_NLAW","CUP_Weapons_PB_6P9","CUP_Weapons_Phantom","CUP_Weapons_PK","CUP_Weapons_Pods","CUP_Weapons_Put","CUP_Weapons_Revolver","CUP_Weapons_RPG7","CUP_Weapons_RPG18","CUP_Weapons_SA58","CUP_Weapons_SA61","CUP_Weapons_Saiga12K","CUP_Weapons_SCAR","CUP_Weapons_SMAW","CUP_Weapons_Stinger","CUP_Weapons_Strela_2","CUP_Weapons_SVD","CUP_Weapons_UK59","CUP_Weapons_VehicleWeapons","CUP_Weapons_VSS","CUP_Weapons_WeaponsCore","CUP_Weapons_WeaponsData","CUP_Weapons_West_Attachments","CUP_Weapons_XM8"];};

if (isClass(configFile >> "cfgPatches" >> "SFG_Tac_Beard")) then {
	activateAddons ["beard","beardasorted","beardsmall"];};

if (!isDedicated && hasInterface) then {
	waitUntil {time>1};
	execNow "intro.sqf";};
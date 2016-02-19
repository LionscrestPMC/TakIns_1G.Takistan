if (isClass(configFile>>"CfgPatches">>"task_force_radio")) then {
	activateAddons ["task_force_radio","task_force_radio_items"];};
if (isClass(configFile >> "cfgPatches" >> "CUP_BaseConfigs")) then {
	activateAddons ["CUP_BaseConfigs","CUP_BaseData","CUP_Weapons_AA12","CUP_Weapons_AK","CUP_Weapons_AmmoBoxes","CUP_Weapons_Ammunition","CUP_Weapons_AS50","CUP_Weapons_AWM","CUP_Weapons_Backpacks","CUP_Weapons_Bizon","CUP_Weapons_Colt1911","CUP_Weapons_Compact","CUP_Weapons_Compatibility","CUP_Weapons_Curator","CUP_Weapons_CZ750","CUP_Weapons_CZ805","CUP_Weapons_DMR","CUP_Weapons_Duty","CUP_Weapons_East_Attachments","CUP_Weapons_Evo","CUP_Weapons_FNFAL","CUP_Weapons_G36","CUP_Weapons_Glock17","CUP_Weapons_GrenadeLaunchers","CUP_Weapons_Grenades","CUP_Weapons_Huntingrifle","CUP_Weapons_Igla","CUP_Weapons_Items","CUP_Weapons_Javelin","CUP_Weapons_KSVK","CUP_Weapons_L7A2","CUP_Weapons_L85","CUP_Weapons_L110","CUP_Weapons_LeeEnfield","CUP_Weapons_M9","CUP_Weapons_M14","CUP_Weapons_M16","CUP_Weapons_M24","CUP_Weapons_M47","CUP_Weapons_M60E4","CUP_Weapons_M107","CUP_Weapons_M110","CUP_Weapons_M136","CUP_Weapons_M240","CUP_Weapons_M249","CUP_Weapons_M1014","CUP_Weapons_MAAWS","CUP_Weapons_Makarov","CUP_Weapons_Metis_AT_13","CUP_Weapons_MicroUZI","CUP_Weapons_Mk48","CUP_Weapons_MP5","CUP_Weapons_NLAW","CUP_Weapons_PB_6P9","CUP_Weapons_Phantom","CUP_Weapons_PK","CUP_Weapons_Pods","CUP_Weapons_Put","CUP_Weapons_Revolver","CUP_Weapons_RPG7","CUP_Weapons_RPG18","CUP_Weapons_SA58","CUP_Weapons_SA61","CUP_Weapons_Saiga12K","CUP_Weapons_SCAR","CUP_Weapons_SMAW","CUP_Weapons_Stinger","CUP_Weapons_Strela_2","CUP_Weapons_SVD","CUP_Weapons_UK59","CUP_Weapons_VehicleWeapons","CUP_Weapons_VSS","CUP_Weapons_WeaponsCore","CUP_Weapons_WeaponsData","CUP_Weapons_West_Attachments","CUP_Weapons_XM8"];};
call compile preprocessFileLineNumbers "map.sqf";
	_rDir = random 359;
	5400 setWindForce 0.5;
	5400 setGusts 0.3;
	5400 setWindStr 0.3;
	5400 setWindDir _rDir;
if (!isClass(configFile >> "cfgPatches" >> "ace_common")) then {
execVM "common\server\BWS\bulletWindServer.sqf";
execVM "common\server\BWS\serverSync.sqf";};
civilian setfriend [west,1];
civilian setfriend [east,1];
civilian setfriend [independent,1];
civilian setfriend [Resistance,1];
west setfriend [civilian,1];
east setfriend [civilian,1];
independent setfriend [civilian,1];
Resistance setfriend [civilian,1];
if(isDedicated) then {
	waitUntil{time>1};
	setTerrainGrid 50;};
	
	
	
["Initialize"] call BIS_fnc_dynamicGroups;
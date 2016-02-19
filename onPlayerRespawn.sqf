player setVariable ["BIS_noCoreConversations", true];
enableSentences false;
player disableConversation true;
player setSpeaker "NoVoice";

if((!isClass(configFile >> "cfgPatches" >> "ace_common")) &&
	{!isClass(configFile >> "cfgPatches" >> "DRI_nofatigue")}) then {
		[] execVM 'common\client\Fatigue.sqf';};

if(player == P4) then {
		null = [P4, 700, true, -1] execVM "common\client\CAS\addAction.sqf";} else {};
	
if(player == P5) then {
		P5 removeWeapon "MMG_02_sand_RCO_LP_F"; P9 addWeapon "MMG_02_black_F";} else {};
	
if(player == P9) then {
		P9 removeWeapon "MMG_02_sand_RCO_LP_F"; P9 addWeapon "MMG_02_black_F";} else {};

if(player == P17) then {
		P17 removeWeapon "MMG_02_sand_RCO_LP_F"; P17 addWeapon "MMG_02_black_F";} else {};
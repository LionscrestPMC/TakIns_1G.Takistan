call compile preprocessFileLineNumbers "map.sqf";
_viewDistance=paramsArray select 3;
_noGrass=paramsArray select 4;
setViewDistance _viewDistance;
setObjectViewDistance _viewDistance;
setTerrainGrid _noGrass;
player setVariable ["BIS_noCoreConversations", true];
enableSentences false;
player disableConversation true;
player setSpeaker "NoVoice";
commandStop (units player);
//"colorCorrections" ppEffectEnable true; 
//"colorCorrections" ppEffectAdjust [0.9, 1, 0, [0.1, 0.1, 0.1, -0.1], [1, 1, 0.8, 0.528], [1, 0.2, 0, 0]]; 
//"colorCorrections" ppEffectCommit 0;
execVM "info.sqf";
	if(!isClass(configFile >> "cfgPatches" >> "ace_common")) then {
		TCB_AIS_PATH = "common\client\ais_injury\";
		{[_x] call compile preprocessFile (TCB_AIS_PATH+"init_ais.sqf")} forEach (if (isMultiplayer) then {
		playableUnits} else {switchableUnits});
sleep 10.0;
	[true,[true,true,true,true],[0,true,true],[[1000],true,true]]execVM "common\client\vip_lit\vip_lit_init.sqf";
	execVM "common\server\BWS\bulletWindClient.sqf";};
if((!isClass(configFile >> "cfgPatches" >> "ace_common")) &&
{!isClass(configFile >> "cfgPatches" >> "DRI_nofatigue")}) then {
	[] execVM 'common\client\Fatigue.sqf';};
	
	
//Arma 3 Dynamic Grup Manager
["InitializePlayer",[player]] call BIS_fnc_dynamicGroups;
[] spawn {
	sleep 10;
	hintSilent 'Press U to open Group Manager';
};
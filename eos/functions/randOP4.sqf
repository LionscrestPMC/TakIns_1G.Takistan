waitUntil {!isNil "bis_fnc_init"};
_unit = _this select 0;

if (side _unit == East) then {
sleep 7.5;
	removeBackpack _unit; removeAllItemsWithMagazines _unit; removeAllWeapons _unit;
	_unit unassignItem "NVGoggles_OPFOR";
	_unit removeItem "NVGoggles_OPFOR";
	[_unit] call Hats;
sleep 3.0;
	[_unit] call InsU;
	[_unit] call InsV;
	[_unit] call InsG;
sleep 1.0;
	[_unit] call Gun;
sleep 8.5;
	_unit enableSimulationGlobal true;
	_unit enableAI "ANIM";
sleep 5.0;
	_unit enableAI "FSM"; 
sleep 5.0;
	_unit enableAI "MOVE";
sleep 1.5;
	_unit enableAI "SUPPRESSION";
sleep 1.5;
	_unit enableAI "AIMINGERROR";
sleep 1.5;
	_unit enableAI "TARGET";
sleep 1.0;
	_unit enableAI "AUTOTARGET";
if(round(random 2)==1) then { _unit addPrimaryWeaponItem "acc_flashlight";};
};

if (side _unit == Civilian) then {
sleep 1.0;
	removeBackpack _unit;
	removeGoggles _unit;
	[_unit] call Hats;
sleep 3.0;
	[_unit] call Arab;
	[_unit] call InsU;
	[_unit] call InsG;
sleep 8.0;
	_unit enableSimulationGlobal true;
	_unit enableAI "ANIM";
sleep 5.0;
	_unit enableAI "FSM"; 
sleep 5.0;
	_unit enableAI "MOVE";
	null=[_unit]execVM "eos\functions\ask.sqf";
sleep 1.5;
	_unit enableAI "SUPPRESSION";
sleep 1.5;
	_unit enableAI "TARGET";
sleep 1.5;
	_unit enableAI "AUTOTARGET";};
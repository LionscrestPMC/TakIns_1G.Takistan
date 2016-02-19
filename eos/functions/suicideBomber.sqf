_bomber = _this select 0;
_targetSide = _this select 1;
_explosiveClass = _this select 2;
private ["_target","_runCode","_info","_expl1","_expl2","_expl3"];

_info = [_bomber,_targetSide,_explosiveClass];
_runCode = 1;

	while {alive _bomber && _runCode==1} do {
		_nearUnits = nearestObjects [_bomber,["CAManBase"],150];
		_nearUnits = _nearUnits - [_bomber];
		
		{
			if(!(side _x in _targetSide)) then {_nearUnits = _nearUnits - [_x];};
		} forEach _nearUnits;
				
		if(count _nearUnits != 0) then
		{
	
			_target = _nearUnits select (floor random count _nearUnits);
			
			_pos = position _target;
			_bomber doMove _pos;
		
			while {_bomber distance _pos > 30} do {
				_pos = position _target;
				_bomber doMove _pos;
sleep 3;	
			};
			
			if( _bomber distance _pos < 30) then {
			
				_pos = position _target;
				_bomber doMove _pos;
				
				_bomber removeAction 0;
				_bomber SetUnitPos "UP";
				_bomber SetBehaviour "AWARE";
				_bomber SetSpeedMode "FULL";
				_bomber SetCombatMode "RED";
				_bomber disableAI "SUPPRESSION";
				_bomber disableAI "FSM";
				
				_expl1 = "DemoCharge_Remote_Ammo" createVehicle position _bomber;
				_expl1 attachTo [_bomber, [-0.1, 0.1, 0.15], "Pelvis"];
				_expl1 setVectorDirAndUp [ [0.5, 0.5, 0], [-0.5, 0.5, 0] ];
				_expl2 = "DemoCharge_Remote_Ammo" createVehicle position _bomber;
				_expl2 attachTo [_bomber, [0, 0.15, 0.15], "Pelvis"];
				_expl2 setVectorDirAndUp [ [1, 0, 0], [0, 1, 0] ];
				_expl3 = "DemoCharge_Remote_Ammo" createVehicle position _bomber;
				_expl3 attachTo [_bomber, [0.1, 0.1, 0.15], "Pelvis"];
				_expl3 setVectorDirAndUp [ [0.5, -0.5, 0], [0.5, 0.5, 0] ];
				
				_bomber addVest "V_Chestrig_blk";
				_bomber addMagazines ["DemoCharge_Remote_Mag",3];
			};
			
			while {_bomber distance _pos > 5} do {
				_pos = position _target;
				_bomber doMove _pos;
sleep 3;	
			};
			
			if( _bomber distance _pos < 5) then 
			{
				_runCode = 0;
			
				[[_bomber, "shout"], "ia_say"] call bis_fnc_MP;
sleep (1+random 2);
				
				if (alive _bomber) then {
					detach _expl1;
					detach _expl2;
					detach _expl3;
					deleteVehicle _expl1;
					deleteVehicle _expl2;
					deleteVehicle _expl3;
					_explosive = _explosiveClass createVehicle (position _bomber);
					_bomber setDamage 1;
					_bomber removeMagazines "DemoCharge_Remote_Mag";
				};
			};
		};
sleep 5;
	};
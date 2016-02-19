_grp=(_this select 0);
_skillArray=(_this select 1);					
					
	_skillset = server getvariable _skillArray;
	
	{
		_unit = _x;
		{
		_skillvalue = (_skillset select _forEachIndex) + (random 0.2) - (random 0.2);
		_unit setSkill [_x,_skillvalue];
		} forEach ['aimingAccuracy','aimingShake','aimingSpeed','spotDistance','spotTime','courage','reloadSpeed','commanding','general'];
		if (EOS_DAMAGE_MULTIPLIER != 1) then {
		_unit removeAllEventHandlers "HandleDamage";_unit addEventHandler ["HandleDamage",{_damage = (_this select 2)*EOS_DAMAGE_MULTIPLIER;_damage}];
		[_unit] execVM "eos\functions\randOP4.sqf";};
			
			if (side _unit != civilian) then {
			if (random 1 < 0.03) then {
			_unit addEventHandler ["killed", "null=[_this] execVM ""core\modules\cacheScript\IntelCase.sqf"""];};
		} else {
			if (_unit isKindOf "Animal") then {
			} else {
				if (random 1 < 0.02) then {
				null=[_unit,[WEST],"M_Mo_82mm_AT_LG"] execVM "eos\functions\suicideBomber.sqf";
				} else {
				if (random 1 < 0.15) then {
					if (isClass(configFile >> "cfgPatches" >> "CUP_BaseData")) then {
				null = [_unit,"",100,25,west,1,0.3] execVM "eos\functions\civRogueCUP.sqf";} else {
					null = [_unit,"",100,25,west,1,0.3] execVM "eos\functions\civRogue.sqf";};
				};
			};
		};
	};	
} forEach (units _grp);
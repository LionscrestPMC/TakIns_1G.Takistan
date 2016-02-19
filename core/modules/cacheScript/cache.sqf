/**********************************************************************************************
*      /\__  _\                                                                                       
*      \/_/\ \/     ___     ____  __  __  _ __    __      __    ___     ___   __  __                  
*  _______\ \ \   /' _ `\  /',__\/\ \/\ \/\`'__\/'_ `\  /'__`\/' _ `\  /'___\/\ \/\ \  _______        
* /\______\\_\ \__/\ \/\ \/\__, `\ \ \_\ \ \ \//\ \L\ \/\  __//\ \/\ \/\ \__/\ \ \_\ \/\______\       
* \/______//\_____\ \_\ \_\/\____/\ \____/\ \_\\ \____ \ \____\ \_\ \_\ \____\\/`____ \/______/       
*          \/_____/\/_/\/_/\/___/  \/___/  \/_/ \/___L\ \/____/\/_/\/_/\/____/ `/___/> \              
*                                                 /\____/                         /\___/              
*                                                 \_/__/                          \/__/     
*
* Insurgency ALiVE by Mphillips'Hazey' + Sacha Ligthert
* File Modified on: 7/31/2014
*
*
* Special Thanks:
*
* ArmA Tactical Combat Applications Group - Tactical Realism http://www.ATCAG.enjin.com
* Tangodown - Tactical Gaming Community http://www.tangodown.nl/
* Whiskey Company - Tactical Realism http://www.TheWhiskeyCo.com/
***********************************************************************************************/

if (isServer || isDedicated) then {
	private ["_markers","_x","_randomMarker","_dist","_pos","_m","_decrease","_wait","_cacheBuildings","_targetBuilding","_cachePosition","_string"];
	
    INS_marker_array = [];
	publicVariable "INS_marker_array";
	INS_west_score = 0;
	publicVariable "INS_west_score";
	
    INS_fncache = {
        if (typeName _this == "ARRAY") then {
			cache = _this select 0;
            cache spawn {sleep 60; deleteVehicle _this};
            _killer = _this select 1;


			switch (side _killer) do {
                case WEST: {
					INS_west_score = INS_west_score + 1;
					publicVariable "INS_west_score";
					_this call cacheKilled;
				};
				case EAST: {
					INS_west_score = INS_west_score + 1;
					publicVariable "INS_west_score";
					_this call cacheKilled;
				};
				case RESISTANCE: {
					INS_west_score = INS_west_score + 1;
					publicVariable "INS_west_score";
					_this call cacheKilled;
				};
				case CIVILIAN: {
					INS_west_score = INS_west_score + 1;
					publicVariable "INS_west_score";
					_this call cacheKilled;
				};
                default {
					_this call cacheFake;
				};
            };
        };
		    
		if (count INS_marker_array > 0) then {
			{deleteMarker _x} forEach INS_marker_array};
		publicVariable "INS_marker_array";

		_cities = call SL_fnc_markersAreas;
		_cacheTown = _cities call BIS_fnc_selectRandom;
		
		//Ponemos las caracteristicas.
		_cityPos = markerPos _cacheTown;
		diag_log format["Posición marcador: %1", _cityPos];
		_cityRadA = markerSize _cacheTown select 0;
		diag_log format["Tamano A marcador: %1", _cityRadA];
		_cityRadB = markerSize _cacheTown select 1;
		diag_log format["Tamano B marcador: %1", _cityRadB];
		
		if(_cityRadB > _cityRadA) then {
			_cityRadA = _cityRadB;
		};
		

		_cacheBuildings = [_cityPos,_cityRadA] call SL_fnc_findBuildings;
				

		while {count _cacheBuildings == 0} do
		{
			sleep 2;
			diag_log format["Error marcador: %1", count _cacheBuildings];
	
			_cities = call SL_fnc_markersAreas;
			

			_cacheTown = _cities call BIS_fnc_selectRandom;
			

			_cityPos = markerPos _cacheTown;
			_cityRadA = markerSize _cacheTown select 0;
			_cityRadB = markerSize _cacheTown select 1;
			
			if(_cityRadB > _cityRadA) then {
				_cityRadA = _cityRadB;
			};


			_cacheBuildings = [_cityPos,_cityRadA] call SL_fnc_findBuildings;
		};
		
		// Pull the array and select a random building from it.
		_targetBuilding = _cacheBuildings select (random((count _cacheBuildings)-1));
	
		// Take the random building from the above result and pass it through gRBP function to get a single cache position
		_cachePosition = [_targetBuilding] call SL_fnc_RandomBuildingPosition;
		
// Create the cache at the random marker position
		cache = createVehicle ["Box_FIA_Wps_F", _cachePosition, [], 0, "None"];
		clearItemCargoGlobal cache;
// Add event handlers to the cache
		cache addEventHandler ["handleDamage", { 
			if ((_this select 4) == "SatchelCharge_Remote_Mag") then { 
				cache setDamage 1 
			} else {
				if ((_this select 4) == "DemoCharge_Remote_Mag") then {
					cache setDamage 1
				} else {
					cache setDamage 0
				};
			};
		}];
        
		cache addMPEventHandler ["MPKilled", {_this spawn INS_fncache}];
		
		// Move the Cache to the above select position
		cache setPos _cachePosition;
		publicVariable "cache";

		if (INS_west_score == (paramsArray select 1)) then {
			end_title = {titleText["!All caches have been destroyed!", "PLAIN"];};
			[nil, "end_title", nil, true] spawn BIS_fnc_MP;
			sleep 20;
			endMission "END1";
		};
		
		if (!isMultiplayer) then {
            //debug to see where box spawned is if not multiplayer
            _m = createMarker [format ["box%1",random 1000],getposATL cache];
            _m setMarkerShape "ICON"; 
            _m setMarkerType "mil_dot";
            _m setMarkerColor "ColorRed";
		};
    };
    true spawn INS_fncache;
};
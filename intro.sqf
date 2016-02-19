
/*
if(isDedicated) exitWith{};
/***************INTRO************/
/*
if (hasInterface) then {
	private ["_cam","_camx","_camy","_camz","_object"];
	
	titleText ["T A K I S T A N   I N S U R G E N C Y", "BLACK IN",9999];

	playSound "introMusic";

	waituntil {!(isnull player)};
	sleep 1.0;
	
	_object = sphereobject;
	_camx = getposATL _object select 0;
	_camy = getposATL _object select 1;
	_camz = getposATL _object select 2;
	
	_cam = "camera" CamCreate [_camx -1 ,_camy + 0,_camz+0];
	
	_cam CamSetTarget _object;
	_cam CameraEffect ["Internal","Back"];
	_cam CamCommit 0;
	
	//_cam camsetpos [_camx - 0 ,_camy + 0,_camz+0];
	//_cam CamCommit 0;
	sleep 3.5;
	
	titleText ["Eliminate Taliban rebels and find intel to destroy caches in red grid squares.", "BLACK IN",10];
		
	sleep 11;
			
	_cam CameraEffect ["Terminate","Back"];
	CamDestroy _cam;

	sleep 10;
	["ArmA Tactical","Combat Applications Group"] call BIS_fnc_infoText;
};
*/
/********************************/


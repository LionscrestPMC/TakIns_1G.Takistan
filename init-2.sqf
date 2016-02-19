[] spawn {call compile preprocessFileLineNumbers "common\server\EPD\Ied_Init.sqf";};
ghst_civcars= [(getmarkerpos "NW"),2000,15,true,false,WEST] execVM "common\server\ghst_civcars.sqf";
ghst_civcars= [(getmarkerpos "NE"),2000,15,true,false,WEST] execVM "common\server\ghst_civcars.sqf";
ghst_civcars= [(getmarkerpos "SW"),2000,15,true,false,WEST] execVM "common\server\ghst_civcars.sqf";
ghst_civcars= [(getmarkerpos "SE"),2000,15,true,false,WEST] execVM "common\server\ghst_civcars.sqf";
null=[] execVM "eos\OpenMe.sqf";
null=[] execVM "cos\cosInit.sqf";
null=[] execVM "common\server\ctp\ctp.sqf";
null=[] execVM "common\server\cleanup\init.sqf";

null=[[AIRBASE],WEST,true,75] execVM "common\client\BRS\BRS_launch.sqf";
null=[] execVM "common\client\CAS\initCAS.sqf";

	if(!isClass(configFile >> "cfgPatches" >> "ace_common")) then {
null=[] execVM "common\client\repair.sqf";
null=[] execVM "common\client\fastRope.sqf";};
ia_say = compileFinal "_this select 0 say3d (_this select 1);";
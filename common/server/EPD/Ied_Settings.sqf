/***************SETTINGS***********************/
EPD_IED_debug = false;
hideIedSectionMarkers = true;  //sets the alpha to 0 after spawning IEDs at a section
hideSafeZoneMarkers = true;  //sets the alpha to 0 of a safezone

itemsRequiredToDisarm = ["MineDetector","ToolKit"];   //"MineDetector" or "ToolKit" for example
betterDisarmers = ["B_soldier_exp_F", "B_engineer_F", "B_diver_exp_F", "B_recon_exp_F"]; // people who are better at disarming

baseDisarmChance = 60; //how well everybody can disarm
bonusDisarmChance = 25; //increase that the "betterDisarmers" get

secondaryChance = 50; //Chance that a secondary IED will spawn.

smallChance = 40; //Chance that a small IED will be chosen.
mediumChance = 40; //Chance that a medium IED will be chosen.
largeChance = 20; //Chance that a large IED will be chosen.

iedSecondaryItems = ["Land_FMradio_F","Land_SurvivalRadio_F","Land_Suitcase_F","Land_CarBattery_02_F","Land_CarBattery_01_F"];

iedSmallItems = ["Land_Pallets_F","Land_WheelCart_F","Land_Tyre_F","Land_ButaneCanister_F","Land_Bucket_F","Land_GasCanister_F"];
	
iedMediumItems = ["Land_Portable_generator_F","Land_WoodenBox_F","Land_MetalBarrel_F","Land_BarrelTrash_grey_F","Land_Sacks_heap_F","Land_Wreck_HMMWV_F","Land_Wreck_Hunter_F","Land_Wreck_UAZ_F","Land_Wreck_Ural_F","Land_GarbageBags_F","Land_GarbagePallet_F","Land_Tyres_F","Land_Wreck_Skodovka_F","Land_Wreck_Car_F","Land_Wreck_Car3_F","Land_Wreck_Car2_F","Land_Wreck_Offroad_F","Land_Wreck_Offroad2_F"];
	
iedLargeItems = ["Land_Wreck_HMMWV_F","Land_Wreck_Hunter_F","Land_Wreck_BMP2_F","Land_Wreck_BRDM2_F","Land_Wreck_T72_hull_F","Land_Wreck_UAZ_F","Land_Wreck_Ural_F","Land_GarbageWashingMachine_F","Land_JunkPile_F","Land_Wreck_Skodovka_F","Land_Wreck_Car_F","Land_Wreck_Car3_F","Land_Wreck_Car2_F","Land_Wreck_Offroad_F","Land_Wreck_Offroad2_F"];

//If you want to use locations without making markers on the map, define them here. Altis has been provided as an example. ***THESE ARE NOT WHERE THE ACTUAL IEDS ARE SPAWNED***
//["Name",[LocationX,LocationY,LocationZ],size]
predefinedLocations = [];

iedPredefinedLocationsSize = count predefinedLocations;

/***************EXPERIMENTAL***********************/
// This is still being worked on and may contain bugs, please report them on the forums.
allowExplosiveToTriggerIEDs = true; 

/***************END EXPERIMENTAL*******************/


//These are the actual IEDs that will spawn. Add them using one of the following formats.
//mapLocations must have their type defined as one of "NameCityCapital","NameCity","NameVillage", "NameLocal"
//["All", side]
//["AllCities", side]
//["AllVillages", side]
//["AllLocals", side]
//["mapLocation", side]
//["mapLocation", amountToPlace, side];
//["mapLocation", iedsToPlace, fakesToPlace, side]
//["mapLocation", amountToPlace, [fakeChance, smallIedChance, mediumIedChance, largeIedChance], side]
//["predefinedLocation", side]
//["predefinedLocation", amountToPlace, side];
//["predefinedLocation", iedsToPlace, fakesToPlace, side]
//["predefinedLocation", amountToPlace, [fakeChance, smallIedChance, mediumIedChance, largeIedChance], side]
/*********Marker size > 1**********************/
//["marker", amountToPlace, [fakeChance, smallIedChance, mediumIedChance, largeIedChance], side]
//["marker", iedsToPlace, fakesToPlace, side]
//["marker", amountToPlace, side]
//["marker", side]
/*********Marker size = 1**********************/
//["marker", side]
//["marker", chanceToBeReal, side]
//["marker", [fakeChance, smallIedChance, mediumIedChance, largeIedChance] , side]

//The side can be a single side, or an array of sides
//Ex. "West"   or ["West,"East"]
//http://community.bistudio.com/wiki/side

iedInitialArray = [
	["RandomIED1_Marker",4,1,"West"],
	["RandomIED2_Marker",4,1,"West"],
	["RandomIED3_Marker",5,2,"West"],
	["RandomIED4_Marker",5,2,"West"],
	["RandomIED5_Marker",5,2,"West"],
	["RandomIED6_Marker",5,2,"West"],
	["RandomIED7_Marker",5,2,"West"],
	["RandomIED8_Marker",5,2,"West"],
	["RandomIED9_Marker",5,2,"West"]
	];
	
//Place the mapLocations, predefinedLocations, and markerNames of places you don't want any IEDs spawning
iedSafeZones = [];
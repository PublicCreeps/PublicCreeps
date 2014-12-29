/*
	File: fn_spawnPointCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for available spawn points depending on the units side.
	
	Return:
	[Spawn Marker,Spawn Name,Image Path]
*/
private["_side","_return"];
_side = [_this,0,civilian,[civilian]] call BIS_fnc_param;

//Spawn Marker, Spawn Name, PathToImage
switch (_side) do
{
	case west:
	{
		_return = [
			["cop_spawn_1","Kavala Hauptwache","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["cop_spawn_2","Wache Pyrgos","\a3\ui_f\data\map\MapControl\fuelstation_ca.paa"],
			["cop_spawn_3","Wache Athira","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
			["cop_spawn_4","Flughafenpolizei","\a3\ui_f\data\map\Markers\NATO\b_air.paa"],
			["cop_spawn_5","Wache Sofia","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"]
		];
	};
	
	case civilian:
	{
		_return = [
			["civ_spawn_1","Kavala","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_2","Pyrgos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_3","Athira","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_4","Sofia","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
		]; 


		if(license_civ_rebel) then {
		_return = _return + [
					["reb_spawn_3","Rebellen HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["reb_spawn_1","Rebellencamp Yankee","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["reb_spawn_2","Rebellencamp Sierra","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
				];
		};


		// Hanibal,Trueman, Fusion, Kakashi, Bl4ckBlizzard, Huckleberry
		if((getPlayerUID player) in ["76561198156988496","76561198082110258","76561198074836008","76561198120404669","76561198104296905","76561198111840267"])then {
			_return = _return + [
							["asg_spawn","ASA HQ","\a3\ui_f\data\map\Markers\NATO\b_air.paa"]
						  ];
		};
		
		if(count life_houses > 0) then {
			{
				_pos = call compile format["%1",_x select 0];
				_house = nearestBuilding _pos;
				_houseName = getText(configFile >> "CfgVehicles" >> (typeOf _house) >> "displayName");
				
				_return pushBack [format["house_%1",_house getVariable "uid"],_houseName,"\a3\ui_f\data\map\MapControl\lighthouse_ca.paa"];
			} foreach life_houses;
		};	
	};
	
	case independent: {
		_return = [
			["medic_spawn_1","Kavala Krankenhaus","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_2","Athira","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_4","Sofia","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_3","Pygros","\a3\ui_f\data\map\MapControl\hospital_ca.paa"]
		];
	};
	
	case east: {
		_return = [
			["asa_spawn_1","ASA Hauptquartier","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["asa_spawn_2","Kavala","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["asa_spawn_3","Pyrgos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["asa_spawn_4","Athira","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["asa_spawn_5","Sophia","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
        ];
	}; 
};

_return;
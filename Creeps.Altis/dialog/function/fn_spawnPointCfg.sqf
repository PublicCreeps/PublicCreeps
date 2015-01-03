#include <macro.h>
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
			["cop_spawn_5","Wache Sofia","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
			["cop_spawn_6","Übung Nord","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
			["cop_spawn_7","Übung Süd","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"]
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
		
		if(license_civ_asa) then {
		_return = _return + [
					["asa_spawn_1","ASA HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
				];
		};
		
		if(license_civ_adac) then {
		_return = _return + [
					["adac_spawn_1","ADAC Kavala","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["adac_spawn_2","ADAC Mitte","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
				];
		};
		
		if(__GETC__(life_donator) == 1) then 
		{
					_return = _return + [
					["donator_spawn_1","Kavala Premiumshop","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["donator_spawn_2","Pyrgos Premiumshop","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
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
};

_return;
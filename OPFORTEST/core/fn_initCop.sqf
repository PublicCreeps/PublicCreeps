#include <macro.h>
/*
	File: fn_initCop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Cop Initialization file.
*/
player addRating 9999999;
waitUntil {!(isNull (findDisplay 46))};
[] spawn life_fnc_copMarkers;

if(life_blacklisted) exitWith
{
	endMission "Loser";
};

switch (true) do
{
	case (str(player) in ["Fed_1","Fed_2","Fed_3","Fed_4","Fed_5","_Fed_6"]):
	{
		if(__GETC__(life_adminlevel) < 1)then {endMission "Loser"; } else
		{
			private["_handle"];
			//_handle = player execVM "core\client\fed_init.sqf";
			//waitUntil{scriptDone _handle};
		};
	};
	
///////////////////////////////////MAATTIII////////////////////////////////////////////////	case (!(str(player) in ["cop_1","cop_2","cop_3","cop_4"])):
	case (!(str(player) in ["cop_nil"])):
	{
		switch (true) do
		{
			case(__GETC__(life_coplevel) > 0) : {}; // Do nothing
			case (__GETC__(life_adminlevel) > 0) : {}; //Do nothing
			default {endMission "Loser";};
		};
	};
};
//////////////MATIII////////////////
player setVariable["coplevel", __GETC__(life_coplevel), true]; // Rang Anzeige
life_fms_group = "Police";
[] call life_fnc_spawnMenu;
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.

license_civ_dive = true;

[] spawn
{
	while {true} do
	{
		waitUntil {uniform player == "U_Rangemaster"};
		player setObjectTextureGlobal [0,"textures\Polizei_beamter.paa"];
		waitUntil {uniform player != "U_Rangemaster"};
	};
};
[] spawn
{
	while {true} do
	{
		waitUntil {uniform player == "U_B_CombatUniform_mcam"};
		player setObjectTextureGlobal [0,"textures\polizei_2.paa"];
		waitUntil {uniform player != "U_B_CombatUniform_mcam"};
	};
};
[] spawn
{
	while {true} do
	{
		waitUntil {uniform player == "U_B_CombatUniform_mcam_worn"};
		player setObjectTextureGlobal [0,"textures\cop_uniform.jpg"];
		waitUntil {uniform player != "U_B_CombatUniform_mcam_worn"};
	};
};
[] spawn
{
    while {true} do
    {
        waitUntil {backpack player == "B_Kitbag_mcamo"};
        (unitbackpack player) setObjectTextureGlobal [0,"textures\seesack_cop.paa"];
        waitUntil {backpack player != "B_Kitbag_mcamo"};
    };
};
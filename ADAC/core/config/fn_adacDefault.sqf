/*
	File: fn_adacDefault.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Default adac configuration.
*/
//Strip the player down
RemoveAllWeapons player;
{player removeMagazine _x;} foreach (magazines player);
removeUniform player;
removeVest player;
removeBackpack player;
removeGoggles player;
removeHeadGear player;
{
	player unassignItem _x;
	player removeItem _x;
} foreach (assignedItems player);

//Load player with default adac gear.
player addUniform "U_Rangemaster";
player addBackpack "B_Carryall_cbr";
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "ToolKit";
player addItem "ToolKit";
player addItem "ToolKit";
player addItem "ToolKit";
player addItem "NVGoggles";
player assignItem "NVGoggles";

 [] call life_fnc_saveGear;
 [] spawn life_fnc_updateClothing;

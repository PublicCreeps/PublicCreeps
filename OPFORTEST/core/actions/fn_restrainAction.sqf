/*
	File: fn_restrainAction.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Retrains the target.
*/ 
private["_unit"];
_unit = cursorTarget;
if(isNull _unit) exitWith {}; //Not valid
if((_unit getVariable "restrained")) exitWith {};
if((player getVariable "restrained") || (player getVariable "Escorting") || (player getVariable "transporting") || (life_is_arrested) || (life_istazed)) exitWith {hint "Wie willst du jemanden fesseln wärend du selber gefesselt bist?";};
//if(side _unit == west) exitWith {};
if(player == _unit) exitWith {};
if (side player == civilian) then {
	if(life_inv_zipties < 1) exitWith { hint "Du hast keine Kabelbinder."; };
	life_inv_zipties = life_inv_zipties - 1;
	hint "Benutze die Linke Windowstaste für mehr Optionen.";
};
if(!isPlayer _unit) exitWith {};
	player say3D "cuff"; 
//Broadcast!

_unit setVariable["restrained",true,true];
[[player], "life_fnc_restrain", _unit, false] spawn life_fnc_MP;
[[0,format["%1 wurde von %2 gefesselt",_unit getVariable["realname", name _unit], player getVariable["realname",name player]]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
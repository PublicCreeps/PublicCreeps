#include <macro.h>

private["_unit"];

if((call life_adminlevel) < 2) exitWith {closeDialog 0; hint "Dir fehlen die nötigen Rechte!";};

_unit = lbData[2902,lbCurSel (2902)];
_unit = call compile format["%1", _unit];

 
if(isNull _unit) exitWith {}; //Not valid


if((_unit getVariable "Revive")) exitWith {};
//if(side _unit == west) exitWith {};
//if(player == _unit) exitWith {};
if(!isPlayer _unit) exitWith {};
//Broadcast!

_unit setVariable["Revive",true,true];
[[name player],"life_fnc_revived",_unit,FALSE] spawn life_fnc_MP;



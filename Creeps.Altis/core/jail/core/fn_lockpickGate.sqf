#include <macro.hpp>
private ["_object"];

_jailObj = (_this select 0);

if(_jailObj getVariable[format["bis_disabled_Door_%1", 1], 0] == 0) exitWith {hint "This door is already open."};
if(!([false,"lockpick",1] call life_fnc_handleInv)) exitWith {hint "You need a lockpick to do that."};

_upp = format["Knacke Gefaengnis Tor"];
//Setup our progress bar.
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNameSpace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["%2 (1%1)...","%",_upp];
_progress progressSetPosition 0.01;
_cP = 0.01;

while{true} do
{
	if(animationState player != "AinvPknlMstpSnonWnonDnon_medic_1") then {
		[[player,"AinvPknlMstpSnonWnonDnon_medic_1"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
		player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
	};
	sleep 0.75;
	_cP = _cP + 0.01;
	_progress progressSetPosition _cP;
	_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
	if(_cP >= 1) exitWith {};
	if(!alive player) exitWith {};
};

5 cutText ["","PLAIN"];
player playActionNow "stop";

_numDoors = getNumber(configFile >> "CfgVehicles" >> (typeOf _jailObj) >> "numberOfDoors");
    
for "_i" from 1 to _numDoors do
{
	_jailObj setVariable[format["bis_disabled_Door_%1", _i], 0, true];
};

titleText["You have unlocked this gate.","PLAIN"];

[[0,format["A Jail Gate has been lockpicked by %1.", name player]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
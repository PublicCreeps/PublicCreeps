#include <macro.hpp>
private ["_object"];

_object = _this select 0;
_object addAction["<t color='#7EACF6'>Toggle Gate Locks</t>",{
	
    private ["_isLocked", "_numDoors"];
    
    _door = _this select 0;
    _isLocked = _door getVariable[format["bis_disabled_Door_%1", 1], 0];
	_numDoors = getNumber(configFile >> "CfgVehicles" >> (typeOf _door) >> "numberOfDoors");
    
    if (_isLocked == 0) then {
	    for "_i" from 1 to _numDoors do
		{
			_door setVariable[format["bis_disabled_Door_%1", _i], 1, true];
		};
    } else {
        for "_i" from 1 to _numDoors do
		{
			_door setVariable[format["bis_disabled_Door_%1", _i], 0, true];
		};
    };
    
},"",0,false,false,"",' (player distance _target) < 5 '];
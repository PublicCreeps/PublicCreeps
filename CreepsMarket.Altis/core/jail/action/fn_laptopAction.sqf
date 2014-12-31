#include <macro.hpp>
private ["_object"];

_object = jail_laptop_1;

_object addAction["<t color='#7EACF6'>Toggle Double Door 1</t>",{
	
    private ["_isLocked", "_numDoors"];
    
    {
        _isLocked = _x getVariable[format["bis_disabled_Door_%1", 1], 0];
    	_numDoors = getNumber(configFile >> "CfgVehicles" >> (typeOf _x) >> "numberOfDoors");
        
        if (_isLocked == 0) then {
		    for "_i" from 1 to _numDoors do
			{
				_x animate [format["door_%1_rot", _i], 0];
				_x setVariable[format["bis_disabled_Door_%1", _i], 1, true];
			};
	    } else {
	        for "_i" from 1 to _numDoors do
			{
				_x setVariable[format["bis_disabled_Door_%1", _i], 0, true];
                _x animate [format["door_%1_rot", _i], 1];
			};
	    };
    } forEach [jail_ddoor_1];
    
    _isLocked = jail_ddoor_1 getVariable[format["bis_disabled_Door_%1", 1], 0];
    hint format ["Double Door 1 Locked: %1", _isLocked]; 
    
},"",0,false,false,"",' (player distance _target) < 3 '];



_object addAction["<t color='#7EACF6'>Toggle Double Door 2</t>",{
	
    private ["_isLocked", "_numDoors"];
    
    {
        _isLocked = _x getVariable[format["bis_disabled_Door_%1", 1], 0];
    	_numDoors = getNumber(configFile >> "CfgVehicles" >> (typeOf _x) >> "numberOfDoors");
        
        if (_isLocked == 0) then {
		    for "_i" from 1 to _numDoors do
			{
				_x animate [format["door_%1_rot", _i], 0];
				_x setVariable[format["bis_disabled_Door_%1", _i], 1, true];
			};
	    } else {
	        for "_i" from 1 to _numDoors do
			{
				_x setVariable[format["bis_disabled_Door_%1", _i], 0, true];
                _x animate [format["door_%1_rot", _i], 1];
			};
	    };
    } forEach [jail_ddoor_2];
    
    _isLocked = jail_ddoor_2 getVariable[format["bis_disabled_Door_%1", 1], 0];
    hint format ["Double Door 2 Locked: %1", _isLocked]; 
    
},"",0,false,false,"",' (player distance _target) < 3 '];



_object addAction["<t color='#7EACF6'>Toggle Double Door Cops 1</t>",{
	
    private ["_isLocked", "_numDoors"];
    
    {
        _isLocked = _x getVariable[format["bis_disabled_Door_%1", 1], 0];
    	_numDoors = getNumber(configFile >> "CfgVehicles" >> (typeOf _x) >> "numberOfDoors");
        
        if (_isLocked == 0) then {
		    for "_i" from 1 to _numDoors do
			{
				_x animate [format["door_%1_rot", _i], 0];
				_x setVariable[format["bis_disabled_Door_%1", _i], 1, true];
			};
	    } else {
	        for "_i" from 1 to _numDoors do
			{
				_x setVariable[format["bis_disabled_Door_%1", _i], 0, true];
                _x animate [format["door_%1_rot", _i], 1];
			};
	    };
    } forEach [jail_ddoor_1_1];
    
    _isLocked = jail_ddoor_1_1 getVariable[format["bis_disabled_Door_%1", 1], 0];
    hint format ["Double Door Cops 1 Locked: %1", _isLocked]; 
    
},"",0,false,false,"",' (player distance _target) < 3 '];



_object addAction["<t color='#7EACF6'>Toggle Double Door Cops 2</t>",{
	
    private ["_isLocked", "_numDoors"];
    
    {
        _isLocked = _x getVariable[format["bis_disabled_Door_%1", 1], 0];
    	_numDoors = getNumber(configFile >> "CfgVehicles" >> (typeOf _x) >> "numberOfDoors");
        
        if (_isLocked == 0) then {
		    for "_i" from 1 to _numDoors do
			{
				_x animate [format["door_%1_rot", _i], 0];
				_x setVariable[format["bis_disabled_Door_%1", _i], 1, true];
			};
	    } else {
	        for "_i" from 1 to _numDoors do
			{
				_x setVariable[format["bis_disabled_Door_%1", _i], 0, true];
                _x animate [format["door_%1_rot", _i], 1];
			};
	    };
    } forEach [jail_ddoor_1_1_1];
    
    _isLocked = jail_ddoor_1_1_1 getVariable[format["bis_disabled_Door_%1", 1], 0];
    hint format ["Double Door Cops 2 Locked: %1", _isLocked]; 
    
},"",0,false,false,"",' (player distance _target) < 3 '];
#include <macro.hpp>
private ["_object"];

_object = _this select 0;
_object addAction["<t color='#DB8E64'>Lockpick Gate Locks</t>",{
	
    private ["_door"];    
    _door = _this select 0;
    [_door] spawn jail_fnc_lockPickGate;
    
},"",0,false,false,"",' (player distance _target) < 5 '];
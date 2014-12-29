#include <macro.hpp>
private [];

if (playerSide == west) then {
	[jail_ddoor_1] spawn jail_fnc_toggleGateLockAction;
    [jail_ddoor_2] spawn jail_fnc_toggleGateLockAction;
	[jail_ddoor_1_1] spawn jail_fnc_toggleGateLockAction;
	[jail_ddoor_1_1_1] spawn jail_fnc_toggleGateLockAction;
	[] spawn jail_fnc_laptopAction;
} else {
	[jail_ddoor_1] spawn jail_fnc_lockpickGateAction; 
	[jail_ddoor_2] spawn jail_fnc_lockpickGateAction; 
	[jail_ddoor_1_1] spawn jail_fnc_lockpickGateAction;  
	[jail_ddoor_1_1_1] spawn jail_fnc_lockpickGateAction; 
};

[] spawn {
    private ["_snakes"];
    
    while {true} do {
	    _snakes = [];
	    _snakes = (getMarkerPos "jail_marker") nearEntities ["Snake_random_F", 100];
	    if (count _snakes > 0) then {
	     	{
	            _x setDamage 1;
	        } forEach _snakes;   
	    };
        sleep 5;    
    };       
};


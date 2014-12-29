
private["_barriers"];
_barriers = nearestObjects[getPos player,["RoadBarrier_F"],8] select 0;
if(isNil "_barriers") exitWith {};

if(([true,"roadBarrier",1] call life_fnc_handleInv)) then
{
	titleText[localize "STR_NOTF_RoadBarrier","PLAIN"];
	player removeAction life_action_roadBarrierPickup;
	life_action_roadBarrierPickup = nil;
	deleteVehicle _barriers;
};
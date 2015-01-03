
private["_position","_RoadBarrier"];
_roadBarrier = "RoadBarrier_F" createVehicle [0,0,0];
_roadBarrier attachTo[player,[0,3,1]];
_roadBarrier setDir 90;
_roadBarrier setVariable["item","barrierDeployed",true];

life_action_roadBarrierDeploy = player addAction[localize "STR_ISTR_Barrier_Place",{if(!isNull life_roadBarrier) then {detach life_roadBarrier; life_roadBarrier = ObjNull;}; player removeAction life_action_roadBarrierDeploy; life_action_roadBarrierDeploy = nil;},"",999,false,false,"",'!isNull life_roadBarrier'];
life_roadBarrier = _roadBarrier;
waitUntil {isNull life_roadBarrier};
if(!isNil "life_action_roadBarrierDeploy") then {player removeAction life_action_roadBarrierDeploy;};
if(isNull _roadBarrier) exitWith {life_roadBarrier = ObjNull;};
_roadBarrier setPos [(getPos _roadBarrier select 0),(getPos _roadBarrier select 1),0];
_roadBarrier setDamage 1;
life_action_roadBarrierPickup = player addAction[localize "STR_ISTR_Barrier_Pack",life_fnc_packupBarriers,"",0,false,false,"",
' _barriers = nearestObjects[getPos player,["RoadBarrier_F"],8] select 0; !isNil "_barriers" && !isNil {(_barriers getVariable "item")}'];
[[_roadBarrier],"TON_fnc_roadBarrier",false,false] spawn life_fnc_MP; //Send it to the server for monitoring.
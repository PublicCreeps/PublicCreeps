/*
file: fn_robShops.sqf
Author: MrKraken
Made from MrKrakens bare-bones shop robbing tutorial on www.altisliferpg.com forums
Description:
Executes the rob shob action!
Idea developed by PEpwnzya v1.0
*/
private["_robber","_shop","_kassa","_ui","_progress","_pgText","_cP","_rip","_pos"];
_shop = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param; //The object that has the action attached to it is _this. ,0, is the index of object, ObjNull is the default should there be nothing in the parameter or it's broken
_robber = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param; //Can you guess? Alright, it's the player, or the "caller". The object is 0, the person activating the object is 1
//_kassa = 1000; //The amount the shop has to rob, you could make this a parameter of the call (https://community.bistudio.com/wiki/addAction). Give it a try and post below ;)
_action = [_this,2] call BIS_fnc_param;//Action name

if(side _robber != civilian) exitWith { hint "Du kannst die Tankstelle nicht überfallen!" };
if(_robber distance _shop > 5) exitWith { hint "Du musst näher dran sein um Ihn auszurauben!" };

if !(_kassa) then { _kassa = 1000; };
if (_rip) exitWith { hint "Der Überfall läuft bereits!" };
if (vehicle player != _robber) exitWith { hint "Komm aus dem Fahrzeug raus!" };

if !(alive _robber) exitWith {};
if (currentWeapon _robber == "") exitWith { hint "HaHa, du willst mich ohne Waffe überfallen!" };
if (_kassa == 0) exitWith { hint "Es befindet sich kein Geld in der Kasse!" };
 
_rip = true;
_kassa = 10000 + round(random 10000);
_shop removeAction _action;
_shop switchMove "AmovPercMstpSsurWnonDnon";
_chance = random(100);
if(_chance >= 70) then { hint "Der Kassierer hat den geheimen Alarm ausgelöst!"; [[1,format["ALARM! - Tankstelle: %1 Wird überfallen!", _shop]],"life_fnc_broadcast",west,false] spawn life_fnc_MP; };

_cops = (west countSide playableUnits);
if(_cops < 2) exitWith{[[_vault,-1],"disableSerialization;",false,false] spawn life_fnc_MP; hint "Es sind nicht genügen Polizisten da um die Tankstelle zu überfallen!";};
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNameSpace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["Überfall im gange, bleibe in einem Umkreis von 10m (1%1)...","%"];
_progress progressSetPosition 0.01;
_cP = 0.01;
 
if(_rip) then
{
while{true} do
{
sleep 2.50;
_cP = _cP + 0.01;
_progress progressSetPosition _cP;
_pgText ctrlSetText format["Überfall im gange, bleibe in einem Umkreis von 10m (%1%2)...",round(_cP * 100),"%"];
_Pos = position player; // by ehno: get player pos
				                _marker = createMarker [_marker, _Pos]; //by ehno: Place a Maker on the map
				                _marker setMarkerColor "ColorRed";
				                _marker setMarkerText "Achtung! Überfall!";
				                _marker setMarkerType "mil_warning";			
if(_cP >= 1) exitWith {};
if(_robber distance _shop > 10.5) exitWith { };
if!(alive _robber) exitWith {};
};
if!(alive _robber) exitWith { _rip = false; };
if(_robber distance _shop > 10.5) exitWith { deleteMarker _marker; _shop switchMove ""; hint "Du musst darfst nicht mehr als 10m von der Kasse entfernt sein. Nun ist die Kasse geschlossen."; 5 cutText ["","PLAIN"]; _rip = false; };
5 cutText ["","PLAIN"];

titleText[format["Du konntest $%1 klauen, jetzt hau schnell ab bevor die Polizei kommt!",[_kassa] call life_fnc_numberText],"PLAIN"];
deleteMarker _marker; // by ehno delete maker
life_cash = life_cash + _kassa;

_rip = false;
life_use_atm = false;
sleep (30 + random(180));
life_use_atm = true;
if!(alive _robber) exitWith {};
[[getPlayerUID _robber,name _robber,"211"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
};
sleep 1200;
_action = _shop addAction["Tankstelle überfallen",life_fnc_robShops];	
_shop switchMove "";
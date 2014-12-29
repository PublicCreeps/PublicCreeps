/*
Datei : fn_copDriveRemoveNow.sqf
*/
private["_unit"];
_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
[5] call life_fnc_removeLicenses;
[[0,format["%1's Führerschein wurde entzogen!", name player]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
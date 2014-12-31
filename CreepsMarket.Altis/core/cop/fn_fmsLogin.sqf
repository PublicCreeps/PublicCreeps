private["_mode","_display","_Cglist"];
disableSerialization;

_mode = [_this,0,-1] call BIS_fnc_param;

if(_mode == -1 || isNull findDisplay 4800) exitWith {};

_display = findDisplay 4800;
_Cglist = _display displayCtrl 4803;

if(_mode == 0) then {
	_sel = lbData[ctrlIDC _Cglist, lbCurSel ctrlIDC _Cglist];
	_sel = call compile format["%1",_sel];
	if(count _sel == 0) exitWith { hint "Keine gueltige Auswahl!"; };
	_status = 1;
	_duty = "";
	{
		_fmsS = _x getVariable["fms_status",[]];
		if(count _fmsS > 0) then {
			if(_fmsS select 1 == _sel select 0 && _fmsS select 2 != 1) exitWith { _status = _fmsS select 2; _duty = _fmsS select 3; };
		};
	} foreach playableUnits;
	player setVariable["fms_status",[life_fms_group,_sel select 0,_status,_duty],true];
};

if(_mode == 1) then {
	player setVariable["fms_status",[],true];
};

[] spawn life_fnc_fmsSettings;
[1] spawn life_fnc_fmsSettings;
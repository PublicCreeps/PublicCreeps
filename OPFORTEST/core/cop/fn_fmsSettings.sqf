private["_mode","_display","_status","_list","_fmsGroups"];
disableSerialization;

_mode = [_this,0,0] call BIS_fnc_param;

_fmsGindex = [life_fms_group,life_fms_groups] call TON_fnc_index;
if(_fmsGindex == -1) exitWith { hint "Keine Berechtigung!"; };

if(isNull findDisplay 4800) then { createDialog "fms_menu"; };
_display = findDisplay 4800;

_Ctitle = _display displayCtrl 4801;
_Cglist = _display displayCtrl 4803;
_Cginfo = _display displayCtrl 4804;
_Clogin = _display displayCtrl 4802;
_Clogout = _display displayCtrl 4806;
_Cpager = _display displayCtrl 4805;

if(_mode == 0) then {
	_Clogin ctrlShow false;
	_Clogout ctrlShow false;

	_status = player getVariable["fms_status",[]];
	_list = [];

	{
		_pFMS = _x getVariable["fms_status",[]];
		if ((count _pFMS) > 0) then {
			if(_pFMS select 0 == life_fms_group) then { _list set[count _list, [_x,_pFMS select 1]]; };
		};
	} foreach playableUnits;

	_fmsGroups = ((life_fms_groups select _fmsGindex) select 1);
	lbClear _Cglist;
	lbClear _Cginfo;
	
	_counter = 0;
	_actCounter = 0;
	{
		_grpInfo = [_x];
		_search = _x;
		{
			if(_x select 1 == _search) then { _grpInfo set[count _grpInfo, name (_x select 0)]; };
			if(_x select 0 == player) then { _actCounter = _counter; };
		} foreach _list;
		_Cglist lbAdd format["%1 (%2)",_x,(count _grpInfo)-1];
		_Cglist lbSetData [(lbSize _Cglist)-1,str(_grpInfo)];
		_counter = _counter + 1;
	} foreach _fmsGroups;

	_Cglist lbSetCurSel _actCounter;
	
	if(count _status == 0) then {
		_Clogin ctrlShow true;
	} else {
		_Clogout ctrlShow true;
	};
};

if(_mode == 1) then {
	lbClear _Cginfo;
	_ginfo = lbData[ctrlIDC _Cglist, lbCurSel ctrlIDC _Cglist];
	_ginfo = call compile format["%1",_ginfo];
	for [{_x=1},{_x < (count _ginfo)},{_x=_x+1}] do {
		_Cginfo lbAdd format["%1",_ginfo select _x];
	};
};
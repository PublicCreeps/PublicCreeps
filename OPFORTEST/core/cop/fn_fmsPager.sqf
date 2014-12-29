private["_mode","_pList"];

_mode = [_this,0,-1] call BIS_fnc_param;

_pList = [];
{	
	_status = _x getVariable["fms_status",[]];
	if((count _status) > 0) then {
		if((_status select 1) == (player getVariable "fms_status" select 1) && (_status select 0) == life_fms_group) then {
			_pList set[count _pList, _x];
		};
	};
} foreach playableUnits;

switch(_mode) do {
	case -1: // Toggle the FMSPager
	{
	
	};
	case 0: // Emergency Status
	{
	
	};
	case 1: // Ready Status
	{
		{
			_tmp = _x getVariable "fms_status";
			_tmp set[2,1];
			_tmp set[3,""];
			_x setVariable["fms_status",_tmp,true];
		} foreach _pList;
	};
	case 2: // In Duty Status
	{
		{
			_tmp = _x getVariable "fms_status";
			_tmp set[2,2];
			_tmp set[3,"Eigenauftrag"];
			_x setVariable["fms_status",_tmp,true];
		} foreach _pList;
	};
	case 3: // Callme
	{
		
	};
	case 4: // AFK
	{
		
	};
};
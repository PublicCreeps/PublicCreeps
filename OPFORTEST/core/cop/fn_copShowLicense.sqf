/*

	Show cop license to target player

*/

private["_target", "_message","_rank","_coplevel"];

_target = cursorTarget;

if(playerSide != west) exitWith
{
	hint "Du bist kein Cop!";
};

if( isNull _target) then {_target = player;};

if( !(_target isKindOf "Man") ) then {_target = player;};

if( !(alive _target) ) then {_target = player;};

_rank = "Kein Cop !?";
_coplevel = call life_coplevel;

//Set rank
switch ( _coplevel ) do
{
	case 0: { _rank = "Anwaerter"; };
	case 1: { _rank = "Anwaerter"; };
	case 2: { _rank = "Wachtmeister"; };
	case 3: { _rank = "Hauptmann"; };
	case 4: { _rank = "SEK"; };
	case 5: { _rank = "General"; };
	case 6: { _rank = "Polizeichef"; };
	default {_rank =  "";};
};


_message = format["<img size='10' color='#FFFFFF' image='icons\police_gold.paa'/><br/><br/><t size='2.5'>%1</t><br/><t size='1.5'>%2</t><br/><t size='1'>Altis Polizeihauptwache</t>", name player, _rank];


[[player, _message],"life_fnc_copLicenseShown",_target,false] spawn life_fnc_MP;

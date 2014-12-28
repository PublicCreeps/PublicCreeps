#include <macro.h>
/*
	
	file: fn_newMsg.sqf
	Author: Silex
	
*/

private["_to","_type","_playerData","_msg"];
disableSerialization;

_type = [_this,0,-1] call BIS_fnc_param;
_playerData = [_this,1,-1] call BIS_fnc_param;
_msg = [_this,2,"",[""]] call BIS_fnc_param;

_display = findDisplay 88888;
_cPlayerList = _display displayCtrl 88881;
_cMessageEdit = _display displayCtrl 88884;

switch(_type) do
{
	case 0:
	{
		life_smartphoneTarget = call compile format["%1",_playerData];
		ctrlSetText[88886, format["Nachricht an: %1",name life_smartphoneTarget]];
		if((__GETC__(life_adminlevel) < 1)) then
		{
			ctrlShow[888897,false];
		};
	};
	//normal message
	case 1:
	{
		if(isNUll life_smartphoneTarget) exitWith {hint format["Keine Person ausgewählt."];};
		ctrlShow[88885, false];
		if(_msg == "") exitWith {hint "Du musst eine Nachricht eingeben.";ctrlShow[88885, true];};
		[[life_smartphoneTarget,_msg,player,0],"TON_fnc_handleMessages",false] spawn life_fnc_MP;
		hint parseText format ["<t color='#FFCC00'><t size='2'><t align='center'>Message Sent<br/><br/><t color='#33CC33'><t align='left'><t size='1'>To: <t color='#ffffff'>%1<br/><t color='#33CC33'>From: <t color='#ffffff'>You<br/><br/><t color='#33CC33'>Message:<br/><t color='#ffffff'>%2",name life_smartphoneTarget,_msg];		
		ctrlShow[88885, true];
		closeDialog 88883;
	};
	//copmessage
	case 2:
	{
		if(({side _x == west} count playableUnits) == 0) exitWith {hint format["Die Polizei ist derzeit nicht zu erreichen. Bitte versuchen Sie es später nochmal."];};
		ctrlShow[888895,false];
		if(_msg == "") exitWith {hint "Du musst eine Nachricht eingeben.";ctrlShow[888895,true];};
		[[ObjNull,_msg,player,1],"TON_fnc_handleMessages",false] spawn life_fnc_MP;
		_to = "Notrufzentrale";
		hint parseText format ["<t color='#FFCC00'><t size='2'><t align='center'>Sent Dispatch<br/><br/><t color='#33CC33'><t align='left'><t size='1'>To: <t color='#ffffff'>%1<br/><t color='#33CC33'>From: <t color='#ffffff'>You<br/><br/><t color='#33CC33'>Message:<br/><t color='#ffffff'>%2",_to,_msg];
		ctrlShow[888895,true];
		closeDialog 887890;
	};
	//msgadmin
	case 3:
	{ 
		ctrlShow[888896,false];
		if(_msg == "") exitWith {hint "Du musst eine Nachricht eingeben.";ctrlShow[888896,true];};
		[[ObjNull,_msg,player,2],"TON_fnc_handleMessages",false] spawn life_fnc_MP;
		_to = "Admins";
		hint parseText format ["<t color='#FF0000'><t size='1.5'><t align='center'>Admin Message Sent<br/><br/><t color='#33CC33'><t align='left'><t size='1'>To: <t color='#ffffff'>%1<br/><t color='#33CC33'>From: <t color='#ffffff'>You<br/><br/><t color='#33CC33'>Message:<br/><t color='#ffffff'>%2",_to,_msg];		
		ctrlShow[888896,true];
		closeDialog 887890;
	};
	//emsrequest
	case 4:
	{
		if(({side _x == independent} count playableUnits) == 0) exitWith {hint format["Zurzeit ist kein Arzt im Dienst. Bitte probiere es später nochmal."];};
		ctrlShow[888899,false];
		if(_msg == "") exitWith {hint "Du musst eine Nachricht eingeben.";ctrlShow[888899,true];};
		[[ObjNull,_msg,player,3],"TON_fnc_handleMessages",false] spawn life_fnc_MP;
		hint parseText format["<t align='left'><t size='1.5'><t color='#00FF00'>EMS Request Sent</t><br/><t color='#FF0000'>Message:</t><br/>%1</t></t>",_msg];
		ctrlShow[888899,true];
		closeDialog 887890;
	};
	//adminToPerson
	case 5:
	{
		if((call life_adminlevel) < 1) exitWith {hint "Du bist kein Admin!";};
		if(isNULL life_smartphoneTarget) exitWith {hint format["Keine Person ausgewählt."];};
		if(_msg == "") exitWith {hint "Du musst eine Nachricht eingeben.";};
		[[life_smartphoneTarget,_msg,player,4],"TON_fnc_handleMessages",false] spawn life_fnc_MP;
		hint parseText format["<t align='left'><t size='1.5'><t color='#FF0000'>Admin Msg Sent To:</t><br/>%1<br/><t color='#FF0000'>Message:</t><br/>%2</t></t>",name life_smartphoneTarget,_msg];
		closeDialog 88883;
	};
	//emergencyloading
	case 6:
	{
		if((__GETC__(life_adminlevel) < 1)) then
		{
			ctrlShow[888898,false];
			ctrlShow[888896,true];
		} else {
			ctrlShow[888898,true];
			ctrlShow[888896,false];
		};
	};
	//adminMsgAll
	case 7:
	{
		if((call life_adminlevel) < 1) exitWith {hint "Du bist kein Admin!";};
		if(_msg == "") exitWith {hint "Du musst eine Nachricht eingeben.";};
		[[ObjNull,_msg,player,5],"TON_fnc_handleMessages",false] spawn life_fnc_MP;
		hint parseText format["<t align='left'><t size='1.5'><t color='#0000FF'>Admin Msg Sent</t><br/><t color='#FF0000'>Message:</t><br/>%1</t></t>",_msg];
		closeDialog 887890;
	};
	case 8:
	{
		if((call life_copLevel) < 4) exitWith {hint "Du hast keinen ausreichenden Rang oder bist kein Polizist";};
		if(_msg == "") exitWith {hint "Du musst erst etwas schreiben";};
		[[ObjNull,_msg,player,6],"TON_fnc_handleMessages",false] spawn life_fnc_MP;
		hint format["Polizei Rundschreiben: %1",_msg];
		closeDialog 887890;
	};
};
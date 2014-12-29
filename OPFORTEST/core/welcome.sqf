/*
	File: welcome.sqf
	Author: ZedBuster
        Link: opendayz.net/threads/dayz-welcome-message-credits-style.13071/
	Description:
	Creates an intro on the bottom-right hand corner of the screen.
*/
 
_onScreenTime = 7;
 
sleep 15; //Wait in seconds before the credits start after player is in-game
 
	_role1 = "Willkommen auf Public Creeps Altis Life"; 
	_role1names = ["publiccreeps.enjin.com"];
	_role2 = "Server Regeln";
	_role2names = ["Es muss sich immer an die Serverregeln gehalten werden.","Du kannst die Serverregeln im Forum finden."];
	_role3 = "Server Admins:";
	_role3names = ["Cooper","Aero","Pepe","Dexter"];
	_role9 = "Safezones";
	_role9names = ["Kein Ausrauben","Kein K.O. Schlagen","Nicht schießen","Kein VDM/RDM"];
	_role4 = "Nicht im Side Chat reden";
	_role4names = ["Reden im Side Chat wird mit einem Kick bestraft.","Und kann bei Wiederholung zu einem Ban führen."];
	_role5 = "Teamspeak 3:";
	_role5names = ["176.57.128.38"];
	_role6 = "Ihr benötigt Hilfe?";
	_role6names = ["Schaut doch gerne bei uns auf dem Teamspeak oder im Forum vorbei!","Wir sind für euch da!"];
 	_role7 = "Steuerung";
	_role7names = ["Windows Taste - Interactions Menü/Sammeln<br/>Z - Spieler Menü <br/> SHIFT+H - Waffe Holstern <br/> STRG+H - Waffe entholstern <br/> SHIFT+V -  Ergeben <br/> Q -  Spitzhacke <br/> SHIFT+SPACE - Springen"];
{ 
	sleep 2;
	_memberFunction = _x select 0;
	_memberNames = _x select 1;
	_finalText = format ["<t size='.70' color='#F2FF00' align='right'>%1<br/></t>", _memberFunction]; //Changes colours
	_finalText = _finalText + "<t size='0.60' color='#ffffff' align='right'>";
	{_finalText = _finalText + format ["%1<br />", _x]} forEach _memberNames;
	_finalText = _finalText + "</t>";
	_onScreenTime + (((count _memberNames) - 1) * 0.5);
	[
		_finalText,
		[safezoneX + safezoneW - 0.8,0.5], //DEFAULT: 0.5,0.35
		[safezoneY + safezoneH - 0.8,0.7], //DEFAULT: 0.8,0.7
		_onScreenTime,
		0.5
	] spawn BIS_fnc_dynamicText;
	sleep (_onScreenTime);
} forEach [
	//The list below should have exactly the same amount of roles as the list above
	[_role1, _role1names],
	[_role2, _role2names],
	[_role3, _role3names],
	[_role4, _role4names],
	[_role5, _role5names],
	[_role6, _role6names],
	[_role7, _role7names]

	];
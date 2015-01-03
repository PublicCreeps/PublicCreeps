/*
	File: fn_vehicleColorStr.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for color strings depending on their index location.
*/
private["_vehicle","_color","_index"];
_vehicle = [_this,0,"",[""]] call BIS_fnc_param;
_index = [_this,1,-1,[0]] call BIS_fnc_param;
_color = "";

switch (_vehicle) do
{
	case "C_Offroad_01_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Red";};
			case 1: {_color = "Yellow";};
			case 2: {_color = "White";};
			case 3: {_color = "Blue";};
			case 4: {_color = "Dark Red";};
			case 5: {_color = "Blue / White"};
			case 6: {_color = "Black"};
			case 7: {_color = "Polizei"};
			case 8: {_color = "Rockstar"};
			case 9: {_color = "Monster"};
			case 10: {_color = "Badmobil"};
			case 11: {_color = "Stickerbomb"};
			case 12: {_color = "Sanitäter"};
		};
	};
	case "C_Offroad_01_repair_F":
	{
		switch (_index) do
		{
			case 0: {_color = "ADAC Offroad";};
		};
	};
	
	case "C_Hatchback_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Beige";};
			case 1: {_color = "Green";};
			case 2: {_color = "Blue";};
			case 3: {_color = "Dark Blue";};
			case 4: {_color = "Yellow";};
			case 5: {_color = "White"};
			case 6: {_color = "Grey"};
			case 7: {_color = "Black"};
			case 8: {_color = "Badmobil"};
		};
	};
	
	case "C_Hatchback_01_sport_F":
	{
		switch(_index) do
		{
			case 0: {_color = "Red"};
			case 1: {_color = "Dark Blue"};
			case 2: {_color = "Orange"};
			case 3: {_color = "Black / White"};
			case 4: {_color = "Tan"};
			case 5: {_color = "Green"};
			case 6: {_color = "Polizei"};
			case 7: {_color = "Mario"};
			case 8: {_color = "Ghostbuster"};
			case 9: {_color = "Badmobil"};
			case 10: {_color = "Sanitäter"};
			case 11: {_color = "ASA Limo"};

		};
	};
	
	case "C_SUV_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Dunkel Rot";};
			case 1: {_color = "Silber";};
			case 2: {_color = "Orange";};
			case 3: {_color = "Polizei";};
			case 4: {_color = "SEK";};
			case 5: {_color = "Monster";};
			case 6: {_color = "Ghostrider";};
			case 7: {_color = "Weiß";};
			case 8: {_color = "Tribal Grün";};
			case 9: {_color = "Sanitäter"};
			case 10: {_color = "ASA SUV"};
			case 11: {_color = "ADAC SUV"};
		};
	};
	
	case "C_Van_01_box_F":
	{
		switch (_index) do
		{
			case 0: {_color = "White"};
			case 1: {_color = "Red"};
			case 2: {_color = "Sanitäter"};
		};
	};
	
	case "C_Van_01_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "White"};
			case 1: {_color = "Red"};
		};
	};
	
	case "C_Van_01_fuel_F":
	{
		switch (_index) do
		{
			case 0: {_color = "White"};
			case 1: {_color = "Red"};
		};
	};
	
	case "B_Quadbike_01_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Brown"};
			case 1: {_color = "Digi Desert"};
			case 2: {_color = "Black"};
			case 3: {_color = "Blue"};
			case 4: {_color = "Red"};
			case 5: {_color = "White"};
			case 6: {_color = "Digi Green"};
			case 7: {_color = "Hunter Camo"};
			case 8: {_color = "Rebel Camo"};
		};
	};
	
	case "B_Heli_Light_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Sheriff"};
			case 1: {_color = "Black"};
			case 2: {_color = "Civ Blue"};
			case 3: {_color = "Civ Red"};
			case 4: {_color = "Digi Green"};
			case 5: {_color = "Blueline"};
			case 6: {_color = "Elliptical"};
			case 7: {_color = "Furious"};
			case 8: {_color = "Jeans Blue"};
			case 9: {_color = "Speedy Redline"};
			case 10: {_color = "Sunset"};
			case 11: {_color = "Vrana"};
			case 12: {_color = "Waves Blue"};
			case 13: {_color = "Rebel Digital"};
			case 14: {_color = "Rebel Digital"};
			case 15: {_color = "Sanitäter"};
			case 16: {_color = "Monster"};
			case 17: {_color = "ASA Bird"};
			case 18: {_color = "ADAC Bird"};
		};
	};
	
	case "O_Heli_Light_02_unarmed_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Black"};
			case 1: {_color = "White / Blue"};
			case 2: {_color = "Digi Green"};
			case 3: {_color = "Desert Digi"};
			case 4: {_color = "Desert Digi"};
			case 5: {_color = "EMS White"};
			case 6: {_color = "Polizei"};
			case 7: {_color = "ASA Orca"};
			case 8: {_color = "ADAC Orca"};
		};
	};
	
	case "B_MRAP_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Regular"};
			case 1: {_color = "SEK"};
			case 2: {_color = "Polizei"};
			case 3: {_color = "Camo"};
			case 4: {_color = "Camo"};
			case 5: {_color = "Donator"};
			case 6: {_color = "Sanitäter"};
			case 7: {_color = "Grau Camo"};
			case 8: {_color = "Blau Camo"};
			case 9: {_color = "Grau Camo"};
			case 10: {_color = "Blau Camo"};
			case 11: {_color = "ASA Hunter"};
		};
	};
	case "I_MRAP_03_F":
	{
		switch (_index) do
		{
			case 0: {_color = "SEK"};
			case 1: {_color = "Sanitäter"};
		};
	};
	
	case "I_Truck_02_covered_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Orange"};
			case 1: {_color = "Black"};
		};
	};
	
	case "I_Truck_02_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Orange"};
			case 1: {_color = "Black"};
		};
	};
	
	case "B_APC_Wheeled_01_cannon_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Black"};
		};
	};
	
	case "O_Heli_Attack_02_black_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Black"};
		};
	};
	
	case "I_Heli_Transport_02_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Ion"};
			case 1: {_color = "Dahoman"};
		};
	};
	
	case "I_Heli_light_03_unarmed_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Polizei"};
			case 1: {_color = "Sanitäter"};
		};
	};
	case "C_Boat_Civil_01_police_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Polizei"};
		};
	};
	case "B_Boat_Armed_01_minigun_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Polizei"};
		};
	};
	case "B_SDV_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Polizei"};
		};
	};
	case "B_MRAP_01_hmg_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Polizei"};
		};
	};
	case "O_MRAP_02_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Camo"};
			case 1: {_color = "Rot Camo"};
			case 2: {_color = "Blau Camo"};
			case 3: {_color = "Camo"};
			case 4: {_color = "Rot Camo"};
			case 5: {_color = "Blau Camo"};
			case 6: {_color = "ASA Ifrit"};
		};
	};
	case "B_Truck_01_mover_F":
	{
		switch (_index) do
		{
			case 0: {_color = "ADAC Mover"};
		};
	};
};

_color;
#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{
	case "kart_shop":
	{
		_return = [
			["C_Kart_01_Blu_F",15000],
			["C_Kart_01_Fuel_F",15000],
			["C_Kart_01_Red_F",15000],
			["C_Kart_01_Vrana_F",15000]
		];
	};
	case "med_shop":
	{
		_return set[count _return,
		["C_Offroad_01_F",20000]];
		if(__GETC__(life_medicLevel) > 1) then
		{
			_return set[count _return,
			["C_SUV_01_F",25000]];
		};
	};
	
	case "med_air_hs": 

	{
		if(__GETC__(life_medicLevel) > 1) then
		{
			_return set[count _return,
			["B_Heli_Light_01_F",57500]];
		};
			if(__GETC__(life_medicLevel) > 2) then
		{
			_return set[count _return,
			["O_Heli_Light_02_unarmed_F",150000]];
		};
			if(__GETC__(life_medicLevel) > 3) then
		{
			_return set[count _return,
			["I_Heli_light_03_unarmed_F",325000]];
		};
	};
	
	case "civ_car":
	{
		_return = 
		[
			["B_Quadbike_01_F",2500],
			["C_Hatchback_01_F",14500],
			["C_Offroad_01_F",50000],
			["C_SUV_01_F",60000],
			["C_Van_01_transport_F",65000]
		];
	};
	
	case "civ_truck":
	{
		_return =
		[
			["C_Van_01_box_F",100000],
			["C_Van_01_fuel_F",90000],
			["I_Truck_02_transport_F",150000],
			["I_Truck_02_covered_F",175000],
			["I_Truck_02_fuel_F",165000],
			["O_Truck_03_transport_F",700000],
			["O_Truck_03_covered_F",850000],
			["O_Truck_03_fuel_F",755000],
			["B_Truck_01_transport_F",1000000],
			["B_Truck_01_box_F",3000000],
			["B_Truck_01_fuel_F",1350000],
			["O_Truck_03_device_F",5000000]
		];	
	};
	
	
	case "reb_car":
	{
		_return =
		[
			["B_Quadbike_01_F",2500],
			["B_G_Offroad_01_F",50000],
			["O_MRAP_02_F",10000000],
			["B_Heli_Light_01_F",325000]
		];
		
		if(license_civ_rebel) then
		{
			_return set[count _return,
			["B_G_Offroad_01_armed_F",7500000]];
		};
	};
	
	case "cop_car":
	{
		_return set[count _return,
		["C_Offroad_01_F",25500]];
		_return set[count _return,
		["C_SUV_01_F",40000]];
		if(__GETC__(life_coplevel) > 5) then
		{
			_return set[count _return,
			["B_MRAP_01_F",300000]];
			_return set[count _return,
			["B_MRAP_01_hmg_F",7500000]];
		};
	};
	
	case "civ_air":
	{
		_return =
		[
			["B_Heli_Light_01_F",400000],
			["O_Heli_Light_02_unarmed_F",1000000],
			["I_Heli_Transport_02_F",4200000],
			["B_Heli_Transport_03_unarmed_F",4200000]
			
		];
	};
	
	case "cop_air":
	{
		if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return,
			["B_Heli_Light_01_F",100000]];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return,
			["O_Heli_Light_02_unarmed_F",225000]];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_return set[count _return,
			["I_Heli_light_03_unarmed_F",350000]];
		};
		if(__GETC__(life_coplevel) > 5) then
		{
			_return set[count _return,
			["B_Heli_Transport_01_F",550000]];
		};
		if(__GETC__(life_coplevel) > 6) then
		{
			_return set[count _return,
			["O_Heli_Attack_02_black_F",1]];
			_return set[count _return,
			["B_Heli_Attack_01_F",1]];
		};
	};
	
	case "cop_airhq":
	{
		if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return,
			["B_Heli_Light_01_F",100000]];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return,
			["O_Heli_Light_02_unarmed_F",225000]];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_return set[count _return,
			["I_Heli_light_03_unarmed_F",350000]];
		};
		if(__GETC__(life_coplevel) > 5) then
		{
			_return set[count _return,
			["B_Heli_Transport_01_F",550000]];
		};
		if(__GETC__(life_coplevel) > 6) then
		{
			_return set[count _return,
			["O_Heli_Attack_02_black_F",1]];
			_return set[count _return,
			["B_Heli_Attack_01_F",1]];
		};
	};
	
	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",5000],
			["C_Boat_Civil_01_F",22000]
		];
	};

	case "cop_ship":
	{
		if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return,
			["B_Boat_Transport_01_F",10000]];
			_return set[count _return,
			["C_Boat_Civil_01_police_F",20000]];
			_return set[count _return,
			["B_SDV_01_F",1000000]];
		};
		
		if(__GETC__(life_coplevel) > 5) then
		{
			_return set[count _return,
			["B_Boat_Armed_01_minigun_F",750000]];
		};
	};
	
	case "pgpd_car":
	{
		_return set[count _return,
		["C_Offroad_01_repair_F",15000]];
		
		if(__GETC__(life_adaclevel) > 1) then
		{
		 _return set[count _return,
		["B_Truck_01_mover_F",800000]];
		_return set[count _return,
		["B_Truck_01_transport_F",900000]]
		};
	};	
			
	case "pgpd_air":
	{
		if(__GETC__(life_adaclevel) > 1) then
		{
			_return set[count _return,
			["B_Heli_Light_01_F",75000]];
		};
		if(__GETC__(life_adaclevel) > 2) then
		{
			_return set[count _return,
			["I_Heli_Transport_02_F",1600000]];
		};
	};
	case "donator_1":	
{
_return =
[
["B_Quadbike_01_F",1500]
];

if(__GETC__(life_donator) > 1) then
{
_return set[count _return,["O_Heli_Light_02_unarmed_F",875000]];
_return set[count _return,["C_SUV_01_F",45000]];
_return set[count _return,["C_Offroad_01_F",35000]];
_return set[count _return,["O_Truck_03_covered_F",730000]];
_return set[count _return,["O_Truck_03_fuel_F",630000]];
_return set[count _return,["B_Heli_Light_01_F",280000]];
_return set[count _return,["I_Truck_02_fuel_F",115000]];
_return set[count _return,["I_Truck_02_covered_F",130000]];

};
if(__GETC__(life_donator) > 2) then
{
_return set[count _return,["I_Heli_Transport_02_F",3250000]];
_return set[count _return,["B_Truck_01_fuel_F",1000000]];
_return set[count _return,["B_Truck_01_box_F",2000000]];
_return set[count _return,["O_MRAP_02_F",8000000]];
_return set[count _return,["O_Truck_03_device_F",3000000]];
_return set[count _return,["B_Heli_Transport_03_unarmed_F",3250000]];
}; };
};

_return;

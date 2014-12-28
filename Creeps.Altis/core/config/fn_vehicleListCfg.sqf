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
		  ["C_Kart_01_Blu_F",67000],
            ["C_Kart_01_Fuel_F",67000],
            ["C_Kart_01_Red_F",67000],
            ["C_Kart_01_Vrana_F",67000]
		];
	};
	case "med_shop":
	{
		_return = [
			["C_Offroad_01_F",5000],
			["C_Offroad_01_repair_F",5000],
            ["C_SUV_01_F",12500],
            ["C_Hatchback_01_sport_F",17500],
			["B_MRAP_01_F",15000],
			["I_MRAP_03_F",100000]
			
		];
	};
	
	case "med_air_hs": {
		_return = [
			["B_Heli_Light_01_F",25000],
            ["I_Heli_light_03_unarmed_F",37500]
		];
	};
	
	case "med_air": {
		_return = [
            ["B_Heli_Light_01_F",66666],
            ["I_Heli_light_03_unarmed_F",100000]
		];
	};
	
	case "civ_car":
	{
		_return = 
		[
            ["B_Quadbike_01_F",2250],
            ["C_Hatchback_01_F",8500],
            ["C_Hatchback_01_sport_F",65000],
            ["C_Offroad_01_F",12500],
			["C_Offroad_01_repair_F",12500],
            ["C_SUV_01_F",25000],
            ["C_Van_01_transport_F",40000],
            ["C_Van_01_box_F",70000],
            ["C_Van_01_fuel_F",74000]
		];
	};
	
	case "civ_truck":
	{
		_return =
		[
            ["I_Truck_02_transport_F",200000],
            ["I_Truck_02_covered_F",250000],
            ["B_Truck_01_mover_F",250000],
            ["O_Truck_03_transport_F",400000],
            ["B_Truck_01_transport_F",700000],
			["O_Truck_03_device_F",10000000],
			["B_Truck_01_covered_F",1000000],
			["O_Truck_03_covered_F",2000000]
		];	
	};
	
	
	case "reb_car":
	{
		_return =
		[
			["B_Quadbike_01_F",2250],
            ["B_G_Offroad_01_F",12500]
		];
		
		if(license_civ_rebel) then
		{
			_return set[count _return,
			["B_G_Offroad_01_armed_F",5000000]];
			_return set[count _return,
			["C_SUV_01_F",25000]];
			_return set[count _return,
			["O_MRAP_02_F",1000000]];
			_return set[count _return,
			["B_MRAP_01_F",600000]];
			_return set[count _return,
			["B_Heli_Light_01_F",335000]];
			_return set[count _return,
			["O_Heli_Light_02_unarmed_F",500000]];
			_return set[count _return,
			["O_Heli_Transport_04_F",2100000]];
			_return set[count _return,
			["O_Heli_Transport_04_covered_F",2700000]];
		};
	};
		
	case "cop_car":
	{
		_return set[count _return,
		["C_Offroad_01_F",4200]];
		if(__GETC__(life_coplevel) > 1) then
		{
			_return set[count _return,
			["C_Hatchback_01_sport_F",7500]];
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return,
			["C_SUV_01_F",15000]];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return,
			["B_MRAP_01_F",15000]];
		};
		if(__GETC__(life_coplevel) > 5) then
		{

			_return set[count _return,
			["B_MRAP_01_hmg_F",67000]];
			_return set[count _return,
			["I_MRAP_03_F",67000]];
		};	
	};
	
	case "don_car":
	{
		if(__GETC__(life_donator) == 1) then
		{
			_return set[count _return,["B_Quadbike_01_F",1400]];
            _return set[count _return,["C_Offroad_01_F",9500]];
            _return set[count _return,["C_Hatchback_01_F",7700]];
            _return set[count _return,["C_Hatchback_01_sport_F",48750]];
            _return set[count _return,["C_SUV_01_F",18700]];
            _return set[count _return,["C_Van_01_transport_F",28000]];            
            _return set[count _return,["C_Van_01_box_F",47000]];
            _return set[count _return,["C_Van_01_fuel_F",50000]];
            _return set[count _return,["I_Truck_02_transport_F",56000]];
            _return set[count _return,["I_Truck_02_covered_F",187500]];
            _return set[count _return,["O_Truck_03_transport_F",300000]];
			_return set[count _return,["O_Truck_03_covered_F",1500000]];            
            _return set[count _return,["B_Truck_01_transport_F",525000]];            
            _return set[count _return,["O_MRAP_02_F",750000]];
            _return set[count _return,["B_MRAP_01_F",400000]];

		};
				
		if(__GETC__(life_donator) == 2) then
		{
			_return set[count _return,["B_Quadbike_01_F",1000]];
            _return set[count _return,["C_Offroad_01_F",6700]];
            _return set[count _return,["C_Hatchback_01_F",5000]];
            _return set[count _return,["C_Hatchback_01_sport_F",135000]];
            _return set[count _return,["C_SUV_01_F",15000]];
            _return set[count _return,["C_Van_01_transport_F",20000]];            
            _return set[count _return,["C_Van_01_box_F",35000]];
            _return set[count _return,["C_Van_01_fuel_F",37000]];
            _return set[count _return,["I_Truck_02_transport_F",27000]];
            _return set[count _return,["I_Truck_02_covered_F",35000]];
            _return set[count _return,["O_Truck_03_transport_F",78000]];
			_return set[count _return,["O_Truck_03_covered_F",670000]];            
            _return set[count _return,["B_Truck_01_transport_F",300000]];            
			_return set[count _return,["O_MRAP_02_F",417500]];
            _return set[count _return,["B_MRAP_01_F",285000]];
		};
		
		if(__GETC__(life_donator) == 3) then
		{
			 _return set[count _return,["B_Quadbike_01_F",1000]];
            _return set[count _return,["C_Offroad_01_F",6700]];
            _return set[count _return,["C_Hatchback_01_F",5000]];
            _return set[count _return,["C_Hatchback_01_sport_F",135000]];
            _return set[count _return,["C_SUV_01_F",15000]];
            _return set[count _return,["C_Van_01_transport_F",20000]];            
            _return set[count _return,["C_Van_01_box_F",35000]];
            _return set[count _return,["C_Van_01_fuel_F",37000]];
            _return set[count _return,["I_Truck_02_transport_F",27000]];
            _return set[count _return,["I_Truck_02_covered_F",35000]];
            _return set[count _return,["O_Truck_03_transport_F",78000]];
			_return set[count _return,["O_Truck_03_covered_F",670000]];            
            _return set[count _return,["B_Truck_01_transport_F",300000]];            
			_return set[count _return,["O_MRAP_02_F",417500]];
            _return set[count _return,["B_MRAP_01_F",285000]];
		};
	};
	
	case "don_air":
	{
		if(__GETC__(life_donator) == 1) then
		{
			_return set[count _return,["B_Heli_Light_01_F",235000]];
            _return set[count _return,["O_Heli_Light_02_unarmed_F",375000]];
            _return set[count _return,["I_Heli_Transport_02_F",1875000]];
		};
				
		if(__GETC__(life_donator) == 2) then
		{
            _return set[count _return,["B_Heli_Light_01_F",235000]];
            _return set[count _return,["O_Heli_Light_02_unarmed_F",375000]];
            _return set[count _return,["I_Heli_Transport_02_F",1875000]];
		};
		if(__GETC__(life_donator) == 3) then
		{
            _return set[count _return,["B_Heli_Light_01_F",235000]];
            _return set[count _return,["O_Heli_Light_02_unarmed_F",375000]];
            _return set[count _return,["I_Heli_Transport_02_F",1875000]];
		};
	};
	
	case "civ_air":
	{
		_return =
		[
            ["B_Heli_Light_01_F",335000],
			["C_Heli_Light_01_civil_F",335000],
            ["O_Heli_Light_02_unarmed_F",500000],
            ["I_Heli_Transport_02_F",2500000]
		];
	};
	
	case "cop_air":
	{
		if(__GETC__(life_coplevel) > 1) then
		{
			_return set[count _return,
			 ["B_Heli_Light_01_F",56250]];
		};
		if(__GETC__(life_coplevel) > 2) then
		{	
			_return set[count _return,
			["O_Heli_Light_02_unarmed_F",36000]];
			_return set[count _return,
			["I_Heli_light_03_unarmed_F",36000]];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return,
			["B_Heli_Transport_01_F",900000]];
			["B_Heli_Transport_03_unarmed_F",800000]
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_return set[count _return,
			["B_Heli_Transport_03_unarmed_F",1000000]];
		};
	}; 
		
	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",20000],
			["C_Boat_Civil_01_F",44000]
		];
	};

	case "cop_ship":
	{
		_return set[count _return,
		["B_Boat_Transport_01_F",3000]];
		if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return,
			["C_Boat_Civil_01_police_F",20000]];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return,
			["B_Boat_Armed_01_minigun_F",75000]];

		};
		if(__GETC__(life_coplevel) > 5) then
		{

			_return set[count _return,
			["B_SDV_01_F",100000]];
		};
	};
};

_return;

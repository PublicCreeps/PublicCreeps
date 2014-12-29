#include <macro.h>
/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for the weapon shops.
	
	Return:
	String: Close the menu
	Array: 
	[Shop Name,
	[ //Array of items to add to the store
		[classname,Custom Name (set nil for default),price]
	]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{
	case "cop_basic":
	{
		switch(true) do
		{
			case (playerSide !=west): {"Du bist kein Polizist"};
			default
			{
				["Praktikanten Polizei Shop",
					[
						["Rangefinder",nil,10]
					]
				];
			};
		};
	};
	
	case "cop_visier":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 1): {"Du kannst erst als Polizist hier Zugreifen !"};
			default
			{
				["Altis Visiere & Sonstiges",
					[
						["ItemMap",nil,10],
						["ItemWatch",nil,10],
						["ItemCompass",nil,10],
						["ItemGPS",nil,10],
						["ToolKit",nil,10],
						["Medikit",nil,10],
						["NVGoggles_OPFOR",nil,10],
						["Chemlight_red",nil,10],
						["Chemlight_yellow",nil,10],
						["Chemlight_green",nil,10],
						["Chemlight_blue",nil,10],
						["acc_flashlight",nil,10],
						["acc_pointer_IR",nil,10],
						["B_UavTerminal",nil,10],
						["Rangefinder",nil,10],
						["optic_Holosight",nil,10],
						["optic_ACO_smg",nil,10],
						["optic_MRCO",nil,10],
						["optic_LRPS",nil,10],
						["optic_DMS",nil,10],
						["optic_NVS",nil,10],
						["optic_Arco",nil,10],
						["muzzle_snds_L",nil,10],
						["muzzle_snds_M",nil,10],
						["muzzle_snds_H",nil,10]
					]
				];
			};
		};
	};
	
	case "med_basic":
	{
		switch (true) do 
		{
			case (playerSide != independent): {"You are not an EMS Medic"};
			default {
				["Hospital EMS Shop",
					[
						["ItemGPS",nil,100],
						["Binocular",nil,150],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,500],
						["NVGoggles",nil,1200],
						["B_FieldPack_ocamo",nil,3000]
					]
				];
			};
		};
	};

	case "cop_patrol":
	{
		switch(true) do
		{
			case (playerSide !=west): {"Du bist kein Polizist"};
			case (__GETC__(life_coplevel) < 2): {"Du bist noch kein Komissar !"};
			default
			{
				["Beamter Waffen Laden",
					[
						["arifle_sdar_F","Taser Sturmgewehr",10],
						["hgun_Rook40_F","Taser-Pistole",10],
						["hgun_Rook40_snds_F","Taser-Pistole Silenced",10],
						["16Rnd_9x21_Mag","16er Magazin",10],
						["20Rnd_556x45_UW_mag","556er Magazin",10]
					]
				];
			};
		};
	};

	case "cop_sergeant":
	{
		switch(true) do
		{
			case (playerSide !=west): {"Du bist kein Polizist"};
			case (__GETC__(life_coplevel) < 3): {"Du bist noch kein Kommissar"};
			default
			{
				["Kommisar Waffen Shop",
					[
						["arifle_MXC_F",nil,10],
						["arifle_MX_F",nil,10],
						["arifle_sdar_F","Taser Sturmgewehr",10],
						["SMG_02_F",nil,10],
						["30Rnd_65x39_caseless_mag","6,5mm Scharf",10],
						["30Rnd_9x21_Mag","9mm-Gummi",10],
						["20Rnd_556x45_UW_mag","Taser Waffe Magazin",10]
					]
				];
			};
		};
	};
	
	case "cop_kommisar":
	{
		switch(true) do
		{
			case (playerSide !=west): {"Du bist kein Polizist"};
			case (__GETC__(life_coplevel) < 4): {"Du bist kein HauptKommissar"};
			default
			{
				["HauptKommisar Waffen Shop",
					[
						["SMG_02_F",nil,10],
						["arifle_TRG20_F",nil,10],
						["arifle_MX_F",nil,10],
						["arifle_MXC_F",nil,10],
						["30Rnd_65x39_caseless_mag","6,5mm Scharf",10],
						["30Rnd_9x21_Mag",nil,10],
						["30Rnd_556x45_Stanag",nil,10],
						["SmokeShellOrange","Rauchgranate",10]
					]
				];
			};
		};
	};
	
	case "cop_sek":
	{
		switch(true) do
		{
			case (playerSide !=west): {"Du bist kein Polizist"};
			case (__GETC__(life_coplevel) < 5): {"Du bist kein SEK-Beamter"};
			default
			{
				["SEK Waffen Shop",
					[
						["arifle_MXM_Black_F",nil,10],
						["arifle_MX_Black_F",nil,10],
						["arifle_MXC_Black_F",nil,10],
						["SMG_02_F",nil,10],
						["arifle_TRG21_F",nil,10],
						["SmokeShellBlue","CE-Gas",10],
						["HandGrenade_Stone","Blendgranate",10],
						["SmokeShellOrange","Rauchgranate",10],
						["30Rnd_65x39_caseless_mag","6,5mm Scharf",10],
						["30Rnd_9x21_Mag",nil,10],
						["30Rnd_556x45_Stanag",nil,10]
					]
				];
			};
		};
	};
	
	case "cop_gsg":
	{
		switch(true) do
		{
			case (playerSide !=west): {"Du bist kein Polizist"};
			case (__GETC__(life_coplevel) < 6): {"Du bist nicht bei der GSG9"};
			default
			{
				["GSG9 Waffen Shop",
					[
						["arifle_MXM_Black_F",nil,10],
						["arifle_MX_Black_F",nil,10],
						["arifle_MXC_Black_F",nil,10],
						["arifle_MX_SW_Black_F",nil,10],
						["SMG_02_F",nil,10],
						["srifle_EBR_F",nil,10],
						["arifle_TRG21_F",nil,10],
						["arifle_TRG20_F",nil,10],
						["SmokeShellBlue","CE-Gas",10],
						["HandGrenade_Stone","Blendgranate",10],
						["SmokeShellOrange","Rauchgranaten",10],
						["30Rnd_65x39_caseless_mag","6,5mm Scharf",10],
						["20Rnd_762x51_Mag",nil,10],
						["30Rnd_9x21_Mag",nil,10],
						["100Rnd_65x39_caseless_mag",nil,10]
					]
				];
			};
		};
	};
	
	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_rebel): {"You don't have a Rebel training license!"};
			default
			{
				["Mohammed's Jihadi Shop",
					[
						["arifle_TRG20_F",nil,25000],
						["arifle_Katiba_F",nil,30000],
						["srifle_DMR_01_F",nil,50000],
						["arifle_SDAR_F",nil,20000],
						["optic_ACO_grn",nil,3500],
						["optic_Holosight",nil,3600],
						["acc_flashlight",nil,1000],
						["optic_Hamr",nil,7500],
						["30Rnd_9x21_Mag",nil,200],
						["20Rnd_556x45_UW_mag",nil,125],
						["30Rnd_556x45_Stanag",nil,300],
						["10Rnd_762x51_Mag",nil,500],
						["30Rnd_65x39_caseless_green",nil,275]
					]
				];
			};
		};
	};
	
	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_gun): {"You don't have a Firearms license!"};
			default
			{
				["Billy Joe's Firearms",
					[
						["hgun_Rook40_F",nil,6500],
						["hgun_Pistol_heavy_02_F",nil,9850],
						["hgun_ACPC2_F",nil,11500],
						["hgun_PDW2000_F",nil,20000],
						["optic_ACO_grn_smg",nil,2500],
						["V_Rangemaster_belt",nil,4900],
						["16Rnd_9x21_Mag",nil,25],
						["9Rnd_45ACP_Mag",nil,45],
						["6Rnd_45ACP_Cylinder",nil,50],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};
		};
	};
	
	case "gang":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			default
			{
				["Hideout Armament",
					[
						["hgun_Rook40_F",nil,1500],
						["hgun_Pistol_heavy_02_F",nil,2500],
						["hgun_ACPC2_F",nil,4500],
						["hgun_PDW2000_F",nil,9500],
						["optic_ACO_grn_smg",nil,950],
						["V_Rangemaster_belt",nil,1900],
						["16Rnd_9x21_Mag",nil,25],
						["9Rnd_45ACP_Mag",nil,45],
						["6Rnd_45ACP_Cylinder",nil,50],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};
		};
	};
	
	case "genstore":
	{
		["Altis General Store",
			[
				["Binocular",nil,150],
				["ItemGPS",nil,100],
				["ToolKit",nil,250],
				["FirstAidKit",nil,150],
				["NVGoggles",nil,2000],
				["Chemlight_red",nil,300],
				["Chemlight_yellow",nil,300],
				["Chemlight_green",nil,300],
				["Chemlight_blue",nil,300]
			]
		];
	};
	
	case "donator":
{
switch(true) do
{
case (__GETC__(life_donator) == 0): {"You are not a donator!"};
case (__GETC__(life_donator) == 1):
{
["STS PG Waffenschieber 1",
[
["hgun_Rook40_F",nil,6500],
["16Rnd_9x21_Mag",nil,100],
["hgun_PDW2000_F",nil,20000],
["30Rnd_9x21_Mag",nil,175]
]
];
};

case (__GETC__(life_donator) == 2):
{
["STS PG Waffenschieber 2",
[
["hgun_Rook40_F",nil,4500],
["16Rnd_9x21_Mag",nil,80],
["hgun_PDW2000_F",nil,15000],
["30Rnd_9x21_Mag",nil,135],
["hgun_Pistol_heavy_02_F",nil,7500],
["6Rnd_45ACP_Cylinder",nil,100],
["SMG_01_F",nil,20000],
["30Rnd_45ACP_Mag_SMG_01",nil,200],
["arifle_SDAR_F",nil,57500],
["20Rnd_556x45_UW_mag",nil,175],
["arifle_TRG20_F",nil,85000],
["30Rnd_556x45_Stanag",nil,375],
["optic_ACO_grn_smg",nil,4000],
["optic_ACO_grn",nil,4000],
["V_Rangemaster_belt",nil,3500]
]
];
};

case (__GETC__(life_donator) >= 3):
{
["STS PG Waffenschieber 3",
[
["srifle_EBR_F",nil,420000],
["20Rnd_762x51_Mag",nil,950],
["arifle_Katiba_F",nil,110000],
["30Rnd_65x39_caseless_green",nil,275],
["srifle_DMR_01_F",nil,135000],
["10Rnd_762x51_Mag",nil,450],
["LMG_Zafir_F",nil,550000],
["150Rnd_762x51_Box",nil,7000],
["srifle_LRR_F",nil,950000],
["7Rnd_408_Mag",nil,10500],
["optic_ACO",nil,1750],
["optic_Holosight",nil,5000],
["acc_flashlight",nil,1000],
["optic_Hamr",nil,9000],
["optic_SOS",nil,43000],
["Rangefinder",nil,7200],
["hgun_Rook40_F",nil,4500],
["16Rnd_9x21_Mag",nil,80],
["hgun_PDW2000_F",nil,15000],
["30Rnd_9x21_Mag",nil,135],
["hgun_Pistol_heavy_02_F",nil,7500],
["6Rnd_45ACP_Cylinder",nil,100],
["SMG_01_F",nil,20000],
["30Rnd_45ACP_Mag_SMG_01",nil,200],
["arifle_SDAR_F",nil,57500],
["20Rnd_556x45_UW_mag",nil,175],
["arifle_TRG20_F",nil,85000],
["30Rnd_556x45_Stanag",nil,375],
["optic_ACO_grn_smg",nil,4000],
["optic_ACO_grn",nil,4000],
["V_Rangemaster_belt",nil,3500]
]
];
};
};
};
	
	case "pgpdstore":
	{
		switch(true) do
		{
			case (playerSide != east): {"Du bist nicht beim PGPD!"};
			default
			{
				["PGPD General Store",
					[
						["B_Carryall_cbr",nil,4500],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,600],
						["FirstAidKit",nil,150],
						["NVGoggles",nil,2000]	
					]
				];
			};
		};
	};
};

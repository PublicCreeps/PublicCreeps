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
	case "med_basic":
	{
		switch(true) do 
		{
			case (playerSide != independent): {"Du bist kein Medic"};
			default {
				["Hospital EMS Shop",
					[

                        ["ItemGPS",nil,0],
                        ["Binocular",nil,0],
                        ["RangeFinder",nil,0],
                        ["ToolKit",nil,0],
                        ["FirstAidKit",nil,0],
                        ["Medikit",nil,0],
                        ["NVGoggles",nil,0],
                        ["NVGoggles_INDEP",nil,0],
                        ["NVGoggles_OPFOR",nil,0]
   					]
				];
			};
		};
	};
	
	case "cop_basic":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Polizist!"};
			default
			{
				["Anwärter Ausrüstung",
					[   
					    ["SMG_02_F","Sting Taserwaffe",0],
						["30Rnd_9x21_Mag","Tasermag",0],
					    ["arifle_SDAR_F","SDAR Unterwasserwaffe",0],
						["30Rnd_556x45_Stanag",nil,0],
						["hgun_P07_snds_F","Taser Pistole",0],
                        ["30Rnd_9x21_Mag",nil,0],
						["hgun_Pistol_heavy_01_F","4-five .45",0],
						["11Rnd_45ACP_Mag",nil,0],
                        ["acc_pointer_IR",nil,0],
                        ["acc_flashlight",nil,0],
                        ["muzzle_snds_L",nil,0],
						["muzzle_snds_H",nil,0],
						["muzzle_snds_M",nil,0],
						["muzzle_snds_B",nil,0],
						["muzzle_snds_acp",nil,0],
                        ["RangeFinder",nil,0],
                        ["ItemGPS",nil,0],
                        ["ItemWatch",nil,0],
                        ["ItemCompass",nil,0],
                        ["ItemMap",nil,0],
                        ["ToolKit",nil,0],
                        ["MediKit",nil,0],
						["optic_MRCO",nil,0],
						["optic_Hamr",nil,0],
						["optic_Arco",nil,0],
						["optic_MRCO",nil,0],
						["optic_Aco",nil,0],
						["optic_Holosight",nil,0],
						["optic_ACO_smg",nil,0],
                        ["NVGoggles",nil,0],
                        ["NVGoggles_INDEP",nil,0],
                        ["NVGoggles_OPFOR",nil,0]
					]
				];
			};
		};
	};

	case "cop_Polizist":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Polizist!"};
			case (__GETC__(life_coplevel) < 2): {"Du bist kein Polizist!"};
			default
			{
				["Wachtmeister Ausrüster",
					[
						["SMG_02_F","Sting Taserwaffe",0],
						["30Rnd_9x21_Mag","Tasermag",0],
					    ["arifle_SDAR_F","SDAR Unterwasserwaffe",0],
						["30Rnd_556x45_Stanag",nil,0],
						["hgun_P07_snds_F","Taser Pistole",0],
                        ["30Rnd_9x21_Mag",nil,0],
						["hgun_Pistol_heavy_01_F","4-five .45",0],
						["11Rnd_45ACP_Mag",nil,0],
						["arifle_MX_Black_F",nil,0],
						["30Rnd_65x39_caseless_mag",nil,0],
                        ["acc_pointer_IR",nil,0],
                        ["acc_flashlight",nil,0],
                        ["muzzle_snds_L",nil,0],
						["muzzle_snds_H",nil,0],
						["muzzle_snds_M",nil,0],
						["muzzle_snds_B",nil,0],
						["muzzle_snds_acp",nil,0],
                        ["RangeFinder",nil,0],
                        ["ItemGPS",nil,0],
                        ["ItemWatch",nil,0],
                        ["ItemCompass",nil,0],
                        ["ItemMap",nil,0],
                        ["ToolKit",nil,0],
                        ["MediKit",nil,0],
						["optic_MRCO",nil,0],
						["optic_Hamr",nil,0],
						["optic_Arco",nil,0],
						["optic_MRCO",nil,0],
						["optic_Aco",nil,0],
						["optic_Holosight",nil,0],
						["optic_ACO_smg",nil,0],
                        ["NVGoggles",nil,0],
                        ["NVGoggles_INDEP",nil,0],
                        ["NVGoggles_OPFOR",nil,0]
					]
				];
			};
		};
	};
	
	case "cop_sergeant":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Polizist!"};
			case (__GETC__(life_coplevel) < 3): {"Du bist kein Sergeant!"};
			default
			{
				["Hauptmann Ausrüster",
					[
					    ["SMG_02_F","Sting Taserwaffe",0],
						["30Rnd_9x21_Mag","Tasermag",0],
					    ["arifle_SDAR_F","SDAR Unterwasserwaffe",0],
						["30Rnd_556x45_Stanag",nil,0],
						["hgun_P07_snds_F","Taser Pistole",0],
                        ["30Rnd_9x21_Mag",nil,0],
						["hgun_Pistol_heavy_01_F","4-five .45",0],
						["11Rnd_45ACP_Mag",nil,0],
						["arifle_MX_Black_F",nil,0],
						["30Rnd_65x39_caseless_mag",nil,0],
						["arifle_MXM_Black_F",nil,0],
						["arifle_MXC_Black_F",nil,0],
						["srifle_EBR_F",nil,0],
						["20Rnd_762x51_Mag",nil,0],
                        ["acc_pointer_IR",nil,0],
                        ["acc_flashlight",nil,0],
                        ["muzzle_snds_L",nil,0],
						["muzzle_snds_H",nil,0],
						["muzzle_snds_M",nil,0],
						["muzzle_snds_B",nil,0],
						["muzzle_snds_acp",nil,0],
						["HandGrenade_Stone","Flashbang",0],
                        ["RangeFinder",nil,0],
                        ["ItemGPS",nil,0],
                        ["ItemWatch",nil,0],
                        ["ItemCompass",nil,0],
                        ["ItemMap",nil,0],
                        ["ToolKit",nil,0],
                        ["MediKit",nil,0],
						["optic_MRCO",nil,0],
						["optic_Hamr",nil,0],
						["optic_Arco",nil,0],
						["optic_MRCO",nil,0],
						["optic_Aco",nil,0],
						["optic_LRPS",nil,0],
						["optic_DMS",nil,0],
						["optic_SOS",nil,0],
						["optic_Holosight",nil,0],
						["optic_ACO_smg",nil,0],
                        ["NVGoggles",nil,0],
                        ["NVGoggles_INDEP",nil,0],
                        ["NVGoggles_OPFOR",nil,0]
					]
				];
			};
		};
	};
	
	case "cop_SEK":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Polizist!"};
			case (__GETC__(life_coplevel) < 4): {"Du gehörst nicht zum SEK !"};
			default
			{
				["SEK Ausrüster",
					[
					    ["SMG_02_F","Sting Taserwaffe",0],
						["30Rnd_9x21_Mag","Tasermag",0],
					    ["arifle_SDAR_F","SDAR Unterwasserwaffe",0],
						["30Rnd_556x45_Stanag",nil,0],
						["hgun_P07_snds_F","Taser Pistole",0],
                        ["30Rnd_9x21_Mag",nil,0],
						["hgun_Pistol_heavy_01_F","4-five .45",0],
						["11Rnd_45ACP_Mag",nil,0],
						["arifle_MX_Black_F",nil,0],
						["30Rnd_65x39_caseless_mag",nil,0],
						["arifle_MXM_Black_F",nil,0],
						["arifle_MXC_Black_F",nil,0],
						["arifle_MX_GL_Black_F",nil,0],
						["UGL_FlareWhite_F",nil,0],
						["UGL_FlareGreen_F",nil,0],
						["UGL_FlareRed_F",nil,0],
						["UGL_FlareYellow_F",nil,0],
						["arifle_MX_SW_Black_F",nil,0],
						["100Rnd_65x39_caseless_mag",nil,0],
						["srifle_LRR_F",nil,0],
						["7Rnd_408_Mag",nil,0],
						["srifle_EBR_F",nil,0],
						["20Rnd_762x51_Mag",nil,0],
                        ["acc_pointer_IR",nil,0],
                        ["acc_flashlight",nil,0],
                        ["muzzle_snds_L",nil,0],
						["muzzle_snds_H",nil,0],
						["muzzle_snds_M",nil,0],
						["muzzle_snds_B",nil,0],
						["muzzle_snds_acp",nil,0],
						["HandGrenade_Stone","Flashbang",0],
                        ["RangeFinder",nil,0],
                        ["ItemGPS",nil,0],
                        ["ItemWatch",nil,0],
                        ["ItemCompass",nil,0],
                        ["ItemMap",nil,0],
                        ["ToolKit",nil,0],
                        ["MediKit",nil,0],
						["optic_MRCO",nil,0],
						["optic_Hamr",nil,0],
						["optic_Arco",nil,0],
						["optic_MRCO",nil,0],
						["optic_Aco",nil,0],
						["optic_LRPS",nil,0],
						["optic_DMS",nil,0],
						["optic_SOS",nil,0],
						["optic_Holosight",nil,0],
						["optic_ACO_smg",nil,0],
                        ["NVGoggles",nil,0],
                        ["NVGoggles_INDEP",nil,0],
                        ["NVGoggles_OPFOR",nil,0]
					]
				];
			};
		};
	};
	

	case "cop_General":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Polizist!"};
			case (__GETC__(life_coplevel) < 6): {"Du bist kein General!"};
			default
			{
				["General Ausrüster",
					[
						["SMG_02_F","Sting Taserwaffe",0],
						["30Rnd_9x21_Mag","Tasermag",0],
					    ["arifle_SDAR_F","SDAR Unterwasserwaffe",0],
						["30Rnd_556x45_Stanag",nil,0],
						["hgun_P07_snds_F","Taser Pistole",0],
                        ["30Rnd_9x21_Mag",nil,0],
						["hgun_Pistol_heavy_01_F","4-five .45",0],
						["11Rnd_45ACP_Mag",nil,0],
						["arifle_MX_Black_F",nil,0],
						["30Rnd_65x39_caseless_mag",nil,0],
						["arifle_MXM_Black_F",nil,0],
						["arifle_MXC_Black_F",nil,0],
						["arifle_MX_GL_Black_F",nil,0],
						["UGL_FlareWhite_F",nil,0],
						["UGL_FlareGreen_F",nil,0],
						["UGL_FlareRed_F",nil,0],
						["UGL_FlareYellow_F",nil,0],
						["arifle_MX_SW_Black_F",nil,0],
						["100Rnd_65x39_caseless_mag",nil,0],
						["srifle_LRR_F",nil,0],
						["7Rnd_408_Mag",nil,0],
						["srifle_EBR_F",nil,0],
						["20Rnd_762x51_Mag",nil,0],
                        ["acc_pointer_IR",nil,0],
                        ["acc_flashlight",nil,0],
                        ["muzzle_snds_L",nil,0],
						["muzzle_snds_H",nil,0],
						["muzzle_snds_M",nil,0],
						["muzzle_snds_B",nil,0],
						["muzzle_snds_acp",nil,0],
						["HandGrenade_Stone","Flashbang",0],
                        ["RangeFinder",nil,0],
                        ["ItemGPS",nil,0],
                        ["ItemWatch",nil,0],
                        ["ItemCompass",nil,0],
                        ["ItemMap",nil,0],
                        ["ToolKit",nil,0],
                        ["MediKit",nil,0],
						["optic_MRCO",nil,0],
						["optic_Hamr",nil,0],
						["optic_Arco",nil,0],
						["optic_MRCO",nil,0],
						["optic_Aco",nil,0],
						["optic_LRPS",nil,0],
						["optic_DMS",nil,0],
						["optic_SOS",nil,0],
						["optic_Holosight",nil,0],
						["optic_ACO_smg",nil,0],
                        ["NVGoggles",nil,0],
                        ["NVGoggles_INDEP",nil,0],
                        ["NVGoggles_OPFOR",nil,0]
					]
				];
			};
		};
	};
	
	case "cop_PresidentOfThePolice":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Polizist!"};
			case (__GETC__(life_coplevel) < 7): {"Du bist kein Polizeichef!"};
			default
			{
				["Polizeichef - Ausrüster",
					[
						["SMG_02_F","Sting Taserwaffe",0],
						["30Rnd_9x21_Mag","Tasermag",0],
					    ["arifle_SDAR_F","SDAR Unterwasserwaffe",0],
						["30Rnd_556x45_Stanag",nil,0],
						["20Rnd_556x45_UW_mag",nil,0],
						["hgun_P07_snds_F","Taser Pistole",0],
                        ["30Rnd_9x21_Mag",nil,0],
						["hgun_Pistol_heavy_01_F",nil,0],
						["11Rnd_45ACP_Mag",nil,0],
						["arifle_MX_Black_F",nil,0],
						["30Rnd_65x39_caseless_mag",nil,0],
						["arifle_MXM_Black_F",nil,0],
						["arifle_MXC_Black_F",nil,0],
						["arifle_MX_GL_Black_F",nil,0],
						["UGL_FlareWhite_F",nil,0],
						["UGL_FlareGreen_F",nil,0],
						["UGL_FlareRed_F",nil,0],
						["UGL_FlareYellow_F",nil,0],
						["arifle_MX_SW_Black_F",nil,0],
						["100Rnd_65x39_caseless_mag",nil,0],
						["srifle_LRR_F",nil,0],
						["7Rnd_408_Mag",nil,0],
						["srifle_EBR_F",nil,0],
						["20Rnd_762x51_Mag",nil,0],
						["hgun_Pistol_Signal_F",nil,0],
						["6Rnd_RedSignal_F",nil,0],
						["6Rnd_GreenSignal_F",nil,0],
                        ["acc_pointer_IR",nil,0],
                        ["acc_flashlight",nil,0],
                        ["muzzle_snds_L",nil,0],
						["muzzle_snds_H",nil,0],
						["muzzle_snds_M",nil,0],
						["muzzle_snds_B",nil,0],
						["muzzle_snds_acp",nil,0],
						["HandGrenade_Stone","Flashbang",0],
                        ["RangeFinder",nil,0],
                        ["ItemGPS",nil,0],
                        ["ItemWatch",nil,0],
                        ["ItemCompass",nil,0],
                        ["ItemMap",nil,0],
                        ["ToolKit",nil,0],
                        ["MediKit",nil,0],
						["optic_MRCO",nil,0],
						["optic_Hamr",nil,0],
						["optic_Arco",nil,0],
						["optic_MRCO",nil,0],
						["optic_Aco",nil,0],
						["optic_LRPS",nil,0],
						["optic_DMS",nil,0],
						["optic_SOS",nil,0],
						["optic_Holosight",nil,0],
						["optic_ACO_smg",nil,0],
                        ["NVGoggles",nil,0],
                        ["NVGoggles_INDEP",nil,0],
                        ["NVGoggles_OPFOR",nil,0]
					]
				];  
			};
		};
	};
	
	
	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Zivilist!"};
			case (!license_civ_rebel): {"Du hast kein Rebellentraining absolviert!"};
			default
			{
				["Rebellen Waffen",
					[
						["hgun_Rook40_F",nil,7500],
						["hgun_PDW2000_F",nil,20000],
						["30Rnd_9x21_Mag",nil,500],
						["16Rnd_9x21_Mag",nil,250],
						["hgun_ACPC2_F",nil,10000],
						["9Rnd_45ACP_Mag",nil,250],
						["hgun_Pistol_heavy_02_F",nil,15000],
						["6Rnd_45ACP_Cylinder",nil,250],
						["SMG_01_F",nil,25000],
						["30Rnd_45ACP_Mag_SMG_01",nil,500],
						["arifle_SDAR_F","SDAR Unterwasserwaffe",17500],
						["20Rnd_556x45_UW_mag",nil,500],
						["arifle_Katiba_F",nil,120000],
						["arifle_Katiba_GL_F",nil,150000],
						["30Rnd_65x39_caseless_green",nil,2000],
						["arifle_Mk20C_F",nil,75000],
						["arifle_Mk20_GL_F",nil,100000],
						["arifle_TRG21_F",nil,75000],
						["arifle_TRG21_GL_F",nil,100000],
						["30Rnd_556x45_Stanag",nil,1500],
						["UGL_FlareWhite_F",nil,6000],
						["UGL_FlareGreen_F",nil,6000],
						["UGL_FlareRed_F",nil,6000],
						["UGL_FlareYellow_F",nil,6000],
						["arifle_MX_SW_F",nil,250000],
						["100Rnd_65x39_caseless_mag_Tracer",nil,2500],
						["srifle_DMR_01_F",nil,300000],
						["10Rnd_762x51_Mag",nil,2000],
						["srifle_EBR_F",nil,350000],
						["20Rnd_762x51_Mag",nil,2500],
						["srifle_GM6_F",nil,750000],
						["srifle_GM6_camo_F",nil,750000],
						["5Rnd_127x108_Mag",nil,5000],
                        ["optic_ACO_smg",nil,3000],
                        ["optic_Aco",nil,3000],
                        ["optic_Hamr",nil,5000],
                        ["optic_Arco",nil,5000],
                        ["optic_MRCO",nil,5000],
                        ["optic_DMS",nil,5000],
						["optic_SOS",nil,7500],
						["optic_LRPS",nil,7500],
                        ["optic_Holosight",nil,3000],
                        ["acc_flashlight",nil,500],
                        ["acc_pointer_IR",nil,500],
                        ["RangeFinder",nil,7500],
						["ItemGPS",nil,200],
                        ["ItemWatch",nil,100],
                        ["ItemCompass",nil,100],
                        ["ItemMap",nil,100],
                        ["ToolKit",nil,500],
                        ["FirstAidKit",nil,100],
						["NVGoggles",nil,2000],
                        ["NVGoggles_INDEP",nil,2000],
                        ["NVGoggles_OPFOR",nil,2000],
                        ["muzzle_snds_H",nil,100000],
						["muzzle_snds_M",nil,75000]
					]
				];
			};
		};
	};
	
		
	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Zivilist!"};
			case (!license_civ_gun): {"Du hast keine Feuerwaffen Lizenz"};
			default
			{
				["Waffenladen",
					[
						["hgun_Rook40_F",nil,7500],
						["hgun_PDW2000_F",nil,20000],
						["30Rnd_9x21_Mag",nil,500],
						["16Rnd_9x21_Mag",nil,250],
						["hgun_ACPC2_F",nil,10000],
						["9Rnd_45ACP_Mag",nil,250],
						["hgun_Pistol_heavy_02_F",nil,15000],
						["6Rnd_45ACP_Cylinder",nil,250],
						["SMG_01_F",nil,25000],
						["30Rnd_45ACP_Mag_SMG_01",nil,500],
                        ["optic_ACO_smg",nil,3000],
                        ["optic_Aco",nil,3000],
                        ["optic_Hamr",nil,5000],
                        ["optic_Arco",nil,5000],
                        ["optic_MRCO",nil,5000],
                        ["optic_DMS",nil,5000],
                        ["optic_Holosight",nil,3000],
                        ["RangeFinder",nil,7500],
						["ItemGPS",nil,200],
                        ["ItemWatch",nil,100],
                        ["ItemCompass",nil,100],
                        ["ItemMap",nil,100],
                        ["ToolKit",nil,500],
                        ["FirstAidKit",nil,100],
						["NVGoggles",nil,2000],
                        ["NVGoggles_INDEP",nil,2000],
                        ["NVGoggles_OPFOR",nil,2000]
					]  
				];
			};
		};
	};
	
	case "donator":
	{
		switch(true) do
		{
			case (__GETC__(life_donator) == 0): {"Du bist kein Donator!"};
			case (__GETC__(life_donator) == 1):
			{
				["STS Donator Shop Tier 1",
					[
						["hgun_Rook40_F",nil,5600],
						["hgun_PDW2000_F",nil,15000],
						["30Rnd_9x21_Mag",nil,380],
						["16Rnd_9x21_Mag",nil,190],
						["hgun_ACPC2_F",nil,7500],
						["9Rnd_45ACP_Mag",nil,190],
						["hgun_Pistol_heavy_02_F",nil,11250],
						["6Rnd_45ACP_Cylinder",nil,190],
						["SMG_01_F",nil,18750],
						["30Rnd_45ACP_Mag_SMG_01",nil,380],
						["arifle_SDAR_F","SDAR Unterwasserwaffe",13130],
						["20Rnd_556x45_UW_mag",nil,380],
						["arifle_Katiba_F",nil,90000],
						["arifle_Katiba_GL_F",nil,112500],
						["30Rnd_65x39_caseless_green",nil,1500],
						["arifle_Mk20C_F",nil,56250],
						["arifle_Mk20_GL_F",nil,75000],
						["arifle_TRG21_F",nil,56250],
						["arifle_TRG21_GL_F",nil,75000],
						["30Rnd_556x45_Stanag",nil,1130],
						["UGL_FlareWhite_F",nil,4500],
						["UGL_FlareGreen_F",nil,4500],
						["UGL_FlareRed_F",nil,4500],
						["UGL_FlareYellow_F",nil,4500],
						["arifle_MX_SW_F",nil,187500],
						["100Rnd_65x39_caseless_mag_Tracer",nil,1880],
						["srifle_DMR_01_F",nil,225000],
						["10Rnd_762x51_Mag",nil,1500],
						["srifle_EBR_F",nil,262500],
						["20Rnd_762x51_Mag",nil,1875],
						["srifle_GM6_F",nil,562500],
						["srifle_GM6_camo_F",nil,562500],
						["5Rnd_127x108_Mag",nil,3750],
                        ["optic_ACO_smg",nil,2250],
                        ["optic_Aco",nil,2250],
                        ["optic_Hamr",nil,3750],
                        ["optic_Arco",nil,3750],
                        ["optic_MRCO",nil,3750],
                        ["optic_DMS",nil,3750],
						["optic_SOS",nil,5630],
						["optic_LRPS",nil,5630],
                        ["optic_Holosight",nil,2250],
                        ["acc_flashlight",nil,380],
                        ["acc_pointer_IR",nil,380],
                        ["RangeFinder",nil,5630],
						["ItemGPS",nil,200],
                        ["ItemWatch",nil,100],
                        ["ItemCompass",nil,100],
                        ["ItemMap",nil,100],
                        ["ToolKit",nil,500],
                        ["FirstAidKit",nil,100],
						["NVGoggles",nil,0],
                        ["NVGoggles_INDEP",nil,0],
                        ["NVGoggles_OPFOR",nil,0],
                        ["muzzle_snds_H",nil,75000],
						["muzzle_snds_M",nil,56250]
					]
				];
			};

			case (__GETC__(life_donator) == 2):
			{
				["STS Donator Shop Tier 2",
					[
						["hgun_Rook40_F",nil,3750],
						["hgun_PDW2000_F",nil,10000],
						["30Rnd_9x21_Mag",nil,250],
						["16Rnd_9x21_Mag",nil,125],
						["hgun_ACPC2_F",nil,5000],
						["9Rnd_45ACP_Mag",nil,125],
						["hgun_Pistol_heavy_02_F",nil,7500],
						["6Rnd_45ACP_Cylinder",nil,125],
						["SMG_01_F",nil,12500],
						["30Rnd_45ACP_Mag_SMG_01",nil,250],
						["arifle_SDAR_F","SDAR Unterwasserwaffe",8750],
						["20Rnd_556x45_UW_mag",nil,250],
						["arifle_Katiba_F",nil,60000],
						["arifle_Katiba_GL_F",nil,75000],
						["30Rnd_65x39_caseless_green",nil,1000],
						["arifle_Mk20C_F",nil,37500],
						["arifle_Mk20_GL_F",nil,50000],
						["arifle_TRG21_F",nil,37500],
						["arifle_TRG21_GL_F",nil,50000],
						["30Rnd_556x45_Stanag",nil,750],
						["UGL_FlareWhite_F",nil,3000],
						["UGL_FlareGreen_F",nil,3000],
						["UGL_FlareRed_F",nil,3000],
						["UGL_FlareYellow_F",nil,3000],
						["arifle_MX_SW_F",nil,125000],
						["100Rnd_65x39_caseless_mag_Tracer",nil,2500],
						["srifle_DMR_01_F",nil,175000],
						["10Rnd_762x51_Mag",nil,1000],
						["srifle_EBR_F",nil,175000],
						["20Rnd_762x51_Mag",nil,1750],
						["srifle_GM6_F",nil,375000],
						["srifle_GM6_camo_F",nil,375000],
						["5Rnd_127x108_Mag",nil,1250],
                        ["optic_ACO_smg",nil,1500],
                        ["optic_Aco",nil,1500],
                        ["optic_Hamr",nil,2500],
                        ["optic_Arco",nil,2500],
                        ["optic_MRCO",nil,2500],
                        ["optic_DMS",nil,2500],
						["optic_SOS",nil,3750],
						["optic_LRPS",nil,3750],
                        ["optic_Holosight",nil,1000],
                        ["acc_flashlight",nil,250],
                        ["acc_pointer_IR",nil,250],
                        ["RangeFinder",nil,3750],
						["ItemGPS",nil,200],
                        ["ItemWatch",nil,100],
                        ["ItemCompass",nil,100],
                        ["ItemMap",nil,100],
                        ["ToolKit",nil,500],
                        ["FirstAidKit",nil,100],
						["NVGoggles",nil,0],
                        ["NVGoggles_INDEP",nil,0],
                        ["NVGoggles_OPFOR",nil,0]
					]
				];
			};

			case (__GETC__(life_donator) >= 3):
			{
				["STS Donator Shop Tier 3",
					[
						["hgun_Rook40_F",nil,3750],
						["hgun_PDW2000_F",nil,10000],
						["30Rnd_9x21_Mag",nil,250],
						["16Rnd_9x21_Mag",nil,125],
						["hgun_ACPC2_F",nil,5000],
						["9Rnd_45ACP_Mag",nil,125],
						["hgun_Pistol_heavy_02_F",nil,7500],
						["6Rnd_45ACP_Cylinder",nil,125],
						["SMG_01_F",nil,12500],
						["30Rnd_45ACP_Mag_SMG_01",nil,250],
						["arifle_SDAR_F","SDAR Unterwasserwaffe",8750],
						["20Rnd_556x45_UW_mag",nil,250],
						["arifle_Katiba_F",nil,60000],
						["arifle_Katiba_GL_F",nil,75000],
						["30Rnd_65x39_caseless_green",nil,1000],
						["arifle_Mk20C_F",nil,37500],
						["arifle_Mk20_GL_F",nil,50000],
						["arifle_TRG21_F",nil,37500],
						["arifle_TRG21_GL_F",nil,50000],
						["30Rnd_556x45_Stanag",nil,750],
						["UGL_FlareWhite_F",nil,3000],
						["UGL_FlareGreen_F",nil,3000],
						["UGL_FlareRed_F",nil,3000],
						["UGL_FlareYellow_F",nil,3000],
						["arifle_MX_SW_F",nil,125000],
						["100Rnd_65x39_caseless_mag_Tracer",nil,2500],
						["srifle_DMR_01_F",nil,175000],
						["10Rnd_762x51_Mag",nil,1000],
						["srifle_EBR_F",nil,175000],
						["20Rnd_762x51_Mag",nil,1750],
						["srifle_GM6_F",nil,375000],
						["srifle_GM6_camo_F",nil,375000],
						["5Rnd_127x108_Mag",nil,1250],
                        ["optic_ACO_smg",nil,1500],
                        ["optic_Aco",nil,1500],
                        ["optic_Hamr",nil,2500],
                        ["optic_Arco",nil,2500],
                        ["optic_MRCO",nil,2500],
                        ["optic_DMS",nil,2500],
						["optic_SOS",nil,3750],
						["optic_LRPS",nil,3750],
                        ["optic_Holosight",nil,1000],
                        ["acc_flashlight",nil,250],
                        ["acc_pointer_IR",nil,250],
                        ["RangeFinder",nil,3750],
						["ItemGPS",nil,200],
                        ["ItemWatch",nil,100],
                        ["ItemCompass",nil,100],
                        ["ItemMap",nil,100],
                        ["ToolKit",nil,500],
                        ["FirstAidKit",nil,100],
						["NVGoggles",nil,0],
                        ["NVGoggles_INDEP",nil,0],
                        ["NVGoggles_OPFOR",nil,0]
					]
				];
			};
		};
	};
	
	case "genstore":
	{
		["Werkzeugladen",
			[
				["Binocular",nil,100],
                ["ItemCompass",nil,100],
                ["ItemWatch",nil,100],
                ["ItemMap",nil,100],
                ["ItemGPS",nil,200],
                ["ToolKit",nil,500],
                ["FirstAidKit",nil,100],
                ["NVGoggles",nil,2000],
                ["NVGoggles_INDEP",nil,2000],
                ["NVGoggles_OPFOR",nil,2000]
			]
		];
	};


	case "tankewerkstatt":
	{
		["Werkstatt",
			[
				["ItemGPS",nil,200],
                ["ToolKit",nil,500],
                ["FirstAidKit",nil,100]
			]
		];
	};
};
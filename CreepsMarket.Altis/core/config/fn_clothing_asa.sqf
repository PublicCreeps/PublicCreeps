/*
	File: fn_clothing_bruce.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Bruce's Outback Outfits.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Lars Laden"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
		["U_B_CTRG_3","ASA Kleidung 1",5000],
		["U_B_CTRG_2","ASA Kleidung 2",5000],
		["U_B_Wetsuit","ASA Taucheranzug",2000]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_Beret_ocamo",nil,500],
			["H_CrewHelmetHeli_B",nil,500],
			["H_CrewHelmetHeli_O",nil,500],
			["H_CrewHelmetHeli_I",nil,500]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Shades_Black",nil,125],
			["G_Shades_Blue",nil,120],
			["G_Sport_Blackred",nil,220],
			["G_Sport_Checkered",nil,220],
			["G_Sport_Blackyellow",nil,220],
			["G_Sport_BlackWhite",nil,220],
			["G_Squares",nil,110],
			["G_Aviator",nil,400],
			["G_Lady_Mirror",nil,350],
			["G_Lady_Dark",nil,350],
			["G_Lady_Blue",nil,350],
			["G_Lowprofile",nil,230],
			["G_Spectacles_Tinted",nil,430],
			["G_Spectacles",nil,430],
			["G_Tactical_Clear",nil,530],
			["G_Tactical_Black",nil,555],
			["G_Diving",nil,500]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["V_PlateCarrier1_blk",nil,5000],
			["V_PlateCarrier2_rgr",nil,5000],
			["V_Chestrig_blk",nil,5000],
			["V_TacVest_blk",nil,5000],
			["V_RebreatherB",nil,5000]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_AssaultPack_blk",nil,3500],
			["B_AssaultPack_rgr",nil,3500],
			["B_FieldPack_blk",nil,5500],
			["B_FieldPack_khk",nil,5500],
			["B_FieldPack_oli",nil,5500],
			["B_FieldPack_cbr",nil,5500],
			["B_TacticalPack_oli",nil,4500],
			["B_TacticalPack_rgr",nil,4500],
			["B_TacticalPack_blk",nil,4500],
			["B_Kitbag_cbr",nil,5500],
			["B_Kitbag_rgr",nil,5500],
			["B_Kitbag_sgg",nil,5500],
			["B_Carryall_oli",nil,6000],
			["B_Carryall_cbr",nil,6000],
			["B_Carryall_khk",nil,6000],
			["B_Parachute",nil,7500]
		];
	};
};
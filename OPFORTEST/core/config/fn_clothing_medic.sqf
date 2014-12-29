/*
	File: fn_clothing_dive.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Altis Diving Shop.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Manfreds Arzt Händler"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["U_C_Scientist","Arztkleidung",0],
			["U_O_Wetsuit","Taucheranzug",0],
			["U_I_HeliPilotCoveralls","Notarztkleidung",0]
		];
	};
	
	//Hats
	case 1:
	{
		[
		["H_Cap_red",nil,500],
		["H_PilotHelmetHeli_B",nil,500],
		["H_Bandanna_surfer",nil,500],
		["H_Bandanna_khk",nil,500],
		["H_Bandanna_mcamo",nil,500],
		["H_Beret_blk",nil,500]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Diving",nil,0]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["V_RebreatherB",nil,0]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_AssaultPack_blk",nil,0],
            ["B_AssaultPack_rgr",nil,0],
            ["B_AssaultPack_Kerry",nil,0],
            ["B_TacticalPack_rgr",nil,0],
            ["B_TacticalPack_oli",nil,0],
			["B_TacticalPack_blk",nil,0],
			["B_Kitbag_mcamo",nil,0],
			["B_Kitbag_cbr",nil,0],
			["B_Kitbag_sgg",nil,0],
			["B_Kitbag_rgr",nil,0],
			["B_Carryall_cbr",nil,0],
			["B_Carryall_oli",nil,0],
			["B_Carryall_khk",nil,0],
			["B_FieldPack_blk",nil,0],
            ["B_Parachute",nil,0]
		];
	};
};
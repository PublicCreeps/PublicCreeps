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
ctrlSetText[3103,"Bruce's Outback Outfits"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
		["U_Rangemaster","ADAC Kleidung",500]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_Bandanna_camo","Camo Bandanna",120],
			["H_Bandanna_surfer","Surfer Bandanna",130],
			["H_Bandanna_gry","Grey Bandanna",150],
			["H_Bandanna_cbr",nil,165],
			["H_Bandanna_surfer",nil,135],
			["H_Bandanna_khk","Khaki Bandanna",145],
			["H_Bandanna_sgg","Sage Bandanna",160],
			["H_StrawHat","Straw Fedora",225],
			["H_StrawHat_dark",nil,225],
			["H_BandMask_blk","Hat & Bandanna",300],
			["H_Booniehat_tan",nil,425],
			["H_Hat_blue",nil,310],
			["H_Hat_brown",nil,276],
			["H_Hat_checker",nil,340],
			["H_Hat_grey",nil,280],
			["H_Hat_tan",nil,265],
			["H_Cap_blu",nil,150],
			["H_Cap_grn",nil,150],
			["H_Cap_grn_BI",nil,150],
			["H_Cap_oli",nil,150],
			["H_Cap_red",nil,150],
			["H_Cap_blk",nil,150],
			["H_Cap_blk_CMMG",nil,200],
			["H_Cap_tan_specops_US",nil,200],
			["H_Cap_khaki_specops_UK",nil,200],
			["H_Cap_blk_Raven",nil,200],
			["H_Cap_blk_ION",nil,200],
			["H_Cap_oli_hs",nil,200],
			["H_Cap_press",nil,200],
			["H_Cap_tan",nil,150]
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
			["G_Tactical_Black",nil,555]
		];
	};
	
	//Vest
	case 3:
	{
		[
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
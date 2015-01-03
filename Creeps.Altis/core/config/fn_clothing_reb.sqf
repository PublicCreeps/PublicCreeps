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
ctrlSetText[3103,"Rebellen Outlet"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
		["U_I_CombatUniform",nil,5000],
		["U_I_CombatUniform_tshirt",nil,5000],
		["U_O_SpecopsUniform_ocamo",nil,5000],
		["U_O_OfficerUniform_ocamo",nil,7500],
		["U_IG_leader",nil,5000],
		["U_IG_Guerilla1_1",nil,1700],
		["U_O_PilotCoveralls",nil,5000],
		["U_O_CombatUniform_oucamo",nil,5000],
		["U_B_PilotCoveralls",nil,5000],
		["U_B_CTRG_2",nil,5000],
		["U_I_G_Story_Protagonist_F",nil,5000],
		["U_I_G_resistanceLeader_F",nil,5000],
		["U_I_OfficerUniform","Offizier AAF",7500],
		["U_BG_Guerrilla_6_1",nil,10000],
		["U_O_GhillieSuit",nil,12500],
		["U_I_GhillieSuit",nil,12500]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_Bandanna_camo","Camo Bandanna",500],
			["H_MilCap_ocamo",nil,500],
			["H_Booniehat_dgtl",nil,750],
			["H_Booniehat_grn",nil,750],
			["H_HelmetCrew_I",nil,1500],
			["H_HelmetB_sand",nil,1500],
			["H_HelmetIA",nil,1500],
			["H_PilotHelmetHeli_I",nil,1500],
			["H_CrewHelmetHeli_I",nil,1500],
			["H_HelmetB_paint",nil,1500],
			["H_HelmetB_camo",nil,1500],
			["H_HelmetB_desert",nil,1500],
			["H_Hat_camo",nil,500],
			["H_MilCap_dgtl",nil,750],
			["H_ShemagOpen_khk",nil,2000],
			["H_Booniehat_tan",nil,750],
			["H_Shemag_olive",nil,2000],
			["H_Shemag_khk",nil,2000],
			["H_Shemag_tan",nil,2000],
			["H_Cap_tan",nil,750]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Shades_Black",nil,250],
			["G_Shades_Blue",nil,250],
			["G_Sport_Blackred",nil,250],
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
			["G_Balaclava_blk",nil,750],
			["G_Balaclava_combat",nil,750],
			["G_Balaclava_lowprofile",nil,750],
			["G_Balaclava_oli",nil,750],
			["G_Combat",nil,500],
			["G_Tactical_Clear",nil,530],
			["G_Tactical_Black",nil,555]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["V_BandollierB_khk",nil,2500],
			["V_BandollierB_cbr",nil,3500],
			["V_BandollierB_oli",nil,3500],
			["V_Chestrig_khk",nil,3500],
			["V_Chestrig_rgr",nil,3500],
			["V_Chestrig_oli",nil,3500],
			["V_TacVest_camo",nil,4500],
			["V_TacVestCamo_khk",nil,4500],
			["V_PlateCarrierIA1_dgtl",nil,4500],
			["V_PlateCarrier3_rgr",nil,4500],
			["V_PlateCarrierIA2_dgtl",nil,4500],
			["V_PlateCarrierIAGL_dgtl",nil,4500],
			["V_PlateCarrier_Kerry",nil,4500],
			["V_I_G_resistanceLeader_F",nil,4500],
			["V_PlateCarrierL_CTRG",nil,4500],
			["V_PlateCarrierH_CTRG",nil,4500],
			["V_Press_F",nil,3500]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_AssaultPack_khk",nil,3500],
			["B_AssaultPack_dgtl",nil,3500],
			["B_AssaultPack_rgr",nil,4500],
			["B_AssaultPack_cbr",nil,4500],
			["B_AssaultPack_mcamo",nil,4500],
			["B_FieldPack_ocamo",nil,5500],
			["B_FieldPack_oucamo",nil,5500],
			["B_Kitbag_mcamo",nil,5500],
			["B_Bergen_mcamo",nil,5500],
			["B_Bergen_rgr",nil,5500],
			["B_Kitbag_rgr",nil,5500],
			["B_Carryall_ocamo",nil,5500],
			["B_Carryall_oucamo",nil,5500],
			["B_Carryall_mcamo",nil,6000],
			["B_Carryall_oli",nil,6000],
			["B_Carryall_khk",nil,6000],
			["B_Parachute",nil,7500]
		];
	};
};
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
		["U_C_Poloshirt_blue","Poloshirt Blau",300],
		["U_C_Poloshirt_burgundy","Poloshirt Burgundy",300],
		["U_C_Poloshirt_redwhite","Poloshirt Rot/Weiss",300],
		["U_C_Poloshirt_salmon","Poloshirt Salmon",300],
		["U_C_Poloshirt_stripped","Poloshirt stripped",300],
		["U_C_Poloshirt_tricolour","Poloshirt Tricolor",300],
		["U_C_Poor_2","Rag tagged clothes",300],
		["U_IG_Guerilla2_2","Grün gestreiftes Hemd",650],
		["U_IG_Guerilla3_1","Baune Jacke und Hose",735],
		["U_IG_Guerilla2_3","The Outback Rangler",1700],
		["U_C_HunterBody_grn","The Hunters Look",1700],
		["U_C_WorkerCoveralls","Blaumann",2700],
		["U_OrestesBody","Surfing On Land",1300],
		["U_C_Journalist","Journalist",2500],
		["U_Competitor",nil,2500],
		["U_I_HeliPilotCoveralls","Helikopteranzug",3000],
		["U_B_PilotCoveralls","Pilotenanzug",3000],
		["U_Marshal","Marschall-Kleidung",3000],
		["U_NikosAgedBody","Feiner Anzug",5000]
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
			["H_PilotHelmetHeli_B",nil,1500],
			["H_PilotHelmetHeli_O",nil,1500],
			["H_PilotHelmetHeli_I",nil,1500],
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
			["V_Rangemaster_belt",nil,2500],
			["V_BandollierB_khk",nil,3500],
			["V_BandollierB_cbr",nil,3500],
			["V_BandollierB_rgr",nil,3500],
			["V_BandollierB_blk",nil,3500],
			["V_BandollierB_oli",nil,3500],
			["V_TacVest_khk",nil,4500],
			["V_TacVest_brn",nil,4500],
			["V_TacVest_oli",nil,4500],
			["V_TacVest_blk",nil,4500],
			["V_TacVestIR_blk",nil,4500],
			["V_HarnessO_gry",nil,4500],
			["V_HarnessOGL_gry",nil,4500],
			["V_HarnessOSpec_gry",nil,4500],
			["V_I_G_resistanceLeader_F",nil,4500],
			["V_Press_F",nil,3500]
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
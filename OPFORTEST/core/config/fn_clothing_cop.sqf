#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Altis Police Department Shop"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		_ret set[count _ret,["U_Rangemaster","Anwärteruniform",0]];
		_ret set[count _ret,["U_O_Wetsuit","Taucheranzug",0]];
	
		if(__GETC__(life_coplevel) > 1) then
			{
				_ret set[count _ret,["U_B_CombatUniform_mcam","Polizeiuniform",0]];
				
			};
			
			if(__GETC__(life_coplevel) > 3) then
			{
				_ret set[count _ret,["U_B_CombatUniform_mcam_worn","Einsatzanzug",0]];
				_ret set[count _ret,["U_I_G_Story_Protagonist_F","Anzug",0]];
				_ret set[count _ret,["U_B_CombatUniform_mcam_tshirt","Kampfanzug T-Shirt",0]];
				_ret set[count _ret,["U_B_survival_uniform","Überlebenskleidung",0]];
				_ret set[count _ret,["U_OG_Guerilla2_1","Guerilla",0]];
				
			};
			if(__GETC__(life_coplevel) > 6) then
			{
				_ret set[count _ret,["U_I_Protagonist_VR","Eventkleidung Grün",0]];
				_ret set[count _ret,["U_O_Protagonist_VR","Eventkleidung Rot",0]];
				_ret set[count _ret,["U_B_Protagonist_VR","Eventkleidung Blau",0]];
			};
	};	
	
	//Hats
	case 1:
	 {
        _ret set[count _ret,["H_Beret_blk_POLICE",nil,0]];
        _ret set[count _ret,["H_Beret_blk",nil,0]];
    
        if(__GETC__(life_coplevel) > 1) then
        {
            _ret set[count _ret,["H_Beret_02",nil,0]];

        };
        
        if(__GETC__(life_coplevel) > 2) then
        {
            _ret set[count _ret,["H_MilCap_gry",nil,0]];
            _ret set[count _ret,["H_Cap_blk",nil,0]];
			_ret set[count _ret,["H_MilCap_blue",nil,0]];
        };
       	if(__GETC__(life_coplevel) > 3) then
        {
            _ret set[count _ret,["H_Watchcap_blk",nil,0]];
            _ret set[count _ret,["H_Watchcap_khk",nil,0]];
            _ret set[count _ret,["H_Watchcap_camo",nil,0]];
            _ret set[count _ret,["H_Watchcap_sgg",nil,0]];
            _ret set[count _ret,["H_Booniehat_mcamo",nil,0]];
            _ret set[count _ret,["H_Booniehat_khk",nil,0]];
            _ret set[count _ret,["H_Booniehat_tan",nil,0]];
            _ret set[count _ret,["H_Booniehat_khk_hs",nil,0]];
			_ret set[count _ret,["H_HelmetB_light_black",nil,0]];
        };
        
        if(__GETC__(life_coplevel) > 5) then
        {
            _ret set[count _ret,["H_Beret_Colonel",nil,0]];
            _ret set[count _ret,["H_CrewHelmetHeli_B",nil,0]];
            _ret set[count _ret,["H_CrewHelmetHeli_O",nil,0]];
			_ret set[count _ret,["H_CrewHelmetHeli_I",nil,0]];
			_ret set[count _ret,["H_RacingHelmet_3_F",nil,0]];
			_ret set[count _ret,["H_RacingHelmet_1_black_F",nil,0]];
			
        };
    };
	
	//Glasses
	case 2:
	{
			_ret set[count _ret,["G_Shades_Black",nil,0]];
			_ret set[count _ret,["G_Sport_Blackred",nil,0]];
			_ret set[count _ret,["G_Sport_Blackyellow",nil,0]];
			_ret set[count _ret,["G_Sport_BlackWhite",nil,0]];
			_ret set[count _ret,["G_Aviator",nil,0]];
			_ret set[count _ret,["G_Squares",nil,0]];
			_ret set[count _ret,["G_Squares_Tinted",nil,0]];
			_ret set[count _ret,["G_Tactical_Black",nil,0]];
			_ret set[count _ret,["G_Tactical_Clear",nil,0]];


		 if(__GETC__(life_coplevel) > 2) then
        {
            _ret set[count _ret,["G_Diving","Taucherbrille",0]];
        };
        if(__GETC__(life_coplevel) > 3) then
        {
            _ret set[count _ret,["G_Bandanna_aviator",nil,0]];
            _ret set[count _ret,["G_Bandanna_blk",nil,0]];
            _ret set[count _ret,["G_Bandanna_khk",nil,0]];
            _ret set[count _ret,["G_Bandanna_shades",nil,0]];
            _ret set[count _ret,["G_Bandanna_sport",nil,0]];
            _ret set[count _ret,["G_Bandanna_tan",nil,0]];
        };
	};
	
	//Vest
	 case 3:
    {
        _ret set[count _ret,["V_Rangemaster_belt",nil,0]];
        _ret set[count _ret,["V_BandollierB_blk",nil,0]];
        if(__GETC__(life_coplevel) > 1) then
        {
            _ret set[count _ret,["V_PlateCarrier1_blk",nil,0]];
            _ret set[count _ret,["V_PlateCarrier2_rgr",nil,0]];
            _ret set[count _ret,["V_Chestrig_blk",nil,0]];
            _ret set[count _ret,["V_TacVest_blk",nil,0]];
            _ret set[count _ret,["V_TacVest_blk_POLICE",nil,0]];
            _ret set[count _ret,["V_TacVestIR_blk",nil,0]];
            _ret set[count _ret,["V_TacVest_oli",nil,0]];
        };
        if(__GETC__(life_coplevel) > 2) then
        {
            _ret set[count _ret,["V_RebreatherIR","Atemgerät",0]];
        };
		if(__GETC__(life_coplevel) > 3) then
        {
            _ret set[count _ret,["V_HarnessOGL_brn",nil,0]];
			_ret set[count _ret,["V_BandollierB_cbr",nil,0]];
			_ret set[count _ret,["V_TacVest_brn",nil,0]];
			_ret set[count _ret,["V_TacVest_khk",nil,0]];
			_ret set[count _ret,["V_HarnessOSpec_brn",nil,0]];
        };
    };
	
	//Backpacks
	case 4:
	{
		_ret =
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

_ret;
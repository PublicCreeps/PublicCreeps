/*

	Updates player clothing by replacing vanilla by custom ones
        by Audacious

*/

private["_uniform","_backpack"];

///Uniform
////////////////

_uniform = uniform player;

switch(true) do
{
	case (playerSide == west && _uniform == "U_Rangemaster"):
	{
		if( (call life_coplevel) > 0) then
		{
			player setObjectTextureGlobal  [0, "textures\cops\skin\anzug.paa"]; 
		}
		else
		{
			player setObjectTextureGlobal  [0, "textures\cops\skin\anzug.paa"]; 
		};
		
		if(backpack player != "") then {(unitBackpack player) setObjectTextureGlobal [0,""];};
	};
	
	case (playerSide == west && _uniform == "U_B_CombatUniform_mcam"):
	{
		if( (call life_coplevel) > 2) then
		{
			player setObjectTextureGlobal  [0, "textures\cops\skin\cop_captain.jpg"]; 
		}
		else
		{
			player setObjectTextureGlobal  [0, "textures\cops\skin\cop_captain.jpg"]; 
		};
		
		if(backpack player != "") then {(unitBackpack player) setObjectTextureGlobal [0,""];};
	};
	
	case (playerSide == west && _uniform == "U_B_CombatUniform_mcam_vest"):
	{
		if( (call life_coplevel) > 2) then
		{
			player setObjectTextureGlobal  [0, "textures\cops\skin\polizei_uniform.jpg"]; 
		}
		else
		{
			player setObjectTextureGlobal  [0, "textures\cops\skin\polizei_uniform.jpg"]; 
		};
		
		if(backpack player != "") then {(unitBackpack player) setObjectTextureGlobal [0,""];};
	};
	
	case (playerSide == west && _uniform == "U_B_CombatUniform_mcam_worn"):
	{
		if( (call life_coplevel) > 6) then
		{
			player setObjectTextureGlobal  [0, "textures\cops\skin\gsg9.paa"]; 
		}
		else
		{
			player setObjectTextureGlobal  [0, "textures\cops\skin\gsg9.paa"]; 
		};
		
		if(backpack player != "") then {(unitBackpack player) setObjectTextureGlobal [0,""];};
	};
	
	case (playerSide == independent && _uniform == "U_I_HeliPilotCoveralls"):
	{
		if( (call life_mediclevel) > 0) then
		{
			player setObjectTextureGlobal  [0, "textures\medic\skin\notarzt_kleidung.paa"];
		}
		else
		{
			player setObjectTextureGlobal  [0, "textures\medic\skin\notarzt_kleidung.paa"]; 
		};
		
	if(backpack player != "") then {(unitBackpack player) setObjectTextureGlobal [0,""];};
};	
	
	case (playerSide == east && _uniform == "U_Rangemaster"):
	{
		if( (call life_adaclevel) > 0) then
		{
			player setObjectTextureGlobal  [0, "textures\adac\skin\adac.paa"];
		};
		
		if(backpack player != "") then {(unitBackpack player) setObjectTextureGlobal [0,""];};
	};	
};

///backpack
////////////////
/*

	Updates player clothing by replacing vanilla by custom ones

*/

private["_uniform"];

///Uniform
////////////////

_uniform = uniform player;

switch(true) do
{
	
	case (playerSide == independent && _uniform == "U_Rangemaster"):
	{
		if( (call life_medlevel) >= 1) then
		{
			player setObjectTextureGlobal  [0, "textures\medic_uniform.paa"];
		};
	};
};



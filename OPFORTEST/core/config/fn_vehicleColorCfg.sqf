/*
	File: fn_vehicleColorCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for vehicle colors.
*/
private["_vehicle","_ret","_path"];
_vehicle = [_this,0,"",[""]] call BIS_fnc_param;
if(_vehicle == "") exitWith {[]};
_ret = [];

switch (_vehicle) do
{
	case "I_Heli_Transport_02_F":
	{
		_path = "\a3\air_f_beta\Heli_Transport_02\Data\Skins\";
		_ret =
		[
			[_path + "heli_transport_02_1_ion_co.paa","civ",_path + "heli_transport_02_2_ion_co.paa",_path + "heli_transport_02_3_ion_co.paa"],
			[_path + "heli_transport_02_1_dahoman_co.paa","civ",_path + "heli_transport_02_2_dahoman_co.paa",_path + "heli_transport_02_3_dahoman_co.paa"]
		];
	};
	case "C_Hatchback_01_sport_F":
	{
		_path = "\a3\soft_f_gamma\Hatchback_01\data\";
		_ret =
		[	
			[_path + "hatchback_01_ext_sport01_co.paa","civ"],
			[_path + "hatchback_01_ext_sport02_co.paa","civ"],
			[_path + "hatchback_01_ext_sport03_co.paa","civ"],
			[_path + "hatchback_01_ext_sport04_co.paa","civ"],
			[_path + "hatchback_01_ext_sport05_co.paa","civ"],
			[_path + "hatchback_01_ext_sport06_co.paa","civ"],
			["textures\hatchback_Polizei.paa","cop"],
			["textures\limousine_sport_smario.paa","civ"],
			["textures\sport_ghost.paa","civ"],
			["textures\hatchback_badmobil.paa","civ"],
			["textures\hatchback_medic.paa","med"],
			["textures\asa_limosine.paa","adac"]
		];
	};
		
	case "C_Offroad_01_F":
	{
		_ret = 
		[	
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_co.paa", "civ"], 
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE01_CO.paa", "civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE02_CO.paa", "civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE03_CO.paa","civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE04_CO.paa","civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE05_CO.paa","civ"],
			["#(ai,64,64,1)Fresnel(0.3,3)","civ"],
			["textures\police_offroad.paa","cop"],
			["textures\offroad_rockstar.paa","civ"],
			["textures\offroader_monster.paa","civ"],
			["textures\offroad_badmobil.paa","civ"],
			["textures\offroad_stickerbomb.paa","civ"],
			["textures\notarzt_offroad.paa","med"]
		];
	};
	
	case "C_Hatchback_01_F":
	{
		_ret =
		[
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base01_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base02_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base03_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base04_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base06_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base07_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base08_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base09_co.paa","civ"],
			["textures\hatchback_badmobil.paa","civ"]
		];
	};
	
	case "C_SUV_01_F":
	{
		_ret =
		[
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_03_co.paa","civ"],
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_04_co.paa","civ"],
			["textures\cop_suv.paa","cop"],
			["textures\suv_sek.paa","cop"],
			["textures\suv_Monster.paa","civ"],
			["textures\suv_Ghostrider.paa","civ"],
			["textures\suv_white.paa","civ"],
			["textures\suv_green_tribal.paa","civ"],
			["textures\notarzt_suv.paa","med"],
			["textures\civ_suv_asa.paa","adac"]
		];
	};
	
	case "C_Van_01_box_F":
	{
		_ret = 
		[
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa","civ"]
		];
	};
	
	case "C_Van_01_transport_F":
	{
		_ret = 
		[
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa","civ"]
		];
	};
	
	case "B_Quadbike_01_F":
	{
		_ret = 
		[
			["\A3\Soft_F\Quadbike_01\Data\Quadbike_01_co.paa","cop"],
			["\A3\Soft_F\Quadbike_01\Data\quadbike_01_opfor_co.paa","reb"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_black_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_blue_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_red_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_white_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_indp_co.paa","civ"],
			["\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa","civ"],
			["\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa","reb"]
		];
	};
	
	case "B_Heli_Light_01_F":
	{
		_ret = 
		[
			["textures\Polizei_Hummingbird.paa","cop"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_ion_co.paa","fed"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_blue_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_indp_co.paa","donate"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_blueline_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_elliptical_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_furious_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_jeans_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_speedy_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sunset_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_vrana_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_wave_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_digital_co.paa","reb"],
			["textures\notarzt_hummingbird.paa","med"],
			["textures\hummingbird_monster.paa","civ"],
			["textures\asa_humminbird.paa","adac"]
		];
	};
	
	case "O_Heli_Light_02_unarmed_F":
	{
		_ret = 
		[
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_co.paa","fed"],
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_civilian_co.paa","civ"],
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_indp_co.paa","donate"],
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_opfor_co.paa","reb"],
			["#(argb,8,8,3)color(1,1,1,0.8)","med"],
			["textures\orca_polizei.paa","cop"],
			["textures\asa_orca_v2.paa","adac"]
		];
	};
	
	case "B_MRAP_01_F":
	{
		_ret = 
		[
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"],
			["textures\hunter_sek_front1.paa","cop"],	
			["textures\hunter1.jpg","cop"],
			["textures\hunter_rebellvorn.paa","reb","textures\hunter_rebellhinten.paa"],
			["textures\donator_hunter_front.paa","civ","textures\donator_hunter_hinten.paa"],
			["textures\hunter_notarzt_front1.paa","med","textures\hunter_notarzt_hinten1.paa"],
			["textures\rebell_hunter_0.paa","reb","textures\rebell_hunter_1.paa"],
			["textures\rebell_hunter_typ3_teil1.paa","reb","textures\rebell_hunter_typ3_teil2.paa"],
			["textures\asa_hunter_frontv2.paa","adac","textures\asa_hunter_backv2.paa"]
			

		];
	};

	case "O_MRAP_02_F":
	{
		_ret = 
		[
			["textures\ifrit_rebellvorn.paa","reb","textures\ifrit_rebellhinten.paa"],
			["textures\rebell_ifrit_0.paa","reb","textures\rebell_ifrit_1.paa"],
			["textures\rebell_ifrit_typ3_teil1.paa","reb","textures\rebell_ifrit_typ3_teil2.paa"]
		];
	};
	case "I_MRAP_03_F":
	{
		_ret = 
		[
			["textures\strider_sek.paa","cop"],
			["textures\strider_med.paa","med"]
		];
	};

	case "B_Truck_01_mover_F":
	{
		_ret = 
		[
			["textures\hemtt_mover_adac.paa","civ"]
		];
	};
	case "I_Truck_02_covered_F":
	{
		_ret = 
		[
			["\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa","civ","\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"],
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"]
		];
	};
	
	case "I_Truck_02_transport_F":
	{
		_ret = 
		[
			["\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa","civ","\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"],
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"]
		];
	};
	
	case "B_APC_Wheeled_01_cannon_F":
	{
		_ret = 
		[
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"]
		];
	};
	
	case "O_Heli_Attack_02_black_F":
	{
		_ret = 
		[
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"]
		];
	};
		case "I_Heli_light_03_unarmed_F":
	{
		_ret =
		[
			["textures\cop_Hellcat.paa","cop"],
			["textures\notarzt_hellcat.paa","med"]

		];
	};
	case "C_Boat_Civil_01_police_F":
	{
		_ret =
		[
			["textures\polizei_motorboot.paa","cop"]		
		];
	};
	case "B_Boat_Armed_01_minigun_F":
	{
		_ret =
		[
			["textures\polizei_speedboot.paa","cop"]		
		];
	};
	case "B_SDV_01_F":
	{
		_ret =
		[
			["textures\polizei_uboot.paa","cop"]		
		];
	};
	case "B_MRAP_01_hmg_F":
	{
		_ret =
		[
			["textures\hunter1.jpg","cop"]		
		];
	};
};

_ret;
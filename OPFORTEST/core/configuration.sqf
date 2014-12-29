#include <macro.h>
/*
	Master Life Configuration File
	This file is to setup variables for the client, there are still other configuration files in the system

*****************************
****** Backend Variables *****
*****************************
*/
life_query_time = time;
life_action_delay = time;
life_trunk_vehicle = Objnull;
life_session_completed = false;
life_garage_store = false;
life_session_tries = 0;
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_siren2_active = false;
life_clothing_filter = 0;
life_clothing_uniform = -1;
life_redgull_effect = time;
life_is_processing = false;
life_bail_paid = false;
life_impound_inuse = false;
life_action_inUse = false;
life_spikestrip = ObjNull;
//life_respawn_timer = 2; //Scaled in minutes
life_knockout = false;
life_interrupted = false;
life_respawned = false;
life_removeWanted = false;
life_action_gathering = false;
life_action_gather = false; // Picking Spam Fix
delay_pickaxe = false; // Q-Spam Pickaxe Fix
// Drugs
life_drug = 0;
drug_weed = false;
drug_heroin = false;
drug_cocaine = false;
drug_meth = false;
//fuelstation
life_fuelstation_price = 15;
life_fuelstation_lockVeh = objNull;
life_fuelstation_fueltruck = objNull;
life_fuelstation_amount = 0;
life_fuelstation_fitamount = 0;
life_fuelstation_cfgTrucks = ["C_Van_01_fuel_F","B_Truck_01_fuel_F"];

life_fms_group = "";
life_fms_groups = [["Police",["Leitstelle","Alpha","Bravo","Charlie","Delta","Echo","Foxtrot"]]];
life_fms_info = [];


//Persistent Saving
__CONST__(life_save_civ,TRUE); //Save weapons for civs?
__CONST__(life_save_yinv,TRUE); //Save Y-Inventory for players?
//Set the max fatigue limit (50%)
life_fatigue = 0.5; 
//Revive constant variables.
__CONST__(life_revive_cops,TRUE); //Set to false if you don't want cops to be able to revive downed players.
__CONST__(life_revive_fee,5000); //Fee for players to pay when revived.

//House Limit
__CONST__(life_houseLimit,3); //Maximum amount of houses a player can buy (TODO: Make Tiered licenses).

//Gang related stuff?
__CONST__(life_gangPrice,100000); //Price for creating a gang (They're all persistent so keep it high to avoid 345345345 gangs).
__CONST__(life_gangUpgradeBase,10000); //MASDASDASD
__CONST__(life_gangUpgradeMultipler,2.5); //BLAH

//Uniform price (0),Hat Price (1),Glasses Price (2),Vest Price (3),Backpack Price (4)
life_clothing_purchase = [-1,-1,-1,-1,-1];
/*
*****************************
****** Weight Variables *****
*****************************
*/
life_maxWeight = 104; //Identifies the max carrying weight (gets adjusted throughout game when wearing different types of clothing).
life_maxWeightT = 64; //Static variable representing the players max carrying weight on start.
life_carryWeight = 0; //Represents the players current inventory weight (MUST START AT 0).

/*
*****************************
****** Life Variables *******
*****************************
*/
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_bank_fail = false;
life_use_atm = true;
life_is_arrested = false;
life_delivery_in_progress = false;
life_action_in_use = false;
life_thirst = 100;
life_hunger = 100;
__CONST__(life_paycheck_period,5); //Five minutes
life_cash = 0;
__CONST__(life_impound_car,1000);
__CONST__(life_impound_boat,1250);
__CONST__(life_impound_air,1500);
life_istazed = false;
life_my_gang = ObjNull;
life_yelp_active = false; // Second Siren
life_siren2_active = false;
life_vehicles = [];
bank_robber = [];
life_smartphoneTarget = ObjNull;
life_fadeSound = false;



switch (playerSide) do
{
	case west: 
	{
		life_atmcash = 20000; //Starting Bank Money
		life_paycheck = 3500; //Paycheck Amount
	};
	case civilian: 
	{
		life_atmcash = 20000; //Starting Bank Money
		life_paycheck = 1500; //Paycheck Amount
	};
	
	case independent: {
		life_atmcash = 20000;
		life_paycheck = 3500;
	};
	case east:
	{
		life_atmcash = 20000;
		life_paycheck = 2500;
	};
};

/*
	Master Array of items?
*/

life_inv_items = 
[
	"life_inv_oilu",
	"life_inv_oilp",
	"life_inv_heroinu",
	"life_inv_heroinp",
	"life_inv_cannabis",
	"life_inv_marijuana",
	"life_inv_apple",
	"life_inv_rabbit",
	"life_inv_salema",
	"life_inv_ornate",
	"life_inv_mackerel",
	"life_inv_tuna",
	"life_inv_mullet",
	"life_inv_catshark",
	"life_inv_turtle",
	"life_inv_fishingpoles",
	"life_inv_water",
	"life_inv_donuts",
	"life_inv_turtlesoup",
	"life_inv_coffee",
	"life_inv_fuelF",
	"life_inv_fuelE",
	"life_inv_pickaxe",
	"life_inv_copperore",
	"life_inv_ironore",
	"life_inv_ironr",
	"life_inv_copperr",
	"life_inv_sand",
	"life_inv_salt",
	"life_inv_saltr",
	"life_inv_glass",
	"life_inv_tbacon",
	"life_inv_lockpick",
	"life_inv_redgull",
	"life_inv_peach",
	"life_inv_diamond",
	"life_inv_coke",
	"life_inv_cokep",
	"life_inv_diamondr",
	"life_inv_spikeStrip",
	"life_inv_roadBarrier",
	"life_inv_rock",
	"life_inv_cement",
	"life_inv_goldbar",
	"life_inv_blastingcharge",
	"life_inv_boltcutter",
	"life_inv_defusekit",
	"life_inv_storagesmall",
	"life_inv_storagebig",
	"life_inv_zipties",
	"life_inv_schmerzmittel",
	"life_inv_traube",
	"life_inv_methu",
    "life_inv_methp",
    "life_inv_sugarcane",
    "life_inv_sugar"
];

//Setup variable inv vars.
{missionNamespace setVariable[_x,0];} foreach life_inv_items;
//Licenses [license var, civ/cop]
life_licenses =
[
	["license_cop_air","cop"],
	["license_cop_swat","cop"],
	["license_cop_cg","cop"],
	["license_civ_driver","civ"],
	["license_civ_air","civ"],
	["license_civ_heroin","civ"],
	["license_civ_marijuana","civ"],
	["license_civ_gang","civ"],
	["license_civ_boat","civ"],
	["license_civ_oil","civ"],
	["license_civ_dive","civ"],
	["license_civ_truck","civ"],
	["license_civ_gun","civ"],
	["license_civ_rebel","civ"],
	["license_civ_coke","civ"],
	["license_civ_diamond","civ"],
	["license_civ_copper","civ"],
	["license_civ_iron","civ"],
	["license_civ_sand","civ"],
	["license_civ_salt","civ"],
	["license_civ_cement","civ"],
	["license_med_air","med"],
	["license_civ_home","civ"],
	["license_civ_meth","civ"],
	["license_civ_sugar","civ"]
];

//Setup License Variables
{missionNamespace setVariable[(_x select 0),false];} foreach life_licenses;

life_dp_points = ["dp_1","dp_2","dp_3","dp_4","dp_5","dp_6","dp_7","dp_8","dp_9","dp_10","dp_11","dp_12","dp_13","dp_14","dp_15","dp_15","dp_16","dp_17","dp_18","dp_19","dp_20","dp_21","dp_22","dp_23","dp_24","dp_25"];
//[shortVar,reward]
life_illegal_items = [["heroinu",1200],["heroinp",2500],["cocaine",1500],["cocainep",3500],["marijuana",2000],["turtle",3000],["blastingcharge",10000],["boltcutter",500],["goldbar",50000],["methu",100],["methp",4000]];


/*
	Sell / buy arrays
*/
sell_array = 
[
	["apple",50],
	["heroinu",2500],
	["heroinp",10000],
	["salema",45],
	["ornate",40],
	["mackerel",175],
	["tuna",700],
	["mullet",250],
	["catshark",300],
	["rabbit",65],
	["oilp",2000],
	["turtle",6000],
	["water",5],
	["coffee",5],
	["turtlesoup",1000],
	["donuts",60],
	["marijuana",2350],
	["tbacon",25],
	["lockpick",75],
	["pickaxe",750],
	["redgull",200],
	["peach",55],
	["cocaine",2000],
	["cocainep",8000],
	["diamond",1000],
	["diamondc",4000],
	["iron_r",4000],
	["copper_r",2500],
	["salt_r",2500],
	["glass",1450],
	["fuelF",500],
	["spikeStrip",0],
	["roadBarrier",0],
	["cement",2000],
	["goldbar",50000],
	["zipties",50],
	["schmerzmittel",250],
	["traube",75],
	["methu",1000],
    ["methp",4000],
    ["sugarcane",400],
    ["sugar",2000]
];
__CONST__(sell_array,sell_array);

buy_array = 
[
	["apple",65],
	["rabbit",75],
	["salema",55],
	["ornate",50],
	["mackerel",200],
	["tuna",900],
	["mullet",300],
	["catshark",350],
	["water",10],
	["turtle",10000],
	["turtlesoup",2500],
	["donuts",120],
	["coffee",10],
	["tbacon",75],
	["lockpick",5000],
	["pickaxe",1200],
	["redgull",500],
	["fuelF",850],
	["peach",68],
	["spikeStrip",0],
	["roadBarrier",0],
	["blastingcharge",35000],
	["boltcutter",20000],
	["defusekit",2500],
	["storagesmall",500000],
	["storagebig",1000000],
	["zipties",5000],
	["schmerzmittel",500],
	["traube",75]
];
__CONST__(buy_array,buy_array);

life_weapon_shop_array =
[
	["arifle_sdar_F",0],
	["hgun_P07_snds_F",0],
	["hgun_P07_F",0],
	["hgun_Pistol_heavy_01_F",0],
	["ItemGPS",0],
	["ToolKit",0],
	["FirstAidKit",0],
	["Medikit",0],
	["NVGoggles",0],
	["NVGoggles_INDEP",0],
	["NVGoggles_OPFOR",0],
	["16Rnd_9x21_Mag",0],
	["20Rnd_556x45_UW_mag",0],
	["ItemMap",0],
	["ItemCompass",0],
	["Chemlight_blue",0],
	["Chemlight_yellow",0],
	["Chemlight_green",0],
	["Chemlight_red",0],
	["hgun_Rook40_F",0],
	["arifle_Katiba_F",0],
	["arifle_Katiba_GL_F",0],
	["30Rnd_556x45_Stanag",0],
	["20Rnd_762x51_Mag",0],
	["11Rnd_45ACP_Mag",0],
	["7Rnd_408_Mag",0],
	["hgun_ACPC2_F",0],
	["9Rnd_45ACP_Mag",0], 
	["30Rnd_65x39_caseless_mag",0],
	["30Rnd_65x39_caseless_green",0],
	["DemoCharge_Remote_Mag",0],
	["SLAMDirectionalMine_Wire_Mag",0],
	["optic_ACO_smg",0],
	["acc_flashlight",0],
	["srifle_EBR_F",0],
	["arifle_TRG21_F",0],
	["arifle_TRG21_GL_F",0],
	["optic_MRCO",0],
	["optic_Aco",0],
	["optic_Arco",0],
	["optic_LRPS",0],
	["optic_Hamr",0],
	["optic_DMS",0],
	["optic_SOS",0],
	["muzzle_snds_acp",0],
	["muzzle_snds_B",0],
	["muzzle_snds_M",0],
	["muzzle_snds_L",0],
	["muzzle_snds_H",0],
	["arifle_MX_Black_F",0],
	["arifle_MX_GL_Black_F",0],
	["arifle_MXC_Black_F",0],
	["arifle_MXM_Black_F",0],
	["arifle_MX_SW_Black_F",0],
	["arifle_MX_SW_F",0],
	["UGL_FlareWhite_F",0],
	["100Rnd_65x39_caseless_mag_Tracer",0],
	["srifle_LRR_F",0],
	["srifle_LRR_camo_F",0],
	["MineDetector",0],
	["optic_Holosight",0],
	["acc_pointer_IR",0],
	["SMG_01_F",0],
	["arifle_Mk20C_F",0],
	["arifle_Mk20_GL_F",0],
	["srifle_DMR_01_F",0],
	["srifle_GM6_F",0],
	["srifle_GM6_camo_F",0],
	["5Rnd_127x108_Mag",0],
	["hgun_PDW2000_F",0],
	["30Rnd_9x21_Mag",0],
	["hgun_Pistol_heavy_02_F",0],
	["6Rnd_45ACP_Cylinder",0],
	["10Rnd_762x51_Mag",0],
	["SMG_02_F",0],
	["30Rnd_45ACP_Mag_SMG_01",0],
	["30Rnd_9x21_Mag",0]
];
__CONST__(life_weapon_shop_array,life_weapon_shop_array);

life_garage_prices =
[
	["B_QuadBike_01_F",225],
	["C_Hatchback_01_F",850],
	["C_Offroad_01_F",1000],
	["B_G_Offroad_01_F",1000],
	["C_SUV_01_F",2500],
	["C_Van_01_transport_F",2000],
	["C_Hatchback_01_sport_F",10000],
	["C_Van_01_fuel_F",4500],
	["I_Heli_Transport_02_F",25000],
	["C_Van_01_box_F",7000],
	["I_Truck_02_transport_F",8100],
	["I_Truck_02_covered_F",10000],
	["B_Truck_01_transport_F",15000],
	["B_Truck_01_box_F",25000],
	["O_MRAP_02_F",83500],
	["B_Heli_Light_01_F",33500],
	["O_Heli_Light_02_unarmed_F",15000],
	["C_Rubberboat",2000],
	["C_Boat_Civil_01_F",4400],
	["B_Boat_Transport_01_F",300],
	["C_Boat_Civil_01_police_F",2000],
	["B_Boat_Armed_01_minigun_F",7500],
	["B_SDV_01_F",10000],
	["B_MRAP_01_F",57000],
	["B_Truck_01_mover_F",5000],
	["B_Truck_01_covered_F",10000],
	["O_Truck_03_transport_F",20000],
	["O_Truck_03_covered_F",20000],
	["O_Truck_03_device_F",45000],
	["B_MRAP_01_hmg_F",5000],
	["I_MRAP_03_F",5000]
];
__CONST__(life_garage_prices,life_garage_prices);

life_garage_sell =
[
	["B_Quadbike_01_F",1125],
	["C_Hatchback_01_F",4250],
	["C_Offroad_01_F", 6250],
	["B_G_Offroad_01_F",6250],
	["C_SUV_01_F",12500],
	["C_Van_01_transport_F",20000],
	["C_Hatchback_01_sport_F",45000],
	["C_Van_01_fuel_F",3850],
	["I_Heli_Transport_02_F",400000],
	["C_Van_01_box_F",35000],
	["I_Truck_02_transport_F",45000],
	["I_Truck_02_covered_F",50000],
	["B_Truck_01_transport_F",450000],
	["B_Truck_01_box_F", 150000],
	["O_MRAP_02_F",417500],
	["B_Heli_Light_01_F",167500],
	["O_Heli_Light_02_unarmed_F",250000],
	["C_Rubberboat",1000],
	["C_Boat_Civil_01_F",6800],
	["B_Boat_Transport_01_F",1500],
	["C_Boat_Civil_01_police_F",10000],
	["B_Boat_Armed_01_minigun_F",37500],
	["B_SDV_01_F",50000],
	["B_MRAP_01_F",300000],
	["B_Truck_01_mover_F",125000],
	["B_Truck_01_covered_F",500000],
	["O_Truck_03_transport_F",117500],
	["O_Truck_03_covered_F",1000000],
	["O_Truck_03_device_F",2250000],
	["B_MRAP_01_hmg_F",750000],
	["I_MRAP_03_F",500000],
	["O_Heli_Transport_04_covered_F",2000000],
    ["O_Heli_Transport_04_F",1500000],
    ["B_Heli_Transport_01_F",900000],
    ["B_Heli_Transport_03_unarmed_F",800000]
];
__CONST__(life_garage_sell,life_garage_sell);


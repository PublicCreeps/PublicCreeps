
class life_spawn_selection
{
	idd = 38500;
	movingEnabled = false;
	enableSimulation = true;
	
	class controlsBackground
	{
	/*
		class life_RscTitleBackground : Life_RscText
		{
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
			idc = -1;
			x = 0.1; y = 0.2;
			w = 0.8; h = (1 / 25);
		};
	*/
		class MainBackground : life_RscPicture
		{
			idc = -1;
			text = "addons\Ui_Texturen\spawn\mainframe_spawn.paa";
			x = -0.175; 
			y = 0.004;
			w = 1.325;
			h = 1;
		};
		
		class Title : Life_RscTitle
		{
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
			idc = -1;
			text = "$STR_Spawn_Title";
			x = 0.1;
			y = 0.14;
			w = 0.7875;
			h = 0.06;
		};
		
		class SpawnPointTitle : Title
		{
			idc = 38501;
			style = 1;
			text = "";
		};
		
		class MapView : Life_RscMapControl 
		{
			idc = 38502;
			x = 0.15;
			y = 0.26;
			w = 0.35;
			h = 0.46;
			maxSatelliteAlpha = 0.75;//0.75;
			alphaFadeStartScale = 1.15;//0.15;
			alphaFadeEndScale = 1.29;//0.29;
		};
	};
	
	class controls
	{	
		class SpawnPointList: Life_RscListNBox
		{
			idc = 38510;
			text = "";
			sizeEx = 0.041;
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
			drawSideArrows = false;
			idcLeft = -1;
			idcRight = -1;
			rowHeight = 0.050;
			x = 0.5125;
			y = 0.26;
			w = 0.35;
			h = 0.46;
			onLBSelChanged = "_this call life_fnc_spawnPointSelected;";
		};
		
		class spawnButton : Life_RscButtonMenu
		{
			idc = -1;
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
			text = "$STR_Spawn_Spawn";
			onButtonClick = "[] call life_fnc_spawnConfirm";
			x = 0.1;
			y = 0.74;
			w = 0.7875;
			h = 0.06;
		};
	};
};
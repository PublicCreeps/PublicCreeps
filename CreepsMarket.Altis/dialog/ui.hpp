/*
Edited by : Razer_Dev
*/
	class playerHUD
   	{
		idd=-1;
		movingEnable=0;
	  	fadein=0;
		duration = 99999999999999999999999999999999999999999999;
	  	fadeout=0;
		name="playerHUD";
		onLoad="uiNamespace setVariable ['playerHUD',_this select 0]";
		objects[]={};
		
		class controlsBackground 
		{
			class foodHIcon : life_RscPicture 
			{
				idc = -1;
				text = "icons\food.paa";
				x = 0.965956 * safezoneW + safezoneX;
				y = 0.335051 * safezoneH + safezoneY;
				w = 0.0309263 * safezoneW;
				h = 0.0439865 * safezoneH;
			};
			
			class waterHIcon : life_RscPicture 
			{
				idc = -1;
				text = "icons\water.paa";
				x = 0.965956 * safezoneW + safezoneX;
				y = 0.418625 * safezoneH + safezoneY;
				w = 0.0309263 * safezoneW;
				h = 0.0439865 * safezoneH;
			};
			
			class healthHIcon : life_RscPicture
			{	
				idc = -1;
				text = "icons\health.paa";
				x = 0.965956 * safezoneW + safezoneX;
				y = 0.497801 * safezoneH + safezoneY;
				w = 0.0309263 * safezoneW;
				h = 0.0439865 * safezoneH;
			};
		};
		
		class controls
		{
			class foodtext
			{
				type=0;
				idc=23500;
				style=0;
				x = 0.968006 * safezoneW + safezoneX;
				y = 0.465996 * safezoneH + safezoneY;
				w = 0.0277815 * safezoneW;
				h = 0.0174911 * safezoneH;
				sizeEx = 0.05;
				font="PuristaSemibold";
				colorBackground[]={0,0,0,0};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=true;
				text="";
			};
			
			class watertext
			{
				type=0;
				idc=23510;
				style=0;
				x = 0.968006 * safezoneW + safezoneX;
				y = 0.543003 * safezoneH + safezoneY;
				w = 0.0277815 * safezoneW;
				h = 0.0174911 * safezoneH;
				sizeEx = 0.05;
				font="PuristaSemibold";
				colorBackground[]={0,0,0,0};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=true;
				text="";
			};
			
			class healthtext
			{
				type=0;
				idc=23515;
				style=0;
				x = 0.968006 * safezoneW + safezoneX;
				y = 0.37899 * safezoneH + safezoneY;
				w = 0.0277815 * safezoneW;
				h = 0.0174911 * safezoneH;
				sizeEx = 0.05;
				font="PuristaSemibold";
				colorBackground[]={0,0,0,0};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=true;
				text="";
			};
		};   
 	}; 
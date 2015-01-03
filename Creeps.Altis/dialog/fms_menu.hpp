class fms_menu {
	idd = 4800;
	name= "fms_menu";
	movingEnable = false;
	enableSimulation = true;
	
	class controlsBackground {
		class Life_RscTitleBackground:Life_RscText {
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
			idc = 4801;
			text = "FMS Menue";
			x = 0.25;
			y = 0.2;
			w = 0.50;
			h = (1 / 25);
		};
		
		class MainBackground:Life_RscText {
			colorBackground[] = {0, 0, 0, 0.7};
			idc = -1;
			x = 0.25;
			y = 0.244;
			w = 0.5;
			h = 0.425;
		};
		
		class groupInfoText : Life_RscText
		{
			idc = -1;
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
			text = "Gruppeninfo";
			sizeEx = 0.04;
			
			x = 0.26; y = 0.312;
			w = 0.23; h = 0.04;
		};
	};
	
	class controls {
		
		class GroupList : Life_RscCombo 
		{
			idc = 4803;
			
			x = 0.47; y = 0.253;
			w = 0.27; h = (1 / 25);
			
			onLBSelChanged = "[1] spawn life_fnc_fmsSettings;";
		};
		
		class groupInfo : Life_RscListBox 
		{			
			idc = 4804;
			text = "";
			sizeEx = 0.030;
			
			x = 0.26; y = 0.352;
			w = 0.23; h = 0.3;
		};
		
		class ButtonLogin : Life_RscButtonMenu
		{
			idc = 4802;
			text = "Einloggen als";
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
			onButtonClick = "[0] spawn life_fnc_fmsLogin;";
			
			x = 0.26;
			y = 0.253;
			w = 0.2;
			h = (1 / 25);
		};
		
		class ButtonLogout : Life_RscButtonMenu
		{
			idc = 4806;
			text = "Ausloggen";
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
			onButtonClick = "[1] spawn life_fnc_fmsLogin;";
			
			x = 0.26;
			y = 0.253;
			w = 0.2;
			h = (1 / 25);
		};
		class ButtonShowFMS : Life_RscButtonMenu
		{
			idc = 4805;
			text = "FMS Pager";
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
			onButtonClick = "[] spawn life_fnc_fmsPager;";
			
			x = 0.51;
			y = 0.312;
			w = 0.23;
			h = (1 / 25);
		};
		
		class ButtonClose : Life_RscButtonMenu 
		{
			idc = -1;
			//shortcuts[] = {0x00050000 + 2};
			text = "Close";
			onButtonClick = "closeDialog 0;";
			x = 0.25;
			y = 0.671;
			w = 0.17;
			h = (1 / 25);
		};
	};
};
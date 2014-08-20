class RscDisplaySpawnSelecter {
	idd = 6903;
	enableDisplay = 1;
	
	onLoad = "dayz_DisplaySpawnSelecter = true;";
	//onUnload = "dayz_DisplaySpawnSelecter = false;";
	
	class controlsBackground {
		class Mainback : RscPicture {
			idc = -1;
			text = "\z\addons\dayz_code\gui\spawn\spawn_bg.paa";
			x = 0 * safezoneW + safezoneX;
			y = 0 * safezoneH + safezoneY;
			w = 1 * safezoneW;
			h = 1 * safezoneH;
		};
	};
	class controls
	{
		class RscSelectedRegion1 : RscActiveText
		{
			onLoad = "if (dayz_selectRegion == 1) then {onMouseEnter = (_this select 0) ctrlShow false; (_this select 0) ctrlEnable false;};";
			idc = -1;
			style = 48;
			text = "\z\addons\dayz_code\gui\spawn_bubendorf.paa";
			x = 0.524899 * safezoneW + safezoneX;
			y = 0.591199 * safezoneH + safezoneY;
			w = 0.234287 * safezoneW;
			h = 0.3044 * safezoneH;
			color[] = { 0.5, 0.5, 0.5, 1 };
			colorActive[] = { 1, 1, 1, 1 };
			action = "closeDialog 0;dayz_DisplaySpawnSelecter = false;dayz_selectRegion = 1;";
			onMouseEnter = "ctrlSetFocus (_this select 0)";
		};
		class RscSelectedRegion2: RscActiveText
		{
			onLoad = "if (dayz_selectRegion == 0) then {onMouseEnter = (_this select 0) ctrlShow false; (_this select 0) ctrlEnable false;};";
			idc = -1;
			style = 48;
			text = "\z\addons\dayz_code\gui\spawn_lenzburg.paa";
			x = 0.230417 * safezoneW + safezoneX;
			y = 0.610615 * safezoneH + safezoneY;
			w = 0.223688 * safezoneW;
			h = 0.270356 * safezoneH;
			color[] = { 0.5, 0.5, 0.5, 1 };
			colorActive[] = { 1, 1, 1, 1 };
			action = "closeDialog 0;dayz_DisplaySpawnSelecter = false;dayz_selectRegion = 0;";
			onMouseEnter = "ctrlSetFocus (_this select 0)";
		};
		class RscSelectedRegion3: RscActiveText
		{
			onLoad = "if (dayz_selectRegion == 2) then {onMouseEnter = (_this select 0) ctrlShow false; (_this select 0) ctrlEnable false;};";
			idc = -1;
			style = 48;
			text = "\z\addons\dayz_code\gui\spawn_muttenz.paa";
			x = 0.234564 * safezoneW + safezoneX;
			y = 0.116375 * safezoneH + safezoneY;
			w = 0.234375 * safezoneW;
			h = 0.275 * safezoneH;
			color[] = { 0.5, 0.5, 0.5, 1 };
			colorActive[] = { 1, 1, 1, 1 };
			action = "closeDialog 0;dayz_DisplaySpawnSelecter = false;dayz_selectRegion = 2;";
			onMouseEnter = "ctrlSetFocus (_this select 0)";
		};
		class RscSelectedRegion4: RscActiveText
		{
			onLoad = "if (dayz_selectRegion == 3) then {onMouseEnter = (_this select 0) ctrlShow false; (_this select 0) ctrlEnable false;};";
			idc = -1;
			style = 48;
			text = "\z\addons\dayz_code\gui\spawn_luzern.paa";
			x = 0.212005 * safezoneW + safezoneX;
			y = 0.371473 * safezoneH + safezoneY;
			w = 0.234683 * safezoneW;
			h = 0.274546 * safezoneH;
			color[] = { 0.5, 0.5, 0.5, 1 };
			colorActive[] = { 1, 1, 1, 1 };
			action = "closeDialog 0;dayz_DisplaySpawnSelecter = false;dayz_selectRegion = 3;";
			onMouseEnter = "ctrlSetFocus (_this select 0)";
		};
		class RscSelectedRegion5: RscActiveText
		{
			onLoad = "if (dayz_selectRegion == 4) then {onMouseEnter = (_this select 0) ctrlShow false; (_this select 0) ctrlEnable false;};";
			idc = -1;
			style = 48;
			text = "\z\addons\dayz_code\gui\spawn_hafen.paa";
			x = 0.565892 * safezoneW + safezoneX;
			y = 0.365922 * safezoneH + safezoneY;
			w = 0.246438 * safezoneW;
			h = 0.275001 * safezoneH;
			color[] = { 0.5, 0.5, 0.5, 1 };
			colorActive[] = { 1, 1, 1, 1 };
			action = "closeDialog 0;dayz_DisplaySpawnSelecter = false;dayz_selectRegion = 4;";
			onMouseEnter = "ctrlSetFocus (_this select 0)";
		};
		class RscSelectedRegion6: RscActiveText
		{
			onLoad = "if (dayz_selectRegion == 5) then {onMouseEnter = (_this select 0) ctrlShow false; (_this select 0) ctrlEnable false;};";
			idc = -1;
			style = 48;
			text = "\z\addons\dayz_code\gui\spawn_horw.paa";
			x = 0.517793 * safezoneW + safezoneX;
			y = 0.13013 * safezoneH + safezoneY;
			w = 0.234375 * safezoneW;
			h = 0.275 * safezoneH;
			color[] = { 0.5, 0.5, 0.5, 1 };
			colorActive[] = { 1, 1, 1, 1 };
			action = "closeDialog 0;dayz_DisplaySpawnSelecter = false;dayz_selectRegion = 5;";
			onMouseEnter = "ctrlSetFocus (_this select 0)";
		};
		class RscSelectedRegionRandom: RscActiveText
		{
			idc = -1;
			style = 48;
			text = "\z\addons\dayz_code\gui\spawn_random.paa";
			x = 0.42998 * safezoneW + safezoneX;
			y = 0.346926 * safezoneH + safezoneY;
			w = 0.146185 * safezoneW;
			h = 0.286697 * safezoneH;
			color[] = { 0.5, 0.5, 0.5, 1 };
			colorActive[] = { 1, 1, 1, 1 };
			action = "closeDialog 0;dayz_DisplaySpawnSelecter = false;dayz_selectRegion = 9;";
			onMouseEnter = "ctrlSetFocus (_this select 0)";
		};
		
	};
};
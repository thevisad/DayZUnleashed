class RscTitles
{
	class Default
	{
		idd = -1;
		movingEnable = 0;
		duration = 4;
	};
	titles[] = {"DeathScreen_DZ","RscTitleStructuredText"};
	class DeathScreen_DZ {
		idd = -1;
		movingEnable = "false";
		duration = 120;
		fadein = 0;
		name = "DeathScreen";
		controls[] = {"DeathScreen"};
		class DeathScreen: RscPicture {
			x = 0 * safezoneW + safezoneX;
			y = 0 * safezoneH + safezoneY;
			w = 1 * safezoneW;
			h = 1 * safezoneH;
			text = "\z\addons\dayz_code\gui\youaredead2.paa";
		};
	};
	class playerKillScore {
		idd = 6902;
		movingEnable = 0;
		duration = 5;
		name = "playerKillScore";
		onLoad = "uiNamespace setVariable ['DAYZ_GUI_kills', _this select 0];";
		class ControlsBackground {
			class RscPicture_1201: RscPictureGUI
			{
				idc = 1400;
				text = "\z\addons\dayz_code\gui\stats_kills_human_ca.paa";
				x = 0.044687 * safezoneW + safezoneX;
				y = 0.934779 * safezoneH + safezoneY;
				w = 0.06;
				h = 0.08;
			};
			class RscPicture_1200: RscPictureGUI
			{
				idc = 1401;
				text = "\z\addons\dayz_code\gui\stats_kills_zombie_ca.paa";
				x = 0.044687 * safezoneW + safezoneX;
				y = 0.876025 * safezoneH + safezoneY;
				w = 0.06;
				h = 0.08;
			};
		};
		class Controls{
			class RscText1: RscStructuredTextGUI
			{
				idc = 1410;
				text = "10";
				x = (0.044687 * safezoneW + safezoneX) - 0.01;
				y = 0.934779 * safezoneH + safezoneY;
				w = 0.08;
				h = 0.08;
			};
			class RscText2: RscStructuredTextGUI
			{
				idc = 1411;
				text = "1000";
				x = (0.044687 * safezoneW + safezoneX) - 0.01;
				y = 0.876025 * safezoneH + safezoneY;
				w = 0.08;
				h = 0.08;
			};
		};
	};

	class playerStatusWaiting {
		idd = 6901;
		movingEnable = 0;
		duration = 100000;
		name = "playerStatusWaiting";
		onLoad = "uiNamespace setVariable ['DAYZ_GUI_waiting', _this select 0];";
		class ControlsBackground {
			class RscText_1402: RscPictureGUI
			{
				idc = 1402;
				text = "#(argb,8,8,3)color(1,1,1,1)";
				x = 0.473572 * safezoneW + safezoneX;
				y = 0.418158 * safezoneH + safezoneY;
				w = 0.0634286 * safezoneW;
				h = 0.136829 * safezoneH;
				colorText[] = {1,1,1,1};
			};
			class RscText_1400: RscPictureGUI
			{
				idc = 1400;
				text = "#(argb,8,8,3)color(1,1,1,1)";
				x = 0.473572 * safezoneW + safezoneX;
				y = 0.418158 * safezoneH + safezoneY;
				w = 0.0634286 * safezoneW;
				h = 0; //0.136829 * safezoneH;
				colorText[] = {0,0,0,1};
			};
		};
		class Controls {
			class RscPicture_1401: RscPictureGUI
			{
				idc = 1401;
				text = "\z\addons\dayz_code\gui\status\status_waiting_ca.paa";
				x = 0.434999 * safezoneW + safezoneX;
				y = 0.392207 * safezoneH + safezoneY;
				w = 0.141 * safezoneW;
				h = 0.188013 * safezoneH;
				colorText[] = {0.38,0.63,0.26,1};
			};
		};
	};

	class playerStatusGUI {
        idd = 6900;
        movingEnable = 0;
        duration = 100000;
        name = "statusBorder";
        onLoad = "uiNamespace setVariable ['DAYZ_GUI_display', _this select 0];";
        class ControlsBackground {
			//FOOD BACKGROUND
            class RscPicture_1901: RscPictureGUI
            {
                idc = 1901;
                text = "\z\addons\dayz_code\gui\status\status_bg.paa";
                x = 0.905 * safezoneW + safezoneX;
                y = 0.93 * safezoneH + safezoneY;//2
                w = 0.075;
                h = 0.10;
            };
			//FOOD BORDER
            class RscPicture_1201: RscPictureGUI
            {
                idc = 1201;
                text = "\z\addons\dayz_code\gui\status\status_food_border_ca.paa";
                x = 0.905 * safezoneW + safezoneX;
                y = 0.93 * safezoneH + safezoneY;//2
                w = 0.075;
                h = 0.10;
            };
			//BLOOD BACKGROUND
            class RscPicture_1900: RscPictureGUI
            {
                idc = 1900;
                text = "\z\addons\dayz_code\gui\status\status_bg.paa";
                x = 0.875 * safezoneW + safezoneX;
                y = 0.93 * safezoneH + safezoneY; //3
                w = 0.075;
                h = 0.10;
            };
			//BLOOD BORDER
            class RscPicture_1200: RscPictureGUI
            {
                idc = 1200;
                text = "\z\addons\dayz_code\gui\status\status_blood_border_ca.paa";
                x = 0.875 * safezoneW + safezoneX;
                y = 0.93* safezoneH + safezoneY; //3
                w = 0.075;
                h = 0.10;
            };
			//THIRST BACKGROUND
            class RscPicture_1902: RscPictureGUI
            {
                idc = 1902;
                text = "\z\addons\dayz_code\gui\status\status_bg.paa";
                x = 0.935 * safezoneW + safezoneX;
                y = 0.93 * safezoneH + safezoneY; //1
                w = 0.075;
                h = 0.10;
            };
			//THIRST BORDER
            class RscPicture_1202: RscPictureGUI
            {
                idc = 1202;
                text = "\z\addons\dayz_code\gui\status\status_thirst_border_ca.paa";
                x = 0.935 * safezoneW + safezoneX;
                y = 0.93 * safezoneH + safezoneY; //1
                w = 0.075;
                h = 0.10;
            };
			//TEMP BACKGROUND
            class RscPicture_1908: RscPictureGUI
            {
                idc = 1908;
                text = "\z\addons\dayz_code\gui\status\status_bg.paa";
                x = 0.845 * safezoneW + safezoneX;
                y = 0.93 * safezoneH + safezoneY; //3
                w = 0.075;
                h = 0.10;
            };
			//TEMP BORDER
            class RscPicture_1208: RscPictureGUI
            {
                idc = 1208;
                text = "\z\addons\dayz_code\gui\status\status_temp_outside_ca.paa";
                x = 0.845 * safezoneW + safezoneX;
                y = 0.93 * safezoneH + safezoneY; //3
                w = 0.075;
                h = 0.10;
            };
			//BROKEN LEG
            class RscPicture_1203: RscPictureGUI
            {
                idc = 1203;
                text = "\z\addons\dayz_code\gui\status\status_effect_brokenleg.paa";
                x = 0.810 * safezoneW + safezoneX;
                y = 0.93 * safezoneH + safezoneY;
                w = 0.075;
                h = 0.10;
                colorText[] = {1,1,1,1};
            };
			class RscPicture_1204: RscPictureGUI
			{
				idc = 1204;
				text = "\z\addons\dayz_code\gui\status\status_connection_ca.paa";
				x = 0.955313 * safezoneW + safezoneX;
				y = 0.51 * safezoneH + safezoneY;
				w = 0.075;
				h = 0.10;
				colorText[] = {1,1,1,1};
			};
			//NOISE BACKGROUND
            class RscPicture_1205: RscPictureGUI
            {
                idc = 1205;
                text = "\z\addons\dayz_code\gui\status\status_bg.paa";
                x = 0.960 * safezoneW + safezoneX;
                y = 0.825 * safezoneH + safezoneY;
                w = 0.075;
                h = 0.10;
            };
			//VISIBLE BACKGROUND
            class RscPicture_1206: RscPictureGUI
            {
                idc = 1206;
                text = "\z\addons\dayz_code\gui\status\status_bg.paa";
                x = 0.960 * safezoneW + safezoneX;
                y = 0.875 * safezoneH + safezoneY;
                w = 0.075;
                h = 0.10;
            };
			//AGRO BACKGROUND
			class RscPicture_1210: RscPictureGUI
            {
                idc = 1210;
                text = "\z\addons\dayz_code\gui\status\status_bg.paa";
                x = 0.960 * safezoneW + safezoneX;
                y = 0.775 * safezoneH + safezoneY;
                w = 0.075;
                h = 0.10;
            };
			
			//Weight System - FIX THIS ONE
			class RscPicture_1209 : RscPictureGUI {
				idc = 1209;
				text = "\z\addons\dayz_code\gui\status\status_effect_weight.paa";
                x = 0.960 * safezoneW + safezoneX;
                y = 0.725 * safezoneH + safezoneY;
                w = 0.075;
                h = 0.10;
			}; 

            /*--------------------------------------------*/
			//Survivor BACKGROUND
            class RscPicture_9990: RscPictureGUI
            {
                idc = 9991;
                text = "\z\addons\dayz_code\gui\status\status_bg.paa";
                x = 0.670 * safezoneW + safezoneX;
                y = 0.923 * safezoneH + safezoneY;
                w = 0.075;
                h = 0.10;
            };
            //SURVIVOR ICON
			class RscPicture_1307: RscPictureGUI
            {
                idc = 1307;
                text = "\z\addons\dayz_code\gui\status\st_humanity_survivor.paa";
                x = 0.670 * safezoneW + safezoneX;
                y = 0.933 * safezoneH + safezoneY;
                w = 0.027 * safezoneW;
                h = 0.037 * safezoneH;
                colorText[] = {1,1,1,1};
            };
			//Bandit BACKGROUND
            class RscPicture_9992: RscPictureGUI
            {
                idc = 9992;
                text = "\z\addons\dayz_code\gui\status\status_bg.paa";
                x = 0.713 * safezoneW + safezoneX;
                y = 0.923 * safezoneH + safezoneY;
                w = 0.075;
                h = 0.10;
            };
			//BANDIT ICON
            class RscPicture_1309: RscPictureGUI
            {
                idc = 1309;
                text = "\z\addons\dayz_code\gui\status\st_humanity_bandit.paa";
                x = 0.713 * safezoneW + safezoneX;
                y = 0.933 * safezoneH + safezoneY;
                w = 0.027 * safezoneW;
                h = 0.037 * safezoneH;
                colorText[] = {1,1,1,1};
            };
			//Zombie BACKGROUND
            class RscPicture_9993: RscPictureGUI
            {
                idc = 9993;
                text = "\z\addons\dayz_code\gui\status\status_bg.paa";
                x = 0.756 * safezoneW + safezoneX;
                y = 0.923 * safezoneH + safezoneY;
                w = 0.075;
                h = 0.10;
            };
			//ZOMBIE ICON
            class RscPicture_1308: RscPictureGUI
            {
                idc = 1310;
                text = "\z\addons\dayz_code\gui\status\zombie.paa";
                x = 0.756 * safezoneW + safezoneX;
                y = 0.933 * safezoneH + safezoneY;
                w = 0.027 * safezoneW;
                h = 0.037 * safezoneH;
                colorText[] = {1,1,1,1};
            };
        };
        class Controls {
			//FOOD ICON
            class RscPicture_1301: RscPictureGUI
            {
                idc = 1301;
                //text = "\z\addons\dayz_code\gui\status\status_food_inside_ca.paa";
                x = 0.905 * safezoneW + safezoneX;
                y = 0.93 * safezoneH + safezoneY;
                w = 0.075;
                h = 0.10;
            };
			//BLOOD ICON
            class RscPicture_1300: RscPictureGUI
            {
                idc = 1300;
                //text = "\z\addons\dayz_code\gui\status\status_blood_inside_ca.paa";
                x = 0.875 * safezoneW + safezoneX;
                y = 0.93 * safezoneH + safezoneY;
                w = 0.075;
                h = 0.10;
            };
			//THIRST ICON
            class RscPicture_1302: RscPictureGUI
            {
                idc = 1302;
                //text = "\z\addons\dayz_code\gui\status\status_thirst_inside_ca.paa";
                x = 0.935 * safezoneW + safezoneX;
                y = 0.93 * safezoneH + safezoneY;
                w = 0.075;
                h = 0.10;
            };
			//TEMP ICON
            class RscPicture_1306: RscPictureGUI
            {
                idc = 1306;
                //text = "\z\addons\dayz_code\gui\status\status_temp_ca.paa";
                x = 0.845 * safezoneW + safezoneX;
                y = 0.93 * safezoneH + safezoneY;
                w = 0.075;
                h = 0.10;
            };
			//BLOOD ICON - BLEEDING
            class RscPicture_1303: RscPictureGUI
            {
                idc = 1303;
                text = "\z\addons\dayz_code\gui\status\status_bleeding_ca.paa";
                x = 0.875 * safezoneW + safezoneX;
                y = 0.93 * safezoneH + safezoneY;
                w = 0.075;
                h = 0.10;
                colorText[] = {1,1,1,0.5};
            };

			//NOISE ICON
            class RscPicture_1304: RscPictureGUI
            {
                idc = 1304;
                text = "\z\addons\dayz_code\gui\status\status_noise.paa";
                x = 0.960 * safezoneW + safezoneX;
                y = 0.825 * safezoneH + safezoneY;
                w = 0.075;
                h = 0.10;
            };
			//VISIBLE ICON
            class RscPicture_1305: RscPictureGUI
            {
                idc = 1305;
                text = "\z\addons\dayz_code\gui\status\status_visible.paa";
                x = 0.960 * safezoneW + safezoneX;
                y = 0.875 * safezoneH + safezoneY;
                w = 0.075;
                h = 0.10;
            };
			//AGRO ICON
            class RscPicture_1311: RscPictureGUI
            {
                idc = 1311;
                text = "\z\addons\dayz_code\gui\status\zombie.paa";
                x = 0.960 * safezoneW + safezoneX;
                y = 0.775 * safezoneH + safezoneY;
                w = 0.075;
                h = 0.10;
            };
			//FPS
            class RscText_1321: RscText
            {
                idc = 1321;
                text = "FPS:";
                x = 0.845 * safezoneW + safezoneX;
                y = 0.882 * safezoneH + safezoneY;
                w = 0.08 * safezoneW;
                h = 0.047 * safezoneH;
                colorText[] = {1,1,1,1.0};
                size = 0.03;
                sizeEx = 0.03;
            };
			//FPS BACKGROUND
            class RscText_1322: RscPictureGUI
            {
                idc = 1322;
                //text = "\z\addons\dayz_code\gui\status\status_bg.paa";
                x = 0.960 * safezoneW + safezoneX;
                y = 0.93 * safezoneH + safezoneY;
                w = 0.037 * safezoneW;
                h = 0.047 * safezoneH;
                colorText[] = {1,1,1,0.0};
            };
            /*-----------------------------------------------*/

			//Weight 
            class RscText_1409: RscText
            {
                idc = 1409;
                text = "";
			    x = 0.960 * safezoneW + safezoneX;
                y = 0.725 * safezoneH + safezoneY;
                w = 0.037 * safezoneW;
                h = 0.047 * safezoneH;
                colorText[] = {1,1,1,1.0};
                size = 0.03;
                sizeEx = 0.03;
            };
            //SURVIVOR KILLS
			class RscText_1400: RscText
            {
                idc = 1400;
                text = "1000";
                x = 0.703 * safezoneW + safezoneX;
                y = 0.931 * safezoneH + safezoneY;
                w = 0.037 * safezoneW;
                h = 0.047 * safezoneH;
                colorText[] = {1,1,1,1.0};
                size = 0.03;
                sizeEx = 0.03;
            };
			//BANDIT KILLS
            class RscText_1402: RscText
            {
                idc = 1402;
                text = "1000";
                x = 0.740 * safezoneW + safezoneX;
                y = 0.931 * safezoneH + safezoneY;
                w = 0.037 * safezoneW;
                h = 0.047 * safezoneH;
                colorText[] = {1,1,1,1.0};
                size = 0.03;
                sizeEx = 0.03;
            };
			//ZOMBIE KILLS
            class RscText_1403: RscText
            {
                idc = 1403;
                text = "1000";
                x = 0.789 * safezoneW + safezoneX;
                y = 0.931 * safezoneH + safezoneY;
                w = 0.037 * safezoneW;
                h = 0.047 * safezoneH;
                colorText[] = {1,1,1,1.0};
                size = 0.03;
                sizeEx = 0.03;
            };
			//BLOOD AMOUNT
			class RscText_1420: RscText
            {
                idc = 1420;
                text = "1000";
                x = 0.915 * safezoneW + safezoneX;
                y = 0.842 * safezoneH + safezoneY;
                w = 0.040 * safezoneW;
                h = 0.047 * safezoneH;
                colorText[] = {0.8,0.07,0.06,1.0};
                size = 0.03;
                sizeEx = 0.03;
            };
			//FPS AMOUNT
			class RscText_9999: RscText
            {
                idc = 9999;
                text = "1000";
                x = 0.915 * safezoneW + safezoneX;
                y = 0.882 * safezoneH + safezoneY;
                w = 0.040 * safezoneW;
                h = 0.047 * safezoneH;
                colorText[] = {1,0.8,0,1.0};
                size = 0.03;
                sizeEx = 0.03;
            };
			//BLOOD LABEL
			class RscText_1423: RscText
            {
                idc = 1423;
                text = "Blood Left:";
                x = 0.845 * safezoneW + safezoneX;
                y = 0.842 * safezoneH + safezoneY;
                w = 0.08 * safezoneW;
                h = 0.047 * safezoneH;
                colorText[] = {1,1,1,1.0};
                size = 0.03;
                sizeEx = 0.03;
            };
        };
    };
};
/*
class FJ_Button
{
	type = 16;
	idc = -1;
	style = 0;
	default = 0;
	x = 0.1;
	y = 0.1;
	w = 0.183825;
	h = 0.104575;
	color[] = {0.543, 0.5742, 0.4102, 1.0};
	color2[] = {0.95, 0.95, 0.95, 1};
	colorBackground[] = {1, 1, 1, 1};
	colorbackground2[] = {1, 1, 1, 1};
	colorDisabled[] = {1, 1, 1, 0.25};
	periodFocus = 1.2;
	periodOver = 0.8;

	class HitZone
	{
		left = 0.004;
		top = 0.029;
		right = 0.004;
		bottom = 0.029;
	};

	class ShortcutPos
	{
		left = 0.0145;
		top = 0.026;
		w = 0.0392157;
		h = 0.0522876;
	};

	class TextPos
	{
		left = 0.05;
		top = 0.034;
		right = 0.005;
		bottom = 0.005;
	};


	textureNoShortcut = "";
	animTextureNormal = "\ca\ui\data\ui_button_normal_ca.paa";
	animTextureDisabled = "\ca\ui\data\ui_button_disabled_ca.paa";
	animTextureOver = "\ca\ui\data\ui_button_over_ca.paa";
	animTextureFocused = "\ca\ui\data\ui_button_focus_ca.paa";
	animTexturePressed = "\ca\ui\data\ui_button_down_ca.paa";
	animTextureDefault = "\ca\ui\data\ui_button_default_ca.paa";
	period = 0.4;
	font = "Zeppelin32";
	size = 0.03921;
	sizeEx = 0.03921;
	text = "";
	soundEnter[] = {"\ca\ui\data\sound\mouse2", 0.09, 1};
	soundPush[] = {"\ca\ui\data\sound\new1", 0.09, 1};
	soundClick[] = {"\ca\ui\data\sound\mouse3", 0.07, 1};
	soundEscape[] = {"\ca\ui\data\sound\mouse1", 0.09, 1};
	action = "";
	toolTip = "";

	class Attributes
	{
		font = "Zeppelin32";
		color = "#E5E5E5";
		align = "left";
		shadow = "true";
	};

	class AttributesImage
	{
		font = "Zeppelin32";
		color = "#E5E5E5";
		align = "left";
		shadow = "true";
	};
};
*/

class levels
{
	idd=8567;

	class Controls
	{	
		class background: RscPicture
		{
			idc=-1;
			text = "\z\addons\dayz_code\gui\levels.paa";
			x = 0.128125;
			y = -0.113972;
			w = 0.69375;
			h = 1.11375;
		};
		
		class up1:RscButton
		{
			idc=-1;
			x = 0.665781;
			y = 0.166218;
			w = 0.0937499;
			h = 0.0750001;
			text = "ADD";
			font = "Zeppelin33";
			action = "[player,""Engineer"",1] call DZU_fnc_levelUp;[] call updateUI;";
			//soundClick[] = {"\dayz_sfx\action\cell\dtmf_1.ogg",0.5,1};
		};

		class up2:RscButton
		{
			idc=-1;
			x = 0.665781;
			y = 0.305437;
			w = 0.0937499;
			h = 0.0750001;
			text = "ADD";
			font = "Zeppelin33";
			action = "[player,""Hunting"",1] call DZU_fnc_levelUp;[] call updateUI;";
			//soundClick[] = {"\dayz_sfx\action\cell\dtmf_1.ogg",0.5,1};
		};

		class up3:RscButton
		{
			idc=-1;
			x = 0.665781;
			y = 0.444656;
			w = 0.0937499;
			h = 0.0750001;
			text = "ADD";
			font = "Zeppelin33";
			action = "[player,""Medical"",1] call DZU_fnc_levelUp;[] call updateUI;";
			//soundClick[] = {"\dayz_sfx\action\cell\dtmf_1.ogg",0.5,1};
		};
		
		class up4:RscButton
		{
			idc=-1;
			x = 0.665781;
			y = 0.583875;
			w = 0.0937499;
			h = 0.0750001;
			text = "ADD";
			font = "Zeppelin33";
			action = "[player,""Combat"",1] call DZU_fnc_levelUp;[] call updateUI;";
			//soundClick[] = {"\dayz_sfx\action\cell\dtmf_1.ogg",0.5,1};
		};
		
		class up5:RscButton
		{
			idc=-1;
			x = 0.665781;
			y = 0.723093;
			w = 0.0937499;
			h = 0.0750001;
			text = "ADD";
			font = "Zeppelin33";
			action = "[player,""Survival"",1] call DZU_fnc_levelUp;[] call updateUI;";
			//soundClick[] = {"\dayz_sfx\action\cell\dtmf_1.ogg",0.5,1};
		};
		
		
		class closeButton:RscButton
		{
			idc=-1;
			text="Close";
			x = 0.405625;
			y = 0.890156;
			w = 0.0937499;
			h = 0.0750001;
			action = "closeDialog 0;";
		};
		

		class value5:RscText
		{
			idc=8004;
			text = "";
			x = 0.422969;
			y = 0.723093;
			w = 0.0999999;
			h = 0.0999999;
		};
		
		class value4:RscText
		{
			idc=8003;
			text = "";
			x = 0.422969;
			y = 0.583875;
			w = 0.0999999;
			h = 0.0999999;
		};
		
		class value3:RscText
		{
			idc=8002;
			text = "";
			x = 0.422969;
			y = 0.444656;
			w = 0.0999999;
			h = 0.0999999;
		};
		
		
		class value2:RscText
		{
			idc=8001;
			text = "";
			x = 0.422969;
			y = 0.305437;
			w = 0.0999999;
			h = 0.0999999;
		};
		
		class value1:RscText
		{
			idc=8000;
			text = "";
			x = 0.422969;
			y = 0.166218;
			w = 0.0999999;
			h = 0.0999999;
		};
		
		class unspentValue: RscText
		{
			idc = 8020;
			text = "Value";
			x = 0.422969;
			y = 0.0269997;
			w = 0.0999999;
			h = 0.0999999;
		};
		
		class unspentText: RscText
		{
			idc = -1;
			text = "Unspent";
			x = 0.180156;
			y = 0.0269997;
			w = 0.208125;
			h = 0.111375;
		};	
		class Skill1: RscText
		{
			idc=8010;
			text = "";
			x = 0.180156;
			y = 0.166218;
			w = 0.208125;
			h = 0.111375;
		};
		
		class Skill2: RscText
		{
			idc=8011;
			text = "";
			x = 0.180156;
			y = 0.305437;
			w = 0.208125;
			h = 0.111375;
		};
		
		class Skill3: RscText
		{
			idc=8012;
			text = "";
			x = 0.180156;
			y = 0.444656;
			w = 0.208125;
			h = 0.111375;
		};
		
		class Skill4: RscText
		{
			idc=8013;
			text = "";
			x = 0.180156;
			y = 0.583875;
			w = 0.208125;
			h = 0.111375;
		};
		
		class Skill5: RscText
		{
			idc=8014;
			text = "";
			x = 0.180156;
			y = 0.723093;
			w = 0.208125;
			h = 0.111375;
		};
		
		class playerPassText: RscText
		{
			idc = 8041;

			text = "";
			x = 0.579063;
			y = -0.0843752;
			w = 0.16683;
			h = 0.0929895;
		};
		class playerIDText: RscText 
		{
			idc = 8040;

			text = "";
			x = 0.1975;
			y = -0.0843752;
			w = 0.16683;
			h = 0.0929895;
		};
	};
};
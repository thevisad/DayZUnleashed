class W_RscText {
	idc = -1;
	type = 0;
	style = 0x00;
	colorBackground[] = { 1 , 1 , 1 , 0 };
	colorText[] = { 1 , 1 , 1 , 1 };
	font = "Zeppelin32";
	sizeEx = 0.025;
	h = 0.25;
	text = "";
};

class W_RscStructuredText
{
	access = 0;
	type = 13;
	idc = -1;
	style = 0;
	colorText[] = {0.8784,0.8471,0.651,1};
	class Attributes
	{
		font = "Zeppelin32";
		color = "#e0d8a6";
		align = "center";
		shadow = 1;
	};
	x = 0;
	y = 0;
	h = 0.035;
	w = 0.1;
	text = "";
	size = 0.03921;
	shadow = 2;
};

class W_RscList
{
	type = 5;
	style = 69;
	idc = -1;
	text = "";
	w = 0.275;
	h = 0.04;
	colorSelect[] = {1, 1, 1, 1};
	colorText[] = {1, 1, 1, 1};
	colorBackground[] = {1,1,1,1};
	colorSelectBackground[] = {0.40, 0.43, 0.28, 0.5};
	colorScrollbar[] = {0.2, 0.2, 0.2, 1};
	arrowEmpty = "\ca\ui\data\ui_arrow_combo_ca.paa";
	arrowFull = "\ca\ui\data\ui_arrow_combo_active_ca.paa";
	wholeHeight = 0.45;
	rowHeight = 0.04;
	color[] = {0.7, 0.7, 0.7, 1};
	colorActive[] = {0,0,0,1};
	colorDisabled[] = {0,0,0,0.3};
	font = "Zeppelin32";
	sizeEx = 0.023;
	soundSelect[] = {"",0.1,1};
	soundExpand[] = {"",0.1,1};
	soundCollapse[] = {"",0.1,1};
	maxHistoryDelay = 1;
	autoScrollSpeed = -1;
	autoScrollDelay = 5;
	autoScrollRewind = 0;
	class ScrollBar
	{
		color[] = {1, 1, 1, 1};
		colorActive[] = {1, 1, 1, 1};
		colorDisabled[] = {1, 1, 1, 1};
		thumb = "\ca\ui\data\ui_scrollbar_thumb_ca.paa";
		arrowFull = "\ca\ui\data\ui_arrow_top_active_ca.paa";
		arrowEmpty = "\ca\ui\data\ui_arrow_top_ca.paa";
		border = "\ca\ui\data\ui_border_scroll_ca.paa";
	};
};

class W_RscPicture 
{
	idc = -1; 
	type = 0;
	style = 48;
	font = "Zeppelin32";
	sizeEx = 0.023;	
	colorBackground[] = {};
	colorText[] = {};	
	x = 0.0; y = 0.2;
	w = 0.2; h = 0.2;	
	text = "";	
}; 

class W_RscButtonBase {
	idc = -1;
	type = 16;
	style = 0;	
	w = 0.183825;
	h = 0.104575;	
	color[] = {0.95, 0.95, 0.95, 1};
	color2[] = {1, 1, 1, 0.4};
	colorBackground[] = {1, 1, 1, 1};
	colorbackground2[] = {1, 1, 1, 0.4};
	colorDisabled[] = {1, 1, 1, 0.25};	
	periodFocus = 1.2;
	periodOver = 0.8;	
	class HitZone {
		left = 0.004;
		top = 0.029;
		right = 0.004;
		bottom = 0.029;		
	};
	class ShortcutPos {
		left = 0.004;
		top = 0.026;
		w = 0.0392157;
		h = 0.0522876;		
	};
	class TextPos {	
		left = 0.05;
		top = 0.025;
		right = 0.005;
		bottom = 0.025;	
	};
	animTextureNormal = "\ca\ui\data\ui_button_normal_ca.paa";
	animTextureDisabled = "\ca\ui\data\ui_button_disabled_ca.paa";
	animTextureOver = "\ca\ui\data\ui_button_over_ca.paa";
	animTextureFocused = "\ca\ui\data\ui_button_focus_ca.01.paa";
	animTexturePressed = "\ca\ui\data\ui_button_down_ca.paa";
	animTextureDefault = "\ca\ui\data\ui_button_default_ca.paa";
	textureNoShortcut = "";
	period = 0.4;
	font = "Zeppelin32";
	size = 0.023;
	sizeEx = 0.023;
	text = "";
	
	soundEnter[] = {"\ca\ui\data\sound\mouse2", 0.09, 1};
	soundPush[] = {"\ca\ui\data\sound\new1", 0.09, 1};
	soundClick[] = {"\ca\ui\data\sound\mouse3", 0.07, 1};
	soundEscape[] = {"\ca\ui\data\sound\mouse1", 0.09, 1};
	
	action = "";
	
	class Attributes {
		font = "Zeppelin32";
		color = "#E5E5E5";
		align = "left";
		shadow = "1";	
	};
	
	class AttributesImage {
		font = "Zeppelin32";
		color = "#E5E5E5";
		align = "left";	
	};
};

class W_RscButton : W_RscButtonBase {

	w = 0.183825;
	h = 0.0522876;

	style = 2;

	color[] = {1, 1, 1, 1};
	color2[] = {1, 1, 1, 0.85};
	colorBackground[] = {1, 1, 1, 1};
	colorbackground2[] = {1, 1, 1, 0.85};
	colorDisabled[] = {1, 1, 1, 0.4};
	
	class HitZone {	
		left = 0.002;
		top = 0.003;
		right = 0.002;
		bottom = 0.016;		
	};
	
	class ShortcutPos {	
		left = -0.006;
		top = -0.007;
		w = 0.0392157;
		h = 0.0522876;	
	};
	
	class TextPos {	
		left = 0.002;
		top = 0.014;
		right = 0.002;
		bottom = 0.005;
	};
	
	animTextureNormal = "\ca\ui\data\igui_button_normal_ca.paa";
	animTextureDisabled = "\ca\ui\data\igui_button_disabled_ca.paa";
	animTextureOver = "\ca\ui\data\igui_button_over_ca.paa";
	animTextureFocused = "\ca\ui\data\igui_button_focus_ca.paa";
	animTexturePressed = "\ca\ui\data\igui_button_down_ca.paa";
	animTextureDefault = "\ca\ui\data\igui_button_normal_ca.paa";
	animTextureNoShortcut = "\ca\ui\data\igui_button_normal_ca.paa";
	
	class Attributes {	
		font = "Zeppelin32";
		color = "#E5E5E5";
		align = "center";
		shadow = "1";		
	};
};
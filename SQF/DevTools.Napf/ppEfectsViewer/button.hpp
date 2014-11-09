class Button  {
	type = 16;
	idc = -1;
	style = 0;
	default = 0;
	w = 0.183825;
	h = 0.104575;
	x = 0.1;
	color[] = {0.543000,0.574200,0.410200,1.000000 };
	color2[] = {0.950000,0.950000,0.950000,1 };
	colorBackground[] = {1,1,1,1 };
	colorbackground2[] = {1,1,1,0.400000 };
	colorDisabled[] = {1,1,1,0.250000 };
	periodFocus = 1.200000;
	periodOver = 0.800000;

	class HitZone  {
		left = 0.004000;
		top = 0.029000;
		right = 0.004000;
		bottom = 0.029000;
	};

	class ShortcutPos  {
		left = 0.014500;
		top = 0.026000;
		w = 0.039216;
		h = 0.052288;
	};

	class TextPos  {
		left = 0.025000;
		top = 0.034000;
		right = 0.015000;
		bottom = 0.005000;
	};
	animTextureNormal = "\ca\ui\data\ui_button_normal_ca.paa";
	animTextureDisabled = "\ca\ui\data\ui_button_disabled_ca.paa";
	animTextureOver = "\ca\ui\data\ui_button_over_ca.paa";
	animTextureFocused = "\ca\ui\data\ui_button_focus_ca.paa";
	animTexturePressed = "\ca\ui\data\ui_button_down_ca.paa";
	animTextureDefault = "\ca\ui\data\ui_button_default_ca.paa";
	TextureNoShortcut = "";
	period = 0.400000;
	font = "Zeppelin32";
	size = 0.039210;
	sizeEx = 0.039210;
	text = "";
	soundEnter[] = {"\ca\ui\data\sound\mouse2",0.090000,1 };
	soundPush[] = {"\ca\ui\data\sound\new1",0.090000,1 };
	soundClick[] = {"\ca\ui\data\sound\mouse3",0.070000,1 };
	soundEscape[] = {"\ca\ui\data\sound\mouse1",0.090000,1 };
	action = "";

	class Attributes  {
		font = "Zeppelin32";
		color = "#E5E5E5";
		align = "left";
		shadow = "true";
	};

	class AttributesImage  {
		font = "Zeppelin32";
		color = "#E5E5E5";
		align = "left";
	};
};

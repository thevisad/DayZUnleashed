

class RscShortcutButton;

class RscGUIListBox : RscListBox {
	color[] = {1, 1, 1, 1};
	colorText[] = {1, 1, 1, 0.75};
	colorScrollbar[] = {0.95, 0.95, 0.95, 1};
	colorSelect[] = {0.95, 0.95, 0.95, 1};
	colorSelect2[] = {0.95, 0.95, 0.95, 1};
	colorSelectBackground[] = {0.6, 0.839, 0.47, 0.3};
	colorSelectBackground2[] = {0.6, 0.839, 0.47, 1};
	period = 0;
	colorBackground[] = {0, 0, 0, 1};
	sizeEx = 0.035;
	class ScrollBar {
		color[] = {1, 1, 1, 0.6};
		colorActive[] = {1, 1, 1, 1};
		colorDisabled[] = {1, 1, 1, 0.3};
		thumb = "\ca\ui\data\igui_scrollbar_thumb_ca.paa";
		arrowFull = "\ca\ui\data\igui_arrow_top_active_ca.paa";
		arrowEmpty = "\ca\ui\data\igui_arrow_top_ca.paa";
		border = "\ca\ui\data\igui_border_scroll_ca.paa";
	};
};


class RscGUIShortcutButton : RscShortcutButton {
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
		top = 0.0;
		right = 0.002;
		bottom = 0.016;
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
		shadow = "true";
	};
};



class UnleashedLevelDialog {
	idd = 20001;
	movingEnable = true;
	enableSimulation = true;
	onLoad = "[] execVM '\z\addons\dayz_code\compile\build_levellist.sqf'";
	//onLoad = "call buildLevelList;";

	__EXEC( _xSpacing = 0.0075;  _ySpacing = 0.01;)
	__EXEC( _xInit = 12 * _xSpacing; _yInit = 18 * _ySpacing;)
	__EXEC( _windowWidth = 101; _windowHeight = 64;)
	__EXEC( _windowBorder = 1;)

	class controlsBackground {
		class Mainbackgrnd : RscPicture {
			moving = true;
			idc = 20002;
			x = 0.1; y = 0.101;
			w = 0.55; h = 0.8;
			text = "\ca\ui\data\ui_background_controlers_ca.paa";
		};
		class UnleashedLevelTitle : RscText {
		   	idc = 20003;
			x = 0.101; y =  0.13;
			w = __EVAL(50 * _xSpacing);
			h = __EVAL(3 * _ySpacing);
			colorText[] = {1,1,1,1};
			colorBackground[] = { 1, 1, 1, 0 };
			sizeEx = 0.04;
			text = "Unleashed Skills";
		};
	};

	class controls {
		class LevelQueue : RscText {
		   	idc = 20005;
			x = 0.101; y =  0.2;
			w = __EVAL(50 * _xSpacing);
			h = __EVAL(3 * _ySpacing);
			colorText[] = { 1, 1, 1, 0.8 };
			colorBackground[] = { 1, 1, 1, 0 };
			sizeEx = 0.03;
			text = "";
		};
		class LevelValue : RscText {
		   	idc = 20006;
			x = 0.101; y =  0.24;
			w = __EVAL(50 * _xSpacing);
			h = __EVAL(3 * _ySpacing);
			colorText[] = { 1, 1, 1, 0.8 };
			colorBackground[] = { 1, 1, 1, 0 };
			sizeEx = 0.03;
			text = "";
		};
		class Levellist: RscGUIListBox {
			idc = 20004;
			default = 1;
			x = 0.101; y = 0.275;
			w = 0.405; h = 0.50;
			//lineSpacing = 0;
			colorSelect[] = {0, 0, 0, 0.9};
			colorSelect2[] = {0, 0, 0, 0.9};
			colorSelectBackground[] = {1, 1, 1, 0.3};
			colorSelectBackground2[] = {1, 1, 1, 0.9};
			onLBSelChanged = "call updateUI2;";
			onLBDblClick = "execVM '\z\addons\dayz_code\compile\levels.sqf'";
			rowHeight = 0.025;
			soundSelect[] = {"\ca\ui\data\sound\mouse2", 0.09, 1};
			maxHistoryDelay = 10;
			canDrag = 0;
			xcolumn1 = "0.1f";
			xcolumn2 = "0.25f";
			xcolumn3 = "0.85f";		
		};
		class LevelButton: RscGUIShortcutButton {
			x = 0.325; y = 0.825;
			w = 0.125; h = 0.05;
			text = "Level up";
			onButtonClick = "execVM '\z\addons\dayz_code\compile\levels.sqf'";
		};
		class CloseButton: LevelButton {
			x = 0.15;
			text = "Close";
			onButtonClick = "CloseDialog 0;";
		};
	};
};
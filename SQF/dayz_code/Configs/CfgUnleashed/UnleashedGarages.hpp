class UnleashedGarageDialog {
	idd = 20011;
	movingEnable = true;
	enableSimulation = true;
	onLoad = "[] execVM '\z\addons\dayz_code\compile\build_garagelist.sqf'";

	__EXEC( _xSpacing = 0.0075;  _ySpacing = 0.01;)
	__EXEC( _xInit = 12 * _xSpacing; _yInit = 18 * _ySpacing;)
	__EXEC( _windowWidth = 101; _windowHeight = 64;)
	__EXEC( _windowBorder = 1;)

	class controlsBackground {
		class Mainbackgrnd : RscPicture {
			moving = true;
			idc = 20012;
			x = 0.1; y = 0.101;
			w = 0.55; h = 0.8;
			text = "\ca\ui\data\ui_background_controlers_ca.paa";
		};
		class UnleashedLevelTitle : RscText {
		   	idc = 20013;
			x = 0.101; y =  0.13;
			w = __EVAL(50 * _xSpacing);
			h = __EVAL(3 * _ySpacing);
			colorText[] = {1,1,1,1};
			colorBackground[] = { 1, 1, 1, 0 };
			sizeEx = 0.04;
			text = "Unleashed Garage";
		};
	};

	class controls {
		class LevelQueue : RscText {
		   	idc = 20015;
			x = 0.101; y =  0.2;
			w = __EVAL(50 * _xSpacing);
			h = __EVAL(3 * _ySpacing);
			colorText[] = { 1, 1, 1, 0.8 };
			colorBackground[] = { 1, 1, 1, 0 };
			sizeEx = 0.03;
			text = "";
		};
		class LevelValue : RscText {
		   	idc = 20016;
			x = 0.101; y =  0.24;
			w = __EVAL(50 * _xSpacing);
			h = __EVAL(3 * _ySpacing);
			colorText[] = { 1, 1, 1, 0.8 };
			colorBackground[] = { 1, 1, 1, 0 };
			sizeEx = 0.03;
			text = "";
		};
		class Levellist: RscGUIListBox {
			idc = 20014;
			default = 1;
			x = 0.101; y = 0.275;
			w = 0.405; h = 0.50;
			//lineSpacing = 0;
			colorSelect[] = {0, 0, 0, 0.9};
			colorSelect2[] = {0, 0, 0, 0.9};
			colorSelectBackground[] = {1, 1, 1, 0.3};
			colorSelectBackground2[] = {1, 1, 1, 0.9};
			onLBSelChanged = "call updateUI2;";
			onLBDblClick = "execVM '\z\addons\dayz_code\compile\fn_garage.sqf'";
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
			text = "Unload Vehicle";
			onButtonClick = "execVM '\z\addons\dayz_code\compile\fn_garage.sqf'";
		};
		class CloseButton: LevelButton {
			x = 0.15;
			text = "Close";
			onButtonClick = "CloseDialog 0;";
		};
	};
};
/******************++***
***                  ***
*** Animation Viewer ***
***                  ***
***      V1.3b       ***
***                  ***
************************
*** ...by Clayman
*** 02.07.2010
************************/


#define CLAY_AV_DEFAULTFONT		"Bitstream"

#define CLAY_AV_CT_STATIC		  0
#define CLAY_AV_CT_BUTTON		  1
#define CLAY_AV_CT_EDIT			  2
#define CLAY_AV_CT_SLIDER		  3
#define CLAY_AV_CT_COMBO		  4
#define CLAY_AV_CT_LISTBOX		  5
#define CLAY_AV_CT_TOOLBOX		  6
#define CLAY_AV_CT_CHECKBOXES		  7
#define CLAY_AV_CT_PROGRESS		  8
#define CLAY_AV_CT_HTML			  9
#define CLAY_AV_CT_STATIC_SKEW		 10
#define CLAY_AV_CT_ACTIVETEXT		 11
#define CLAY_AV_CT_TREE			 12
#define CLAY_AV_CT_STRUCTURED_TEXT	 13
#define CLAY_AV_CT_CONTEXT_MENU		 14
#define CLAY_AV_CT_CONTROLS_GROUP	 15
#define CLAY_AV_CT_SHORTCUT_BUTTON	 16
#define CLAY_AV_CT_XKEYDESC		 40
#define CLAY_AV_CT_XBUTTON		 41
#define CLAY_AV_CT_XLISTBOX		 42
#define CLAY_AV_CT_XSLIDER		 43
#define CLAY_AV_CT_XCOMBO		 44
#define CLAY_AV_CT_ANIMATED_TEXTURE	 45
#define CLAY_AV_CT_OBJECT		 80
#define CLAY_AV_CT_OBJECT_ZOOM		 81
#define CLAY_AV_CT_OBJECT_CONTAINER	 82
#define CLAY_AV_CT_OBJECT_CONT_ANIM	 83
#define CLAY_AV_CT_LINEBREAK		 98
#define CLAY_AV_CT_USER			 99
#define CLAY_AV_CT_MAP			100
#define CLAY_AV_CT_MAP_MAIN		101
#define CLAY_AV_CT_LIST_N_BOX		102

#define CLAY_AV_ST_POS			0x0F
#define CLAY_AV_ST_HPOS			0x03
#define CLAY_AV_ST_VPOS			0x0C
#define CLAY_AV_ST_LEFT			0x00
#define CLAY_AV_ST_RIGHT		0x01
#define CLAY_AV_ST_CENTER		0x02
#define CLAY_AV_ST_DOWN			0x04
#define CLAY_AV_ST_UP			0x08
#define CLAY_AV_ST_VCENTER		0x0C
#define CLAY_AV_ST_TYPE			0xF0
#define CLAY_AV_ST_SINGLE		  0
#define CLAY_AV_ST_MULTI		 16
#define CLAY_AV_ST_TITLE_BAR		 32
#define CLAY_AV_ST_PICTURE		 48
#define CLAY_AV_ST_FRAME		 64
#define CLAY_AV_ST_BACKGROUND		 80
#define CLAY_AV_ST_GROUP_BOX		 96
#define CLAY_AV_ST_GROUP_BOX2		112
#define CLAY_AV_ST_HUD_BACKGROUND	128
#define CLAY_AV_ST_TILE_PICTURE		144
#define CLAY_AV_ST_WITH_RECT		160
#define CLAY_AV_ST_LINE			176
#define CLAY_AV_ST_SHADOW		0x100
#define CLAY_AV_ST_NO_RECT		0x200
#define CLAY_AV_ST_KEEP_ASPECT_RATIO	0x800
#define CLAY_AV_ST_TITLE		ST_TITLE_BAR + ST_CENTER

#define CLAY_AV_SL_DIR			0x400
#define CLAY_AV_SL_VERT			0
#define CLAY_AV_SL_HORZ			0x400
#define CLAY_AV_SL_TEXTURES		0x10 

#define CLAY_AV_LB_TEXTURES		0x10
#define CLAY_AV_LB_MULTI		0x20 



class CLAY_AV_RscText
{
	type = CLAY_AV_CT_STATIC;
	idc = -1;
	style = CLAY_AV_ST_CENTER;
	colorText[] = {0.75,0.75,0.75,1};
	colorBackground[] = {0,0,0,0};
	font = CLAY_AV_DEFAULTFONT;
	sizeEx = 0.025;
};
class CLAY_AV_RscActiveText
{
	type = CLAY_AV_CT_ACTIVETEXT;
	idc = -1;
	style = CLAY_AV_ST_CENTER;
	color[] = {0.75,0.75,0.75,1};
	colorActive[] = {1,1,1,1};
	font = CLAY_AV_DEFAULTFONT;
	sizeEx = 0.025;
	soundClick[] = {"ui\ui_ok",0.2,1};
	soundEnter[] = {"ui\ui_over",0.2,1};
	soundEscape[] = {"ui\ui_cc",0.2,1};
	soundPush[] = {, 0.2, 1};
	default = false;
};
class CLAY_AV_RscButton
{
	type = CLAY_AV_CT_BUTTON;
	idc = -1;
	style = CLAY_AV_ST_CENTER;
	borderSize = 0;
	colorText[] = {0.75,0.75,0.75,1};
	colorDisabled[] = {0.35,0.35,0.35,0};
	colorBackground[] = {0.2,0.2,0.2,1};
	colorBackgroundActive[] = {0.5,0.5,0.5,1};
	colorBackgroundDisabled[] = {0.35,0.35,0.35,0};
	colorFocused[] = {0.2,0.2,0.2,1};
	colorShadow[] = {0,0,0,0};
	colorBorder[] = {0,0,0,0};
	font = CLAY_AV_DEFAULTFONT;
	sizeEx = 0.029;
	offsetX = 0.005;
	offsetY = 0.005;
	offsetPressedX = 0.0025;
	offsetPressedY = 0.0025;
	soundPush[] = {"\ca\ui\data\sound\new1", 0.09, 1};
	soundClick[] = {"\ca\ui\data\sound\mouse3", 0.07, 1};
	soundEnter[] = {"",0.1,1};
	soundEscape[] = {"ui\ui_cc",0.2,1};
	default = false;
};
class CLAY_AV_RscEdit
{
	type = CLAY_AV_CT_EDIT;
	idc = -1;
	style = CLAY_AV_ST_LEFT;
	font = CLAY_AV_DEFAULTFONT;
	sizeEx = 0.029;
	colorSelection[] = {0.2,0.2,0.2,0.75};
	colorText[] = {0.75,0.75,0.75,1};
	autocomplete = false;
	text = ;
};
class CLAY_AV_RscLB_C
{
	style = CLAY_AV_ST_LEFT;
	idc = -1;
	colorBackground[] = {0.2,0.2,0.2,1};
	colorSelect[] = {0.2,0.2,0.2,1};
	colorSelectBackground[] = {0.6,0.6,0.6,1};
	colorText[] = {0.8,0.8,0.8,1};
	colorScrollbar[] = {0.75,0.75,0.75,1};
	period = 1;
	font = CLAY_AV_DEFAULTFONT;
	sizeEx = 0.029;
	rowHeight = 0.04;
	soundSelect[] = {"",0.1,1};
	soundExpand[] = {"",0.1,1};
	soundCollapse[] = {"",0.1,1};
	maxHistoryDelay = 10;
	autoScrollSpeed = -1;
	autoScrollDelay = 5;
	autoScrollRewind = 0;
};
class CLAY_AV_RscListBox: CLAY_AV_RscLB_C
{
	type = CLAY_AV_CT_LISTBOX;
	class ScrollBar
	{
		color[] = {1,1,1,0.6};
		colorActive[] = {1,1,1,1};
		colorDisabled[] = {1,1,1,0.3};
		thumb = "\ca\ui\data\ui_scrollbar_thumb_ca.paa";
		arrowFull = "\ca\ui\data\ui_arrow_top_active_ca.paa";
		arrowEmpty = "\ca\ui\data\ui_arrow_top_ca.paa";
		border = "\ca\ui\data\ui_border_scroll_ca.paa";
	};
};
class CLAY_AV_RscCombo: CLAY_AV_RscLB_C
{
	type = CLAY_AV_CT_COMBO;
	thumb = "\ca\ui\data\ui_scrollbar_thumb_ca.paa";
	arrowFull = "\ca\ui\data\ui_arrow_top_active_ca.paa";
	arrowEmpty = "\ca\ui\data\ui_arrow_top_ca.paa";
	border = "\ca\ui\data\ui_border_scroll_ca.paa";
	wholeHeight = 0.45;
	class ScrollBar
	{
		color[] = {1,1,1,0.6};
		colorActive[] = {1,1,1,1};
		colorDisabled[] = {1,1,1,0.3};
		thumb = "\ca\ui\data\ui_scrollbar_thumb_ca.paa";
		arrowFull = "\ca\ui\data\ui_arrow_top_active_ca.paa";
		arrowEmpty = "\ca\ui\data\ui_arrow_top_ca.paa";
		border = "\ca\ui\data\ui_border_scroll_ca.paa";
	};
};



class DlgViewer
{
	idd = 200;
	movingEnable = true;
	controlsBackground[] = {ViewerBackground, ViewerFrame};
	class ViewerBackground: CLAY_AV_RscText
	{
		idc = 201;
		colorBackground[] = {0.2,0.2,0.2,0.75};
		text = ;
		x = (0.5 * SafeZoneW + SafeZoneX);
		y = (0 * SafeZoneH + SafeZoneY);
		w = (0.5 * SafeZoneW);
		h = (1 * SafeZoneH);
	};
	class ViewerFrame: CLAY_AV_RscText
	{
		idc = 202;
		colorText[] = {1,0,0,1};
		colorBackground[] = {0,0,0,1};
		font = "EtelkaMonospaceProBold";
		sizeEx = (0.025 * SafeZoneH);
		text = "Animation Viewer V1.3b";
		x = (0.5 * SafeZoneW + SafeZoneX);
		y = (0 * SafeZoneH + SafeZoneY);
		w = (0.5 * SafeZoneW);
		h = (0.05 * SafeZoneH);
	};
	controls[] = {AnimListBox, AnimStoreBox, TextStore, ButtonAdd, ButtonRemove, ButtonClear, ButtonCopy, SearchBox, ButtonSearch, TextUnit, SelectUnit, TextWeapon, SelectWeapon, TextType, SelectType, TextPosition, SelectPosition, TextMove, SelectMove, TextBehaviour, SelectBehaviour, ButtonPlay, ButtonPlayG, ButtonSwitch, ButtonSwitchG, ButtonReset, ButtonEnd, ButtonStop, ButtonZoomIn, ButtonZoomOut, TextCamera, ButtonCamFront, ButtonCamBack, ButtonCamLeft, ButtonCamRight};
	class AnimListBox: CLAY_AV_RscListbox
	{
		idc = 203;
		x = (0.505 * SafeZoneW + SafeZoneX);
		y = (0.165 * SafeZoneH + SafeZoneY);
		w = (0.49 * SafeZoneW);
		h = (0.48 * SafeZoneH);
	};
	class AnimStoreBox: CLAY_AV_RscListBox
	{
		idc = 228;
		x = (0.505 * SafeZoneW + SafeZoneX);
		y = (0.83 * SafeZoneH + SafeZoneY);
		w = (0.49 * SafeZoneW);
		h = (0.16 * SafeZoneH);
	};
	class TextStore: CLAY_AV_RscText
	{
		idc = 229;
		text = "Saved Animations:";
		x = (0.505 * SafeZoneW + SafeZoneX);
		y = (0.81 * SafeZoneH + SafeZoneY);
		w = (0.1 * SafeZoneW);
		h = (0.015 * SafeZoneH);
	};
	class ButtonAdd: CLAY_AV_RscButton
	{
		idc = 230;
		text = "Add";
		action = "[1] execVM 'AnimationViewer\store.sqf'";
		x = (0.606 * SafeZoneW + SafeZoneX);
		y = (0.8 * SafeZoneH + SafeZoneY);
		w = (0.085 * SafeZoneW);
		h = (0.025 * SafeZoneH);
	};
	class ButtonRemove: CLAY_AV_RscButton
	{
		idc = 231;
		text = "Remove";
		action = "[2] execVM 'AnimationViewer\store.sqf'";
		x = (0.706 * SafeZoneW + SafeZoneX);
		y = (0.8 * SafeZoneH + SafeZoneY);
		w = (0.085 * SafeZoneW);
		h = (0.025 * SafeZoneH);
	};
	class ButtonClear: CLAY_AV_RscButton
	{
		idc = 232;
		text = "Clear";
		action = "lbClear 228";
		x = (0.806 * SafeZoneW + SafeZoneX);
		y = (0.8 * SafeZoneH + SafeZoneY);
		w = (0.085 * SafeZoneW);
		h = (0.025 * SafeZoneH);
	};
	class ButtonCopy: CLAY_AV_RscButton
	{
		idc = 235;
		text = "Copy";
		action = "[3] execVM 'AnimationViewer\store.sqf'";
		x = (0.906 * SafeZoneW + SafeZoneX);
		y = (0.8 * SafeZoneH + SafeZoneY);
		w = (0.085 * SafeZoneW);
		h = (0.025 * SafeZoneH);
	};
	class SearchBox: CLAY_AV_RscEdit
	{
		idc = 233;
		x = (0.505 * SafeZoneW + SafeZoneX);
		y = (0.7 * SafeZoneH + SafeZoneY);
		w = (0.425 * SafeZoneW);
		h = (0.025 * SafeZoneH);
	};
	class ButtonSearch: CLAY_AV_RscButton
	{
		idc = 234;
		text = "Search";
		action = "[] execVM 'AnimationViewer\search.sqf'";
		x = (0.935 * SafeZoneW + SafeZoneX);
		y = (0.7 * SafeZoneH + SafeZoneY);
		w = (0.05 * SafeZoneW);
		h = (0.025 * SafeZoneH);
	};
	class TextUnit: CLAY_AV_RscText
	{
		idc = 204;
		style = CLAY_AV_ST_RIGHT;
		text = "Unit:";
		x = (0.505 * SafeZoneW + SafeZoneX);
		y = (0.06 * SafeZoneH + SafeZoneY);
		w = (0.08 * SafeZoneW);
		h = (0.025 * SafeZoneH);
	};
	class SelectUnit: CLAY_AV_RscCombo
	{
		idc = 205;
		x = (0.585 * SafeZoneW + SafeZoneX);
		y = (0.06 * SafeZoneH + SafeZoneY);
		w = (0.16 * SafeZoneW);
		h = (0.025 * SafeZoneH);
	};
	class TextWeapon: CLAY_AV_RscText
	{
		idc = 206;
		style = CLAY_AV_ST_RIGHT;
		text = "Weapon:";
		x = (0.745 * SafeZoneW + SafeZoneX);
		y = (0.06 * SafeZoneH + SafeZoneY);
		w = (0.08 * SafeZoneW);
		h = (0.025 * SafeZoneH);
	};
	class SelectWeapon: CLAY_AV_RscCombo
	{
		idc = 207;
		x = (0.825 * SafeZoneW + SafeZoneX);
		y = (0.06 * SafeZoneH + SafeZoneY);
		w = (0.16 * SafeZoneW);
		h = (0.025 * SafeZoneH);
	};
	class TextType: CLAY_AV_RscText
	{
		idc = 208;
		style = CLAY_AV_ST_RIGHT;
		text = "Type:";
		x = (0.505 * SafeZoneW + SafeZoneX);
		y = (0.095 * SafeZoneH + SafeZoneY);
		w = (0.08 * SafeZoneW);
		h = (0.025 * SafeZoneH);
	};
	class SelectType: CLAY_AV_RscCombo
	{
		idc = 209;
		x = (0.585 * SafeZoneW + SafeZoneX);
		y = (0.095 * SafeZoneH + SafeZoneY);
		w = (0.16 * SafeZoneW);
		h = (0.025 * SafeZoneH);
	};
	class TextPosition: CLAY_AV_RscText
	{
		idc = 210;
		style = CLAY_AV_ST_RIGHT;
		text = "Position:";
		x = (0.745 * SafeZoneW + SafeZoneX);
		y = (0.095 * SafeZoneH + SafeZoneY);
		w = (0.08 * SafeZoneW);
		h = (0.025 * SafeZoneH);
	};
	class SelectPosition: CLAY_AV_RscCombo
	{
		idc = 211;
		x = (0.825 * SafeZoneW + SafeZoneX);
		y = (0.095 * SafeZoneH + SafeZoneY);
		w = (0.16 * SafeZoneW);
		h = (0.025 * SafeZoneH);
	};
	class TextMove: CLAY_AV_RscText
	{
		idc = 212;
		style = CLAY_AV_ST_RIGHT;
		text = "Movement:";
		x = (0.505 * SafeZoneW + SafeZoneX);
		y = (0.13 * SafeZoneH + SafeZoneY);
		w = (0.08 * SafeZoneW);
		h = (0.025 * SafeZoneH);
	};
	class SelectMove: CLAY_AV_RscCombo
	{
		idc = 213;
		x = (0.585 * SafeZoneW + SafeZoneX);
		y = (0.13 * SafeZoneH + SafeZoneY);
		w = (0.16 * SafeZoneW);
		h = (0.025 * SafeZoneH);
	};
	class TextBehaviour: CLAY_AV_RscText
	{
		idc = 214;
		style = CLAY_AV_ST_RIGHT;
		text = "Behaviour:";
		x = (0.745 * SafeZoneW + SafeZoneX);
		y = (0.13 * SafeZoneH + SafeZoneY);
		w = (0.08 * SafeZoneW);
		h = (0.025 * SafeZoneH);
	};
	class SelectBehaviour: CLAY_AV_RscCombo
	{
		idc = 215;
		x = (0.825 * SafeZoneW + SafeZoneX);
		y = (0.13 * SafeZoneH + SafeZoneY);
		w = (0.16 * SafeZoneW);
		h = (0.025 * SafeZoneH);
	};
	class ButtonPlay: CLAY_AV_RscButton
	{
		idc = 216;
		text = "playMove";
		action = "CLAY_Animator playMove lbText [203, lbCurSel 203]";
		x = (0.515 * SafeZoneW + SafeZoneX);
		y = (0.66 * SafeZoneH + SafeZoneY);
		w = (0.11 * SafeZoneW);
		h = (0.025 * SafeZoneH);
	};
	class ButtonPlayG: ButtonPlay
	{
		idc = 236;
		text = "playAction";
		action = "CLAY_Animator playAction lbText [203, lbCurSel 203]";
	};
	class ButtonSwitch: CLAY_AV_RscButton
	{
		idc = 217;
		text = "switchMove";
		action = "CLAY_Animator switchMove lbText [203, lbCurSel 203]";
		x = (0.635 * SafeZoneW + SafeZoneX);
		y = (0.66 * SafeZoneH + SafeZoneY);
		w = (0.11 * SafeZoneW);
		h = (0.025 * SafeZoneH);
	};
	class ButtonSwitchG: ButtonSwitch
	{
		idc = 237;
		text = "switchAction";
		action = "CLAY_Animator switchAction lbText [203, lbCurSel 203]";
	};
	class ButtonReset: CLAY_AV_RscButton
	{
		idc = 218;
		text = "Reset";
		action = "CLAY_AV_Reset = true";
		x = (0.885 * SafeZoneW + SafeZoneX);
		y = (0.66 * SafeZoneH + SafeZoneY);
		w = (0.1 * SafeZoneW);
		h = (0.025 * SafeZoneH);
	};
	class ButtonEnd: CLAY_AV_RscButton
	{
		idc = 219;
		colorText[] = {0,0,0,1};
		colorBackground[] = {0.2,0,0,1};
		colorBackgroundActive[] = {0.2,0,0,1};
		colorFocused[] = {0.2,0,0,1};
		font = "EtelkaMonospaceProBold";
		sizeEx = (0.025 * SafeZoneH);
		text = "X";
		action = "closeDialog 0; CLAY_End = true";
		x = (0.95 * SafeZoneW + SafeZoneX);
		y = (0 * SafeZoneH + SafeZoneY);
		w = (0.05 * SafeZoneW);
		h = (0.05 * SafeZoneH);
	};
	class ButtonStop: CLAY_AV_RscButton
	{
		idc = 220;
		text = "Stop";
		action = "CLAY_Animator setPos CLAY_AnimStartPos; CLAY_Animator setDir 0; CLAY_Animator playMove ''; CLAY_Animator switchMove ''";
		x = (0.765 * SafeZoneW + SafeZoneX);
		y = (0.66 * SafeZoneH + SafeZoneY);
		w = (0.1 * SafeZoneW);
		h = (0.025 * SafeZoneH);
	};
	class ButtonZoomIn: CLAY_AV_RscButton
	{
		idc = 221;
		text = "ZOOM +";
		action = "[1] execVM 'AnimationViewer\campos.sqf'";
		x = (0.515 * SafeZoneW + SafeZoneX);
		y = (0.74 * SafeZoneH + SafeZoneY);
		w = (0.1 * SafeZoneW);
		h = (0.025 * SafeZoneH);
	};
	class ButtonZoomOut: CLAY_AV_RscButton
	{
		idc = 222;
		text = "ZOOM -";
		action = "[2] execVM 'AnimationViewer\campos.sqf'";
		x = (0.515 * SafeZoneW + SafeZoneX);
		y = (0.765 * SafeZoneH + SafeZoneY);
		w = (0.1 * SafeZoneW);
		h = (0.025 * SafeZoneH);
	};
	class TextCamera: CLAY_AV_RscText
	{
		idc = 223;
		text = "Camera Position:";
		x = (0.645 * SafeZoneW + SafeZoneX);
		y = (0.74 * SafeZoneH + SafeZoneY);
		w = (0.11 * SafeZoneW);
		h = (0.05 * SafeZoneH);
	};
	class ButtonCamFront: CLAY_AV_RscButton
	{
		idc = 224;
		text = "Front";
		action = "[3] execVM 'AnimationViewer\campos.sqf'";
		x = (0.765 * SafeZoneW + SafeZoneX);
		y = (0.74 * SafeZoneH + SafeZoneY);
		w = (0.1 * SafeZoneW);
		h = (0.025 * SafeZoneH);
	};
	class ButtonCamBack: CLAY_AV_RscButton
	{
		idc = 225;
		text = "Back";
		action = "[4] execVM 'AnimationViewer\campos.sqf'";
		x = (0.765 * SafeZoneW + SafeZoneX);
		y = (0.765 * SafeZoneH + SafeZoneY);
		w = (0.1 * SafeZoneW);
		h = (0.025 * SafeZoneH);
	};
	class ButtonCamLeft: CLAY_AV_RscButton
	{
		idc = 226;
		text = "Left";
		action = "[5] execVM 'AnimationViewer\campos.sqf'";
		x = (0.875 * SafeZoneW + SafeZoneX);
		y = (0.74 * SafeZoneH + SafeZoneY);
		w = (0.1 * SafeZoneW);
		h = (0.025 * SafeZoneH);
	};
	class ButtonCamRight: CLAY_AV_RscButton
	{
		idc = 227;
		text = "Right";
		action = "[6] execVM 'AnimationViewer\campos.sqf'";
		x = (0.875 * SafeZoneW + SafeZoneX);
		y = (0.765 * SafeZoneH + SafeZoneY);
		w = (0.1 * SafeZoneW);
		h = (0.025 * SafeZoneH);
	};
};

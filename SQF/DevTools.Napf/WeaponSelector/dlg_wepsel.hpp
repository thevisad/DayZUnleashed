#include "def_wepsel.hpp"

#define FontHTML "Bitstream"

#define CT_STATIC     0
#define CT_BUTTON     1
#define CT_EDIT       2
#define CT_LISTBOX    5
#define CT_STRUCTURED_TEXT  13
#define CT_CONTROLS_GROUP   15

#define ST_LEFT       0
#define ST_CENTER     2
#define ST_MULTI          16 
#define ST_PICTURE        48
#define ST_NO_RECT        0x200
#define ST_KEEP_ASPECT_RATIO  0x800


class RscText_WS {
	type = CT_STATIC;
	style = ST_LEFT;
	idc = -1;
	colorBackground[] = {0, 0, 0, 0};
	colorText[] = {0.2, .2, 0.2, 1};
	font = FontHTML;
	sizeEx = TXTSIZE;
	text = "";
};
class RscTextMulti_WS: RscText_WS {
	linespacing = 1;
	style = ST_LEFT + ST_MULTI + ST_NO_RECT;
};
class RscStructuredText_WS {
	type = CT_STRUCTURED_TEXT;
	style = ST_LEFT;
	idc = -1;
	colorText[] = {1, 1, 1, 1};
	class Attributes
	{
		font = FontHTML;
		color = "#ffffff";
		align = "center";
		shadow = true;
	};
	text = "";
	size = 0.03;
};
class RscButton_WS {
	type = CT_BUTTON;
	style = ST_CENTER;
	idc = -1;
	font = FontHTML;
	sizeEx = TXTSIZE;
	default = false;
	colorText[] = {0, 0, 0, 1};
	colorDisabled[] = {0.40, 0.40, 0.40, 1};
	colorBackground[] = {1, 1, 1, 1};
	colorBackgroundDisabled[] = {0.70, 0.70, 0.70, 0.80};
	colorBackgroundActive[] = {1, 0.50, 0, 1};
	colorFocused[] = {1, 0.50, 0, 1};
	colorShadow[] = {0.72, 0.36, 0, 0.80};
	colorBorder[] = {0.72, 0.36, 0, 0};
	soundEnter[] = {"", 0.10, 1};
	soundPush[] = {"", 0.10, 1};
	soundClick[] = {"", 0.10, 1};
	soundEscape[] = {"", 0.10, 1};
	offsetX = 0.0030;
	offsetY = 0.0030;
	offsetPressedX = 0.0020;
	offsetPressedY = 0.0020;
	borderSize = 0.0;
};

class RscListBox_WS {
	type = CT_LISTBOX;
	style = ST_LEFT;
	idc = -1;
	colorSelect[] = {0, 0.2, 0.4, 1};
	colorSelectBackground[] = {0, 0.2, 0.4, 0.1};
	colorText[] = {0.2, .2, 0.2, 1};
	colorBackground[] = {0.4, 0.4, 0.4, 0};
	font = FontHTML;
	sizeEx = 0.04;
	rowHeight = 0.025;
	ScrollBar = ;
	autoScrollRewind = ;
	autoScrollSpeed = ;
	autoScrollDelay = ;
	maxHistoryDelay = ;
};

class RscPictureKeepAspect_WS {
	type = CT_STATIC;
	style = ST_PICTURE + ST_KEEP_ASPECT_RATIO;
	idc = -1;
	colorBackground[] = {0, 0, 0, 0};
	colorText[] = {1, 1, 1, 1};
	font = FontHTML;
	sizeEx = 0;
	lineSpacing = 0;
	text = "";
};
class RscControlsGroup_WS {
	type = CT_CONTROLS_GROUP;
	style = ST_LEFT;
	idc = -1;
	ScrollBar = ;
	autoScrollRewind = ;
	autoScrollSpeed = ;
	autoScrollDelay = ;
	maxHistoryDelay = ;
	class VScrollbar {
		autoScrollRewind = ;
		autoScrollSpeed = ;
		autoScrollDelay = ;
		maxHistoryDelay = ;
		color[] = {1, 1, 1, 1};
		width = 0.0210;
	};
	class HScrollbar {
		autoScrollRewind = ;
		autoScrollSpeed = ;
		autoScrollDelay = ;
		maxHistoryDelay = ;
		color[] = {1, 1, 1, 1};
		height = 0;
		width = 0;
	};
};

class SelectWeapon
{
  idd = DLG_WEP_IDD;
  movingEnable = 1;
  controlsBackground[] = {BACKGROUND1,BACKGROUND2,HEADER};
  class BACKGROUND1 : RscText_WS {
    colorBackground[] = {.6, .6, .6, .8};
    text = ;
  	x = 0.2;
  	y = 0.1;
  	w = 0.4;
  	h = 0.8;
  	moving = 1;
  };
  class BACKGROUND2 : RscText_WS {
    colorBackground[] = {.4, .4, .4, .8};
    text = ;
  	x = 0.6;
  	y = 0.1;
  	w = 0.4;
  	h = 0.8;
  	moving = 1;
  };
  class HEADER : RscText_WS {
    x = 0.2;
    y = 0.1;
    w = 0.4;
    h = 0.06;
		moving = 0;
    colorBackground[] = {.2, .2, .2, .8};
		colorText[] = {1, .5, 0, .9};
    sizeEx = 0.04;
    text = "Available Weapons";
  };

  objects[] = {};
  
  controls[] = {WEPLIST,WEPIMG,WEPNAME,WEPDESC_CTRL,WEPSEL};
  class WEPLIST : RscListBox_WS {
  	idc = DLG_WEP_LIST;
  	x = 0.21;
  	y = 0.165;
  	w = 0.38;
  	h = 0.72;
		colorText[] = {0, 0, 0, 1};
		soundSelect[] = {"",0.1,1};
#ifdef VBS
  	onMouseMoving = "DLG_WEP_SEL=_this";
#endif
  	moving = 1;
  };
  class WEPNAME : RscTextMulti_WS {
  	idc = DLG_WEP_NAME;
  	style = ST_CENTER;
  	x = 0.61;
  	y = 0.1;
  	w = 0.38;
  	h = 0.08;
    sizeEx = 0.04;
		colorText[] = {1, .5, 0, .9};
  	moving = 1;
  };
  class WEPIMG : RscPictureKeepAspect_WS {
  	idc = DLG_WEP_PIC;
  	x = 0.61;
  	y = 0.15;
  	w = 0.37;
  	h = 0.28;
  	moving = 1;
  };
  class WEPDESC_CTRL: RscControlsGroup_WS {
		x = .6;
		y = .44;
		w = .395;
		h = .4;
  	class Controls {
  		class WEPDESC: RscStructuredText_WS {
		  	idc = DLG_WEP_DESC;
		  	x = 0;
		  	y = 0;
		  	w = 0.38;
		  	h = 0.8;
				colorText[] = {1, 1, 1, 1};
		  	moving = 1;
		  };
		};
  };

  class WEPSEL : RscButton_WS
  {
  	idc = DLG_WEP_BTN;
  	x = 0.61;
  	y = 0.85;
  	w = 0.38;
  	h = 0.04;
		sizeEx = 0.04;
	 	text = "Select Weapon";
  	action = "DLG_WEP_SELECTED = true";
  };
 };


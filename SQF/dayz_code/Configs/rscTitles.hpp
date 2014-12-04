class RscPicture;
class RscButton;
class CA_IGUI_Title;
class CA_Title;
class RscText;
class RscListBox;
class RscControlsGroup;
class RscLineBreak;
class RscIGUIShortcutButton;
class RscGearShortcutButton;
class RscIGUIListNBox;
class RscActiveText;
class RscTextGUIK;
class RscFrame;
class RscPictureKeepAspect;
class RscStandardDisplay;
class RscProgress;
class RscProgressNotFreeze;
class RscButtonTextOnly;
class RscObject;
class IGUIBack;
class RscIGUIListBox;
class RscHTML;
class BOX;

#include "CfgPlayerStats\defines.hpp"
#include "CfgPlayerStats\p__cover.hpp"
#include "CfgPlayerStats\p_journal_humanity.hpp"
#include "CfgPlayerStats\p_humanity_art.hpp"
#include "CfgPlayerStats\p_zombies_killed.hpp"
#include "CfgPlayerStats\p_bandits_killed.hpp"
#include "CfgPlayerStats\p_headshots.hpp"
#include "CfgPlayerStats\p_murders.hpp"
#include "CfgPlayerStats\sound.hpp"
#include "CFGUnleashed.hpp"

class RscPictureGUI
{
	access = 0;
	type = 0;
	idc = -1;
	colorBackground[] = {0,0,0,0};
	colorText[] = {0.38,0.63,0.26,0.75};
	font = "TahomaB";
	sizeEx = 0;
	lineSpacing = 0;
	text = "";
	style = "0x30 + 0x100";
	x = 0;
	y = 0;
	w = 0.2;
	h = 0.15;
};


class RscStructuredText {
	class Attributes;
};
class RscStructuredTextGUI: RscStructuredText
{
	colorBackground[] = {0,0,0,0};
	colorText[] = {1,1,1,1};
	class Attributes: Attributes
	{
		align = "center";
		valign = "middle";
	};
};

class RscDisplayLoading 
{
	class Variants 
	{
		class LoadingOne 
		{
			class controls 
			{
				class LoadingPic : RscPictureKeepAspect
				{
					text = "z\addons\dayz_code\gui\loadingscreen.paa";
				};
			};
		};
	};
};

class RscDisplayStart 
{
	class controls
	{
		class LoadingPic: RscPictureKeepAspect
		{
			text = "z\addons\dayz_code\gui\loadingscreen.paa";
		};
	};
};

class RscDisplayDebriefing: RscStandardDisplay
{
	class controls
	{
		delete Debriefing_MissionTitle;
		delete CA_MissionTitle;
		delete CA_TextVotingTimeLeft;
		delete CA_MissionResult;
		delete CA_DebriefingInfo;
		delete CA_DebriefingTextGroup;
		delete CA_DebriefingObjectivesGroup;
		delete CA_DebriefingStatsGroup;
		delete ButtonStatistics;
		delete ButtonRetry;
		//delete ButtonContinue;
	};
	class ControlsBackground
	{
		delete Mainback;
	};
};

class RscDisplayMissionFail: RscStandardDisplay
{
	class controls
	{
		delete Debriefing_MissionTitle;
		delete CA_MissionTitle;
		delete CA_TextVotingTimeLeft;
		delete CA_MissionResult;
		delete CA_DebriefingInfo;
		delete CA_DebriefingTextGroup;
		delete CA_DebriefingObjectivesGroup;
		delete CA_DebriefingStatsGroup;
		delete BRetry;
		//delete BAbort;
	};
	class ControlsBackground
	{
		delete Mainback;
	};
};


class CA_TextLanguage;
class RscXListBox;

class RscDisplayGameOptions
{
	//onLoad = "((_this select 0) displayCtrl 140) lbAdd 'Default';((_this select 0) displayCtrl 140) lbAdd 'Debug';((_this select 0) displayCtrl 140) lbAdd 'None';((_this select 0) displayCtrl 140) lbSetCurSel (uiNamespace getVariable ['DZ_displayUI', 0]);";
	onUnload = "call ui_changeDisplay;";
	class controls
	{
		class CA_TextUIDisplay: CA_TextLanguage
		{
			x = 0.159803;
			y = "(0.420549 + 4*0.069854)";
			text = "DayZ UI:";
		};
		class CA_ValueUIDisplay: RscXListBox
		{
			idc = 140;
			x = 0.400534;
			y = "(0.420549 + 4*0.069854)";
			w = 0.3;
			onLBSelChanged = "(uiNamespace setVariable ['DZ_displayUI', (_this select 1)]);";
		};	
	};
};

class RscShortcutButtonMain;
class RscDisplayMain : RscStandardDisplay
{
	class controlsBackground 
	{
		class Mainback : RscPicture {
			idc = 1104;
			x = "SafeZoneX + 0.04";
			y = "SafeZoneY + 0.03";
			w = 0.627451;
			h = 1.000000;
			text = "\ca\ui\data\ui_mainmenu_background_ca.paa";
		};
		class CA_ARMA2 : RscPicture
		{
			text = "z\addons\dayz_code\gui\mod.paa";
		};
	};
	
	class controls 
	{
		class CA_Version;
		class DAYZ_Version : CA_Version
		{
			idc = -1;
			text = "0.98-Devbuild-09042014";
			y = "(SafeZoneH + SafeZoneY) - (1 - 0.95)";
		};
		delete CA_TitleMainMenu;
		delete CA_SinglePlayer;
		class CA_PlayerName : RscText {
			idc = 109;
			style = 256;
			colorbackground[] = {0.1, 0.1, 0.1, 0};
			x = "SafeZoneX + 0.05";
			y = "SafeZoneY + 0.06";
			w = 0.5;
			h = 0.05;
		};
		class CA_MP : RscShortcutButtonMain {
			idc = 105;
			x = "SafeZoneX + 0.05";
			y = "SafeZoneY + 0.15";
			toolTip = $STR_TOOLTIP_MAIN_MULTIPLAYER;
			text = $STR_CA_MAIN_MULTI;
			
			class KeyHints {
				class A {
					key = 0x00050000 + 0;
					hint = "";
				};
			};
		};
		class CA_Options : RscShortcutButtonMain {
			x = "SafeZoneX + 0.05";
			y = "SafeZoneY + 0.30";
		};
		class CA_PlayerProfile : RscShortcutButtonMain {
			x = "SafeZoneX + 0.05";
			y = "SafeZoneY + 0.45";
		};
		class CA_Expansions : RscShortcutButtonMain {
			x = "SafeZoneX + 0.05";
			y = "SafeZoneY + 0.60";
		};
		class CA_Exit : RscShortcutButtonMain {
			x = "SafeZoneX + 0.05";
			y = "SafeZoneY + 0.75";
		};
	};
};

//Remove Diary
class RscDisplayDiary {
	idd = 129;
	movingEnable = 0;
	
	class Controls {
		delete Diary;
		delete DiaryIndex;
		delete B_Quit;
		delete B_Add;
		delete DiaryPage;
		delete DiaryTitle;
		delete DiaryBackground;
	};
};

class RscButtonActionMenu: RscButton
{
	SizeEx = 0.02674;
	colorBackground[] = {0.44,0.7,0.44,1};
	colorBackgroundActive[] = {0.24,0.5,0.24,1};
	colorBackgroundDisabled[] = {1,1,1,0};
	colorFocused[] = {0.2,0.5,0.2,1};
	colorShadow[] = {1,1,1,0};
	borderSize = 0;
	w = 0.095 * safezoneW;
	h = 0.025 * safezoneH;
};

class RscDisplayMPInterrupt : RscStandardDisplay {
	movingEnable = 0;
	enableSimulation = 1;
	//onLoad = "_dummy = ['Init', _this] execVM '\ca\ui\scripts\pauseLoadinit.sqf'; [(_this select 0)] execVM '\z\addons\dayz_code\compile\player_onPause.sqf';"; _respawn = (_this select 0) displayCtrl 1010); _respawn ctrlEnable false; _abort = (_this select 0) displayCtrl 104); _abort ctrlEnable false;						
	onLoad = "[] execVM '\z\addons\dayz_code\compile\player_onPause.sqf'; _dummy = ['Init', _this] execVM '\ca\ui\scripts\pauseLoadinit.sqf';";
	onUnload = "private ['_dummy']; _dummy = ['Unload', _this] execVM '\ca\ui\scripts\pauseOnUnload.sqf';";
	
	class controlsBackground {
		class Mainback : RscPicture {
			idc = 1104;
			x = 0.045;
			y = 0.17;
			w = 0.627451;
			h = 0.836601;
			text = "\ca\ui\data\ui_background_mp_pause_ca.paa";
		};
	};
	
	class controls {
	/*
		class Title {};
		class B_Players {};
		class B_Options {};
		class B_Abort {};
		class B_Retry {};
		class B_Load {};
		class B_Save {};
		class B_Continue {};
		class B_Diary {};
	*/	
		
		class MissionTitle : RscText {
			idc = 120;
			x = 0.05;
			y = 0.818;
			text = "";
		};
		
		class DifficultyTitle : RscText {
			idc = 121;
			x = 0.05;
			y = 0.772;
			text = "";
		};
		
		class Paused_Title : CA_Title {
			idc = 523;
			x = 0.087;
			y = 0.192;
			text = $STR_DISP_MAIN_MULTI;
		};
		
		class CA_B_SAVE : RscShortcutButtonMain {
			idc = 103;
			y = 0.2537 + 0.101903 * 0;
			x = 0.051;
			text = $STR_DISP_INT_SAVE;
			default = 0;
		};
		
		class CA_B_Skip : CA_B_SAVE {
			idc = 1002;
			text = $STR_DISP_INT_SKIP;
		};
		
		class CA_B_REVERT : CA_B_SAVE {
			idc = 119;
			y = 0.2537 + 0.101903 * 1;
			text = "$str_disp_revert";
			default = 0;
		};
		
		class CA_B_Respawn : CA_B_SAVE {
			idc = 1010;
			//onButtonClick = "hint str (_this select 0);";
			onButtonClick = "if ((alive player) && (r_fracture_legs)) then { player SetDamage 1;};";
			y = 0.2537 + 0.101903 * 2;
			text = $STR_DISP_INT_RESPAWN;
			default = 0;
		};
		
		class CA_B_Options : CA_B_SAVE {
			idc = 101;
			y = 0.2537 + 0.101903 * 3;
			text = $STR_DISP_INT_OPTIONS;
			default = 0;
		};
		
		class CA_B_Abort : CA_B_SAVE {
			idc = 104;
			y = 0.2537 + 0.101903 * 4;
			onButtonClick = "[] execVM '\z\addons\dayz_code\compile\player_onPause.sqf'; call player_forceSave;";
			text = $STR_DISP_INT_ABORT;
			default = 0;
		};
		
		class ButtonCancel : RscShortcutButton {
			idc = 2;
			shortcuts[] = {0x00050000 + 1, 0x00050000 + 8};
			default = 1;
			x = 0.1605;
			y = 0.8617;
			text = $STR_DISP_INT_CONTINUE;
		};
	};
};

class DZ_ItemInteraction {
	idd = 6901;
	movingEnable = 0;
	class controlsBackground { 
		// define controls here
	};
	class objects { 
		// define controls here
	};
	class controls { 
		// define controls here

	};
};

class KeypadGate {
idd = -1;
movingEnable = false;
controlsBackground[] = {};
controls[] = {
"B1",
"B2",
"B3",
"B4",
"B5",
"B6",
"B7",
"B8",
"B9",
"B0",
"BEnter",
"BAbort",
"KeypadImage",
"NumberDisplay"
};
objects[] = {};
class B1 {
idc = -1;
type = 1;
style = 2;
moving = false;
x = 0.39;
y = 0.39;
h = 0.08;
w = 0.06;
font = "Zeppelin32";
sizeEx = 0.05;
// action uses script commands to close dialog and display a hint
action = "CODEINPUT set [count CODEINPUT, 1]; ctrlSetText [1099, str CODEINPUT];";
text = "";
default = false;
colorText[] = {0,0,0,1}; // white
colorFocused[] = {0.1,0.1,0.1,0.1}; // green
colorShadow[] = {0,0,0,0}; // darkgrey
colorBorder[] = {0.5,0.5,0.5,0}; // grey
colorBackground[] = {0.7,0.7,0.7,1};
colorBackgroundActive[] = {0.1,0.1,0.1,0.3}; // green
colorDisabled[] = {1,0,0,1}; // red
colorBackgroundDisabled[] = {0.5,0.5,0.5,0}; // grey
borderSize = 0.015;
offsetX = 0.005;
offsetY = 0.005;
offsetPressedX = 0.002;
offsetPressedY = 0.002;
soundEnter[] = {"",0,1}; // NoSound
soundPush[] = {"",0,1}; // NoSound
soundClick[] = {"\dayz_sfx\action\cell\dtmf_1.ogg",0.5,1}; // NoSound
soundEscape[] = {"",0,1}; // NoSound
};

class B2 : B1 {
x = 0.47;
text = "";
soundClick[] = {"\dayz_sfx\action\cell\dtmf_2.ogg",0.5,1};
action = "CODEINPUT set [count CODEINPUT, 2]; ctrlSetText [1099, str CODEINPUT];";
};
class B3 : B1 {
x = 0.55;
text = "";
soundClick[] = {"\dayz_sfx\action\cell\dtmf_3.ogg",0.5,1};
action = "CODEINPUT set [count CODEINPUT, 3]; ctrlSetText [1099, str CODEINPUT];";
};
class B4 : B1 {
y = 0.50;
text = "";
soundClick[] = {"\dayz_sfx\action\cell\dtmf_4.ogg",0.5,1};
action = "CODEINPUT set [count CODEINPUT, 4]; ctrlSetText [1099, str CODEINPUT];";
};
class B5 : B4 {
x = 0.47;
text = "";
soundClick[] = {"\dayz_sfx\action\cell\dtmf_5.ogg",0.5,1};
action = "CODEINPUT set [count CODEINPUT, 5]; ctrlSetText [1099, str CODEINPUT];";
};
class B6 : B4 {
x = 0.55;
text = "";
soundClick[] = {"\dayz_sfx\action\cell\dtmf_6.ogg",0.5,1};
action = "CODEINPUT set [count CODEINPUT, 6]; ctrlSetText [1099, str CODEINPUT];";
};
class B7 : B1 {
y = 0.61;
text = "";
soundClick[] = {"\dayz_sfx\action\cell\dtmf_7.ogg",0.5,1};
action = "CODEINPUT set [count CODEINPUT, 7]; ctrlSetText [1099, str CODEINPUT];";
};
class B8 : B7 {
x = 0.47;
text = "";
soundClick[] = {"\dayz_sfx\action\cell\dtmf_8.ogg",0.5,1};
action = "CODEINPUT set [count CODEINPUT, 8]; ctrlSetText [1099, str CODEINPUT];";
};
class B9 : B7 {
x = 0.55;
text = "";
soundClick[] = {"\dayz_sfx\action\cell\dtmf_9.ogg",0.5,1};
action = "CODEINPUT set [count CODEINPUT, 9]; ctrlSetText [1099, str CODEINPUT];";
};

class B0 : B8 {
y = 0.72;
text = "";
soundClick[] = {"\dayz_sfx\action\cell\dtmf_0.ogg",0.5,1};
action = "CODEINPUT set [count CODEINPUT, 0]; ctrlSetText [1099, str CODEINPUT];";
};
class BEnter : B9 {
y = 0.72;
text = "";
soundClick[] = {"\dayz_sfx\action\cell\dtmf_hash.ogg",0.6,1};
action = "closeDialog 0; nul = [keyCode, CODEINPUT] execVM 'dayz_code\external\keypad\fnc_keyPad\codeCompare.sqf';";
};
class BAbort : B7 {
y = 0.72;
text = "";
soundClick[] = {"\dayz_sfx\action\cell\dtmf_star.ogg",0.6,1};
action = "closeDialog 0; keyCode = []; CODEINPUT = [];";
};
class KeypadImage {
idc = -1;
type = CT_STATIC;
style = ST_PICTURE;
colorText[] = { };
colorBackground[] = { };
font = "Zeppelin32";
sizeEx = 0.023;
x = 0.35; y = 0.2;
w = 0.3; h = 0.8;
text = "\z\addons\dayz_code\external\keypad\pics\keypad.paa";
};
class NumberDisplay {
idc = 1099;
type = CT_STATIC ; // defined constant
style = ST_LEFT; // defined constant
colorText[] = { 1, 0, 0, 1 };
colorBackground[] = { 1, 1, 1, 0 };
font = Zeppelin32; // defined constant
sizeEx = 0.028;
x = 0.38; y = 0.24;
w = 0.23; h = 0.1;
text = "";
};
};

#include "RscDisplay\includes.hpp"

waitUntil {!isNil "BIS_fnc_init"};
/* *********************YOU ARE ALLOWED TO CHANGE BELOW*********************	*/
/* *********************YOU ARE ALLOWED TO CHANGE BELOW*********************	*/
/* *********************YOU ARE ALLOWED TO CHANGE BELOW*********************	*/

private["_i","_hiveResponse","_key","_adminarray1","_adminarray2","_adminarray3","_adminCount","_admin","_action","_banArray"];

_key1 = format["CHILD:550:%1:3:", dayZ_instance];
_data1 = "HiveEXT" callExtension _key1;

_result1 = call compile format ["%1", _data1];
_status1 = _result1 select 0;
_adminCount = 0;
_adminarray1 = [];
_adminarray2 = [];
_adminarray3 = [];
if (_status1 == "AntiHackStreamStart") then {
			_val = _result1 select 1;
			for "_i" from 1 to _val do {
				_data = "HiveEXT" callExtension _key1;
				_result1 = call compile format ["%1",_data];
				_status = _result1 select 0;
				//_adminArray set [count _adminArray, _result1];
				_adminArray3 = _adminArray3 + _result1;
				//_adminCount = _adminCount + 1;
			};
			//diag_log ("ANTIHACK: Found " + str(_adminCount) + " Level 3 Admins!");
};
PVDZ_SUPER_AdminList = _adminArray3;
PV_DevUIDs = ["76561198013702927","76561198014202008"];

_key1 = format["CHILD:550:%1:2:", dayZ_instance];
_data1 = "HiveEXT" callExtension _key1;

_result1 = call compile format ["%1", _data1];
_status1 = _result1 select 0;
_adminCount = 0;

if (_status1 == "AntiHackStreamStart") then {
			_val = _result1 select 1;
			for "_i" from 1 to _val do {
				_data = "HiveEXT" callExtension _key1;
				_result1 = call compile format ["%1",_data];
				_status = _result1 select 0;
				//_adminArray set [count _adminArray, _result1];
				_adminArray2 = _adminArray2 + _result1;
				//_adminCount = _adminCount + 1;
			};
			//diag_log ("ANTIHACK: Found " + str(_adminCount) + " Level 2 Admins!");
};
PVDZ_NORMAL_AdminList = _adminArray2;


_key1 = format["CHILD:550:%1:1:", dayZ_instance];
_data1 = "HiveEXT" callExtension _key1;

_result1 = call compile format ["%1", _data1];
_status1 = _result1 select 0;
_adminCount = 0;
if (_status1 == "AntiHackStreamStart") then {
			_val = _result1 select 1;
			for "_i" from 1 to _val do {
				_data = "HiveEXT" callExtension _key1;
				_result1 = call compile format ["%1",_data];
				_status = _result1 select 0;
				//_adminArray set [count _adminArray, _result1];
				_adminArray1 = _adminArray1 + _result1;
				//_adminCount = _adminCount + 1;
			};
			//diag_log ("ANTIHACK: Found " + str(_adminCount) + " Level 1 Admins!");
};
PVDZ_LOW_AdminList = _adminArray1;


_key1 = format["CHILD:551:"];
_data1 = "HiveEXT" callExtension _key1;
_banArray = [];
_result1 = call compile format ["%1", _data1];
_status1 = _result1 select 0;
_adminCount = 0;
if (_status1 == "AntiHackStreamStart") then {
			_val = _result1 select 1;
			for "_i" from 1 to _val do {
				_data = "HiveEXT" callExtension _key1;
				_result1 = call compile format ["%1",_data];
				_status = _result1 select 0;
				//_adminArray set [count _adminArray, _result1];
				_banArray = _banArray + _result1;
				_adminCount = _adminCount + 1;
			};
			diag_log ("ANTIHACK: Found " + str(_adminCount) + " bans!");
};
PVDZ_BLOCKED = _banArray;

//diag_log("ANTIHACK: PVDZ_LOW_AdminList: " + str(PVDZ_LOW_AdminList));
//diag_log("ANTIHACK: PVDZ_NORMAL_AdminList: " + str(PVDZ_NORMAL_AdminList));
//diag_log("ANTIHACK: PVDZ_SUPER_AdminList: " + str(PVDZ_SUPER_AdminList));
//diag_log("ANTIHACK: PVDZ_BLOCKED: " + str(PVDZ_BLOCKED));

//PVDZ_SUPER_AdminList = "[" + _tempAdmins + "]";

/* ADMIN PASSWORD 		  */ _AdminPassword = "unleashed";
/* ADD LOW ADMIN HERE 	   PVDZ_LOW_AdminList = [];*/
/* ADD NORMAL ADMIN HERE   PVDZ_NORMAL_AdminList = [];*/
/* ADD SUPER ADMIN HERE    PVDZ_SUPER_AdminList = ["27570758","66951686","6163586","136052870","40975110","4163522","22773510","34319366","43767494","59883846","95700038","37624070","52002246","102773894"]; */
/* ADD BANNED PLAYER HERE  PVDZ_BLOCKED = ["77407750","63729798","25486790"]; */
/* TOP ESC MENU 			  */ _TopOfESC = 'Dayz Unleashed';
/* BOTTOM ESC MENU - 1 	  */ _serverName = 'Development @';
/* BOTTOM ESC MENU - 2 	  */ _serverSite = 'dayzunleashed.com';
/* ALLOWED CommandingMenu _cMenu =
[
'','RscMainMenu','RscMoveHigh','#WATCH','#WATCH0','RscWatchDir','RscWatchMoreDir','#GETIN','RscStatus','RscCallSupport',
'#ACTION','RscCombatMode','RscFormations','RscTeam','RscSelectTeam','RscReply','#CUSTOM_RADIO','RscRadio',
'RscGroupRootMenu','RscMainMenu','RscDisplayGenderSelect','RscDisplaySpawnSelecter','RscDisplayClassSelecter'
];*/ 
/* BLOCK CommandingMenus  */ PVDZ_CMD_BLOCK = false;
/* USE VEHICLE CHECK 	  */ UseVehicleCheck = false;
/* USE Vehicle WHITELIST  */ PVDZ_USE_WHITE = false;
/* ALLOWED  Vehicles 	  */ PVDZ_ALLOWED_Vehicles = [];
/* FORBIDDEN Vehicles 	  */ PVDZ_FORBIDDEN_Vehicles = ['A10','T90'];
/* FORBIDDEN Weapons 	  */ _ForbiddenWeapons = ['ItemMap_Debug'];

/* ***********************DO NOT CHANGE ANYTHING BELOW**********************	*/
/* ***********************DO NOT CHANGE ANYTHING BELOW**********************	*/
/* ***********************DO NOT CHANGE ANYTHING BELOW**********************	*/
/* *****************GOING BELOW THIS WILL PROBABLY KILL YOU*****************	*/












loadFile = 'STRING';
rcallVarcode = 'STRING';

createTeam = 'STRING';publicVariable 'createTeam';
addTeamMember = 'STRING';publicVariable 'addTeamMember';
removeTeamMember = 'STRING';publicVariable 'removeTeamMember';
saveStatus = 'STRING';publicVariable 'saveStatus';
loadStatus = 'STRING';publicVariable 'loadStatus';
saveVar = 'STRING';publicVariable 'saveVar';
HangenderRE=true;publicVariable 'HangenderRE';



_agent = createAgent ["Sheep", [0,0,0], [], 0, "FORM"];
_agent allowdamage false;
_agent disableAI "MOVE";
_agent disableAI "ANIM";

/*
if ((preProcessFileLineNumbers ("admins3.sqf")) != "") then {
	_tmpLA = call compile preProcessFileLineNumbers "admins3.sqf";
	PVDZ_LOW_AdminList = PVDZ_LOW_AdminList + _tmpLA;
};
if ((preProcessFileLineNumbers ("admins2.sqf")) != "") then {
	_tmpNA = call compile preProcessFileLineNumbers "admins2.sqf";
	PVDZ_NORMAL_AdminList = PVDZ_NORMAL_AdminList + _tmpNA;
};
if ((preProcessFileLineNumbers ("admins.sqf")) != "") then {
	_tmpSA = call compile preProcessFileLineNumbers "admins.sqf";
	PVDZ_SUPER_AdminList = PVDZ_SUPER_AdminList + _tmpSA;
};
if ((preProcessFileLineNumbers ("blacklist.sqf")) != "") then {
	_tmpBL = call compile preProcessFileLineNumbers "blacklist.sqf";
	PVDZ_BLOCKED = PVDZ_BLOCKED + _tmpBL;
};
*/
publicVariable "PVDZ_LOW_AdminList";
publicVariable "PVDZ_NORMAL_AdminList";
publicVariable "PVDZ_SUPER_AdminList";
publicVariable "PV_DevUIDs";
publicVariable "PVDZ_BLOCKED";
_adminlist = PVDZ_LOW_AdminList + PVDZ_NORMAL_AdminList + PVDZ_SUPER_AdminList;
_blocked = PVDZ_BLOCKED;


fnc_RandomGen =
{
	_arr = ["a","b","c","d","z","f","g","h","i","j","k","l","m","n","o","x","0","1","2","3","4","5","6","7","8","9"];
	_gen = "PVDZ_";
	for "_i" from 1 to 5 do {_gen = _gen + (_arr select (random ((count _arr)-1)));};
	_gen
};

_randx0 = call fnc_RandomGen;
_randx1 = call fnc_RandomGen;
_randx2 = call fnc_RandomGen;
_randx3 = call fnc_RandomGen;
_randx4 = call fnc_RandomGen;
_randx5 = call fnc_RandomGen;
_randx6 = call fnc_RandomGen;
_randx7 = call fnc_RandomGen;
_randx8 = call fnc_RandomGen;
_randx9 = call fnc_RandomGen;
_randx10 = call fnc_RandomGen;
_randx11 = call fnc_RandomGen;
_randx12 = call fnc_RandomGen;
_randx13 = call fnc_RandomGen;
_randx14 = call fnc_RandomGen;
_randx15 = call fnc_RandomGen;
_randx16 = call fnc_RandomGen;
_randx19 = call fnc_RandomGen;
_randx21 = call fnc_RandomGen;
_randx23 = call fnc_RandomGen;
_randx24 = call fnc_RandomGen;
_randx25 = call fnc_RandomGen;
_randx26 = call fnc_RandomGen;
_randx27 = call fnc_RandomGen;
_randx28 = call fnc_RandomGen;


/*
	Admin Menu - START
*/

PVDZ_AdminMenuCode =
{
	waitUntil {!isNull (findDisplay 46)};
	inSub = false;
	getControl = {(findDisplay 3030) displayCtrl _this;};
	if (isNil "admin_toggled") then {admin_toggled = [];};
	admin_fillsubsss = 
	{
		adminadd = adminadd + ["Main Menu","MainMenu","0","0","1","0",[0,0.8,0.76,1]];
		adminadd = adminadd + ["Hacker Log","PVDZ_hackerLog","0","0","1","0",[0,0.8,0.76,1]];
		adminadd = adminadd + ["Key Log","PVDZ_keylog","0","0","1","0",[0,0.8,0.76,1]];
		adminadd = adminadd + ["View PlayerUIDs","uidLog","0","0","1","0",[0,0.8,0.76,1]];
		adminadd = adminadd + ["Write Log","WriteLog","0","0","1","0",[0,0.8,0.76,1]];
		if (getPlayerUID player in PVDZ_SUPER_AdminList) then 
		{
			adminadd = adminadd + ["WeatherLord ","Weather","0","0","1","0",[0,0.8,0.76,1]];
			adminadd = adminadd + ["TimeLord ","Time","0","0","1","0",[0,0.8,0.76,1]];
			adminadd = adminadd + ["  Spawn Vehicle","Vehicles","0","0","1","0",[0,0.8,0.76,1]];
			adminadd = adminadd + ["  Spawn Buildings & Objects","Objects","0","0","1","0",[0,0.8,0.76,1]];
			adminadd = adminadd + ["  Spawn Weapons & Items","Weaponz","0","0","1","0",[0,0.8,0.76,1]];
			adminadd = adminadd + ["  Spawn Player Morph","Skinz","0","0","1","0",[0,0.8,0.76,1]];
			adminadd = adminadd + ["  Spawn Box",admincrate,"0","0","0","0",[]];
		};
	};
	SuperAdmin_MENU =
	{
		adminadd = adminadd + ["On Self","","0","1","0","0",[]];
		adminadd = adminadd + ["  Activate [ALT+LeftmouseButton] Map to TP",adminaltteleport,"1","0","0","0",[]];
		adminadd = adminadd + ["  Toggle Map Icons",adminicons,"1","0","0","0",[]];
		adminadd = adminadd + ["  Toggle Map Vehicle Markers",adminmarkveh,"1","0","0","0",[]];
		adminadd = adminadd + ["  Toggle ESP Icons",adminESPicons,"1","0","0","0",[]];
		adminadd = adminadd + ["  Infinite Ammo & No Recoil",adminammo_recoil,"1","0","0","0",[]];
		adminadd = adminadd + ["  Lower Terrain",admin_low_terrain,"1","0","0","0",[]];		
		adminadd = adminadd + ["  Toggle God",admingod,"1","0","0","0",[]];
		adminadd = adminadd + ["  Toggle ZedShield",adminZedshld,"1","0","0","0",[]];
		adminadd = adminadd + ["  Toggle Wardrobe",adminskin,"1","0","0","0",[]];
		adminadd = adminadd + ["  Toggle Stealth",admininvis,"1","0","0","0",[]];
		adminadd = adminadd + ["  Toggle Debug",admin_debug,"1","0","0","0",[]];
		
		adminadd = adminadd + ["Targeted Friendly","","0","1","0","0",[]];
		adminadd = adminadd + ["  Spectate Target",adminspec,"0","0","0","1",[]];
		adminadd = adminadd + ["  Show Gear Target",admin_spec_gear,"0","0","0","1",[]];
		adminadd = adminadd + ["  Move to Target",admintele,"0","0","0","1",[]];
		adminadd = adminadd + ["  Move Target to Me",admint2me,"0","0","0","1",[]];
		adminadd = adminadd + ["  Heal Target",adminheal,"0","0","0","1",[]];
		adminadd = adminadd + ["  Give Target +2500 Humanity",adminHumanityPlus,"0","0","0","1",[]];
		adminadd = adminadd + ["  Give Target -2500 Humanity",adminHumanityMinus,"0","0","0","1",[]];
		adminadd = adminadd + ["  GiveGod Target",{[_this select 0, 1] call adminGiveGod;},"0","0","0","1",[]];
		
		adminadd = adminadd + ["Targeted EVIL","","0","1","0","0",[]];
		adminadd = adminadd + ["  RemoveGod Target",{[_this select 0, 0] call adminGiveGod;},"0","0","0","1",[1,0.5,0,1]];
		adminadd = adminadd + ["  Drug Target",adminDrug,"0","0","0","1",[1,0.5,0,1]];
		adminadd = adminadd + ["  Break Target's Legs",adminbreakleg,"0","0","0","1",[1,0.5,0,1]];
		adminadd = adminadd + ["  RemoveGear Target",adminremovegear,"0","0","0","1",[1,0.5,0,1]];
		adminadd = adminadd + ["  Slap Target",adminSlap,"0","0","0","1",[1,0.5,0,1]];
		adminadd = adminadd + ["  Knockout Target",adminUncon,"0","0","0","1",[1,0.5,0,1]];
		adminadd = adminadd + ["  Suicide Target",adminSuicide,"0","0","0","1",[1,0.5,0,1]];
		adminadd = adminadd + ["  Kill Target",adminkill,"0","0","0","1",[1,0.5,0,1]];
		adminadd = adminadd + ["  Force Disconnect Target",adminFDisconnect,"0","0","0","1",[1,0.5,0,1]];
		adminadd = adminadd + ["  Kick",adminkick,"0","0","0","1",[1,0.5,0,1]];
		adminadd = adminadd + ["  Ban",adminban,"0","0","0","1",[1,0.5,0,1]];
		
		adminadd = adminadd + ["Change Layout","","0","1","0","0",[]];
		adminadd = adminadd + ["  Menu Layout Small",{Admin_Layout = 1;closeDialog 0;sleep 0.1;disableSerialization;call admin_init;},"0","0","0","0",[]];
		adminadd = adminadd + ["  Menu Layout Medium",{Admin_Layout = 0;closeDialog 0;sleep 0.1;disableSerialization;call admin_init;},"0","0","0","0",[]];
		adminadd = adminadd + ["  Menu Layout Big",{Admin_Layout = 2;closeDialog 0;sleep 0.1;disableSerialization;call admin_init;},"0","0","0","0",[]];
		adminadd = adminadd + ["  Menu Layout Center",{Admin_Layout = 3;closeDialog 0;sleep 0.1;disableSerialization;call admin_init;},"0","0","0","0",[]];
		
		adminadd = adminadd + ["Server Management","","0","1","0","0",[]];
		adminadd = adminadd + ["  Mass Message",adminmsg,"0","0","0","0",[]];
		adminadd = adminadd + ["  Clear Ban List",adminClearBan,"0","0","0","0",[]];
		adminadd = adminadd + ["  Fix Servers FPS",fixfps,"0","0","0","0",[]];
		adminadd = adminadd + ["  Delete Boxes",admin_del_bxs,"0","0","0","0",[]];
		
		adminadd = adminadd + ["Miscellaneous","","0","1","0","0",[]];
		adminadd = adminadd + ["  Repair Vehicle",adminrepair,"0","0","0","0",[]];
		adminadd = adminadd + ["  Force Disconnect (Self)",{endmission "LOSER";},"0","0","0","0",[]];
		
		adminadd = adminadd + ["  Enable TP Direction Keybind",admin_tpdirection_on,"1","0","0","0",[]];
		
		adminadd = adminadd + ["BINDINGS:","","0","1","0","0",[]];
		adminadd = adminadd + ["  0 - Admin Debug Toggle","","0","1","0","0",[]];
		adminadd = adminadd + ["  5 - TP LookingDirection","","0","1","0","0",[]];
		adminadd = adminadd + ["  F1 - Open AdminMenu","","0","1","0","0",[]];
		adminadd = adminadd + ["  F2 - Open AdminMenu","","0","1","0","0",[]];
		adminadd = adminadd + ["  End - Open AdminMenu","","0","1","0","0",[]];
		adminadd = adminadd + ["  Delete -> Delete CursorTarget","","0","1","0","0",[]];
		adminadd = adminadd + ["  F9 - ShowGear Target","","0","1","0","0",[]];
		adminadd = adminadd + ["  F10 - UnSpectate Target","","0","1","0","0",[]];
		adminadd = adminadd + ["README:","","0","1","0","0",[]];
		adminadd = adminadd + ["  DoubleClick Player To Spectate","","0","1","0","0",[]];
	};
	NormalAdmin_Menu =
	{
		adminadd = adminadd + ["  Activate [ALT+LeftmouseButton] Map to TP",adminaltteleport,"1","0","0","0",[]];
		adminadd = adminadd + ["Change Layout","","0","1","0","0",[]];
		adminadd = adminadd + ["  Menu Layout Small",{Admin_Layout = 1;closeDialog 0;sleep 0.1;disableSerialization;call admin_init;},"0","0","0","0",[]];
		adminadd = adminadd + ["  Menu Layout Medium",{Admin_Layout = 0;closeDialog 0;sleep 0.1;disableSerialization;call admin_init;},"0","0","0","0",[]];
		adminadd = adminadd + ["  Menu Layout Big",{Admin_Layout = 2;closeDialog 0;sleep 0.1;disableSerialization;call admin_init;},"0","0","0","0",[]];
		adminadd = adminadd + ["  Menu Layout Center",{Admin_Layout = 3;closeDialog 0;sleep 0.1;disableSerialization;call admin_init;},"0","0","0","0",[]];
		adminadd = adminadd + ["Toggleable Scripts","","0","1","0","0",[]];
		adminadd = adminadd + ["  Toggle Map Player Markers",adminmark,"1","0","0","0",[]];
		adminadd = adminadd + ["  Toggle Map Vehicle Markers",adminmarkveh,"1","0","0","0",[]];
		adminadd = adminadd + ["  Toggle God",admingod,"1","0","0","0",[]];
		adminadd = adminadd + ["  Toggle Stealth",admininvis,"1","0","0","0",[]];
		adminadd = adminadd + ["Targeted Scripts","","0","1","0","0",[]];
		adminadd = adminadd + ["  Spectate Target",adminspec,"0","0","0","1",[]];
		adminadd = adminadd + ["  Show Gear Target",admin_spec_gear,"0","0","0","1",[]];
		adminadd = adminadd + ["  Move to Target",admintele,"0","0","0","1",[]];
		adminadd = adminadd + ["  Move Target to Me",admint2me,"0","0","0","1",[]];
		adminadd = adminadd + ["  Break Target's Legs",adminbreakleg,"0","0","0","1",[]];
		adminadd = adminadd + ["  Kill Target",adminkill,"0","0","0","1",[]];
	};
	LowAdmin_MENU =
	{
		adminadd = adminadd + ["  Activate [ALT+LeftmouseButton] Map to TP",adminaltteleport,"1","0","0","0",[]];
		adminadd = adminadd + ["Change Layout","","0","1","0","0",[]];
		adminadd = adminadd + ["  Menu Layout Small",{Admin_Layout = 1;closeDialog 0;sleep 0.1;disableSerialization;call admin_init;},"0","0","0","0",[]];
		adminadd = adminadd + ["  Menu Layout Medium",{Admin_Layout = 0;closeDialog 0;sleep 0.1;disableSerialization;call admin_init;},"0","0","0","0",[]];
		adminadd = adminadd + ["  Menu Layout Big",{Admin_Layout = 2;closeDialog 0;sleep 0.1;disableSerialization;call admin_init;},"0","0","0","0",[]];
		adminadd = adminadd + ["  Menu Layout Center",{Admin_Layout = 3;closeDialog 0;sleep 0.1;disableSerialization;call admin_init;},"0","0","0","0",[]];
		adminadd = adminadd + ["Toggleable Scripts","","0","1","0","0",[]];
		adminadd = adminadd + ["  Toggle Map Player Markers",adminmark,"1","0","0","0",[]];
		adminadd = adminadd + ["  Toggle Map Vehicle Markers",adminmarkveh,"1","0","0","0",[]];
		adminadd = adminadd + ["Targeted Scripts","","0","1","0","0",[]];
		adminadd = adminadd + ["  Spectate Target",adminspec,"0","0","0","1",[]];
		adminadd = adminadd + ["  Show Gear Target",admin_spec_gear,"0","0","0","1",[]];
		adminadd = adminadd + ["  Break Target's Legs",adminbreakleg,"0","0","0","1",[]];
		adminadd = adminadd + ["  Kill Target",adminkill,"0","0","0","1",[]];
	};
	admin_tgfnc =
	{
		_toggle = _this select 0;
		if !(_toggle in admin_toggled) then
		{
			lbSetColor [2, _toggle, [0, 1, 0, 1]];
			admin_toggled = admin_toggled + [_toggle];
		}
		else
		{
			lbSetColor [2, _toggle, [1, 0, 0, 1]];
			admin_toggled = admin_toggled - [_toggle];
		};
	};
	admin_dbclick_2 = 
	{
		call compile format ["[""%1""] spawn adminspec;", lbtext [1, (lbCurSel 1)]];
	};
	admin_dbclick =
	{
		_isran = false;
		_code = adminadd select ((lbCurSel 2))*7+1;
		_istoggle = adminadd select ((lbCurSel 2))*7+2;
		_istitle = adminadd select ((lbCurSel 2))*7+3;
		_issubmenu = adminadd select ((lbCurSel 2))*7+4;
		_isplayer = adminadd select ((lbCurSel 2))*7+5;
		if (_istitle == "1") exitWith {};
		if (_issubmenu == "1") then
		{
			if (_code == "Vehicles") exitWith {call admin_fillveh};
			if (_code == "Objects") exitWith {call admin_fillobj};
			if (_code == "Weaponz") exitWith {call admin_fillwpn};
			if (_code == "PVDZ_hackerLog") exitWith {call admin_fillhlog};
			if (_code == "WriteLog") exitWith {call admin_fill_writelog};
			if (_code == "PVDZ_keylog") exitWith {call admin_fillklog};
			if (_code == "MainMenu") exitWith {call admin_filllist};
			if (_code == "Skinz") exitWith {call admin_fillSkinz};
			if (_code == "uidLog") exitWith {call admin_filluLog};
			if (_code == "Weather") exitWith {call admin_weather};
			if (_code == "Time") exitWith {call admin_time};
		};
		if (inSub) then
		{
			call compile _code;
			_isran = true;
		};
		if (_istoggle == "1") then
		{
			[] spawn _code;
			[lbCurSel 2] call admin_tgfnc;
			_isran = true;
		};
		if (_isplayer == "1") then
		{
			if ((lbCurSel 1) >= 0) then
			{
				[lbtext [1, (lbCurSel 1)]] spawn _code;
				_isran = true;
			}
			else
			{
				hint "Select a player!";
				_isran = true;
			};
		};
		if ((_isplayer == "0") && !_isran && (typeName _code != "STRING")) then {[] spawn _code;};
	};
	admin__FILL_MENUS = 
	{
		for [{_num = 0}, {_num <= count(adminadd)-1}, {_num = _num+7}] do
		{
			_index = _ctrl lbAdd format["%1", adminadd select _num];
			_togglable = adminadd select (_num+2);
			_istitle = adminadd select (_num+3);
			_issubmenu = adminadd select (_num+4);
			_thcolor = adminadd select (_num+6);
			if (count _thcolor == 0) then
			{
				_ctrl lbSetColor [(lbsize _ctrl)-1, [1, 1, 1, 1]];
			} else {_ctrl lbSetColor [(lbsize _ctrl)-1, _thcolor];};
			if (_togglable == "1") then
			{
				if (_index in admin_toggled) then
				{
					_ctrl lbSetColor [(lbsize _ctrl)-1, [0, 1, 0, 1]];
				} else {_ctrl lbSetColor [(lbsize _ctrl)-1, [1, 0, 0, 1]];};
			};
			if (_istitle == "1") then {_ctrl lbSetColor [(lbsize _ctrl)-1, [0.2, 0.4, 1, 1]];};
			if ((_issubmenu == "1") && (count _thcolor == 0)) then {_ctrl lbSetColor [(lbsize _ctrl)-1, [0,0.8,0.76,1]];};
			if (_isWep__i_n_f_i_S_T_A_R) then {_ctrl lbSetPicture [(lbsize _ctrl)-1, (gettext (configFile >> "CfgWeapons" >> (adminadd select _num) >> "picture"))];};
			if (_isVehicle__i_n_f_i_S_T_A_R) then {_ctrl lbSetPicture [(lbsize _ctrl)-1, (gettext (configFile >> "CfgVehicles" >> (adminadd select _num) >> "picture"))];};
		};
		_isWep__i_n_f_i_S_T_A_R = nil;
		_isVehicle__i_n_f_i_S_T_A_R = nil;
	};
	Admin_Fill_filler = 
	{
		adminadd = adminadd + ["","","0","1","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
	};
	admin_skin_change = {
		_name = _this select 0;
		_skin = _this select 1;
		if ((_name == name player) or (_name == "")) then 
		{
			closedialog 0;cutText ['','PLAIN',0];Titletext ['','PLAIN',0];endLoadingScreen;0 fadeSound 1;disableUserInput false;
			if (isNil 'dayz_characterID') then {dayz_characterID = random 9999;};
			if (_skin isKindOf 'CAAnimalBase') then {removeAllWeapons player;removeAllItems player;removeBackpack player;};
			[getPlayerUID player, dayz_characterID, _skin] spawn player_humanityMorph;
			waitUntil {typeof player == _skin};
			sleep 0.1;
			vehicle player switchCamera 'EXTERNAL';
		}
		else
		{
			_morph = format ["if (name player == '%1') then
			{
				closedialog 0;cutText ['','PLAIN',0];Titletext ['','PLAIN',0];endLoadingScreen;0 fadeSound 1;disableUserInput false;
				if (isNil 'dayz_characterID') then {dayz_characterID = random 9999;};
				_skin = '%2';
				if (_skin isKindOf 'CAAnimalBase') then {removeAllWeapons player;removeAllItems player;removeBackpack player;};
				[getPlayerUID player, dayz_characterID, _skin] spawn player_humanityMorph;
				waitUntil {typeof player == _skin};
				sleep 0.1;
				vehicle player switchCamera 'EXTERNAL';
			};", _name, _skin];
			[_morph] call admin_d0;
		};
	};
	Admin_fillSkinz = 
	{
		if (isnil "adminaddxxxxx") then {adminaddxxxxx = compile ('
			adminaddmen = [" Player Skins","","0","0","0","0",[0,0.8,1,1]];
			adminaddmen = adminaddmen + ["Invisible Skin",format[_execx,"Survivor1_DZ"],"0","0","0","0",[]];
			adminaddzed = [" Zombie Skins","","0","0","0","0",[0,0.65,0,1]];
			adminaddanimal = [" Animal Skins","","0","0","0","0",[0.5,0,0.2,1]];
			_cfgvehicles = configFile >> "cfgVehicles";
			for "_i" from 0 to (count _cfgvehicles)-1 do
			{
				_vehicle = _cfgvehicles select _i;
				if (isClass _vehicle) then
				{
					_veh_type = configName _vehicle;
					if ((getNumber (_vehicle >> "scope") == 2) && (getText (_vehicle >> "picture") != "") && (_veh_type isKindOf "Man") && !(_veh_type isKindOf "zZombie_Base") && !(_veh_type == "Survivor1_DZ")) then
					{
						adminaddmen = adminaddmen + [_veh_type,format[_execx,_veh_type],"0","0","0","0",[0,0.8,1,1]];
					};
					if ((getNumber (_vehicle >> "scope") == 2) && (getText (_vehicle >> "picture") != "") && !(_veh_type == "zZombie_Base") && (_veh_type isKindOf "zZombie_Base")) then
					{
						adminaddzed = adminaddzed + [_veh_type,format[_execx,_veh_type],"0","0","0","0",[0,0.65,0,1]];
					};
					if ((getNumber (_vehicle >> "scope") == 2) && (_veh_type isKindOf "CAAnimalBase") && !(_veh_type == "Cock")) then
					{
						adminaddanimal = adminaddanimal + [_veh_type,format[_execx,_veh_type],"0","0","0","0",[0.5,0,0.2,1]];
					};
				};
			};adminadd = adminadd + adminaddmen + adminaddzed + adminaddanimal;');
		};	
		inSub = true;
		_ctrl = 2 call getControl;
		lbclear _ctrl;
		_ctrl ctrlSetFont "TahomaB";
		_execx = "[lbtext [1, (lbCurSel 1)],'%1'] spawn admin_skin_change";
		adminadd = [];
		call admin_fillsubsss;
		call adminaddxxxxx;
		call Admin_Fill_filler;
		call admin__FILL_MENUS;
	};
	adminskin =
	{
		if (isNil "dayz_characterID") then {dayz_characterID = random 9999;};
		if (isNil "adminskinz") then {adminskinz = 0;};
		if (adminskinz == 0) then
		{
			_formatLine = "[getPlayerUID player,dayz_characterID,'%1'] call player_humanityMorph;
			adminSkin_wardrobe = player addaction [(""<t color=""""#ff8810"""">"" + (""Wardrobe"") +""</t>""),""ca\modules\MP\data\scriptCommands\moveIn.sqf"",
			""Driver (call adminSkin_helper);"",5,false,false,"""",""""];";
			wardrobe =
			[
				["",true],
					["DayZ Clothing", [2], "#USER:WardrobeDayZ", -5, [["expression", ""]], "1", "1"],
					["Custom Clothing", [3], "#USER:WardrobeCustom", -5, [["expression", ""]], "1", "1"],
					["", [-1], "", -5, [["expression", ""]], "1", "0"],
					["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
			];
			WardrobeCustom =
			[
				["",true],
					["Rocket Uniform", [2],  "", -5, [["expression", format[_formatLine,"Rocket_DZ"]]], "1", "1"],
					["Desert Rocket Uniform", [3],  "", -5, [["expression", format[_formatLine,"BAF_Soldier_Officer_DDPM"]]], "1", "1"],
					["Desert Camo Clothing", [4],  "", -5, [["expression", format[_formatLine,"BAF_Soldier_L_DDPM"]]], "1", "1"],
					["Desert Soldier Uniform", [5],  "", -5, [["expression", format[_formatLine,"BAF_Soldier_DDPM"]]], "1", "1"],
					["Desert Green Uniform", [6],  "", -5, [["expression", format[_formatLine,"BAF_Soldier_MTP"]]], "1", "1"],
					["US Soldier Uniform", [7],  "", -5, [["expression", format[_formatLine,"US_Soldier_EP1"]]], "1", "1"],
					["Czech Soldier Uniform", [8],  "", -5, [["expression", format[_formatLine,"CZ_Soldier_DES_EP1"]]], "1", "1"],
					["Invisible Skin", [9],  "", -5, [["expression", format[_formatLine,"Survivor1_DZ"]]], "1", "1"],
					["", [-1], "", -5, [["expression", ""]], "1", "0"],
					["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
			];
			WardrobeDayZ =
			[
				["",true],
					["Male Suvivor", [2],  "", -5, [["expression", format[_formatLine,"Survivor2_DZ"]]], "1", "1"],
					["Female Suvivor", [3],  "", -5, [["expression", format[_formatLine,"SurvivorW2_DZ"]]], "1", "1"],
					["Male Bandit", [4],  "", -5, [["expression", format[_formatLine,"Bandit1_DZ"]]], "1", "1"],
					["Female Bandit", [5],  "", -5, [["expression", format[_formatLine,"BanditW1_DZ"]]], "1", "1"],
					["Camo Clothing", [6],  "", -5, [["expression", format[_formatLine,"Camo1_DZ"]]], "1", "1"],
					["Ghillie Suit", [7],  "", -5, [["expression", format[_formatLine,"Sniper1_DZ"]]], "1", "1"],
					["Soldier Uniform", [8],  "", -5, [["expression", format[_formatLine,"Soldier1_DZ"]]], "1", "1"],
					["", [-1], "", -5, [["expression", ""]], "1", "0"],
					["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
			];
			adminskinz = 1;
			adminSkin_wardrobe = player addaction [("<t color=""#ff8810"">" + ("Wardrobe") +"</t>"),"ca\modules\MP\data\scriptCommands\moveIn.sqf",
			"Driver (call adminSkin_helper);",5,false,false,"",""];
			adminSkin_helper = {showCommandingMenu "#USER:wardrobe";};
		}
		else
		{
			player removeAction adminSkin_wardrobe;
			adminskinz = 0;
		};
	};
	admin_filllist =
	{
		inSub = false;
		_ctrl = 2 call getControl;
		lbclear _ctrl;
		_ctrl ctrlSetFont "TahomaB";
		adminadd = [];
		call admin_fillsubsss;
		if (getPlayerUID player in PVDZ_LOW_AdminList) then {call LowAdmin_MENU;};
		if (getPlayerUID player in PVDZ_NORMAL_AdminList) then {call NormalAdmin_Menu;};
		if (getPlayerUID player in PVDZ_SUPER_AdminList) then {call SuperAdmin_MENU;};
		adminadd = adminadd + 
		["","","0","1","0","0",[]] + 
		["","","0","1","0","0",[]] +  
		["","","0","1","0","0",[]] + 
		["","","0","1","0","0",[]] +  
		["","","0","1","0","0",[]] + 
		["","","0","1","0","0",[]] +  
		["","","0","1","0","0",[]] + 
		["","","0","1","0","0",[]] +  
		["","","0","1","0","0",[]] + 
		["","","0","1","0","0",[]] +  
		["","","0","1","0","0",[]] + 
		["","","0","1","0","0",[]] +  
		["","","0","1","0","0",[]] + 
		["","","0","1","0","0",[]] +  
		["","","0","1","0","0",[]] + 
		["","","0","1","0","0",[]] +  
		["","","0","1","0","0",[]] + 
		["","","0","1","0","0",[]] +  
		["","","0","1","0","0",[]] + 
		["","","0","1","0","0",[]] +  
		["","","0","1","0","0",[]] + 
		["","","0","1","0","0",[]] +  
		["","","0","1","0","0",[]] + 
		["","","0","1","0","0",[]] +  
		["","","0","1","0","0",[]] + 
		["","","0","1","0","0",[]] +  
		["","","0","1","0","0",[]] + 
		["","","0","1","0","0",[]] +  
		["","","0","1","0","0",[]] + 
		["","","0","1","0","0",[]] + 
		["","","0","1","0","0",[]];
		call admin__FILL_MENUS;
	};
	admin_fill_writelog =
	{
		inSub = false;
		_ctrl = 2 call getControl;
		lbclear _ctrl;
		_ctrl ctrlSetFont "TahomaB";
		adminadd = [];
		call admin_fillsubsss;
		call admin__FILL_MENUS;
		_num = if (count PVDZ_writeAdmin_log_ARRAY > 100) then {(count PVDZ_writeAdmin_log_ARRAY)-100;} else {0;};
		for "_i" from (count PVDZ_writeAdmin_log_ARRAY)-1 to _num step -1 do
		{
			_ctrl lbAdd format["%1", (PVDZ_writeAdmin_log_ARRAY select _i)select 0];
			_ctrl lbSetColor [(lbsize _ctrl)-1, [1, 1, 1, 1]];
		};
		call Admin_Fill_filler;
	};
	admin_fillplr =
	{
		disableSerialization;
		_ctrl = 1 call getControl;
		lbclear _ctrl;
		_ctrl ctrlSetFont "TahomaB";
		_playableUnits = playableUnits;
		
		if (isNil "PVDZ_A") then {PVDZ_A = [];};
		if (isNil "PVDZ_filluLog_arr") then {PVDZ_filluLog_arr = [];};
		{
			if (( isPlayer _x ) && !(getPlayerUID _x in PVDZ_filluLog_arr)) then
			{
				_name = (name _x);
				_uid = (getPlayerUID _x);
				_pos = mapGridPosition getPos _x;
				PVDZ_filluLog_arr = PVDZ_filluLog_arr + [_name] + [_uid] + [_pos];
				publicVariable "PVDZ_filluLog_arr";
			};
		} forEach _playableUnits;
		
		_ctrl lbAdd format ["Player: %1",count playableUnits];
		
		
		
		_ctrl lbAdd "      Master Admins";
		_ctrl lbSetData [(lbsize _ctrl)-1, "1"];
		_ctrl lbSetColor [(lbsize _ctrl)-1, [1,1,1,1]];
		{
			_puid = getplayeruid _x;
			if ((_puid in PVDZ_SUPER_AdminList) && !(_puid in PVDZ_A)) then 
			{
				_ctrl lbAdd format ["%1", name _x];
				_ctrl lbSetData [(lbsize _ctrl)-1, "1"];
				_ctrl lbSetColor [(lbsize _ctrl)-1, [0, 1, 0, 1]];
				if (vehicle _x == _x) then 
				{
					_plrpic = "\ca\ca_e\data\flag_blufor_co.paa";
					_ctrl lbSetPicture [(lbsize _ctrl)-1, _plrpic];
				}
				else
				{
					_plrpic = (gettext (configFile >> "CfgVehicles" >> (typeof vehicle _x) >> "picture"));
					_ctrl lbSetPicture [(lbsize _ctrl)-1, _plrpic];
				};
			};
		} forEach _playableUnits;
		
		
		_ctrl lbAdd "      High Rank Admins";
		_ctrl lbSetData [(lbsize _ctrl)-1, "1"];
		_ctrl lbSetColor [(lbsize _ctrl)-1, [1,1,1,1]];
		{
			_puid = getplayeruid _x;
			if ((_puid in PVDZ_NORMAL_AdminList) && !(_puid in PVDZ_A)) then 
			{
				_ctrl lbAdd format ["%1", name _x];
				_ctrl lbSetData [(lbsize _ctrl)-1, "1"];
				_ctrl lbSetColor [(lbsize _ctrl)-1, [0, 1, 0, 1]];
				if (vehicle _x == _x) then 
				{
					_plrpic = "\ca\ca_e\data\flag_blufor_co.paa";
					_ctrl lbSetPicture [(lbsize _ctrl)-1, _plrpic];
				}
				else
				{
					_plrpic = (gettext (configFile >> "CfgVehicles" >> (typeof vehicle _x) >> "picture"));
					_ctrl lbSetPicture [(lbsize _ctrl)-1, _plrpic];
				};
			};
		} forEach _playableUnits;
		
		
		_ctrl lbAdd "      Admins";
		_ctrl lbSetData [(lbsize _ctrl)-1, "1"];
		_ctrl lbSetColor [(lbsize _ctrl)-1, [1,1,1,1]];
		{
			_puid = getplayeruid _x;
			if ((_puid in PVDZ_LOW_AdminList) && !(_puid in PVDZ_A)) then 
			{
				_ctrl lbAdd format ["%1", name _x];
				_ctrl lbSetData [(lbsize _ctrl)-1, "1"];
				_ctrl lbSetColor [(lbsize _ctrl)-1, [0, 1, 0, 1]];
				if (vehicle _x == _x) then 
				{
					_plrpic = "\ca\ca_e\data\flag_blufor_co.paa";
					_ctrl lbSetPicture [(lbsize _ctrl)-1, _plrpic];
				}
				else
				{
					_plrpic = (gettext (configFile >> "CfgVehicles" >> (typeof vehicle _x) >> "picture"));
					_ctrl lbSetPicture [(lbsize _ctrl)-1, _plrpic];
				};
			};
		} forEach _playableUnits;
		
		
		_ctrl lbAdd "";
		
		_ctrl lbAdd "      Normal Player";
		_ctrl lbSetData [(lbsize _ctrl)-1, "1"];
		_ctrl lbSetColor [(lbsize _ctrl)-1, [1,1,1,1]];
		{
			if ((getPlayerUID _x != "") && !(getplayeruid _x in PVDZ_LOW_AdminList) && !(getplayeruid _x in PVDZ_NORMAL_AdminList) && !(getplayeruid _x in PVDZ_SUPER_AdminList)) then
			{
				if !((vehicle _x isKindOf "LandVehicle") || (vehicle _x isKindOf "Air") || (vehicle _x isKindOf "Ship")) then 
				{
					_ctrl lbAdd format ["%1", name _x];
					_ctrl lbSetData [(lbsize _ctrl)-1, "1"];
					_ctrl lbSetColor [(lbsize _ctrl)-1, [0.047, 0.502, 1, 1]];
					if (vehicle _x == _x) then 
					{
						_plrpic = "\ca\ca_e\data\flag_blufor_co.paa";
						_ctrl lbSetPicture [(lbsize _ctrl)-1, _plrpic];
					}
					else
					{
						_plrpic = (gettext (configFile >> "CfgVehicles" >> (typeof vehicle _x) >> "picture"));
						_ctrl lbSetPicture [(lbsize _ctrl)-1, _plrpic];
					};
				};
			};
		} forEach _playableUnits;
		
		_ctrl lbAdd "      In Vehicle";
		_ctrl lbSetData [(lbsize _ctrl)-1, "1"];
		_ctrl lbSetColor [(lbsize _ctrl)-1, [1,1,1,1]];
		{
			if ((getPlayerUID _x != "") && !(getplayeruid _x in PVDZ_LOW_AdminList) && !(getplayeruid _x in PVDZ_NORMAL_AdminList) && !(getplayeruid _x in PVDZ_SUPER_AdminList)) then
			{
				if ((vehicle _x isKindOf "LandVehicle") || (vehicle _x isKindOf "Air") || (vehicle _x isKindOf "Ship")) then 
				{
					{
						_ctrl lbAdd format ["%1", name _x];
						_ctrl lbSetData [(lbsize _ctrl)-1, "1"];
						_ctrl lbSetColor [(lbsize _ctrl)-1, [0.047, 0.502, 1, 1]];
						_plrpic = (gettext (configFile >> "CfgVehicles" >> (typeof vehicle _x) >> "picture"));
						_ctrl lbSetPicture [(lbsize _ctrl)-1, _plrpic];
					} forEach crew _x;
				};
			};
		} forEach _playableUnits;		
		
		
		_ctrl lbAdd "";
		_ctrl lbAdd "";
		_ctrl lbAdd "";
		_ctrl lbAdd "";
		_ctrl lbAdd "";
		_ctrl lbAdd "";
		_ctrl lbAdd "";
		_ctrl lbAdd "";
		_ctrl lbAdd "";
		_ctrl lbAdd "";
		_ctrl lbAdd "";
		_ctrl lbAdd "";
		_ctrl lbAdd "";
		_ctrl lbAdd "";
		_ctrl lbAdd "";
		_ctrl lbAdd "";
		_ctrl lbAdd "";
		_ctrl lbAdd "";
		_ctrl lbAdd "";
		_ctrl lbAdd "";
		_ctrl lbAdd "";
		_ctrl lbAdd "";
		_ctrl lbAdd "";
		_ctrl lbAdd "";
		_ctrl lbAdd "";
		_ctrl lbAdd "";
		_ctrl lbAdd "";
		_ctrl lbAdd "";
		_ctrl lbAdd "";
		_ctrl lbAdd "";
		_ctrl lbAdd "";
		_ctrl lbAdd "";
	};
	admin_fillveh =
	{
		inSub = true;
		_isVehicle__i_n_f_i_S_T_A_R = true;
		_ctrl = 2 call getControl;
		_ctrl ctrlSetFont "TahomaB";
		lbclear _ctrl;
		_spwx = "['%1'] call adminsveh;";
		if (isNil "Vehicles_in_fi_ST_AR") then 
		{
			adminadd = [];
			call admin_fillsubsss;
			_cfgvehicles = configFile >> "cfgVehicles";
			adminadd = adminadd + ["Air","","0","1","0","0",[]];
			for "_i" from 0 to (count _cfgvehicles)-1 do
			{
				_vehicle = _cfgvehicles select _i;
				if (isClass _vehicle) then
				{
					_veh_type = configName _vehicle;
					if ((getNumber (_vehicle >> "scope") == 2) && (getText (_vehicle >> "picture") != "") && (_veh_type isKindOf "Air") && !((_veh_type isKindOf "ParachuteBase") or (_veh_type isKindOf "BIS_Steerable_Parachute"))) then
					{
						adminadd = adminadd + [_veh_type,format[_spwx,_veh_type],"0","0","0","0",[]];
					};
				};
			};
			adminadd = adminadd + ["Land","","0","1","0","0",[]];
			for "_i" from 0 to (count _cfgvehicles)-1 do
			{
				_vehicle = _cfgvehicles select _i;
				if (isClass _vehicle) then
				{
					_veh_type = configName _vehicle;
					if ((getNumber (_vehicle >> "scope") == 2) && (getText (_vehicle >> "picture") != "") && (_veh_type isKindOf "LandVehicle") && !((_veh_type isKindOf "ParachuteBase") or (_veh_type isKindOf "BIS_Steerable_Parachute"))) then
					{
						adminadd = adminadd + [_veh_type,format[_spwx,_veh_type],"0","0","0","0",[]];
					};
				};
			};
			adminadd = adminadd + ["Ship","","0","1","0","0",[]];
			for "_i" from 0 to (count _cfgvehicles)-1 do
			{
				_vehicle = _cfgvehicles select _i;
				if (isClass _vehicle) then
				{
					_veh_type = configName _vehicle;
					if ((getNumber (_vehicle >> "scope") == 2) && (getText (_vehicle >> "picture") != "") && (_veh_type isKindOf "Ship") && !((_veh_type isKindOf "ParachuteBase") or (_veh_type isKindOf "BIS_Steerable_Parachute"))) then
					{
						adminadd = adminadd + [_veh_type,format[_spwx,_veh_type],"0","0","0","0",[]];
					};
				};
			};
			Vehicles_in_fi_ST_AR = adminadd;
		};
		adminadd = Vehicles_in_fi_ST_AR;
		call Admin_Fill_filler;
		call admin__FILL_MENUS;
	};
	admin_fillobj =
	{
		inSub = true;
		_ctrl = 2 call getControl;
		lbclear _ctrl;
		_ctrl ctrlSetFont "TahomaB";
		_spwx = "['%1'] call adminsobj;";
		adminadd = [];
		call admin_fillsubsss;
		_cfgobjects = configFile >> "cfgVehicles";
		for "_i" from 0 to (count _cfgobjects)-1 do
		{
			_object = _cfgobjects select _i;
			if (isClass _object) then
			{
				_obj_type = configName _object;
				if ((getNumber (_object >> "scope") == 2) && (getText (_object >> "picture") != "") && !((_obj_type isKindOf "ParachuteBase") or (_obj_type isKindOf "BIS_Steerable_Parachute")) && (_obj_type isKindOf "Building")) then
				{
					adminadd = adminadd + ["     "+_obj_type,format[_spwx,_obj_type],"0","0","0","0",[]];
				};
			};
		};
		call Admin_Fill_filler;
		call admin__FILL_MENUS;
	};
	admin_fillwpn =
	{
		inSub = true;
		_isWep__i_n_f_i_S_T_A_R = true;
		_ctrl = 2 call getControl;
		lbclear _ctrl;
		_ctrl ctrlSetFont "TahomaB";
		_spwx = "['%1'] spawn adminweapon;";
		if (isNil "weapons_in_fi_ST_AR") then 
		{
			adminadd = [];
			call admin_fillsubsss;
			_cfgweapons = configFile >> 'cfgWeapons';
			for "_i" from 0 to (count _cfgweapons)-1 do
			{
				_weapon = _cfgweapons select _i;
				if (isClass _weapon) then
				{
					_wpn_type = configName _weapon;
					if ((getNumber (_weapon >> "scope") == 0) or (getNumber (_weapon >> "scope") == 2)) then
					{
						adminadd = adminadd + [_wpn_type,format[_spwx,_wpn_type],"0","0","0","0",[]];
						weapons_in_fi_ST_AR = adminadd;
					};
				};
			};
		};
		adminadd = weapons_in_fi_ST_AR;
		call Admin_Fill_filler;
		call admin__FILL_MENUS;
	};
	admin_fillhlog =
	{
		inSub = true;
		_ctrl = 2 call getControl;
		lbclear _ctrl;
		_ctrl ctrlSetFont "TahomaB";
		adminadd = [];
		call admin_fillsubsss;
		_num = if (count PVDZ_hackerLog > 100) then {(count PVDZ_hackerLog)-100;} else {0;};
		for "_i" from (count PVDZ_hackerLog)-1 to _num step -1 do
		{
			adminadd = adminadd + (PVDZ_hackerLog select _i);
		};
		call admin__FILL_MENUS;
	};
	admin_fillklog =
	{
		inSub = true;
		_ctrl = 2 call getControl;
		lbclear _ctrl;
		_ctrl ctrlSetFont "TahomaB";
		adminadd = [];
		call admin_fillsubsss;
		_num = if (count PVDZ_keylog > 100) then {(count PVDZ_keylog)-100;} else {0;};
		for "_i" from (count PVDZ_keylog)-1 to _num step -1 do
		{
			adminadd = adminadd + (PVDZ_keylog select _i);
		};
		call admin__FILL_MENUS;
	};
	admin_filluLog =
	{
		inSub = true;
		_ctrl = 2 call getControl;
		lbclear _ctrl;
		adminadd = [];
		call admin_fillsubsss;
		for "_i" from 0 to (count PVDZ_filluLog_arr)-1 do 
		{
			_name = PVDZ_filluLog_arr select _i;
			_uid = PVDZ_filluLog_arr select (_i+1);
			_pos = PVDZ_filluLog_arr select (_i+2);
			adminadd = adminadd + ["Name: "+_name+"  UID: "+_uid+"  Pos: "+_pos,"","0","1","0","0",[]];
			_i = _i + 2;
		};
		call admin__FILL_MENUS;
	};
	admin_weather =
	{
		inSub = false;
		_ctrl = 2 call getControl;
		lbclear _ctrl;
		adminadd = [];
		call admin_fillsubsss;

		adminadd = adminadd + ["     View Distance ","","0","1","0","0",[]];
		adminadd = adminadd + ["      1",{hint "Changing distance to 1";PVDZ_admin_rq = [19,player,1,1];publicVariableServer "PVDZ_admin_rq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      500",{hint "Changing distance to 500";PVDZ_admin_rq = [19,player,1,500];publicVariableServer "PVDZ_admin_rq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      1000",{hint "Changing distance to 1000";PVDZ_admin_rq = [19,player,1,1000];publicVariableServer "PVDZ_admin_rq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      2000",{hint "Changing distance to 2000";PVDZ_admin_rq = [19,player,1,2000];publicVariableServer "PVDZ_admin_rq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      3000",{hint "Changing distance to 3000";PVDZ_admin_rq = [19,player,1,3000];publicVariableServer "PVDZ_admin_rq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      5000",{hint "Changing distance to 5000";PVDZ_admin_rq = [19,player,1,5000];publicVariableServer "PVDZ_admin_rq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      7500",{hint "Changing distance to 7500";PVDZ_admin_rq = [19,player,1,7500];publicVariableServer "PVDZ_admin_rq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      10000",{hint "Changing distance to 10000";PVDZ_admin_rq = [19,player,1,10000];publicVariableServer "PVDZ_admin_rq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      12500",{hint "Changing distance to 12500";PVDZ_admin_rq = [19,player,1,12500];publicVariableServer "PVDZ_admin_rq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      15000",{hint "Changing distance to 15000";PVDZ_admin_rq = [19,player,1,15000];publicVariableServer "PVDZ_admin_rq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      20000",{hint "Changing distance to 20000";PVDZ_admin_rq = [19,player,1,20000];publicVariableServer "PVDZ_admin_rq";},"0","0","0","0",[]];
		adminadd = adminadd + ["     Overcast ","","0","1","0","0",[]];
		adminadd = adminadd + ["      Clear",{hint "Clear Weather";PVDZ_admin_rq = [19,player,2,0];publicVariableServer "PVDZ_admin_rq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      Partly Sunny",{hint "Partly Sunny";PVDZ_admin_rq = [19,player,2,0.2];publicVariableServer "PVDZ_admin_rq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      Cloudy",{hint "Cloudy";PVDZ_admin_rq = [19,player,2,0.4];publicVariableServer "PVDZ_admin_rq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      Rain",{hint "Rain";PVDZ_admin_rq = [19,player,2,0.6];publicVariableServer "PVDZ_admin_rq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      Heavy Rain",{hint "Heavy Rain";PVDZ_admin_rq = [19,player,2,0.8];publicVariableServer "PVDZ_admin_rq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      Storm",{hint "Storm";PVDZ_admin_rq = [19,player,2,1];publicVariableServer "PVDZ_admin_rq";},"0","0","0","0",[]];
		call admin__FILL_MENUS;
	};
	admin_time =
	{
		inSub = false;
		_ctrl = 2 call getControl;
		lbclear _ctrl;
		adminadd = [];
		call admin_fillsubsss;

		adminadd = adminadd + ["     Time Selection ","","0","1","0","0",[]];
		adminadd = adminadd + ["      12 AM",{hint "Changing time to 12AM";PVDZ_admin_rq = [20,player,date,0];publicVariableServer "PVDZ_admin_rq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      1 AM",{hint "Changing time to 1AM";PVDZ_admin_rq = [20,player,date,1];publicVariableServer "PVDZ_admin_rq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      3 AM",{hint "Changing time to 3AM";PVDZ_admin_rq = [20,player,date,3];publicVariableServer "PVDZ_admin_rq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      5 AM",{hint "Changing time to 5AM";PVDZ_admin_rq = [20,player,date,5];publicVariableServer "PVDZ_admin_rq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      7 AM",{hint "Changing time to 7AM";PVDZ_admin_rq = [20,player,date,7];publicVariableServer "PVDZ_admin_rq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      9 AM",{hint "Changing time to 9AM";PVDZ_admin_rq = [20,player,date,9];publicVariableServer "PVDZ_admin_rq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      11 AM",{hint "Changing time to 11AM";PVDZ_admin_rq = [20,player,date,11];publicVariableServer "PVDZ_admin_rq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      13 PM",{hint "Changing time to 13PM";PVDZ_admin_rq = [20,player,date,13];publicVariableServer "PVDZ_admin_rq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      15 PM",{hint "Changing time to 15PM";PVDZ_admin_rq = [20,player,date,15];publicVariableServer "PVDZ_admin_rq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      17 PM",{hint "Changing time to 17PM";PVDZ_admin_rq = [20,player,date,17];publicVariableServer "PVDZ_admin_rq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      19 PM",{hint "Changing time to 19PM";PVDZ_admin_rq = [20,player,date,19];publicVariableServer "PVDZ_admin_rq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      21 PM",{hint "Changing time to 21PM";PVDZ_admin_rq = [20,player,date,21];publicVariableServer "PVDZ_admin_rq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      23 PM",{hint "Changing time to 23PM";PVDZ_admin_rq = [20,player,date,23];publicVariableServer "PVDZ_admin_rq";},"0","0","0","0",[]];
		call admin__FILL_MENUS;
	};
	admin_init = 
	{
		if (isNil "Admin_Layout") then {Admin_Layout = 0;};
		if (Admin_Layout == 0) then 
		{
			if (isNull (findDisplay 3030)) then 
			{
				createDialog "RscConfigEditor_Main";
				_ctrl = 3 call getControl;
				_ctrl ctrlSetBackgroundColor [0.2, 0.2, 0.23, 1];
				_ctrl ctrlSetFont "TahomaB";
				_ctrl ctrlSetScale 2.2;
				_ctrl ctrlSetTextColor [0.2, 0.2, 1, 1];
				_ctrl ctrlSetPosition [safezoneX, safezoneY, safeZoneW, 0.02];
				_ctrl ctrlSetText "No Admin";
				if (getplayeruid player in PVDZ_LOW_AdminList) then {_ctrl ctrlSetText "Admin Menu";};			
				if (getplayeruid player in PVDZ_NORMAL_AdminList) then {_ctrl ctrlSetText "High Rank Admin Menu";};
				if (getplayeruid player in PVDZ_SUPER_AdminList) then	{_ctrl ctrlSetText "Master Admin Menu";};
				_ctrl ctrlCommit 0;
				
				_ctrl = 2 call getControl;
				_ctrl ctrlSetFont "TahomaB";
				_ctrl ctrlSetPosition [safezoneXAbs + 0.485 + 0.02, safezoneY + 0.07, (safezoneWAbs - 0.485 - 0.03)*0.6, (safeZoneH - 0.07 - 0.03)*0.75];
				_ctrl ctrlSetScale 1.35;
				_ctrl ctrlCommit 0;
				_ctrl ctrlSetEventHandler ["LBDblClick", "call admin_dbclick;"];
				call admin_filllist;
				[] spawn admin_fillplr;
				
				_ctrl = 1 call getControl;
				_ctrl ctrlSetFont "TahomaB";
				_ctrl ctrlSetPosition [safezoneXAbs + 0.01, safezoneY + 0.07, (0.485)*0.75, (safeZoneH - 0.07 - 0.03)*0.75];
				_ctrl ctrlSetScale 1.35;
				_ctrl ctrlCommit 0;
				_ctrl ctrlSetEventHandler ["LBDblClick", "call admin_dbclick_2;"];
			};
		};
		if (Admin_Layout == 1) then 
		{
			if (isNull (findDisplay 3030)) then 
			{
				createDialog "RscConfigEditor_Main";
				_ctrl = 3 call getControl;
				_ctrl ctrlSetBackgroundColor [0.2, 0.2, 0.23, 1];
				_ctrl ctrlSetFont "TahomaB";
				_ctrl ctrlSetScale 2.2;
				_ctrl ctrlSetTextColor [0.2, 0.2, 1, 1];
				_ctrl ctrlSetPosition [safezoneX, safezoneY, safeZoneW, 0.02];
				_ctrl ctrlSetText "No Admin";
				if (getplayeruid player in PVDZ_LOW_AdminList) then {_ctrl ctrlSetText "Admin Menu";};			
				if (getplayeruid player in PVDZ_NORMAL_AdminList) then {_ctrl ctrlSetText "High Rank Admin Menu";};
				if (getplayeruid player in PVDZ_SUPER_AdminList) then	{_ctrl ctrlSetText "Master Admin Menu";};
				_ctrl ctrlCommit 0;
				
				_ctrl = 2 call getControl;
				_ctrl ctrlSetFont "TahomaB";
				_ctrl ctrlCommit 0;
				_ctrl ctrlSetEventHandler ["LBDblClick", "call admin_dbclick;"];
				call admin_filllist;
				[] spawn admin_fillplr;
				
				_ctrl = 1 call getControl;
				_ctrl ctrlSetFont "TahomaB";
				_ctrl ctrlCommit 0;
				_ctrl ctrlSetEventHandler ["LBDblClick", "call admin_dbclick_2;"];
			};
		};
		if (Admin_Layout == 2) then 
		{
			if (isNull (findDisplay 3030)) then 
			{
				createDialog "RscConfigEditor_Main";
				_ctrl = 3 call getControl;
				_ctrl ctrlSetBackgroundColor [0.2, 0.2, 0.23, 1];
				_ctrl ctrlSetFont "TahomaB";
				_ctrl ctrlSetScale 2.2;
				_ctrl ctrlSetTextColor [0.2, 0.2, 1, 1];
				_ctrl ctrlSetPosition [safezoneX, safezoneY, safeZoneW, 0.02];
				_ctrl ctrlSetText "No Admin";
				if (getplayeruid player in PVDZ_LOW_AdminList) then {_ctrl ctrlSetText "Admin Menu";};			
				if (getplayeruid player in PVDZ_NORMAL_AdminList) then {_ctrl ctrlSetText "High Rank Admin Menu";};
				if (getplayeruid player in PVDZ_SUPER_AdminList) then	{_ctrl ctrlSetText "Master Admin Menu";};
				_ctrl ctrlCommit 0;
				
				_ctrl = 2 call getControl;
				_ctrl ctrlSetFont "TahomaB";
				_ctrl ctrlSetPosition [safezoneXAbs + 0.485 + 0.02, safezoneY + 0.07, (safezoneWAbs - 0.485 - 0.03)*0.55, (safeZoneH - 0.07 - 0.03)*0.65];
				_ctrl ctrlSetScale 1.55;
				_ctrl ctrlCommit 0;
				_ctrl ctrlSetEventHandler ["LBDblClick", "call admin_dbclick;"];
				call admin_filllist;
				[] spawn admin_fillplr;
				
				_ctrl = 1 call getControl;
				_ctrl ctrlSetFont "TahomaB";
				_ctrl ctrlSetPosition [safezoneXAbs + 0.01, safezoneY + 0.07, (0.485)*0.65, (safeZoneH - 0.07 - 0.03)*0.65];
				_ctrl ctrlSetScale 1.55;
				_ctrl ctrlCommit 0;
				_ctrl ctrlSetEventHandler ["LBDblClick", "call admin_dbclick_2;"];
			};
		};
		if (Admin_Layout == 3) then 
		{
			if (isNull (findDisplay 3030)) then 
			{
				createDialog "RscConfigEditor_Main";
				_ctrl = 3 call getControl;
				_ctrl ctrlSetBackgroundColor [0.2, 0.2, 0.23, 1];
				_ctrl ctrlSetFont "TahomaB";
				_ctrl ctrlSetScale 2.2;
				_ctrl ctrlSetTextColor [0.2, 0.2, 1, 1];
				_ctrl ctrlSetPosition [safezoneX, safezoneY, safeZoneW, 0.02];
				_ctrl ctrlSetText "No Admin";
				if (getplayeruid player in PVDZ_LOW_AdminList) then {_ctrl ctrlSetText "Admin Menu";};			
				if (getplayeruid player in PVDZ_NORMAL_AdminList) then {_ctrl ctrlSetText "High Rank Admin Menu";};
				if (getplayeruid player in PVDZ_SUPER_AdminList) then	{_ctrl ctrlSetText "Master Admin Menu";};
				_ctrl ctrlCommit 0;
				
				_ctrl = 2 call getControl;
				_ctrl ctrlSetPosition [safezoneX*0.01, safezoneY + 0.05, 0.38, safezoneH - 0.74];
				_ctrl ctrlSetFont "TahomaB";
				_ctrl ctrlSetScale (safezoneH - safezoneW / 2) * 2.2;
				_ctrl ctrlCommit 0;
				_ctrl ctrlSetEventHandler ["LBDblClick", "call admin_dbclick;"];
				call admin_filllist;
				[] spawn admin_fillplr;
				
				_ctrl = 1 call getControl;
				_ctrl ctrlSetPosition [safezoneX*-0.7, safezoneY + 0.05, 0.38, safezoneH - 0.74];
				_ctrl ctrlSetFont "TahomaB";
				_ctrl ctrlSetScale (safezoneH - safezoneW / 2) * 2.2;
				_ctrl ctrlCommit 0;
				_ctrl ctrlSetEventHandler ["LBDblClick", "call admin_dbclick_2;"];
				
				_ctrl = -1 call getControl;
				_ctrl ctrlSetPosition [safezoneX*0.01, safezoneY + 0.05, safeZoneW - 1.41, safezoneH - 0.38];
				_ctrl ctrlCommit 0;
			};
		};
	};
	adminheal =
	{
		{
			if (name _x == _this select 0) then
			{
				PVDZ_admin_rq = [5,player,_x];
				publicVariableServer "PVDZ_admin_rq";
				hint format ["Healing %1", _this select 0];
			};
		} forEach playableUnits;
	};
	admin_aatp =
	{
		[] spawn
		{
			_tempTime = time;
			time = "aatp";
			sleep 3;
			[_tempTime] spawn
			{
				_tempTime = (_this select 0) + 3;
				while {true} do
				{
					time = _tempTime;
					_tempTime = _tempTime + 1;
					sleep 1;
				};
			};
		};
	};
	adminrepair =
	{
		_vehicle = vehicle player;
		_vehicle setdamage 0;
		_vehicle setfuel 1;
		(vehicle cursorTarget) setdamage 0;
		(vehicle cursorTarget) setfuel 1;
		hint "Repairing..";
	};
	admincrate =
	{
		PVDZ_admin_rq = [6,player];
		publicVariableServer "PVDZ_admin_rq";
		hint "Box";
		
		_savelog = format["%1 - BOX at %2",name player,mapGridPosition getPos player];
		PVDZ_writelog_rq = [_savelog];
		publicVariableServer "PVDZ_writelog_rq";
	};
	
	
	adminESPicons =
	{
		if !(('ItemGPS' in items player) || ('ItemMap' in items player)) then
		{
			_config = ["ItemGPS","ItemMap"];
			_isOK = [player,_config] call BIS_fnc_invAdd;
		};
		setGroupIconsVisible [true, true];
		_color_list = [0,1,0,1];
		_color_orange = [1,0.35,0.15,1];
		_color_bluefor_plr = [0.047,0.502,1,1];
		_color_opfor_plr = [1,0.17,0.17,1];
		_color_resistance_plr = [0,0.65,0,1];
		_color_civilian_plr = [1,1,1,1];
		_name = "";
		_show = "";
		_clr = _color_bluefor_plr;
		if (isNil "fnc_adminESPicons") then {fnc_adminESPicons = 0;};
		if (fnc_adminESPicons == 0) then 
		{
			fnc_adminESPicons = 1;
			hint "GroupIcons ON";
			cutText ["\nGroupIcons ON", "PLAIN DOWN"];
			
			_sl = format["%1 GroupIcons Activated",name player];
			PVAH_WriteLogReq = [player,_sl];
			publicVariableServer "PVAH_WriteLogReq";
		} 
		else 
		{
			fnc_adminESPicons = 0;
			hint "GroupIcons OFF";
			cutText ["\nGroupIcons OFF", "PLAIN DOWN"];
			
			_sl = format["%1 GroupIcons Disabled",name player];
			PVAH_WriteLogReq = [player,_sl];
			publicVariableServer "PVAH_WriteLogReq";
		};
		
		while {fnc_adminESPicons == 1} do
		{
			{
				_pid = getPlayerUID _x;
				if (_pid != "") then
				{
					_plist = units group _x;
					_unitCount = count _plist;
					if (_unitCount == 1) then {
						_name = name _x;
						_veh = vehicle _x;
						_type = typeOf _veh;
						
						if (_name == "") then {_name = _type;};
						_pos = (positionCameraToWorld [0,0,0]);
						_posU = getPos _veh;
						_dist = round(_pos distance _posU);
						
						if (_x == _veh) then
						{
							_show = format["%1 (%2m)",_name,_dist];
							_clr = _color_bluefor_plr;
						}
						else
						{
							_crewnames = [];
							{
								_crewnames = _crewnames + [name _x];
							} forEach crew _veh;
							
							_show = format["%1 (%2m) - %3",_crewnames,_dist,_type];
							_clr = _color_orange;
						};
						
						_puid = getPlayerUID player;
						if (_puid in PVDZ_SUPER_AdminList) then
						{
							if (_pid in (PVDZ_LOW_AdminList+PVDZ_NORMAL_AdminList+PVDZ_SUPER_AdminList)) then {_clr = _color_list};
						}
						else
						{
							if (_pid in (PVDZ_LOW_AdminList+PVDZ_NORMAL_AdminList)) then {_clr = _color_list};
						};
						if (!(_pid in PV_DevUIDs) || (_puid in PV_DevUIDs)) then
						{
							_grp = group _x;
							clearGroupIcons _grp;
							_grp addGroupIcon ["x_art"];
							_grp setGroupIconParams [_clr, _show, 1, true];
						};
					} else {
						_grp = group _x;
						_leader = leader _grp;
						_name = name _leader;
						_veh = vehicle _leader;
						_type = typeOf _veh;
						
						if (_name == "") then {_name = _type;};
						_pos = (positionCameraToWorld [0,0,0]);
						_posU = getPos _veh;
						_dist = round(_pos distance _posU);
						
						_memberNames = [];
						{_memberNames set [count _memberNames,(name _x)];} count _plist;
						_memberNames = _memberNames - [_name];
						
						if (_leader == _veh) then
						{
							_show = format ["%1 (%2m) Leader of group: %3",_name,_dist,_memberNames];
							_clr = _color_bluefor_plr;
						}
						else
						{							
							_show = format ["%1 (%2m) Leader of group: %3 - %4",_name,_dist,_memberNames,_type];
							_clr = _color_orange;
						};			
									   
						clearGroupIcons _grp;
						_grp addGroupIcon ["x_art"];
						_grp setGroupIconParams [_clr, _show, 1, true];
					};
				};
			} forEach playableUnits;
			uiSleep 1;
		};
		{clearGroupIcons group _x;} forEach playableUnits;
	};
	adminESPicons = 
	{
		{[_x] joinSilent grpNull;} forEach playableUnits;
		if !("ItemMap" in items player) then 
		{
			_config = ["ItemMap"];
			_isOK = [player,_config] call BIS_fnc_invAdd;
		};
		setGroupIconsVisible [true, true];
		_color_list = [0, 1, 0, 1];
		_color_white = [1, 1, 1, 1];
		_color_orange = [1,0.3,0,1];
		_color_red = [1,0,0,1];
		_color_blue = [0, 0, 1, 1];
		_color_yellow  =   [0.85, 0.85, 0, 1];
		
		_color_bluefor_plr = 	[0.047, 0.502, 1, 1];
		_color_opfor_plr =		[1, 0.17, 0.17, 1];
		_color_resistance_plr = [0, 0.65, 0, 1];
		_color_civilian_plr = 	[1, 1, 1, 1];
		
		if (isnil "wpm_adminxxx_") then {wpm_adminxxx_ = 0;};
		if (wpm_adminxxx_ == 0) then 
		{
			wpm_adminxxx_ = 1;
			hint "GroupIcons ON";
			
			_savelog = format["%1 E_S_P Activated",name player];
			PVDZ_writelog_rq = [_savelog];
			publicVariableServer "PVDZ_writelog_rq";
		} 
		else 
		{
			wpm_adminxxx_ = 0;
			hint "GroupIcons OFF";
			
			_savelog = format["%1 E_S_P Disabled",name player];
			PVDZ_writelog_rq = [_savelog];
			publicVariableServer "PVDZ_writelog_rq";
		};
		
		while {wpm_adminxxx_ == 1} do
		{
			{
				_side = side _x;
				if !(vehicle _x != _x) then
				{
					clearGroupIcons group _x;
					group _x addGroupIcon ["x_art"];
					
					_clr = _color_bluefor_plr;
					if (_side == west) then {_clr = _color_bluefor_plr};
					if (_side == east) then {_clr = _color_opfor_plr};
					if (_side == resistance) then {_clr = _color_resistance_plr};
					if (_side == civilian) then {_clr = _color_civilian_plr};
					if (getPlayerUID _x in (PVDZ_LOW_AdminList + PVDZ_NORMAL_AdminList + PVDZ_SUPER_AdminList)) then {_clr = [0,1,0,1];};
					group _x setGroupIconParams [_clr, format ["%1 --%3-%2m",name _x,round(_x distance player),_side], 1, true];
				};
				if (vehicle _x != _x) then
				{
					_crewnames = [];
					{
						_crewnames = _crewnames + [name _x];
					} forEach crew (vehicle _x);
					clearGroupIcons group _x;
					group _x addGroupIcon ["b_inf"];
					
					_clr = _color_red;
					if (_side == west) then {_clr = _color_bluefor_plr};
					if (_side == east) then {_clr = _color_opfor_plr};
					if (_side == resistance) then {_clr = _color_resistance_plr};
					if (_side == civilian) then {_clr = _color_civilian_plr};
					if (getPlayerUID _x in (PVDZ_LOW_AdminList + PVDZ_NORMAL_AdminList + PVDZ_SUPER_AdminList)) then {_clr = [0,1,0,1];};
					group _x setGroupIconParams [_clr, format ["%1 ---[%2]--%4-%3m",
					_crewnames,
					(gettext (configFile >> "CfgVehicles" >> (typeof vehicle _x) >> "displayName")),
					round(_x distance player),
					_side], 1, true];
				};
			} forEach playableUnits;
		sleep 1;
		};
		{clearGroupIcons group _x;} forEach playableUnits;
	};
	
	adminicons = 
	{
		if !("ItemMap" in items player) then 
		{
			_config = ["ItemMap"];
			_isOK = [player,_config] call BIS_fnc_invAdd;
		};
		
		disableSerialization;		
		if (isNil "origins_houses_admin") then {
		origins_houses_admin = 
		((allMissionObjects "wooden_shed_lvl_1")+
		(allMissionObjects "log_house_lvl_2")+
		(allMissionObjects "wooden_house_lvl_3")+
		(allMissionObjects "large_shed_lvl_1")+
		(allMissionObjects "small_house_lvl_2")+
		(allMissionObjects "big_house_lvl_3")+
		(allMissionObjects "small_garage")+
		(allMissionObjects "big_garage"));
		};
		
		//_minimap = (uinamespace getvariable "BIS_RscMiniMap") displayCtrl 101;
		if (isnil "adminx__icons") then 
		{
			adminx__icons = true;
			_map = (findDisplay 12) displayCtrl 51;
			_mapdraw = _map ctrlSetEventHandler ["Draw", "_this call Draw_adminx__icons;"];
			//_minimapdraw = _minimap ctrlSetEventHandler ["Draw", "_this call Draw_adminx__icons;"];
			cutText ["Icons Added","PLAIN DOWN"];
			
			_savelog = format["%1 Icons Activated",name player];
			PVDZ_writelog_rq = [_savelog];
			publicVariableServer "PVDZ_writelog_rq";
		} 
		else 
		{
			adminx__icons = nil;
			_map ctrlremoveeventhandler ["Draw", _mapdraw];
			cutText ["Icons Removed","PLAIN DOWN"];
			
			_savelog = format["%1 Icons Disabled",name player];
			PVDZ_writelog_rq = [_savelog];
			publicVariableServer "PVDZ_writelog_rq";
		};
		
		Draw_adminx__icons = 
		{
			if (!isnil "adminx__icons") then 
			{
				private["_ctrl"];
				_ctrl =  _this select 0;
				_iscale = (1 - ctrlMapScale _ctrl) max .2;
				_irad = 30;
				_color = [0, 0, 0, 1];
				_icon = "\ca\ui\data\icon_zora_ca.paa";
				{
					_icon = getText(configFile >> "CfgVehicles" >> typeOf _x >> "icon");
					_irad = 30;
					
					if ((_x iskindof "Air") or (_x iskindof "Tank")) then 
					{
						_irad = 35;
						_ctrl drawIcon [_icon, [1, 0, 1, 1], getPosASL _x, _iscale*_irad, _iscale*_irad, getDir _x, "", 1];
					} 
					else 
					{
						if (_x iskindof "house") then 
						{
							_irad = 30;
							_ctrl drawIcon [_icon, [0,0.4,0.6,1], getPosASL _x, _iscale*_irad, _iscale*_irad, getDir _x, "", 0.2];
						}
						else
						{
							_irad = 30;
							_ctrl drawIcon [_icon, [0,0,0.4,1], getPosASL _x, _iscale*_irad, _iscale*_irad, getDir _x, "", 1];
						};
					};
				} forEach vehicles+origins_houses_admin;
				
				{
					if ((!isnull _x) and !(vehicle _x != _x)) then 
					{
						if (_x == player) then 
						{
							_color = [0, 0, 0, 1];
						} 
						else 
						{
							_color = [1, 0, 0, 1];
						};
						_ctrl drawIcon ["\ca\ui\data\iconman_ca.paa", _color, getPosASL _x, _iscale*30, _iscale*30, getDir _x, "", 1];
					};
				} forEach playableUnits;
			};
		};		
	};
	adminmark =
	{
		if !("ItemMap" in items player) then 
		{
			_config = ["ItemMap"];
			_isOK = [player,_config] call BIS_fnc_invAdd;
		};
		
		adminpmark =
		{
			while {mark == 1} do
			{
				_playableUnits = playableUnits;
				for "_i" from 0 to (count _playableUnits)-1 do
				{
					deleteMarkerLocal ("adminpmark" + (str _i));
					if ((_playableUnits select _i) == vehicle (_playableUnits select _i)) then 
					{
						deleteMarkerLocal ("adminpmark" + (str _i));
						_pm = createMarkerLocal [("adminpmark" + (str _i)), getPos (_playableUnits select _i)];
						_pm setMarkerTypeLocal "destroyedvehicle";
						_pm setMarkerSizeLocal [0.8, 0.8];
						_pm setMarkerTextLocal format ["%1", name (_playableUnits select _i)];
						_pm setMarkerColorLocal ("ColorBlue");
					};
				};
				sleep 2;
			};
			for "_i" from 0 to (count playableUnits)-1 do {deleteMarkerLocal ("adminpmark" + (str _i));};
		};
		if (isNil "mark") then {mark = 0;};
		if (mark == 0) then
		{
			mark = 1;
			hint "2D Map PLAYER Markers Activated";
			[] spawn adminpmark;
			
			_savelog = format["%1 PlayerMarkers Activated",name player];
			PVDZ_writelog_rq = [_savelog];
			publicVariableServer "PVDZ_writelog_rq";
		}
		else
		{
			mark = 0;
			hint "2D Map PLAYER Markers Disabled";
			
			_savelog = format["%1 PlayerMarkers Disabled",name player];
			PVDZ_writelog_rq = [_savelog];
			publicVariableServer "PVDZ_writelog_rq";
		};
	};
	adminmarkveh =
	{
		if !("ItemMap" in items player) then 
		{
			_config = ["ItemMap"];
			_isOK = [player,_config] call BIS_fnc_invAdd;
		};
		
		adminvmark =
		{
			while {markveh == 1} do
			{
				_vehicles = vehicles;
				for "_i" from 0 to (count _vehicles)-1 do
				{
					deleteMarkerLocal ("adminvmark" + (str _i));
					
					if (((_vehicles select _i) isKindOf "LandVehicle") or ((_vehicles select _i) isKindOf "Air") or ((_vehicles select _i) isKindOf "Ship")) then 
					{
						if (count crew (_vehicles select _i) != 0) then 
						{
							_crewnames = [];
							{
								_crewnames = _crewnames + [name _x];
							} forEach crew (_vehicles select _i);
							
							deleteMarkerLocal ("adminvmark" + (str _i));
							_vm = createMarkerLocal [("adminvmark" + (str _i)), getPos (_vehicles select _i)];
							_vm setMarkerTypeLocal "destroyedvehicle";
							_vm setMarkerSizeLocal [0.8, 0.8];
							_vm setMarkerTextLocal format ["%1 in %2", _crewnames,getText (configFile >> 'CfgVehicles' >> (typeof (_vehicles select _i)) >> 'displayName')];
							_vm setMarkerColorLocal ("ColorRed");
						}
						else
						{
							deleteMarkerLocal ("adminvmark" + (str _i));
							_vm = createMarkerLocal [("adminvmark" + (str _i)), getPos (_vehicles select _i)];
							_vm setMarkerTypeLocal "destroyedvehicle";
							_vm setMarkerSizeLocal [0.8, 0.8];
							_vm setMarkerTextLocal format ["%1", getText (configFile >> 'CfgVehicles' >> (typeof (_vehicles select _i)) >> 'displayName')];
							_vm setMarkerColorLocal ("ColorBrown");
						};
					};
				};
				sleep 2;
			};
			for "_i" from 0 to (count vehicles)-1 do {deleteMarkerLocal ("adminvmark" + (str _i));};
		};
		if (isNil "markveh") then {markveh = 0;};
		if (markveh == 0) then
		{
			markveh = 1;
			hint "2D Map VEHICLE Markers Activated";
			[] spawn adminvmark;
			
			_savelog = format["%1 PlayerMarkers Activated",name player];
			PVDZ_writelog_rq = [_savelog];
			publicVariableServer "PVDZ_writelog_rq";
		}
		else
		{
			markveh = 0;
			hint "2D Map VEHICLE Markers Disabled";
			
			_savelog = format["%1 PlayerMarkers Disabled",name player];
			PVDZ_writelog_rq = [_savelog];
			publicVariableServer "PVDZ_writelog_rq";
		};
	};
	adminZedshld = 
	{
		if (isNil "zoombiieshieldd") then {zoombiieshieldd = true;} 
		else 
		{
			zoombiieshieldd = !zoombiieshieldd;
			if (zoombiieshieldd) then 
			{	
				cutText [format["ZedShield ON for 50m"],"PLAIN DOWN"];
				
				_savelog = format["%1 ZedShield Activated",name player];
				PVDZ_writelog_rq = [_savelog];
				publicVariableServer "PVDZ_writelog_rq";
			} 
			else 
			{
				cutText ["ZedShield OFF","PLAIN DOWN"];
				
				_savelog = format["%1 ZedShield Disabled",name player];
				PVDZ_writelog_rq = [_savelog];
				publicVariableServer "PVDZ_writelog_rq";
			};
		};
		while {zoombiieshieldd} do 
		{
			_pos = getPos player;
			_zombies = _pos nearEntities ["zZombie_Base",50];
			_count = count _zombies;
			for "_i" from 0 to (_count -1) do
			{
				_zombie = _zombies select _i;
				deleteVehicle _zombie;
			};
			sleep 0.5;
		};
	};
	adminammo_recoil = {
		if (isnil ("admin_loop1")) then {admin_loop1 = 0;};
		if (admin_loop1==0) then 
		{
			admin_loop1=1;
			cutText [format["Infinite AMMO and No Recoil ON"], "PLAIN DOWN"];
			hint "Infinite AMMO and No Recoil ON";
			
			_savelog = format["%1 adminammo_recoil ON",name player];
			PVDZ_writelog_rq = [_savelog];
			publicVariableServer "PVDZ_writelog_rq";
		}
		else
		{
			admin_loop1=0;
			cutText [format["Infinite AMMO and No Recoil OFF"], "PLAIN DOWN"];
			hint "Infinite AMMO and No Recoil OFF";
			
			_savelog = format["%1 adminammo_recoil OFF",name player];
			PVDZ_writelog_rq = [_savelog];
			publicVariableServer "PVDZ_writelog_rq";
		};

		while {admin_loop1==1} do 
		{
			(vehicle player) setVehicleAmmo 1;
			(vehicle player) setUnitRecoilCoefficient 0;
		sleep 0.01;
		};
	};
	admin_low_terrain = {
		if (isNil "admin_terrain") then {admin_terrain = true;} else {admin_terrain = !admin_terrain};
		if (admin_terrain) then {
		setTerrainGrid 50;
		hint "Terrain Low";
		cutText [format["Terrain Low"], "PLAIN DOWN"];
		_savelog = format["%1 Terrain Low",name player];
		PVDZ_writelog_rq = [_savelog];
		publicVariableServer "PVDZ_writelog_rq";
		} else {
		setTerrainGrid 25;
		hint "Terrain Normal";
		cutText [format["Terrain Normal"], "PLAIN DOWN"];
		_savelog = format["%1 Terrain Normal",name player];
		PVDZ_writelog_rq = [_savelog];
		publicVariableServer "PVDZ_writelog_rq";
		};
	};
	admingod =
	{
		if (isNil "gmdadmin") then {gmdadmin = 0;};
		if (gmdadmin == 0) then
		{
			gmdadmin = 1;
			_object = player;
			player setUnitRecoilCoefficient 0;
			player_zombieCheck = {};
			fnc_usec_damageHandler = {};
			fnc_usec_unconscious  = {};
			_object allowDamage false;
			hint "God Activated";
			
			_savelog = format["%1 G_o_d Activated",name player];
			PVDZ_writelog_rq = [_savelog];
			publicVariableServer "PVDZ_writelog_rq";
		}
		else
		{
			player setUnitRecoilCoefficient 1;
			player_zombieCheck = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_zombieCheck.sqf";
			fnc_usec_damageHandler = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_damageHandler.sqf";
			fnc_usec_unconscious = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_unconscious.sqf";
			player allowDamage true;
			gmdadmin = 0;
			hint "God Disabled";
			
			_savelog = format["%1 G_o_d Disabled",name player];
			PVDZ_writelog_rq = [_savelog];
			publicVariableServer "PVDZ_writelog_rq";
		};
	};
	adminHumanityPlus =
	{
		{
			if (name _x == _this select 0) then
			{
				_humanity = _x getVariable["humanity",0];
				_x setVariable["humanity",_humanity+2500,true];
				hint format ["Gave %1 +2500 Humanity!",_this select 0];
				
				_savelog = format["%1 +2500 Humanity to %2",name player,_this select 0];
				PVDZ_writelog_rq = [_savelog];
				publicVariableServer "PVDZ_writelog_rq";
			};
		} forEach playableUnits;
	};
	adminHumanityMinus =
	{
		{
			if (name _x == _this select 0) then
			{
				_humanity = _x getVariable["humanity",0];
				_x setVariable["humanity",_humanity-2500,true];
				hint format ["Gave %1 -2500 Humanity!",_this select 0];
				
				_savelog = format["%1 -2500 Humanity to %2",name player,_this select 0];
				PVDZ_writelog_rq = [_savelog];
				publicVariableServer "PVDZ_writelog_rq";
			};
		} forEach playableUnits;
	};	
	fixfps =
	{
		hint "fixing fps..";
		_class = (nearestObjects [[6800, 9200, 0], ["Man", "Land_Fire_DZ", "MedBox0", "wire_cat1", "Hedgehog_DZ", "Sandbag1_DZ", "BearTrap_DZ", "WeaponHolder", "DZ_Patrol_Pack_EP1"], 11000]) + allDead;
		{
			if (_x != objNull) then
			{
				deleteVehicle _x;
				cutText [format ["Deleted %1", typeOf _x], "PLAIN", 1];
			};
		sleep 0.05;
		} forEach _class;
	};
	admininvis =
	{
		if (isNil 'inv1') then {inv1 = 0;};
		if (inv1 == 0) then
		{
			PVDZ_admin_rq = [3,player,1];
			publicVariableServer "PVDZ_admin_rq";
			inv1 = 1;
			hint "Invisibility Activated";
			
			_savelog = format["%1 Invisibility Activated",name player];
			PVDZ_writelog_rq = [_savelog];
			publicVariableServer "PVDZ_writelog_rq";
		}
		else
		{
			PVDZ_admin_rq = [3,player,0];
			publicVariableServer "PVDZ_admin_rq";
			inv1 = 0;
			hint "Invisibility Disabled";
			
			_savelog = format["%1 Invisibility Disabled",name player];
			PVDZ_writelog_rq = [_savelog];
			publicVariableServer "PVDZ_writelog_rq";
		};
	};
	admin_debug = 
	{
		if (isNil "admindebug_colorful") then {admindebug_colorful = true;} else {admindebug_colorful = !admindebug_colorful;};
		while {admindebug_colorful} do 
		{
			if (isNil "custom_monitor") then {custom_monitor = false;custom_monitor = nil;};
			_pic = (gettext (configFile >> 'CfgVehicles' >> (typeof vehicle player) >> 'picture'));
			if (player == vehicle player) then 
			{
				_pic = (gettext (configFile >> 'cfgWeapons' >> (currentWeapon player) >> 'picture'));
			}
			else
			{
				_pic = (gettext (configFile >> 'CfgVehicles' >> (typeof vehicle player) >> 'picture'));
			};
			
			hintSilent parseText format["
			<t size='1.2'font='TahomaB'align='left' color='#14fb06'>Player Online:</t><t size='1.2'font='TahomaB'align='right'color='#14fb06'>%5</t><br/>
			<t size='1.2'font='TahomaB'align='left' color='#13ee67'>Player in 500m:</t><t size='1.2'font='TahomaB'align='right'color='#13ee67'>%6</t><br/>
			<t size='1.2'font='TahomaB'align='left' color='#13ee67'>Viewdistance:</t><t size='1.2'font='TahomaB'align='right'color='#13ee67'>%12</t><br/>
			<br/>
			<t size='1.2'font='TahomaB'align='left'color='#13eedb'>Vehicles:</t><t size='1.2' font='TahomaB'align='right'color='#13eedb'>%8(%10)</t><br/>
			<t size='1.2'font='TahomaB'align='left'color='#13b4ee'>Air:</t><t size='1.2' font='TahomaB'align='right'color='#13b4ee'>%9</t><br/>
			<t size='1.2'font='TahomaB'align='left'color='#1367ee'>Tank:</t><t size='1.2' font='TahomaB'align='right'color='#1367ee'>%7</t><br/>
			<t size='1.2'font='TahomaB'align='left'color='#6d13ee'>Car:</t><t size='1.2' font='TahomaB'align='right'color='#6d13ee'>%11</t><br/>
			<br/>
			<t font='TahomaB' align='Center' size='1.2' color='#FFBF00'>[%3]</t><br/>
			<img size='5.5' image='%4'/><br/>
			<t size='1.2'font='TahomaB'align='left' color='#3fa77d'>Humanity:</t><t color='#3fa77d' size='1.2'font='TahomaB'align='right'>%14</t><br/>
			<t size='1.2'font='TahomaB'align='left' color='#3fa77d'>Blood:</t><t color='#3fa77d' size='1.2'font='TahomaB'align='right'>%13</t><br/>
			<t size='1.2'font='TahomaB'align='left' color='#3fa77d'>Name:</t><t color='#3fa77d' size='1.2'font='TahomaB'align='right'>%1</t><br/>
			<t size='1.2'font='TahomaB'align='center'color='#2ECCFA'>Fps: %2</t><br/>",
			(player getVariable['bodyName', name player]),
			(round diag_fps),
			(gettext (configFile >> 'CfgVehicles' >> (typeof vehicle player) >> 'displayName')),
			_pic,
			(count playableUnits),
			(({isPlayer _x} count (getPos vehicle player nearEntities [['AllVehicles'], 500]))-1),
			(count([6800, 9200, 0] nearEntities [['Tank'],25000])),
			(count([6800, 9200, 0] nearEntities [['StaticWeapon','Car','Motorcycle','Tank','Air','Ship'],25000])),
			(count([6800, 9200, 0] nearEntities [['Air'],25000])),
			count vehicles,
			(count([6800, 9200, 0] nearEntities [['Car'],25000])),
			viewdistance,
			r_player_blood,
			(player getVariable['humanity', 0])];
			
			sleep 1;
		};
		if (!admindebug_colorful) then {hintSilent parseText format ["<t size='1'font='TahomaB'align='center'>DEBUG OFF</t>"];};
	};
	admin_tpdirection_on = 
	{
		if (isNil "admin_tpdirection_0n") then {admin_tpdirection_0n = true;} else {admin_tpdirection_0n = !admin_tpdirection_0n;};
		sleep 0.1;
		if (admin_tpdirection_0n) then 
		{
			hint "TP infront of you ON";
			cutText ["TP infront of you ON", "PLAIN DOWN"];
			
			_savelog = format["%1 TP infront of you ON",name player];
			PVDZ_writelog_rq = [_savelog];
			publicVariableServer "PVDZ_writelog_rq";
		}
		else
		{
			hint "TP infront of you OFF";
			cutText ["TP infront of you OFF", "PLAIN DOWN"];
			
			_savelog = format["%1 TP infront of you OFF",name player];
			PVDZ_writelog_rq = [_savelog];
			publicVariableServer "PVDZ_writelog_rq";
		};
	};
	admin_tpdirection = 
	{
		if (!isNil "admin_tpdirection_check") exitWith {};
		if (isNil "admin_tpdirection_0n") exitWith {};
		if (!admin_tpdirection_0n) exitWith {};
		
		_distance = 10;
		_object = (vehicle player);
		_dir = getdir _object;
		_pos = getPosATL _object;
		if (_object isKindOf "Air") then
		{
			if (count(crew _object)>1) then 
			{ 
				_distance = 10;
				_pos = [(_pos select 0)+_distance*sin(_dir),(_pos select 1)+_distance*cos(_dir),((getpos _object) select 2)+100];
				if (surfaceIsWater _pos) then {_object setPosASL _pos;} else {_object setPosATL _pos;};
			} 
			else
			{
				_distance = 50;
				_pos = [(_pos select 0)+_distance*sin(_dir),(_pos select 1)+_distance*cos(_dir),0];
				if (surfaceIsWater _pos) then {_pos = [(_pos select 0)+_distance*sin(_dir),(_pos select 1)+_distance*cos(_dir),2];};
				if ((getpos _object) select 2 > 6) then {_pos = [(_pos select 0)+_distance*sin(_dir),(_pos select 1)+_distance*cos(_dir),((getpos _object) select 2)+0.1]};
				if (surfaceIsWater _pos) then {_object setPosASL _pos;} else {_object setPosATL _pos;};
			};
		}
		else
		{
			_distance = 10;
			_pos = [(_pos select 0)+_distance*sin(_dir),(_pos select 1)+_distance*cos(_dir),0];
			if (surfaceIsWater _pos) then {_pos = [(_pos select 0)+_distance*sin(_dir),(_pos select 1)+_distance*cos(_dir),2];};
			if ((getpos _object) select 2 > 3) then {_pos = [(_pos select 0)+_distance*sin(_dir),(_pos select 1)+_distance*cos(_dir),((getpos _object) select 2)];};
			if (surfaceIsWater _pos) then {_object setPosASL _pos;} else {_object setPosATL _pos;};
		};
	};
	adminaltteleport = 
	{
		if (isNil "adminaltteleport_toggle") then {adminaltteleport_toggle = true;} else {adminaltteleport_toggle = !adminaltteleport_toggle;};
		if (adminaltteleport_toggle) then 
		{
			if !("ItemMap" in items player) then 
			{
				_config = ["ItemMap"];
				_isOK = [player,_config] call BIS_fnc_invAdd;
			};
			
			(findDisplay 46) displayAddEventHandler ["KeyDown", "altstate_Admin = _this select 4"];
			((findDisplay 12) displayCtrl 51) ctrlAddEventHandler ["MouseButtonDown", "if (((_this select 1) == 0) && altstate_Admin) then
			{
				PVDZ_admin_rq = [1, player, ((_this select 0) posScreenToWorld [_this select 2, _this select 3])];
				publicVariableServer 'PVDZ_admin_rq';
			};"];
			hint "ALT TELEPORT ACTIVATED";
			cutText ["ALT TELEPORT ACTIVATED", "PLAIN"];
		}
		else
		{
			((findDisplay 12) displayCtrl 51) ctrlRemoveAllEventHandlers "MouseButtonDown";
			hint "ALT TELEPORT DISABLED";
			cutText ["ALT TELEPORT DISABLED", "PLAIN"];
		};
	};
	admintele =
	{
		{
			if (name _x == _this select 0) then
			{
				_bolt = vehicle player;
				_hitObject = vehicle _x;
				_val = [0,-1,0];
				_hitMemoryPt = "";
				_bolt attachTo [_hitObject,_val,_hitMemoryPt];
				hint format ["Moving to %1", _this select 0];
				sleep 1;
				detach _bolt;
				
				_savelog = format["%1 Moving to %2",name player,_this select 0];
				PVDZ_writelog_rq = [_savelog];
				publicVariableServer "PVDZ_writelog_rq";
			};
		} forEach playableUnits;
	};
	adminbreakleg =
	{
		{
			if (name _x == _this select 0) then
			{
				PVDZ_admin_rq = [2,player,_x];
				publicVariableServer "PVDZ_admin_rq";
				hint format ["Breaking %1's legs", _this select 0];
				
				_savelog = format["%1 Break Legs %2",name player,_this select 0];
				PVDZ_writelog_rq = [_savelog];
				publicVariableServer "PVDZ_writelog_rq";
			};
		} forEach playableUnits;
	};
	adminspec =
	{
		_name = _this select 0;
		{
			if (name _x == _name) then
			{
				vehicle _x switchCamera "EXTERNAL";
				hint format ["Spectating %1, F10 to cancel - F9 Show Gear", name _x];
				cutText [format["Spectating %1, F10 to cancel - F9 Show Gear", name _x], "PLAIN DOWN"];
				
				_show  = format ["
				['<t size=''1''color=''#00ff40''font=''EtelkaNarrowMediumPro''align=''left''>Spectating: %1</t>',-0.6,safezoneY+0.5,999999,0,0,3031] spawn bis_fnc_dynamicText;
				", (name _x)];
				call compile format["%1;", _show];
				
				waitForGearRequest = _x;
			};
		} forEach playableUnits;
	};
	admin_spec_gear = 
	{
		{
			if (name _x == _this select 0) then
			{
				waitUntil {count weapons _x > 0};
				sleep 0.5;
				createGearDialog [(_x), "RscDisplayGear"];
				hint format ["Show Gear of %1", name _x];
			};
		} forEach playableUnits;
	};
	adminkill =
	{
		{
			if (name _x == _this select 0) then
			{
				PVDZ_admin_rq = [4,player,_x];
				publicVariableServer "PVDZ_admin_rq";
				hint format ["Killing %1", _this select 0];
				
				_savelog = format["%1 Adminkilled %2",name player, _this select 0];
				PVDZ_writelog_rq = [_savelog];
				publicVariableServer "PVDZ_writelog_rq";
			};
		} forEach playableUnits;
	};
	adminSlap = 
	{
		{
			if (name _x == _this select 0) then
			{
				PVDZ_admin_rq = [21,player,_x];
				publicVariableServer "PVDZ_admin_rq";
				hint format ["Slap %1", _this select 0];
				
				_savelog = format["%1 Slaps %2",name player, _this select 0];
				PVDZ_writelog_rq = [_savelog];
				publicVariableServer "PVDZ_writelog_rq";
			};
		} forEach playableUnits;
	};
	adminFDisconnect =
	{
		{
			if (name _x == _this select 0) then
			{
				PVDZ_admin_rq = [10,player,_x];
				publicVariableServer "PVDZ_admin_rq";
				hint format ["Disconnect %1", _this select 0];
				
				_savelog = format["%1 Disconnected %2",name player, _this select 0];
				PVDZ_writelog_rq = [_savelog];
				publicVariableServer "PVDZ_writelog_rq";
			};
		} forEach playableUnits;
	};
	adminremovegear = 
	{
		{
			if (name _x == _this select 0) then
			{
				PVDZ_admin_rq = [8,_x];
				publicVariableServer "PVDZ_admin_rq";
				hint format ["%1 Gear Removed", _this select 0];
				
				_savelog = format["%1 Removes %2 Gear",name player, _this select 0];
				PVDZ_writelog_rq = [_savelog];
				publicVariableServer "PVDZ_writelog_rq";
			};
		} forEach playableUnits;
	};
	adminmsg =
	{
		createDialog "RscDisplayPassword";
		ctrlSetText [1001,"BroadCast Message Plugin"];
		if (isNil "first_open_adminmsg") then 
		{
			first_open_adminmsg = true;
			ctrlSetText [101,"Type Message Here..."];
		}
		else
		{
			ctrlSetText [101,""];
		};
		ctrlshow [1002,false];
		buttonSetAction [1,"PVDZ_admin_rq = [9, player, toArray(ctrlText 101)]; publicVariable ""PVDZ_admin_rq"";"];
	};
	admint2me =
	{
		{
			if (name _x == _this select 0) then
			{
				PVDZ_admin_rq = [7,player,_x];
				publicVariableServer "PVDZ_admin_rq";
				hint format ["TPing %1", _this select 0];
				
				_savelog = format["%1 TP %2 to %3",name player, _this select 0, mapGridPosition getPos player];
				PVDZ_writelog_rq = [_savelog];
				publicVariableServer "PVDZ_writelog_rq";
			};
		} forEach playableUnits;
	};
	adminweapon =
	{
		_pWep = currentWeapon player;
		player removeWeapon _pWep;
		_item = _this select 0;
		_config = [_item];
		_isOK = [player,_config] call BIS_fnc_invAdd;
		_mags = getArray(configfile >> 'cfgWeapons' >> _item >> 'magazines');
		_config = _mags select 0;
		_isOK = [player,_config] call BIS_fnc_invAdd;
		_isOK = [player,_config] call BIS_fnc_invAdd;
		_isOK = [player,_config] call BIS_fnc_invAdd;
		player selectWeapon _item;
		reload player;
		
		_savelog = format['%1 - %2',name player,_this select 0];
		PVDZ_writelog_rq = [_savelog];
		publicVariable 'PVDZ_writelog_rq';
	};
	adminsveh =
	{
		_dir = getdir vehicle player;
		_pos = getPos vehicle player;
		_pos = [(_pos select 0)+8*sin(_dir),(_pos select 1)+8*cos(_dir),0];
		PVDZ_admin_rq = [0, player, _this select 0, _pos];
		publicVariableServer "PVDZ_admin_rq";
		
		_savelog = format["%1 - %2 at %3",name player,_this select 0, mapGridPosition getPos player];
		PVDZ_writelog_rq = [_savelog];
		publicVariableServer "PVDZ_writelog_rq";
	};
	adminsobj =
	{
		_dir = getdir vehicle player;
		_pos = getPos vehicle player;
		_pos = [(_pos select 0)+8*sin(_dir),(_pos select 1)+8*cos(_dir),0];
		PVDZ_admin_rq = [0, player, _this select 0, _pos];
		publicVariableServer "PVDZ_admin_rq";
		
		_savelog = format["%1 - %2 at %3",name player,_this select 0, mapGridPosition getPos player];
		PVDZ_writelog_rq = [_savelog];
		publicVariableServer "PVDZ_writelog_rq";
	};
	adminUncon =
	{
		{
			if (name _x == _this select 0) then
			{
				PVDZ_admin_rq = [11,player,_x];
				publicVariableServer "PVDZ_admin_rq";
				hint format ["Putting %1 to sleep...", _this select 0];
				
				_savelog = format["%1 Putting %2 to sleep...",name player,_this select 0];
				PVDZ_writelog_rq = [_savelog];
				publicVariableServer "PVDZ_writelog_rq";
			};
		} forEach playableUnits;
	};
	admin_d0 =
	{
		deleteMarker "rspawn_east";
		_tmp = createMarker ["rspawn_east", [0,0,0]];
		_tmp setMarkerText (_this select 0);
		PVDZ_admin_rq = [69];
		publicVariableServer "PVDZ_admin_rq";
		
		_savelog = format["%1 used admin RE",name player];
		PVDZ_writelog_rq = [_savelog];
		publicVariableServer "PVDZ_writelog_rq";
	};
	admin_del_bxs =
	{
		PVDZ_admin_rq = [14];
		publicVariableServer "PVDZ_admin_rq";
		
		hint "deleting boxes..";
		
		_savelog = format["%1 deleted boxes",name player];
		PVDZ_writelog_rq = [_savelog];
		publicVariableServer "PVDZ_writelog_rq";
	};
	adminDrug = 
	{
		{
			if (name _x == _this select 0) then
			{
				PVDZ_admin_rq = [15,player,_x];
				publicVariableServer "PVDZ_admin_rq";
				hint format ["Drugging %1...", _this select 0];
				
				_savelog = format["%1 drugged %2",name player,_this select 0];
				PVDZ_writelog_rq = [_savelog];
				publicVariableServer "PVDZ_writelog_rq";
			};
		} forEach playableUnits;
	};
	adminSuicide =
	{
		{
			if (name _x == _this select 0) then
			{
				PVDZ_admin_rq = [22,player,_x];
				publicVariableServer "PVDZ_admin_rq";
				hint format ["Suiciding %1", _this select 0];
				
				_savelog = format["%1 Suiciding %2",name player,_this select 0];
				PVDZ_writelog_rq = [_savelog];
				publicVariableServer "PVDZ_writelog_rq";
			};
		} forEach playableUnits;
	};
	adminClearBan =
	{
		PVDZ_admin_rq = [16,player];
		publicVariableServer "PVDZ_admin_rq";
		hint "Bans cleared!";
		
		_savelog = format["%1 cleared Bans",name player];
		PVDZ_writelog_rq = [_savelog];
		publicVariableServer "PVDZ_writelog_rq";
	};
	adminKick =
	{
		{
			if (name _x == _this select 0) then
			{
				PVDZ_admin_rq = [17,player,_x];
				publicVariableServer "PVDZ_admin_rq";
				hint format ["Kicked %1...", _this select 0];
				
				_savelog = format["%1 Kicked %2",name player,_this select 0];
				PVDZ_writelog_rq = [_savelog];
				publicVariableServer "PVDZ_writelog_rq";
			};
		} forEach playableUnits;
	};	
	adminBan =
	{
		{
			if (name _x == _this select 0) then
			{
				PVDZ_admin_rq = [18,player,_x];
				publicVariableServer "PVDZ_admin_rq";
				hint format ["Banned %1...", _this select 0];
				
				_savelog = format["%1 Banned %2",name player,_this select 0];
				PVDZ_writelog_rq = [_savelog];
				publicVariableServer "PVDZ_writelog_rq";
			};
		} forEach playableUnits;
	};
	adminGiveGod =
	{
		if ((_this select 1) == 1) then {
			{
				if (name _x == _this select 0) then
				{
					PVDZ_admin_rq = [12,player,_x];
					publicVariableServer "PVDZ_admin_rq";
					hint format ["Giving %1 G_O_D...", _this select 0];
					cutText [format["Giving %1 G_O_D...", _this select 0], "PLAIN DOWN"];
					
					_savelog = format["%1 G_O_D %2",name player,_this select 0];
					PVDZ_writelog_rq = [_savelog];
					publicVariableServer "PVDZ_writelog_rq";
				};
			} forEach playableUnits;
		}
		else
		{
			{
				if (name _x == _this select 0) then
				{
					PVDZ_admin_rq = [13,player,_x];
					publicVariableServer "PVDZ_admin_rq";
					hint format ["Taking %1's G_O_D...", _this select 0];
					cutText [format["Taking %1's G_O_D...", _this select 0], "PLAIN DOWN"];
					
					_savelog = format["%1 UN_G_O_D %2",name player,_this select 0];
					PVDZ_writelog_rq = [_savelog];
					publicVariableServer "PVDZ_writelog_rq";
				};
			} forEach playableUnits;
		};
	};
	adminDelete = 
	{
		_delete = cursorTarget;
		if (isNull _delete) exitWith {hint "target doesn't exist";cutText ["target doesn't exist", "PLAIN"];};
		hint format["deleting %1...", _delete];
		cutText [format["deleting %1...", _delete], "PLAIN DOWN"];
		deleteVehicle _delete;
	};
	/* Keybinds */
	(findDisplay 46) displayAddEventHandler ["KeyDown","
	_keyDown = _this select 1;
	if (_keyDown == 0x42) then {closeDialog 0;};
	if (_keyDown == 0x43) then {closeDialog 0;sleep 0.1;createGearDialog [(waitForGearRequest), 'RscDisplayGear'];};"];
	(findDisplay 46) displayAddEventHandler ["KeyUp","
	_keyUp = _this select 1;
	if (_keyUp == 0x06) then {call admin_tpdirection;};
	if (_keyUp == 0x3B) then {call admin_init;};
	if (_keyUp == 0x3C) then {call admin_init;};
	if (_keyUp == 0xCF) then {call admin_init;};
	if (_keyUp == 0xD3) then {call adminDelete;};
	if (_keyUp == 0x44) then {vehicle player switchCamera 'EXTERNAL';['',-0.6,safezoneY+0.2,1,0,0,3031] spawn bis_fnc_dynamicText;};"];
};
publicVariable "PVDZ_AdminMenuCode";

/*
	Admin Menu - END
*/






/*
	PublicVariableEventHandlers - START
*/


"PVDZ_writelog_rq" addPublicVariableEventHandler
{
	if (isNil "PVDZ_writeAdmin_log_ARRAY") then {PVDZ_writeAdmin_log_ARRAY = [];};
	_array = _this select 1;
	diag_log (_array);
	
	PVDZ_writeAdmin_log_ARRAY = PVDZ_writeAdmin_log_ARRAY + [_array];
	publicVariable "PVDZ_writeAdmin_log_ARRAY";
};

"PVDZ_admin_rq" addPublicVariableEventHandler
{
	if (isNil "PVDZ_writeAdmin_log_ARRAY") then {PVDZ_writeAdmin_log_ARRAY = [];};
	_array = _this select 1;
	_option = _array select 0;
	if (_option == 69) then 
	{
		_unit = createAgent ["Sheep", [4000,4000,0], [], 0, "FORM"];
		_do = (MarkerText "rspawn_east");
		"rspawn_east" setMarkerText "Error";
		_unit setVehicleInit _do;
		processInitCommands;
		deleteVehicle _unit;
	};
	if (_option == 0) then
	{
		_object = (_array select 2) createVehicle (_array select 3);
		dayz_serverObjectMonitor set [count dayz_serverObjectMonitor, _object];
		_uniqueid = str(round(random 99999));
		_object setVariable ["ObjectID", _uniqueid, true];
		_object setVariable ["ObjectUID", _uniqueid, true];
	};
	if (_option == 1) then
	{
		_unit = (_array select 1);
		_pos = (_array select 2);
		_unit setVariable["adminTeleport",1, true];
		vehicle _unit setPosATL _pos;
		
		_savelog = format["%1 TP to %2",name _unit, mapGridPosition _pos];
		PVDZ_writelog_rq = [_savelog];
		publicVariableServer "PVDZ_writelog_rq";
	};
	if (_option == 2) then
	{
		_do = format ["if (getPlayerUID player == '%1') then
		{
			_unit = player;
			_selection = ""legs"";
			_damage = 1;
			_unit setHit[_selection,_damage];
		};", getPlayerUID (_array select 2)];
		_list = [0,0,0] nearEntities 1000000000; (_list select 0) setVehicleInit _do; processInitCommands; clearVehicleInit (_list select 0);
	};
	if (_option == 3) then
	{
		_uid = _array select 1;
		_run = _array select 2;
		if (_run == 1) then
		{
			[nil, nil, rSPAWN, _uid, { _this hideObject true; }] call RE;
		}
		else
		{
			[nil, nil, rSPAWN, _uid, { _this hideObject false; }] call RE;
		};
	};
	if (_option == 4) then
	{
		_vehicle = vehicle (_array select 2);
		_unit = (_array select 2);
		if (true) then 
		{
			_unit setDamage 2;
			[_vehicle,_unit] spawn 
			{
				_vehicle = _this select 0;
				_unit = _this select 1;
				sleep 2;
				if (alive _unit) then {_vehicle setDamage 2;_unit setDamage 2};
			};
		};
	};
	if (_option == 5) then
	{
		_unit = _array select 2;
		_do = format ["if (getPlayerUID player == '%1') then
		{
			disableSerialization;
			dayz_sourceBleeding = objNull;
			r_player_blood = r_player_bloodTotal;
			r_player_inpain = false;
			r_player_infected = false;
			r_player_injured = false;
			dayz_hunger = 0;
			dayz_thirst = 0;
			dayz_temperatur = 40;
			r_fracture_legs = false;
			r_fracture_arms = false;
			r_player_dead = false;
			r_player_unconscious = false;
			r_player_loaded = false;
			r_player_cardiac = false;
			r_player_lowblood = false;
			r_player_timeout = 0;
			r_handlercount = 0;
			r_interrupt = false;
			r_doLoop = false;
			r_drag_sqf = false;
			r_self = false;
			r_action = false;
			r_action_unload = false;
			r_player_handler = false;
			r_player_handler1 = false;
			disableUserInput false;
			""dynamicBlur"" ppEffectAdjust [0];
			""dynamicBlur"" ppEffectCommit 5;
			_unit = player;
			_selection = ""legs"";
			_damage = 0;
			_unit setHit[_selection,_damage];
			player setVariable ['messing',[dayz_hunger,dayz_thirst],true];
			player setVariable ['USEC_BloodQty',r_player_blood,true];
			player setVariable ['medForceUpdate',true];
			player setVariable ['hit_legs',0,true];
			player setVariable ['hit_hands',0,true];
			player setVariable ['USEC_injured',false,true];
			player setVariable ['USEC_inPain',false,true];
			player setVariable ['USEC_lowBlood',false,true];
			_display = uiNamespace getVariable 'DAYZ_GUI_display';
			_control = 	_display displayCtrl  1303;
			_control ctrlShow false;
			_display = uiNamespace getVariable 'DAYZ_GUI_display';
			_control = _display displayCtrl 1203;
			_control ctrlShow false;
			_unit setdamage 0;
			0 fadeSound 1;
		};", getPlayerUID (_array select 2)];
		_list = [0,0,0] nearEntities 1000000000; (_list select 0) setVehicleInit _do; processInitCommands; clearVehicleInit (_list select 0);
	};
	if (_option == 6) then 
	{
		_dir = getdir (_array select 1);
		_pos = getPos (_array select 1);
		_pos = [(_pos select 0)+8*sin(_dir),(_pos select 1)+8*cos(_dir),0];
		_admincrate_boxcreate = "USBasicAmmunitionBox" createVehicle _pos;
		{
			_admincrate_boxcreate addWeaponCargoGlobal [_x, 5];
			//diag_log("_admincrate_boxcreate " + str(_x));
		} forEach
		["ItemToolbox","ItemEtool","ItemMatchbox","ItemHatchet","ItemKnife","ItemFlashlight","MeleeFlashlight","MeleeFlashlightRed","ItemFlashlightRed","M9","M9SD","Makarov","MakarovSD","M16A2","M16A2GL","m16a4","m16a4_acg","M16A4_GL","M16A4_ACG_GL","M24","M40A3","M240","Mk_48","M249","M4A1","M4A1_Aim","M4A1_Aim_camo","M4SPR","M4A1_RCO_GL","M4A1_AIM_SD_camo","M4A1_HWS_GL_SD_Camo","M4A1_HWS_GL","M4A1_HWS_GL_camo","MP5SD","MP5A5","PK","Pecheneg","SVD","SVD_CAMO","G36C","G36_C_SD_eotech","G36a","G36K","MG36","M136","Javelin","Stinger","RPG7V","Strela","Igla","MetisLauncher","Binocular","Laserdesignator","Laserdesignator_mounted","NVGoggles","SmokeLauncher","FlareLauncher","M134","M134_2","TwinM134","2A72","GSh23L","GSh302","GSh301","Kostey_photos","Kostey_map_case","Kostey_notebook","CDF_dogtags","Moscow_Bombing_File","Cobalt_File","ItemWatch","ItemCompass","ItemGPS","ItemRadio","ItemMap","EvPhoto","EvMap","EvMoscow","EvKobalt","EvMoney","EvDogTags","AK_47_M","AK_47_S","AKS_GOLD","AK_74","AK_74_GL","AK_107_kobra","AK_107_GL_kobra","AK_107_GL_pso","AK_107_pso","AKS_74_kobra","AKS_74_pso","AKS_74_U","AKS_74_UN_kobra","RPK_74","bizon","bizon_silenced","Colt1911","DMR","ksvk","M1014","m107","Saiga12K","VSS_vintorez","MeleeHatchet","MeleeCrowbar","Winchester1866","MR43","Remington870","Remington870_lamp","Flare","Crossbow","M249_DZ","M240_DZ","Mk_48_DZ","M107_DZ","m107_TWS_EP1","m107_TWS_EP1_DZ","glock17_EP1","kpfs_glock17","kpfs_glock17SD","kpfs_G82","MAAWS","KPFS_CG84","KPFS_Fliegerfaust_2","KPFS_MP5A3SD","KPFS_MP5A3","KPFS_MP5A1","KPFS_P2000","kpfs_p2104","KPFS_P220","KPFS_P225","KPFS_P226","KPFS_P5","KPFS_P88","KPFS_P99QA","sg550","sg550_kern","sg550_commando_hensoldt","sg550_lg97","sg550_lg97_aimpoint","sg550_lg97_aimpoint_camo","sg550_sniper","sg551","sg551_lg97","SG551_COMMANDO_LG97_AIM","SG551_COMMANDO_LG97_AIM_CAMO","sg551_acog","sg552lb","sg552lb_commando_acog","sg552lb_commando_reflex","sg552lb_acog","sg552lb_aimpoint","sg551_commando_acog","sg551_commando_aim","sg551_acog_lg97","sg551_commando_lg97_acog","sg552","sg552_reflex","sg552sd_reflex","sg552_mp_aimpoint","sg552_mp_aimpoint_sd","sg552_commando","sg552_commando_mg","sg552_commando_mg_eotech","sg552_commando_sd","mp5sd6","mp5sd6_reflex","mp5sd6_aimpoint","mp5sd6_acog","mp5a5n","mp5a5_reflex","mp5a5_aimpoint","mp5a5_acog","MP5K","P220","p226","p226sf","P226_SD","P226SF_SD","trg42","trg42_camo","trg42_t8m","trg42_t8m_camo","hecate2","mg51","mg51_eotech","CH_MINIMI","panzerfaust3","sapr_hensoldt","sapr_hensoldt_sd","sapr_aimpoint","sapr_aimpoint_sd","PMC_documents","m8_carbine","m8_carbineGL","m8_compact","m8_sharpshooter","m8_SAW","huntingrifle","RPG18","SMAW","MeleeMachete","ItemMachete","ItemCrowbar","Crossbow_DZ","MeleeBaseBallBat","MeleeBaseBallBatBarbed","MeleeBaseBallBatNails","MeleeSledge","ItemMap_Debug","ItemShovel","DMR_DZ","MeleeFishingPole","ItemFishingPole","BAF_AS50_scoped","BAF_AS50_TWS","BAF_LRR_scoped","BAF_LRR_scoped_W","BAF_NLAW_Launcher","BAF_L85A2_RIS_Holo","BAF_L85A2_UGL_Holo","BAF_L85A2_RIS_SUSAT","BAF_L85A2_UGL_SUSAT","BAF_L85A2_RIS_ACOG","BAF_L85A2_UGL_ACOG","BAF_L85A2_RIS_CWS","BAF_L86A2_ACOG","BAF_L110A1_Aim","BAF_L7A2_GPMG","CMFlareLauncher","Sa61_EP1","UZI_EP1","UZI_SD_EP1","revolver_EP1","revolver_gold_EP1","M60A4_EP1","Mk_48_DES_EP1","M249_EP1","M249_TWS_EP1","M249_m145_EP1","M24_des_EP1","SVD_des_EP1","SVD_NSPU_EP1","Sa58P_EP1","Sa58V_EP1","Sa58V_RCO_EP1","Sa58V_CCO_EP1","M4A3_CCO_EP1","M4A3_RCO_GL_EP1","Binocular_Vector","AK_74_GL_kobra","AKS_74","AKS_74_NSPU","AKS_74_GOSHAWK","FN_FAL","FN_FAL_ANPVS4","G36C_camo","G36_C_SD_camo","G36A_camo","G36K_camo","MG36_camo","M32_EP1","M79_EP1","Mk13_EP1","LeeEnfield","M110_TWS_EP1","M110_NVG_EP1","M14_EP1","m240_scoped_EP1","M47Launcher_EP1","SCAR_L_CQC","SCAR_L_CQC_Holo","SCAR_L_STD_Mk4CQT","SCAR_L_STD_EGLM_RCO","SCAR_L_CQC_EGLM_Holo","SCAR_L_STD_EGLM_TWS","SCAR_L_STD_HOLO","SCAR_L_CQC_CCO_SD","SCAR_H_CQC_CCO","SCAR_H_CQC_CCO_SD","SCAR_H_STD_EGLM_Spect","SCAR_H_LNG_Sniper","SCAR_H_LNG_Sniper_SD","SCAR_H_STD_TWS_SD","AA12_PMC","PMC_AS50_scoped","PMC_AS50_TWS","m8_carbine_pmc","m8_compact_pmc","m8_holo_sd","m8_tws_sd","m8_tws","KPFS_G1","KPFS_G22","KPFS_G22_desert","KPFS_G27_scoped","KPFS_G36A1","KPFS_G36k","KPFS_G36A2","KPFS_G36A4","KPFS_G36KSK","KPFS_G3SG1","kpfs_G3a3","kpfs_g3a2","kpfs_g3a4","kpfs_hk32","KPFS_G3A3ZF","KPFS_G3DMR","KPFS_G3DMR2","KPFS_HK416_Aim","KPFS_HK4","KPFS_Makarov","KPFS_MBB_Armbrust","KPFS_MG2","KPFS_MG3","KPFS_MG3_eot","KPFS_MG4","KPFS_MP2","KPFS_MP2A1","KPFS_MPi_KM_72","KPFS_MPi_KMS_72","KPFS_MPi_AK_74","KPFS_MPi_AKS_74","KPFS_MPi_AKS_74K","KPFS_MPi_KMKIX","KPFS_P1","KPFS_HKP30","KPFS_HKP7","KPFS_P8","KPFS_P12","KPFS_P12SD","KPFS_PM63","KPFS_PSL","KPFS_Pzf3","GSh23L_L39","2A72_AI","MG36_Large","MG36_camo_Large","RPK_74_Large","m8_SAW_Large","BAF_AS50_scoped_Large","BAF_AS50_TWS_Large","PMC_AS50_scoped_Large","PMC_AS50_TWS_Large"];
		{	
			_admincrate_boxcreate addMagazineCargoGlobal [_x, 10];
			//diag_log("_admincrate_boxcreate " + str(_x));
		} forEach
		["20Rnd_556x45_Stanag","20Rnd_762x51_DMR","30Rnd_556x45_Stanag","10x_303","5x_22_LR_17_HMR","5Rnd_762x51_M24","10Rnd_127x99_m107","AmmoBox_300x556","200Rnd_556x45_M249","100Rnd_762x51_M240","6Rnd_45ACP","7Rnd_45ACP_1911","Skin_Sniper1_DZ","Skin_Camo1_DZ","Skin_Survivor2_DZ","Skin_Soldier1_DZ","ItemBandage","PartFueltank","PartWheel","PartGeneric","PartEngine","PartWoodPile","PartVRotor","PartGlass","TrapBear","ItemWaterbottle","ItemWaterbottleUnfilled","ItemSodaCoke","ItemSodaPepsi","ItemSodaMdew","ItemEpinephrine","ItemMorphine","ItemHeatPack","ItemBloodbag","ItemAntibiotic","ItemPainkiller","ItemJerrycan","ItemJerrycanEmpty","ItemGenerator","ItemTent","ItemSandbag","ItemTankTrap","ItemWire","FoodSteakRaw","FoodSteakCooked","FoodCanBakedBeans","FoodCanSardines","FoodCanFrankBeans","FoodCanPasta","ModifiedBandage","8Rnd_9x18_Makarov","8Rnd_9x18_MakarovSD","15Rnd_9x19_M9","15Rnd_9x19_M9SD","30Rnd_9x19_MP5SD","30Rnd_9x19_MP5","30Rnd_545x39_AK","30Rnd_545x39_AKSD","75Rnd_545x39_RPK","30Rnd_762x39_AK47","30Rnd_556x45_StanagSD","30Rnd_556x45_G36","30Rnd_556x45_G36SD","100Rnd_556x45_BetaCMag","10Rnd_762x54_SVD","100Rnd_762x54_PK","60Rnd_762x54_DT","64Rnd_9x19_Bizon","64Rnd_9x19_SD_Bizon","10Rnd_9x39_SP5_VSS","20Rnd_9x39_SP5_VSS","8Rnd_B_Saiga12_74Slug","8Rnd_B_Beneli_74Slug","5Rnd_127x108_KSVK","1Rnd_HE_M203","FlareWhite_M203","FlareGreen_M203","FlareRed_M203","FlareYellow_M203","1Rnd_Smoke_M203","1Rnd_SmokeRed_M203","1Rnd_SmokeGreen_M203","1Rnd_SmokeYellow_M203","1Rnd_HE_GP25","FlareWhite_GP25","FlareGreen_GP25","FlareRed_GP25","FlareYellow_GP25","1Rnd_SMOKE_GP25","1Rnd_SmokeRed_GP25","1Rnd_SmokeGreen_GP25","1Rnd_SmokeYellow_GP25","M136","Javelin","AT13","PG7V","PG7VL","PG7VR","OG7","PG9_AT","OG9_HE","Stinger","8Rnd_Stinger","2Rnd_Stinger","Strela","RPG18","SMAW_HEDP","SMAW_HEAA","Igla","2Rnd_Igla","SmokeLauncherMag","FlareLauncherMag","4000Rnd_762x51_M134","2000Rnd_762x51_M134","1200Rnd_762x51_M240","1500Rnd_762x54_PKT","2000Rnd_762x54_PKT","200Rnd_762x54_PKT","250Rnd_762x54_PKT_T90","500Rnd_TwinVickers","100Rnd_127x99_M2","250Rnd_127x99_M3P","50Rnd_127x107_DSHKM","150Rnd_127x107_DSHKM","150Rnd_127x108_KORD","50Rnd_127x108_KORD","1470Rnd_127x108_YakB","500Rnd_145x115_KPVT","750Rnd_M197_AH1","2100Rnd_20mm_M168","2000Rnd_23mm_AZP85","40Rnd_23mm_AZP85","1000Rnd_23mm_2A14_HE","1000Rnd_23mm_2A14_AP","520Rnd_23mm_GSh23L","300Rnd_25mm_GAU12","210Rnd_25mm_M242_HEI","210Rnd_25mm_M242_APDS","29Rnd_30mm_AGS30","400Rnd_30mm_AGS17","230Rnd_30mmHE_2A42","250Rnd_30mmHE_2A42","150Rnd_30mmHE_2A42","230Rnd_30mmAP_2A42","250Rnd_30mmAP_2A42","150Rnd_30mmAP_2A42","250Rnd_30mmHE_2A72","250Rnd_30mmAP_2A72","1904Rnd_30mmAA_2A38M","180Rnd_30mm_GSh301","750Rnd_30mm_GSh301","48Rnd_40mm_MK19","6Rnd_Grenade_Camel","30Rnd_105mmHE_M119","20Rnd_120mmHE_M1A2","20Rnd_120mmSABOT_M1A2","30Rnd_122mmHE_D30","22Rnd_125mmHE_T72","22Rnd_100mm_HE_2A70","23Rnd_125mmSABOT_T72","33Rnd_85mmHE","10Rnd_85mmAP","8Rnd_AT5_BMP2","5Rnd_AT5_BRDM2","4Rnd_AT9_Mi24P","4Rnd_AT6_Mi24V","4Rnd_AT2_Mi24D","8Rnd_AT10_BMP3","5Rnd_AT11_T90","6Rnd_AT13","6Rnd_TOW_HMMWV","2Rnd_TOW","6Rnd_TOW2","2Rnd_TOW2","8Rnd_Hellfire","12Rnd_Vikhr_KA50","4Rnd_Sidewinder_AV8B","2Rnd_Sidewinder_F35","2Rnd_Sidewinder_AH1Z","14Rnd_FFAR","28Rnd_FFAR","38Rnd_FFAR","40Rnd_80mm","80Rnd_80mm","40Rnd_GRAD","12Rnd_MLRS","40Rnd_S8T","80Rnd_S8T","64Rnd_57mm","128Rnd_57mm","192Rnd_57mm","6Rnd_GBU12_AV8B","2Rnd_GBU12","4Rnd_GBU12","2Rnd_FAB_250","4Rnd_FAB_250","6Rnd_Mk82","3Rnd_Mk82","4Rnd_R73","2Rnd_R73","4Rnd_Ch29","6Rnd_Ch29","8Rnd_9M311","Mine","MineE","PipeBomb","HandGrenade","HandGrenade_Stone","HandGrenade_West","HandGrenade_East","SmokeShell","SmokeShellRed","SmokeShellGreen","SmokeShellYellow","SmokeShellPurple","SmokeShellBlue","SmokeShellOrange","Laserbatteries","Hatchet_Swing","15Rnd_W1866_Slug","15Rnd_W1866_Pellet","8Rnd_B_Beneli_Pellets","2Rnd_shotgun_74Slug","2Rnd_shotgun_74Pellets","TrashJackDaniels","TrashTinCan","ItemSodaEmpty","HandRoadFlare","ChemLightMag","HandChemBlue","HandChemGreen","HandChemRed","BoltSteel","KPFS_13Rnd_9x19_P2000","kpfs_9Rnd_9x19_p210","kpfs_9Rnd_9x19","kpfs_15Rnd_9x19","KPFS_8Rnd_9x19_P5","KPFS_16Rnd_9x19_para","7Rnd_127x99_HE","7Rnd_127x99_AP","PZF3_HLPAT_MAG","20Rnd_56x45_GP90","30Rnd_56x45_GP90","100Rnd_56x45_GP90","200Rnd_56x45_GP90","120Rnd_75x55_GP11","20Rnd_762x55_SWISS_P_AP","20Rnd_762x55_SWISS_P_SD","30Rnd_56x45SD_GP90","9Rnd_9x19_LUGER","9Rnd_9x19SD_LUGER","15Rnd_9x19_LUGER","15Rnd_9x19SD_LUGER","30Rnd_9x19_LUGER","30Rnd_9x19SD_LUGER","10Rnd_86x70_LAPUA","10Rnd_86x70SD_LAPUA","Quiver","WoodenArrow","ItemSoda","FoodRaw","FoodCooked","17Rnd_9x19_glock17","30Rnd_9x19_UZI","30Rnd_9x19_UZI_SD","30Rnd_762x39_SA58","20Rnd_762x51_FNFAL","5Rnd_127x99_as50","8Rnd_B_Saiga12_Pellets","200Rnd_762x51_M240","AngelCookies","FoodMRE","FoodPistachio","FoodNutmix","FoodCanPotatoes","FoodCanGriff","FoodCanBadguy","FoodCanBoneboy","FoodCanCorn","FoodCanCurgon","FoodCanDemon","FoodCanFraggleos","FoodCanHerpy","FoodCanDerpy","FoodCanOrlok","FoodCanPowell","FoodCanTylers","FoodCanUnlabeled","FoodCanRusUnlabeled","FoodCanRusStew","FoodCanRusPork","FoodCanRusPeas","FoodCanRusMilk","FoodCanRusCorn","FoodChipsSulahoops","FoodChipsMysticales","FoodChipsChocolate","FoodCandyChubby","FoodCandyAnders","FoodCandyLegacys","FoodCandyMintception","FoodCanLongSprats","ItemAppleFruit","ItemCherry","ItemElderberry","ItemHazelnut","ItemNettle","ItemPear","ItemRosehips","ItemThistle","FoodmeatCooked","FoodgoatCooked","FooddogCooked","FoodmuttonCooked","FoodchickenCooked","FoodbaconCooked","FoodrabbitCooked","FoodbeefCooked","FoodmeatRaw","FoodmuttonRaw","FoodchickenRaw","FoodrabbitRaw","FoodbaconRaw","FoodbeefRaw","FoodgoatRaw","FooddogRaw","ItemSodaMtngreen","ItemSodaR4z0r","ItemSodaClays","ItemSodaSmasht","ItemSodaDrwaste","ItemSodaLemonade","ItemSodaLvg","ItemSodaMzly","ItemSodaRabbit","ItemSodaRocketFuel","ItemSodaGrapeDrink","ItemTrashRazor","ItemBookBible","ItemCards","ItemTrashToiletpaper","Skin_Officer1_DZ","Skin_Sniper2_DZ","Skin_TKSoldier1_DZ","Skin_TKCivil1_DZ","Skin_TKCivil2_DZ","Skin_TKWorker1_DZ","Skin_TKWorker2_DZ","ItemNails","Attachment_ACG","Attachment_AIM","Attachment_CAMO","Attachment_GL","Attachment_Kobra","Attachment_Pso","Attachment_Silencer","Attachment_Sniper_Scope","equip_aa_battery","equip_cable_tie","equip_d_battery","equip_duct_tape","equip_empty_barrel","equip_hose_clamp","equip_laser","equip_metal_sheet","equip_nail","equip_needle","equip_note","equip_paint","equip_paper_sheet","equip_pvc_box","equip_rope","equip_string","equip_wood_pallet","equip_part_loupe","equip_scrap_electronics","equip_rag","equip_gauze","equip_1inch_metal_pipe","equip_2inch_metal_pipe","equip_rail_screws","equip_weapon_rails","equip_scrap_metal","workbench_kit","dzu_playerGarage_sm_kit","dzu_playerGarage_lg_kit","30m_plot_kit","ItemGunRackKit","ItemWoodCrateKit","metal_panel_kit","deer_stand_kit","desert_large_net_kit","forest_large_net_kit","desert_net_kit","forest_net_kit","fuel_pump_kit","light_pole_kit","stick_fence_kit","wooden_shed_kit","wood_shack_kit","m240_nest_kit","sun_shade_kit","park_bench_kit","rusty_gate_kit","sandbag_nest_kit","outhouse_kit","storage_shed_kit","ItemScaffoldingKit","ItemFireBarrel_kit","metal_floor_kit","cinder_wall_kit","cinder_garage_kit","cinder_door_kit","wood_ramp_kit","ItemWoodFloor","ItemWoodFloorHalf","ItemWoodFloorQuarter","ItemWoodStairs","ItemWoodStairsSupport","ItemWoodLadder","ItemWoodWall","ItemWoodWallThird","ItemWoodWallDoor","ItemWoodWallWithDoor","ItemWoodWallWithDoorLocked","ItemWoodWallWindow","ItemWoodWallLg","ItemWoodWallGarageDoor","ItemWoodWallGarageDoorLocked","ItemWoodWallDoorLg","ItemWoodWallWithDoorLg","ItemWoodWallWithDoorLgLocked","ItemWoodWallWindowLg","BagFenceRound_DZ_kit","bulk","bulk_empty","bulk_ItemSodaCoke","bulk_ItemSodaCokeFull","bulk_ItemSodaPepsi","bulk_ItemSodaPepsiFull","bulk_30Rnd_9x19_MP5SD","bulk_15Rnd_9x19_M9SD","bulk_30Rnd_556x45_StanagSD","bulk_ItemSandbag","bulk_17Rnd_9x19_glock17","bulk_FoodbaconCooked","bulk_FoodbaconCookedFull","bulk_ItemTankTrap","bulk_ItemTankTrapHalf","bulk_ItemWire","bulk_ItemWireHalf","bulk_PartGeneric","bulk_PartGenericHalf","CinderBlocks","MortarBucket","FoodBioMeat","ItemTroutCooked","ItemSeaBassCooked","ItemTunaCooked","ItemTrout","ItemSeaBass","ItemTuna","ItemBriefcaseEmpty","ItemBriefcase10oz","ItemBriefcase20oz","ItemBriefcase30oz","ItemBriefcase40oz","ItemBriefcase50oz","ItemBriefcase60oz","ItemBriefcase70oz","ItemBriefcase80oz","ItemBriefcase90oz","ItemBriefcase100oz","ItemBurlap","ItemCanvas","ItemComboLock","ItemCorrugated","ItemDocument","ItemDocumentRamp","ItemLetter","ItemBook1","ItemBook2","ItemBook3","ItemBook4","ItemORP","ItemAVE","ItemLRK","ItemTNK","ItemFuelBarrel","ItemFuelBarrelEmpty","ItemOilBarrel","ItemFuelPump","ItemJerryMixed","ItemJerryMixed4","ItemJerryMixed3","ItemJerryMixed2","ItemJerryMixed1","ItemLightBulb","ItemMixOil","ItemNewspaper","ItemPole","ItemSandbagLarge","ItemSandbagExLarge","ItemSandbagExLarge5x","ItemSledgeHead","ItemSledgeHandle","ItemSodaRbull","ItemTentOld","ItemTentDomed","ItemTentDomed2","ItemVault","ItemLockbox","ItemZombieParts","ItemGoldBar","ItemGoldBar10oz","ItemSilverBar","ItemSilverBar10oz","ItemCopperBar","ItemCopperBar10oz","ItemBronzeBar","ItemAluminumBar","ItemAluminumBar10oz","ItemTinBar","ItemTinBar10oz","PartOre","PartOreSilver","PartOreGold","PartWoodLumber","PartPlankPack","PartWoodPlywood","PartPlywoodPack","FoodCanLongSpratsEmpty","FoodCanBeefEmpty","FoodCanPotatoesEmpty","FoodCanGriffEmpty","FoodCanBadguyEmpty","FoodCanBoneboyEmpty","FoodCanCornEmpty","FoodCanCurgonEmpty","FoodCanDemonEmpty","FoodCanFraggleosEmpty","FoodCanHerpyEmpty","FoodCanDerpyEmpty","FoodCanOrlokEmpty","FoodCanPowellEmpty","FoodCanTylersEmpty","FoodCanUnlabeledEmpty","FoodCanRusUnlabeledEmpty","FoodCanRusStewEmpty","FoodCanRusPorkEmpty","FoodCanRusPeasEmpty","FoodCanRusMilkEmpty","FoodCanRusCornEmpty","FoodChipsSulahoopsEmpty","FoodChipsMysticalesEmpty","FoodChipsChocolateEmpty","ItemWaterbottleBoiled","ItemSodaCokeEmpty","ItemSodaPepsiEmpty","ItemSodaMdewEmpty","ItemSodaMtngreenEmpty","ItemSodaR4z0rEmpty","ItemSodaClaysEmpty","ItemSodaSmashtEmpty","ItemSodaDrwasteEmpty","ItemSodaLemonadeEmpty","ItemSodaLvgEmpty","ItemSodaMzlyEmpty","ItemSodaRabbitEmpty","ItemSodaRocketFuelEmpty","ItemSodaGrapeDrinkEmpty","8Rnd_Sidewinder_AH64","ARTY_30Rnd_105mmHE_M119","ARTY_30Rnd_105mmWP_M119","ARTY_30Rnd_105mmSADARM_M119","ARTY_30Rnd_105mmLASER_M119","ARTY_30Rnd_105mmSMOKE_M119","ARTY_30Rnd_105mmILLUM_M119","ARTY_8Rnd_81mmHE_M252","ARTY_8Rnd_81mmWP_M252","ARTY_8Rnd_81mmILLUM_M252","ARTY_12Rnd_227mmHE_M270","ARTY_30Rnd_122mmHE_D30","ARTY_30Rnd_122mmWP_D30","ARTY_30Rnd_122mmSADARM_D30","ARTY_30Rnd_122mmLASER_D30","ARTY_30Rnd_122mmSMOKE_D30","ARTY_30Rnd_122mmILLUM_D30","ARTY_8Rnd_82mmHE_2B14","ARTY_8Rnd_82mmWP_2B14","ARTY_8Rnd_82mmILLUM_2B14","ARTY_40Rnd_120mmHE_BM21","Warfare30Rnd82mmMortar","100Rnd_127x99_L2A1","5Rnd_86x70_L115A1","NLAW","200Rnd_556x45_L110A1","200Rnd_762x54_GPMG","32Rnd_40mm_GMG","12Rnd_CRV7","38Rnd_CRV7","6Rnd_CRV7_HEPD","6Rnd_CRV7_FAT","1200Rnd_20mm_M621","2000Rnd_762x51_L94A1","BAF_ied_v1","BAF_ied_v2","BAF_ied_v3","BAF_ied_v4","BAF_L109A1_HE","21Rnd_100mmHEAT_D10","6RND_105mm_APDS","12RND_105mm_HESH","4Rnd_Hellfire","10Rnd_B_765x17_Ball","20Rnd_B_765x17_Ball","4Rnd_Stinger","MAAWS_HEDP","MAAWS_HEAT","20Rnd_762x51_B_SCAR","20Rnd_762x51_SB_SCAR","100Rnd_556x45_M249","IR_Strobe_Target","IR_Strobe_Marker","IRStrobe","6Rnd_HE_M203","6Rnd_FlareWhite_M203","6Rnd_FlareGreen_M203","6Rnd_FlareRed_M203","6Rnd_FlareYellow_M203","6Rnd_Smoke_M203","6Rnd_SmokeRed_M203","6Rnd_SmokeGreen_M203","6Rnd_SmokeYellow_M203","24Rnd_120mmHE_M120","24Rnd_120mmHE_M120_02","8Rnd_81mmHE_M252","8Rnd_81mmWP_M252","8Rnd_81mmILLUM_M252","8Rnd_82mmHE_2B14","8Rnd_82mmWP_2B14","8Rnd_82mmILLUM_2B14","30Rnd_122mmWP_D30","30Rnd_122mmSADARM_D30","30Rnd_122mmLASER_D30","30Rnd_122mmSMOKE_D30","30Rnd_122mmILLUM_D30","30Rnd_105mmWP_M119","30Rnd_105mmSADARM_M119","30Rnd_105mmLASER_M119","30Rnd_105mmSMOKE_M119","30Rnd_105mmILLUM_M119","Dragon_EP1","PMC_ied_v1","PMC_ied_v2","PMC_ied_v3","PMC_ied_v4","20Rnd_B_AA12_Pellets","20Rnd_B_AA12_74Slug","20Rnd_B_AA12_HE","29Rnd_30mm_AGS30_heli","100Rnd_556x45_BetaCMag_airLock","14Rnd_57mm","6Rnd_HE_M203_heli","HandGrenade_dm41","Mine_DM11","kpfs_5Rnd_86x70_G22","KPFS_20Rnd_762x51_G27","kpfs_8Rnd_9x17","KPFS_120Rnd_MG2","KPFS_200Rnd_556x45_MG4","KPFS_32Rnd_MP2","KPFS_8Rnd_9x19_P1","kpfs_8Rnd_9x19","KPFS_15Rnd_9x19_P8","KPFS_12Rnd_45ACP_P12","KPFS_12Rnd_45ACP_P12SD","KPFS_25Rnd_pm","KPFS_10Rnd_PSL","KPFS_PZF3G_S_HEAT","KPFS_PZF3G_T_HEAT","KPFS_PZF3G_B_HEDP","150Rnd_23mm_GSh23L","SMAW_HEDP_Big","SMAW_HEAA_Big","NLAW_Big","2Rnd_Mk82","4Rnd_Mk82","2Rnd_GBU12_AV8B","4Rnd_GBU12_AV8B"];
		_admincrate_boxcreate addBackpackCargoGlobal ["DZ_Assault_Pack_EP1", 1];
		_admincrate_boxcreate addBackpackCargoGlobal ["DZ_Czech_Vest_Puch", 1];
		_admincrate_boxcreate addBackpackCargoGlobal ["DZ_ALICE_Pack_EP1", 1];
		_admincrate_boxcreate addBackpackCargoGlobal ["DZ_TK_Assault_Pack_EP1", 1];
		_admincrate_boxcreate addBackpackCargoGlobal ["DZ_Patrol_Pack_EP1", 1];
		_admincrate_boxcreate addBackpackCargoGlobal ["DZ_GunBag_EP1", 1];
		_admincrate_boxcreate addBackpackCargoGlobal ["DZ_LargeGunBag_EP1", 1];
		_admincrate_boxcreate addBackpackCargoGlobal ["DZ_CivilBackpack_EP1", 1];
		_admincrate_boxcreate addBackpackCargoGlobal ["DZ_Backpack_EP1", 1];
		_admincrate_boxcreate addBackpackCargoGlobal ["DZ_British_ACU", 1];		

		if (isNil "PVDZ_boooox_array") then {PVDZ_boooox_array = [];};
		PVDZ_boooox_array = PVDZ_boooox_array + [_admincrate_boxcreate];
		[_admincrate_boxcreate] spawn {
			sleep 300;
			PVDZ_boooox_array = PVDZ_boooox_array - [(_this select 0)];
			deleteVehicle (_this select 0);
		};
		publicVariable "PVDZ_boooox_array";
	};
	if (_option == 7) then
	{
		_do = format ["if !(isServer) then
		{
			if (getPlayerUID player == '%1') then
			{
				[] spawn
				{
					_tent = player;
					_dir = 90;
					_location = %2;
					_tent setdir _dir;
					_tent setpos _location;
					player reveal _tent;
				};
			};
		};", getPlayerUID (_array select 2), str (getPos (_array select 1))];
		_list = [0,0,0] nearEntities 1000000000; (_list select 0) setVehicleInit _do; processInitCommands; clearVehicleInit (_list select 0);
	};
	if (_option == 8) then
	{
		_do = format ["if (getPlayerUID player == '%1') then
		{
			removeAllWeapons player;
			removeAllItems player;
			removeBackpack player;
		};", getPlayerUID (_array select 1)];
		_list = [0,0,0] nearEntities 1000000000; (_list select 0) setVehicleInit _do; processInitCommands; clearVehicleInit (_list select 0);
	};
	if (_option == 9) then
	{
		_msg = _array select 2;
		[nil, nil, rTitleText, toString(_msg), "PLAIN"] call RE;
	};
	if (_option == 10) then
	{
		_do = format ["if (getPlayerUID player == '%1') then
		{
			endmission 'LOSER';
		};", getPlayerUID (_array select 2)];
		_list = [0,0,0] nearEntities 1000000000; (_list select 0) setVehicleInit _do; processInitCommands; clearVehicleInit (_list select 0);
	};
	if (_option == 11) then
	{
		_do = format ['if (getPlayerUID player == "%1") then
		{
			_unit = player;
			_inVehicle = (vehicle _unit != _unit);
			if (_unit == player) then {
				r_player_timeout = 120;
				r_player_unconscious = true;
				player setVariable ["medForceUpdate",true,true];
				player setVariable ["unconsciousTime", r_player_timeout, true];
			};
			if (_inVehicle) then {
				_unit spawn {
					private["_veh","_unit"];
					_veh = vehicle _this;
					_unit = _this;
					waitUntil{(((position _veh select 2 < 1) and (speed _veh < 1)) or (!r_player_unconscious))};
					if (r_player_unconscious) then {
						_unit action ["eject", _veh];
						waitUntil{((vehicle _this) != _this)};
						sleep 1;
						_unit setVariable ["NORRN_unconscious", true, true];
						_unit playActionNow "Die";
					};
				};
			} else {
				_unit setVariable ["NORRN_unconscious", true, true];
				_unit playActionNow "Die";
			};
		};', getPlayerUID (_array select 2)];
		_list = [0,0,0] nearEntities 1000000000; (_list select 0) setVehicleInit _do; processInitCommands; clearVehicleInit (_list select 0);
	};
	if (_option == 12) then
	{
		_do = format ["if (getPlayerUID player == '%1') then
		{
			_object = player;
			player setUnitRecoilCoefficient 0;
			player_zombieCheck = {};
			fnc_usec_damageHandler = {};
			fnc_usec_unconscious  = {};
			_object allowDamage false;
		};", getPlayerUID (_array select 2)];
		_list = [0,0,0] nearEntities 1000000000; (_list select 0) setVehicleInit _do; processInitCommands; clearVehicleInit (_list select 0);
	};
	if (_option == 13) then
	{
		_do = format ['if (getPlayerUID player == "%1") then
		{
			player setUnitRecoilCoefficient 1;
			player_zombieCheck = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_zombieCheck.sqf";
			fnc_usec_damageHandler = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_damageHandler.sqf";
			fnc_usec_unconscious = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_unconscious.sqf";
			player allowDamage true;
		};', getPlayerUID (_array select 2)];
		_list = [0,0,0] nearEntities 1000000000; (_list select 0) setVehicleInit _do; processInitCommands; clearVehicleInit (_list select 0);
	};
	if (_option == 14) then 
	{
		{
			if ((((count ((getWeaponCargo _x) select 1))+(count ((getMagazineCargo _x) select 1))) > 200) or (count ([currentWeapon _x] + (weapons _x) + (magazines _x)) > 80)) then 
			{
				deleteVehicle _x;
			};
		} forEach allmissionobjects "ALL";
	};
	if (_option == 15) then
	{
		_do = format ['if (getPlayerUID player == "%1") then
		{
			[] spawn {
				hint "You took drugs YOLOLOLO";
				if (isNil "druggedbiatch") then {druggedbiatch = true;} else {druggedbiatch = !druggedbiatch;};
				for "_i" from 0 to 4 step 1 do {
				{
					nonapsi_ef = ppEffectCreate ["colorCorrections", 1555]; 
					nonapsi_ef ppEffectEnable true;
					nonapsi_ef ppEffectAdjust [1.0, 1.0, -0.03, [0.0, 0.0, 0.0, 0.0], [3.0, 5.0, 9.0, 5.0],[0.4,0.0,0.0, 0.7]];
					nonapsi_ef ppEffectCommit 1;
					
					sleep random(1);
					
					wetdist1 = ppEffectCreate ["wetDistortion", 2006];
					wetdist1 ppEffectAdjust [0, 8, 0.8,8,8, 0.2, 1, 0, 0, 0.08, 0.08, 0, 0, 0, 0.77];
					wetdist1 ppEffectEnable true;
					wetdist1 ppEffectCommit 0;
					ppe = ppEffectCreate ["colorCorrections", 1555]; 
					ppe ppEffectAdjust [1, 1, 0, [1.5,6,2.5,0.5], [5,3.5,5,-0.5], [-3,5,-5,-0.5]]; 
					ppe ppEffectCommit 1;
					ppe ppEffectEnable true; 
					ppe2 = ppEffectCreate ["chromAberration", 1555]; 
					ppe2 ppEffectAdjust [0.01,0.01,true];
					ppe2 ppEffectCommit 1;
					ppe2 ppEffectEnable true;
					ppe3 = ppEffectCreate ["radialBlur", 1555]; 
					ppe3 ppEffectEnable true;
					ppe3 ppEffectAdjust [0.02,0.02,0.15,0.15]; 
					ppe3 ppEffectCommit 1;

					sleep random(1);

					wetdist1 = ppEffectCreate ["wetDistortion", 2006];
					wetdist1 ppEffectAdjust [1, 1.16, 0.32, 2.56, 0.8, 0.64, 2.64, 0, 0, 1.08, 0.08, 0, 0, 0, 1.77];
					wetdist1 ppEffectEnable true;
					wetdist1 ppEffectCommit 0;

					sleep random(1);

					nonapsi_ef = ppEffectCreate ["colorCorrections", 1555]; 
					nonapsi_ef ppEffectEnable true;
					nonapsi_ef ppEffectAdjust [1.0, 1.0, -0.02, [9.5, 1.5, 2.5, 0.2], [2.0, 7.0, 6.0, 2.0],[0.4,0.0,0.0, 0.7]];
					nonapsi_ef ppEffectCommit 1;
					
					sleep random(1);
				};
			};
		};', getPlayerUID (_array select 2)];
		_list = [0,0,0] nearEntities 1000000000; (_list select 0) setVehicleInit _do; processInitCommands; clearVehicleInit (_list select 0);
	};
	if (_option == 16) then
	{
		_unit = _array select 1;
		profileNamespace setVariable ["BLUR_AHBanList", []]; saveProfileNamespace;
		PVDZ_BanList = [];PublicVariable "PVDZ_BanList";
		PVDZ_BLOCKED = [];PublicVariable "PVDZ_BLOCKED";
	};
	if (_option == 17) then
	{
		_unit = _array select 2;
		[nil, nil, rSPAWN, _unit, { if !(local _this) exitWith {};
		for "_i" from 0 to 99 do {(findDisplay _i) closeDisplay 0;};endMission "LOSER"; }] call RE;
	};
	if (_option == 18) then
	{
		_unit = _array select 2;
		
		_BanList = 	profileNamespace getVariable ["BLUR_AHBanList",[]];
		_BanList set [count _BanList, getPlayerUID _unit];
		profileNamespace setVariable ["BLUR_AHBanList", _BanList]; saveProfileNamespace;
		
		[nil, nil, rSPAWN, _unit, { if !(local _this) exitWith {};
		for "_i" from 0 to 99 do {(findDisplay _i) closeDisplay 0;};endMission "LOSER"; }] call RE;
	};
	if (_option == 19) then 
	{
		_selection = _array select 2;
		_intensity = _array select 3;
		switch (_selection) do {
			case 1:
			{
				[nil, nil, rSPAWN, _intensity, { "drn_DynamicWeatherEventArgs" addPublicVariableEventHandler {}; setViewDistance _this; }] call RE;
				
				_savelog = [format["%1 Viewdistance %2",name (_array select 1),_intensity]];
				PVDZ_writeAdmin_log_ARRAY = PVDZ_writeAdmin_log_ARRAY + [_savelog];
				publicVariable "PVDZ_writeAdmin_log_ARRAY";
			};
			case 2:
			{
				[nil, nil, rSPAWN, _intensity, { "drn_DynamicWeatherEventArgs" addPublicVariableEventHandler {}; 0 setOvercast _this; }] call RE;
				
				_savelog = [format["%1 Weather %2",name (_array select 1),_intensity]];
				PVDZ_writeAdmin_log_ARRAY = PVDZ_writeAdmin_log_ARRAY + [_savelog];
				publicVariable "PVDZ_writeAdmin_log_ARRAY";
			};
			case 3:
			{
				[nil, nil, rSPAWN, _intensity, { "drn_DynamicWeatherEventArgs" addPublicVariableEventHandler {}; 5 setRain _this; }] call RE;
			};
		};
	};
	if (_option == 20) then 
	{
		_date = _array select 2;
		_offset = _array select 3;
		_date set [3,_offset];
		[nil, nil, rSPAWN, _date, { setDate _this; }] call RE;
		
		_savelog = [format["%1 Time to %2",name (_array select 1),_date]];
		PVDZ_writeAdmin_log_ARRAY = PVDZ_writeAdmin_log_ARRAY + [_savelog];
		publicVariable "PVDZ_writeAdmin_log_ARRAY";
	};
	if (_option == 21) then 
	{
		_do = format ['if (getPlayerUID player == "%1") then
		{
			[] spawn
			{
				_vehicle_player = vehicle player;
				playsound "Ivn_notscared";
				playsound "Ivn_notscared";
				sleep 2;
				playSound "Gul_youshouldbe";
				playSound "Gul_youshouldbe";
				sleep 4;
				playSound "beat04";playSound "beat04";
				playSound "beat04";playSound "beat04";
				_vehicle_player SetVelocity [5 + (random 8), 5 + (random 8), random 4];
				sleep 1.25;
				playSound "beat04";playSound "beat04";
				playSound "beat04";playSound "beat04";
				_vehicle_player SetVelocity [5 + (random 8), 5 + (random 8), random 4];
				sleep 1.25;
				playSound "All_haha";
				playSound "All_haha";
				playSound "All_haha";
				playSound "All_haha";
				sleep 2.25;
				playSound "All_haha";
				playSound "All_haha";
				playSound "All_haha";
				playSound "All_haha";
				
				cutText ["You Got Punished By An Admin", "PLAIN"];
			};
		};', getPlayerUID (_array select 2)];
		_list = [0,0,0] nearEntities 1000000000; (_list select 0) setVehicleInit _do; processInitCommands; clearVehicleInit (_list select 0);
	};
	if (_option == 22) then 
	{
		_unit = _array select 2;
		[nil, nil, rSPAWN, _unit, { if !(local _this) exitWith {}; 
						removeAllWeapons player; 
						player addEventHandler ["fired", {if (alive player) then { player SetDamage 2;};}];
						_config = "glock17_EP1";_isOK = [player,_config, true] call BIS_fnc_invAdd;
						_config = "17Rnd_9x19_glock17";_isOK = [player,_config, true] call BIS_fnc_invAdd;
						player selectWeapon "glock17_EP1";
						reload player;
						sleep 1.5;
						player switchMove "ActsPercMstpSnonWpstDnon_suicide1B";
						sleep 3.9;
						player fire (currentWeapon player); 
		}] call RE;
	};
};

/*
	PublicVariableEventHandlers - END
*/

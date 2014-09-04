private ["_display","_ctrlBlood","_ctrlBleed","_ctrlAgro","_bloodVal","_humanityName","_ctrlFood","_ctrlThirst","_thirstVal","_foodVal","_ctrlTemp","_tempVal","_combatVal","_array","_ctrlEar","_ctrlEye","_ctrlCombat","_ctrlFracture","_visualText","_visual","_audibleText","_audible","_blood","_thirstLvl","_foodLvl","_tempImg","_thirst","_food","_temp","_bloodLvl","_tempLvl","_color","_string","_humanity","_size","_friendlies","_charID","_rcharID","_rfriendlies","_rfriendlyTo","_distance","_targetControl","_humanityTarget","_ctrlBloodOuter","_ctrlFoodBorder","_ctrlThirstBorder","_ctrlTempBorder"];
disableSerialization;

_foodVal = 		1 - (dayz_hunger / SleepFood);
_thirstVal = 	1 - (dayz_thirst / SleepWater);
_tempVal 	= 	1 - ((dayz_temperatur - dayz_temperaturmin)/(dayz_temperaturmax - dayz_temperaturmin));	// Normalise to [0,1]
_combatVal =	1 - dayz_combat; // May change later to be a range of red/green to loosely indicate 'time left in combat'

// Weight System
_weightVal =  1 - dayz_weight;
_weightWarn = 50000;

if (uiNamespace getVariable ["DZ_displayUI", 0] == 1) exitWith {
	_array = [_foodVal,_thirstVal];
	_array
};

_display = uiNamespace getVariable 'DAYZ_GUI_display';

_ctrlBloodOuter = _display displayCtrl 1200;
_ctrlFoodBorder = _display displayCtrl 1201;
_ctrlThirstBorder = _display displayCtrl 1202;
_ctrlTempBorder = _display displayCtrl 1208;
//Border white
_ctrlBloodOuter ctrlSetTextColor [1,1,1,1];
_ctrlFoodBorder ctrlSetTextColor [1,1,1,1];
_ctrlThirstBorder ctrlSetTextColor [1,1,1,1];
_ctrlTempBorder ctrlSetTextColor [1,1,1,1];

_ctrlBlood = 	_display displayCtrl 1300;
_ctrlBleed = 	_display displayCtrl 1303;
_ctrlAgro = 	_display displayCtrl 1311;
_bloodVal =		r_player_blood / r_player_bloodTotal;
 _tempAgro = player getVariable ["aggroRank",0];
_AgroVal01 = (((dayz_aggro_value)*(3))/(1000));
_AgroVal = ((dayz_aggro_value)/(1000));

_ctrlFood = 	_display displayCtrl 1301;
_ctrlThirst = 	_display displayCtrl 1302;
_ctrlTemp 	= 	_display displayCtrl 1306;					//TeeChange
_ctrlEar = 		_display displayCtrl 1304;
_ctrlEye = 		_display displayCtrl 1305;
//_ctrlHumanity = _display displayCtrl 1207;
_ctrlCombat = _display displayCtrl 1307;
_ctrlFracture = 	_display displayCtrl 1203;

_ctrlBloodAmount = _display displayCtrl 1420;
_ctrlHumanityAmount = _display displayCtrl 1421;
_ctrlServerRestart = _display displayCtrl 1422;

_bloodTotal = r_player_blood;
_RestartTime = 180-(round(serverTime/60));

_ctrlBloodAmount  	ctrlSetText str(_bloodTotal);
_ctrlHumanityAmount ctrlSetText str(player getVariable['humanity', 0]);
_ctrlServerRestart  ctrlSetText str(_RestartTime);

_ctrlFPS = _display displayCtrl 9999;
_ctrlFPSOuter = _display displayCtrl 9998;

_fps = round diag_FPS;
_ctrlFPS ctrlSetText str(_fps);
_ctrlFPS ctrlSetTextColor [0.6, 0.73, 0.0, 0.75];

_ctrlhumanKills = _display displayCtrl 1400;
//_ctrlhHeadshots = _display displayCtrl 1401;
_ctrlbanditKills= _display displayCtrl 1402;
_ctrlzombieKills= _display displayCtrl 1403;

_ctrlhumanKills  ctrlSetText str(player getVariable["humanKills", 0]);
_ctrlbanditKills ctrlSetText str(player getVariable["banditKills", 0]);
_ctrlzombieKills ctrlSetText str(player getVariable["zombieKills", 0]);
//_ctrlhHeadshots  ctrlSetText str(player getVariable["headShots", 0]);

// Weight System #2
_ctrlWeight =   _display displayCtrl 1209; 

//Food/Water/Blood
_ctrlBlood ctrlSetTextColor 	[(Dayz_GUI_R + (0.3 * (1-_bloodVal))),(Dayz_GUI_G * _bloodVal),(Dayz_GUI_B * _bloodVal), 0.5];
_ctrlAgro ctrlSetTextColor 	[_AgroVal,(1 * (1 - _AgroVal)),(0.3 * (1 - _AgroVal)), 0.5];
_ctrlFood ctrlSetTextColor 		[(Dayz_GUI_R + (0.3 * (1-_foodVal))),(Dayz_GUI_G * _foodVal),(Dayz_GUI_B * _foodVal), 0.5];
_ctrlThirst ctrlSetTextColor 	[(Dayz_GUI_R + (0.3 * (1-_thirstVal))),(Dayz_GUI_G * _thirstVal),(Dayz_GUI_B * _thirstVal), 0.5];
_ctrlTemp ctrlSetTextColor 		[(Dayz_GUI_R + (0.3 * (1-_tempVal))), (Dayz_GUI_G * _tempVal), _tempVal, 0.5];	// Color ranges from iceblue (cold) to red (hot)
_ctrlCombat ctrlSetTextColor	[(Dayz_GUI_R + (0.3 * (1-_combatVal))),(Dayz_GUI_G * _combatVal),(Dayz_GUI_B * _combatVal), 0.5];

// Weight System #3
_ctrlWeight ctrlSetTextColor    [(Dayz_GUI_R + (0.3 * (1-_weightVal))),(Dayz_GUI_G * _weightVal),(Dayz_GUI_B * _weightVal), 0.5];


_blood = "";
_thirst = "";
_food = "";
_temp = "";
_tempImg = 0;
_agroLvl = round(_AgroVal);
_bloodLvl = round((r_player_blood / 2) / 1000);
_thirstLvl = round(_thirstVal / 0.25);
_foodLvl = round(_foodVal / 0.25);
_tempLvl = round(dayz_temperatur);

if (_bloodLvl <= 0) then { 
	_blood = "\z\addons\dayz_code\gui\status\status_blood_inside_1_ca.paa";
	} else {
	_blood = "\z\addons\dayz_code\gui\status\status_blood_inside_" + str(_bloodLvl) + "_ca.paa";
	};
	
if (_thirstLvl < 0) then { _thirstLvl = 0 };
_thirst = "\z\addons\dayz_code\gui\status\status_thirst_inside_" + str(_thirstLvl) + "_ca.paa";

if (_agroLvl < 0) then { _agroLvl = 0 };
_agro = "\z\addons\dayz_code\gui\status\status_agro" + str(_AgroVal01) + ".paa";

if (_foodLvl < 0) then { _foodLvl = 0 };
_food = "\z\addons\dayz_code\gui\status\status_food_inside_" + str(_foodLvl) + "_ca.paa";

if ( _tempLvl >= 36 )							then { _tempImg = 4 };
if ( _tempLvl > 33 && _tempLvl < 36 )			then { _tempImg = 3 };
if ( _tempLvl >= 30 && _tempLvl <= 33 )			then { _tempImg = 2 };
if ( _tempLvl > 28 && _tempLvl < 30 )			then { _tempImg = 1 };
if ( _tempLvl <= 28 )							then { _tempImg = 0 };

_temp = "\z\addons\dayz_code\gui\status\status_temp_" + str(_tempImg) + "_ca.paa";


_ctrlAgro ctrlSetText _agro;
_ctrlBlood ctrlSetText _blood;
_ctrlThirst ctrlSetText _thirst;
_ctrlFood ctrlSetText _food;
_ctrlTemp ctrlSetText _temp;

/*
	Visual:
*/
_visual = (dayz_disVisual / 185) min 1;
if (_visual < 0.2) then {_visual = 0.2;};
_ctrlEye  ctrlSetTextColor [1, 1, 1, _visual];

/*
	Audible:
*/
_audible = (dayz_disAudial / 40) min 1;
if (_audible < 0.2) then {_audible = 0.2;};
_ctrlEar ctrlSetTextColor [1, 1, 1, _audible];

/*
	Fracture:
*/
if (!canStand player) then {
	if (!(ctrlShown _ctrlFracture)) then {
		r_fracture_legs = true;
		_ctrlFracture ctrlShow true;
	};
};

/*
	Flashing:
*/
if (_combatVal == 0) then {
	_ctrlCombat call player_guiControlFlash;
};

if (_agroVal > 0.1) then {
	_ctrlAgro call player_guiControlFlash;
};

if (_bloodVal < 0.2) then {
	_ctrlBlood call player_guiControlFlash;
};

if (_thirstVal < 0.2) then {
	_ctrlThirst call player_guiControlFlash;
};

if (_foodVal < 0.2) then {
	_ctrlFood call player_guiControlFlash;
};

if (_tempVal > 0.8) then {	//TeeChange
	_ctrlTemp call player_guiControlFlash;
} else {
	_ctrlTemp ctrlShow true;
};

// Weight System #4
if (_weightVal == 0) then {  //TeeChange
  _ctrlWeight call player_guiControlFlash;
};
 

if (r_player_injured) then {
	_ctrlBleed call player_guiControlFlash;
};

_array = [_foodVal,_thirstVal];
_array
private["_display","_ctrlBlood","_ctrlBleed","_bloodVal","_ctrlFood","_ctrlThirst","_thirstVal","_foodVal","_ctrlTemp","_tempVal","_combatVal","_array","_ctrlEar","_ctrlEye"/*,"_ctrlHumanity"*/,"_ctrlCombat","_ctrlFracture","_visualText","_visual","_audibleText","_audible","_uiNumber"];
disableSerialization;

_foodVal = 1 - (dayz_hunger / SleepFood);
_thirstVal = 1 - (dayz_thirst / SleepWater);
_tempVal = 1 - ((dayz_temperatur - dayz_temperaturmin)/(dayz_temperaturmax - dayz_temperaturmin));	// Normalise to [0,1]
_combatVal = 1 - dayz_combat; // May change later to be a range of red/green to loosely indicate 'time left in combat'

// Weight System
_weightVal =  1 - dayz_weight;
_weightWarn = 50000;

if (uiNamespace getVariable ['DZ_displayUI', 0] == 1) exitWith {
	_array = [_foodVal,_thirstVal];
	_array
};

_display = uiNamespace getVariable 'DAYZ_GUI_display';

_ctrlBloodOuter = _display displayCtrl 1200;

_ctrlBlood = _display displayCtrl 1300;
_ctrlBleed = _display displayCtrl 1303;
_bloodVal = r_player_blood / r_player_bloodTotal;
_ctrlFood = _display displayCtrl 1301;
_ctrlThirst = _display displayCtrl 1302;
_ctrlTemp = _display displayCtrl 1306;					//TeeChange
_ctrlEar = _display displayCtrl 1304;
_ctrlEye = _display displayCtrl 1305;
//_ctrlHumanity = _display displayCtrl 1207;
_ctrlCombat = _display displayCtrl 1307;
_ctrlFracture = _display displayCtrl 1203;

// Weight System #2
_ctrlWeight =   _display displayCtrl 1209; 

//Food/Water/Blood
_ctrlBlood ctrlSetTextColor [(Dayz_GUI_R + (0.3 * (1-_bloodVal))),(Dayz_GUI_G * _bloodVal),(Dayz_GUI_B * _bloodVal), 0.5];
_ctrlFood ctrlSetTextColor [(Dayz_GUI_R + (0.3 * (1-_foodVal))),(Dayz_GUI_G * _foodVal),(Dayz_GUI_B * _foodVal), 0.5];
_ctrlThirst ctrlSetTextColor [(Dayz_GUI_R + (0.3 * (1-_thirstVal))),(Dayz_GUI_G * _thirstVal),(Dayz_GUI_B * _thirstVal), 0.5];
_ctrlTemp ctrlSetTextColor [(Dayz_GUI_R + (0.3 * (1-_tempVal))), (Dayz_GUI_G * _tempVal), _tempVal, 0.5];	// Color ranges from iceblue (cold) to red (hot)
_ctrlCombat ctrlSetTextColor [(Dayz_GUI_R + (0.3 * (1-_combatVal))),(Dayz_GUI_G * _combatVal),(Dayz_GUI_B * _combatVal), 0.5];

// Weight System #3
_ctrlWeight ctrlSetTextColor    [(Dayz_GUI_R + (0.3 * (1-_weightVal))),(Dayz_GUI_G * _weightVal),(Dayz_GUI_B * _weightVal), 0.5];

//_ctrlBloodOuter ctrlSetTextColor [(Dayz_GUI_R + (0.3 * (1-r_player_bloodregen))),(Dayz_GUI_G * r_player_bloodregen),(Dayz_GUI_B * r_player_bloodregen), 0.5];

/*
	Blood: round((r_player_blood / 2) / 1000) = _bloodLvl (6 = full, 1 = empty)
	Thirst: round(_thirstVal / 0.25) = _thirstLvl (4 = full, 0 = empty)
	Hunger: round(_foodVal / 0.25) = _foodLvl (4 = full, 0 = empty)
	Temp: round(dayz_temperatur) = tempLvl (>= 36 = full <= 28 = empty)
*/

_blood = "";
_thirst = "";
_food = "";
_temp = "";
_tempImg = 0;
_bloodLvl = round((r_player_blood / 2) / 1000);
_thirstLvl = round(_thirstVal / 0.25);
_foodLvl = round(_foodVal / 0.25);
_tempLvl = round(dayz_temperatur);

/*
diag_log format["DEBUG: bloodlvl: %1 r_player_blood: %2 bloodval: %3",_bloodLvl, r_player_blood, _bloodVal];
diag_log format["DEBUG: thirstlvl: %1 dayz_thirst: %2 thirstval: %3",_thirstLvl, dayz_thirst, _thirstVal];
diag_log format["DEBUG: foodlvl: %1 dayz_hunger: %2 foodval: %3",_foodLvl, dayz_hunger, _foodVal];
diag_log format["DEBUG: templvl: %1 dayz_temperatur: %2 tempval: %3",_tempLvl, dayz_temperatur, _tempVal];
*/

/*
	Blood Regen & BloodLoss:
*/

switch true do {
	case (r_player_bloodpersec <= -50): { _uiNumber = -3 };										// -3
	case ((r_player_bloodpersec <= -25) and (r_player_bloodpersec > -50)): { _uiNumber = -2 };	// -2
	case ((r_player_bloodpersec < 0) and (r_player_bloodpersec > -25)): { _uiNumber = -1 };		// -1
	case (r_player_bloodpersec == 0): { _uiNumber = 0 };										//  0
	case ((r_player_bloodpersec > 0) and (r_player_bloodpersec < 25)): { _uiNumber = 1 };		//  1
	case ((r_player_bloodpersec >= 25) and (r_player_bloodpersec < 50)): { _uiNumber = 2 };		//  2
	case (r_player_bloodpersec >= 50): { _uiNumber = 3 };										//  3
	default { _uiNumber = 0 };
};

_bloodText = "\z\addons\dayz_code\gui\status_blood_border";

if (r_player_infected) then {
	switch true do {
		case (_uiNumber < 0): { _bloodText = _bloodText + "_down" + str(_uiNumber * -1) + "_sick_ca.paa" };
		case (_uiNumber > 0): { _bloodText = _bloodText + "_up" + str(_uiNumber) + "_sick_ca.paa" };
		default { _bloodText = _bloodText + "_sick_ca.paa" };
	};
} else {
	switch true do {
		case (_uiNumber < 0): { _bloodText = _bloodText + "_down" + str(_uiNumber * -1) + "_ca.paa" };
		case (_uiNumber > 0): { _bloodText = _bloodText + "_up" + str(_uiNumber) + "_ca.paa" };
		default { _bloodText = _bloodText + "_ca.paa" };
	};
};

_ctrlBloodOuter ctrlSetText _bloodText;

if (_bloodLvl <= 0) then {
	_blood = "\z\addons\dayz_code\gui\status_blood_inside_1_ca.paa";
} else {
	_blood = "\z\addons\dayz_code\gui\status_blood_inside_" + str(_bloodLvl) + "_ca.paa";
};

if (_thirstLvl < 0) then { _thirstLvl = 0 };
_thirst = "\z\addons\dayz_code\gui\status_thirst_inside_" + str(_thirstLvl) + "_ca.paa";

if (_foodLvl < 0) then { _foodLvl = 0 };
_food = "\z\addons\dayz_code\gui\status_food_inside_" + str(_foodLvl) + "_ca.paa";

if ( _tempLvl >= 36 ) then { _tempImg = 4 };
if ( _tempLvl > 33 and _tempLvl < 36 ) then { _tempImg = 3 };
if ( _tempLvl >= 30 and _tempLvl <= 33 ) then { _tempImg = 2 };
if ( _tempLvl > 28 and _tempLvl < 30 ) then { _tempImg = 1 };
if ( _tempLvl <= 28 ) then { _tempImg = 0 };

_temp = "\z\addons\dayz_code\gui\status_temp_" + str(_tempImg) + "_ca.paa";

_ctrlBlood ctrlSetText _blood;
_ctrlThirst ctrlSetText _thirst;
_ctrlFood ctrlSetText _food;
_ctrlTemp ctrlSetText _temp;

/*
	Visual:
*/
_visualtext = "";
_visual = round((dayz_disVisual / 100) * 4) min 5;
if (_visual > 0) then {_visualtext = "\z\addons\dayz_code\gui\val_" + str(_visual) + "_ca.paa"};
_ctrlEye ctrlSetText _visualtext;

/*
	Audible:
*/
_audibletext = "";
_audible = round((dayz_disAudial / 50) * 4) min 5;
if (_audible > 0) then {_audibletext = "\z\addons\dayz_code\gui\val_" + str(_audible) + "_ca.paa"};
_ctrlEar ctrlSetText _audibletext;

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

if (_bloodVal < 0.2) then {
	_ctrlBlood call player_guiControlFlash;
};

if (_thirstVal < 0.2) then {
	_ctrlThirst call player_guiControlFlash;
};

if (_foodVal < 0.2) then {
	_ctrlFood call player_guiControlFlash;
};

if (_tempVal > 0.8) then { //TeeChange
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

/*
_humanity = player getVariable["humanity",0];
_guiHumanity = 0;
if(_humanity != dayz_lastHumanity) then {
	if (_humanity > 0) then {
		_humanity = _humanity min 5000;
		_guiHumanity = (round((_humanity / 5000) * 5) + 5);
	} else {
		_humanity = _humanity max -20000;
		_guiHumanity = 5 - (round(-(_humanity / 20000) * 4));
	};
	dayz_lastHumanity = _humanity;
	dayz_guiHumanity = _guiHumanity;
	_humanityText = "\z\addons\dayz_code\gui\humanity_" + str(_guiHumanity) + "_ca.paa";
	_ctrlHumanity ctrlSetText _humanityText;
};
*/
_array = [_foodVal,_thirstVal];
_array
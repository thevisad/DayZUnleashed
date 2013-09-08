/*
	fnc_initTrigger
	
	Description: Initializes variables for static and dynamic triggers when called by fnc_spawnBandits and fnc_spawnBandits_dynamic.
	These variables are retrieved for respawning and despawning AI.
	
	Usage: [_trigger,_groupArray] call fnc_initTrigger; OR [_trigger,_groupArray,_patrolDist,_gradeChances,_locationArray] spawn fnc_initTrigger;
	
	Note: "_patrolDist" may also contain an array of markers for manual waypoint creation.
	
	Last updated: 11:18 PM 7/27/2013
*/

private["_trigger"];

_trigger = _this select 0;
_trigger setVariable ["isCleaning",false];
_trigger setVariable ["GroupArray",(_this select 1)];
if ((count _this) > 3) then {
	_trigger setVariable ["patrolDist",(_this select 2)];
	_trigger setVariable ["gradeChances",(_this select 3)];
	_trigger setVariable ["locationArray",(_this select 4)];
	_trigger setVariable ["maxUnits",(_this select 5)];
	_trigger setVariable ["initialized",true];
	DZAI_actTrigs = DZAI_actTrigs + 1;
	if (DZAI_debugLevel > 1) then {diag_log format["DZAI Extended Debug: Initialized static trigger at %1. GroupArray: %2, PatrolDist: %3. GradeChances: %4. %LocationArray %5 positions, MaxUnits %6.",triggerText(_this select 0),(_this select 1),(_this select 2),(_this select 3),count (_this select 4),(_this select 5)];};
	} else {
	DZAI_actDynTrigs = DZAI_actDynTrigs + 1;
	if (DZAI_debugLevel > 1) then {diag_log format["DZAI Extended Debug: Initialized dynamic trigger at %1. GroupArray: %2.",getPosATL (_this select 0),(_this select 1)];};
};

true

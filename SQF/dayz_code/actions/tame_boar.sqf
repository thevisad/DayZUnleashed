/*
	File: tame_boar.sqf 1.1
	Author: Kane "Alby" Stone
	Expanded to allow all meats as input by: [VB]AWOL - DayZ Epoch

	Description:
	Allows a player to tame/domesticate a boar.
	Script is applied to object via addAction.
		
	Variables:
	_target = Object that action is attached too.
	_caller = Object that activates the action.
	_id = ID of the action handler.
	_boar = Intended target of the script.
*/

private ["_target","_caller","_id","_boar","_fsmid","_removed","_selected","_animalID","_textRemoved","_chanceToFail","_itemIn","_countIn"];
_target = 	_this select 0;
_caller = 	_this select 1;
_id =		_this select 2;
_boar =		_this select 3;

_removed = 0;
_itemIn = "FoodmeatRaw";
_countIn = 1;
_selected = "";

{					
	if( (_removed < _countIn) && ((_x == _itemIn) || configName(inheritsFrom(configFile >> "cfgMagazines" >> _x)) == _itemIn)) then {
		_removed = _removed + ([player,_x] call BIS_fnc_invRemove);
	};
	if(_removed == 1) exitWith { _selected = _x; };	
} forEach magazines player;

// Only proceed if removed count matches
if(_removed == _countIn) then {

	// get name of item removed
	_textRemoved = getText(configFile >> "CfgMagazines" >> _selected >> "displayName");
	
	// add failure rate based on skill level variable (days alive) 
    _chanceToFail = (((random 1) + (dayz_Survived/100)) > 0.5);
	
	if(!_chanceToFail) then { 
		
		_animalID = _boar getVariable "fsm_handle";
		_animalID setFSMVariable ["_isTamed", true];
		sleep 1;
		diag_log format["DEBUG: %1, id: %2 [%3]",_boar,_animalID,completedFSM _animalID];
		if (!moveToCompleted _boar) then {
			_boar moveTo (position _boar);
		};
		_boar disableAI "FSM";
		(group _boar) setBehaviour "AWARE";
		_fsmid = [_boar, typeOf _boar] execFSM "\z\addons\dayz_code\system\boar_agent.fsm";
		_fsmid setFSMVariable ["_handle", _fsmid];
		player setVariable ["boarID", _fsmid];
		_boar setVariable ["fsm_handle", _fsmid];
		_boar setVariable ["CharacterID", dayz_characterID, true];

		cutText [format["Boar consumed %1, and is now tamed.",_textRemoved], "PLAIN DOWN"];
	} else {
		cutText [format["Boar consumed %1, yet remains untamed.",_textRemoved], "PLAIN DOWN"];
	};
};
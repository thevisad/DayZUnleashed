/*
	DayZ Epoch Crafting 0.3
	Made for DayZ Epoch and Unleashed by [VB]AWOL please ask permission to use/edit/distrubute email vbawol@veteranbastards.com.
	Thanks to thevisad for help with the spawn call fixes.

USAGE EXAMPLE:
class ItemActions
{
	class Crafting
	{
		text = "Craft Tent";
		script = ";['Crafting','CfgMagazines', _id] spawn DZE_player_craftItem;"; // [Class of itemaction,CfgMagazines or CfgWeapons, item]
		neednearby[] = {"workshop","fire"};
		requiretools[] = {"ItemToolbox","ItemKnife"}; // (cfgweapons only)
		output[] = {{"ItemTent",1}}; // (CfgMagazines, qty)
		input[] = {{"ItemCanvas",2},{"ItemPole",2}}; // (CfgMagazines, qty)
		inputweapons[] = {"ItemToolbox"}; // consume toolbox (cfgweapons only)
		outputweapons[] = {"ItemToolbox"}; // return toolbox (cfgweapons only)
	};
};	
*/
private ["_tradeComplete","_onLadder","_canDo","_selectedRecipeOutput","_proceed","_itemIn","_countIn","_missing","_missingQty","_qty","_itemOut","_countOut","_started","_finished","_animState","_isMedic","_removed","_tobe_removed_total","_textCreate","_textMissing","_selectedRecipeInput","_num_removed","_removed_total","_temp_removed_array","_abort","_reason","_isNear","_missingTools","_hastoolweapon","_selectedRecipeTools","_distance","_crafting","_needNear","_item","_baseClass","_num_removed_weapons","_outputWeapons","_inputWeapons","_randomOutput","_craft_doLoop","_selectedWeapon","_selectedMag","_sfx"];

if(DZE_ActionInProgress) exitWith { cutText [(localize "str_epoch_player_63") , "PLAIN DOWN"]; };
DZE_ActionInProgress = true;

// This is used to find correct recipe based what itemaction was click allows multiple recipes per item.
_crafting = _this select 0;

// This tells the script what type of item we are clicking on
_baseClass = _this select 1;

_item =  _this select 2;
//diag_log("PCI: _crafting " + str(_crafting));
//diag_log("PCI: _baseClass " + str(_baseClass));
//diag_log("PCI: _item " + str(_item));

_abort = false;
_distance = 3;
_reason = "";

_onLadder =	(getNumber (configFile >> "CfgMovesMaleSdr" >> "States" >> (animationState player) >> "onLadder")) == 1;
_canDo = (!r_drag_sqf and !r_player_unconscious and !_onLadder);

// Need Near Requirements
_needNear = getArray (configFile >> _baseClass >> _item >> "ItemActions" >> _crafting >> "neednearby");
//diag_log("PCI: _needNear " + str(_needNear));
if("fire" in _needNear) then {
	_isNear = {inflamed _x} count (position player nearObjects _distance);
	if(_isNear == 0) then {  
		_abort = true;
		_reason = "fire";
	};
};
if("workshop" in _needNear) then {
	_isNear = count (nearestObjects [player, ["Wooden_shed_DZ","WoodShack_DZ","WorkBench_DZ"], _distance]);
	if(_isNear == 0) then {  
		_abort = true;
		_reason = "workshop";
	};
};
if(_abort) exitWith {
	cutText [format[(localize "str_epoch_player_149"),_reason,_distance], "PLAIN DOWN"];
	DZE_ActionInProgress = false;
};

// //diag_log format["Checking for fire: %1", _isFireNear];

if (_canDo) then {
	
	_selectedRecipeTools = getArray (configFile >> _baseClass >> _item >> "ItemActions" >> _crafting >> "requiretools");
	_selectedRecipeOutput = getArray (configFile >> _baseClass >> _item >> "ItemActions" >> _crafting >> "output");	
	_selectedRecipeInput = getArray (configFile >> _baseClass >> _item >> "ItemActions" >> _crafting >> "input");	
	_outputWeapons = getArray (configFile >> _baseClass >> _item >> "ItemActions" >> _crafting >> "outputweapons");
	_inputWeapons = getArray (configFile >> _baseClass >> _item >> "ItemActions" >> _crafting >> "inputweapons");
	//diag_log("PCI: _selectedRecipeTools " + str(_selectedRecipeTools));
	//diag_log("PCI: _selectedRecipeInput " + str(_selectedRecipeOutput));
	//diag_log("PCI: _selectedRecipeInput " + str(_selectedRecipeInput));
	//diag_log("PCI: _outputWeapons " + str(_outputWeapons));
	//diag_log("PCI: _inputWeapons " + str(_inputWeapons));

	_sfx = getText(configFile >> _baseClass >> _item >> "sfx");
	if(_sfx == "") then {
		_sfx = "repair";
	};

	_randomOutput = 0;
	if(isNumber (configFile >> _baseClass >> _item >> "ItemActions" >> _crafting >> "randomOutput")) then {
		_randomOutput = getNumber(configFile >> _baseClass >> _item >> "ItemActions" >> _crafting >> "randomOutput");
	};
	
	_craft_doLoop = true;
	_tradeComplete = 0;

	while {_craft_doLoop} do {

		_temp_removed_array = [];
	
		_missing = "";
		_missingTools = false;
		{
			_hastoolweapon = _x in weapons player;
			if(!_hastoolweapon) exitWith { _craft_doLoop = false; _missingTools = true; _missing = _x; };
		} forEach _selectedRecipeTools;
	
		if(!_missingTools) then {
	
		
			// Dry run to see if all parts are available.
			_proceed = true;
			if (count _selectedRecipeInput > 0) then {
				{
					_itemIn = _x select 0;
					_countIn = _x select 1;
		
					_qty = { (_x == _itemIn) || (configName(inheritsFrom(configFile >> "cfgMagazines" >> _x)) == _itemIn) } count magazines player;	
		
					if(_qty < _countIn) exitWith { _missing = _itemIn; _missingQty = (_countIn - _qty); _proceed = false; };
		
				} forEach _selectedRecipeInput;
			};
	
			// If all parts proceed
			if (_proceed) then {
	
				cutText [(localize "str_epoch_player_62"), "PLAIN DOWN"];
	
				//[1,1] call dayz_HungerThirst;
				player playActionNow "Medic";
	
				[player,_sfx,0,false] call dayz_zombieSpeak;
				[player,50,true,(getPosATL player)] spawn player_alertZombies;
				
				r_interrupt = false;
				_animState = animationState player;
				r_doLoop = true;
				_started = false;
				_finished = false;
		
				while {r_doLoop} do {
					_animState = animationState player;
					_isMedic = ["medic",_animState] call fnc_inString;
					if (_isMedic) then {
						_started = true;
					};
					if (_started and !_isMedic) then {
						r_doLoop = false;
						_finished = true;
					};
					if (r_interrupt) then {
						r_doLoop = false;
					};
					sleep 0.1;
				};
				r_doLoop = false;
	
				if (_finished) then {
	
					_removed_total = 0; // count total of removed items
					_tobe_removed_total = 0; // count total of all to be removed items
					// Take items
					{
						_removed = 0;
						_itemIn = _x select 0;
						_countIn = _x select 1;
						 //diag_log format["PCI: Magazine Recipe Finish: %1 %2", _itemIn,_countIn];
						_tobe_removed_total = _tobe_removed_total + _countIn;
						{					
							if( (_removed < _countIn) && ((_x == _itemIn) || configName(inheritsFrom(configFile >> "cfgMagazines" >> _x)) == _itemIn)) then {
								_num_removed = ([player,_x] call BIS_fnc_invRemove);
								_removed = _removed + _num_removed;
								_removed_total = _removed_total + _num_removed;
								if(_num_removed >= 1) then {
									_temp_removed_array set [count _temp_removed_array,_x];
								};
							};
	
						} forEach magazines player;
					} forEach _selectedRecipeInput;
					//diag_log format["PCI: removed: %1 of: %2", _removed, _tobe_removed_total];
	
					// Only proceed if all parts were removed successfully
					if(_removed_total == _tobe_removed_total) then {
						_num_removed_weapons = 0;
						{
							_itemIn = _x select 0;
							_configName = configName(configFile >> "ExtraRc" >> _itemIn);
							_num_removed_weapons = _num_removed_weapons + ([player,_configName] call BIS_fnc_invRemove);
							//diag_log("PCI: _num_removed_weapons " + str(_num_removed_weapons));
							//diag_log("PCI: _inputWeapons _configName: " + str(_configName));
						} forEach _inputWeapons;
						//diag_log("PCI: count _inputWeapons: " + str(count _inputWeapons));
						if (_num_removed_weapons == (count _inputWeapons)) then {	
							if(_randomOutput == 1) then {
								_selectedWeapon = _outputWeapons call BIS_fnc_selectRandom;
								_outputWeapons = [_selectedWeapon];
								_selectedMag = _selectedRecipeOutput call BIS_fnc_selectRandom;
								_selectedRecipeOutput = [_selectedMag];
								// exit loop
								_craft_doLoop = false;
							};
							{
								player addWeapon _x; 
								//diag_log("PCI: _outputWeapons _x" + str(_x));
							} forEach _outputWeapons;
							{	
	
								_itemOut = _x select 0;
								_countOut = _x select 1;
		
								for "_x" from 1 to _countOut do {
									player addMagazine _itemOut;
								};

								_tradeComplete = _tradeComplete+1;

								_textCreate = getText(configFile >> "CfgMagazines" >> _itemOut >> "displayName");
	
								// Add crafted item
								cutText [format[(localize "str_epoch_player_150"),_textCreate,_countOut], "PLAIN DOWN"];
								// sleep here 
								sleep 1;
								//diag_log("PCI: _itemOut " + str(_itemOut));
								//diag_log("PCI: _countOut " + str(_countOut));
								//diag_log("PCI: _tradeComplete " + str(_tradeComplete));
								//diag_log("PCI: _x " + str(_x));
								//diag_log("PCI: _textCreate " + str(_textCreate));
							} forEach _selectedRecipeOutput;
						};
						_craft_doLoop = false;
					} else {
						// Refund parts since we failed 
						{
							player addMagazine _x;
							//diag_log("PCI: Failed, Refunding " + str(_x));
						} forEach _temp_removed_array;
						_craft_doLoop = false;
						cutText [format[(localize "str_epoch_player_151"),_removed_total,_tobe_removed_total], "PLAIN DOWN"];
					};
	
				} else {
					r_interrupt = false;
					if (vehicle player == player) then {
						[objNull, player, rSwitchMove,""] call RE;
						player playActionNow "stop";
					};
					cutText [(localize "str_epoch_player_64"), "PLAIN DOWN"];
					_craft_doLoop = false;
				};
	
			} else {
				_textMissing = getText(configFile >> "CfgMagazines" >> _missing >> "displayName");
				//diag_log("PCI: _textMissing " + str(_textMissing) + " Quantity: " + str(_missingQty));
				cutText [format[(localize "str_epoch_player_152"),_missingQty, _textMissing,_tradeComplete], "PLAIN DOWN"];
				_craft_doLoop = false;
			};
		} else {
			_textMissing = getText(configFile >> "CfgWeapons" >> _missing >> "displayName");
			//diag_log("PCI: Missing Tools " + str(_textMissing));
			cutText [format[(localize "STR_EPOCH_PLAYER_137"),_textMissing], "PLAIN DOWN"];
			_craft_doLoop = false;
		};
	};
} else {
	cutText [(localize "str_epoch_player_64"), "PLAIN DOWN"];
};
DZE_ActionInProgress = false;
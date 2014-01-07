/*
		DZAI_heliDestroyed
		
		Description: Called when AI air vehicle is destroyed by collision damage.
		
		Last updated: 1:49 PM 12/18/2013
*/

private ["_helicopter","_unitGroup","_cleanupTime","_deleteQueue","_units"];
_helicopter = _this select 0;

if (_helicopter getVariable ["heli_disabled",false]) exitWith {};
_helicopter setVariable ["heli_disabled",true];

_unitGroup = _helicopter getVariable "unitGroup";
_helicopter removeAllEventHandlers "GetOut";
_helicopter removeAllEventHandlers "HandleDamage";
_helicopter removeAllEventHandlers "Killed";

		//Random Heli-Type
		_heliModel = "UH1H_DZ";

		//Settings for the Standard UH1H_DZ
		_crashModel = "UH1Wreck_DZ";
		_lootRadius = 0.35;

		//Adjust Wreck and Range of Explosion if its a Mi17_DZ
		if(_heliModel == "Mi17_DZ") then {
			_crashModel = "Mi8Wreck";
			_lootRadius = 0.3;
		};
		//Get position of the helis wreck, but make sure its on the ground;
		_pos = [getPos _helicopter select 0, getPos _helicopter select 1,0];

		//saving the direction of the wreck(not used right now)
		_dir = getdir _helicopter; 

		//Animation is done, lets create the actual Crashside
		_crash = createVehicle [_crashModel, _pos, [], 0, "CAN_COLLIDE"];
		_crash setVariable["Sarge",1];
		//If you want all Grass around the crashsite to be cut: Uncomment the next Line (Noobmode)
		//_crashcleaner = createVehicle ["ClutterCutter_EP1", _pos, [], 0, "CAN_COLLIDE"];

		//Setting the Direction would add realism, but it sucks because of the bugged model when not on plane ground.
		//If you want it anyways, just uncomment the next line
		//_crash setDir _dir;

		// I don't think this is needed (you can't get "in" a crash), but it was in the original DayZ Crash logic
		dayz_serverObjectMonitor set [count dayz_serverObjectMonitor,_crash];

		_crash setVariable ["ObjectID",1,true];
		//Make it burn (or not)
		PVDZ_obj_Fire = [_crash,2,time,false,false];
		publicVariable "PVDZ_obj_Fire";
		_crash setvariable ["fadeFire",false,true];
		_num        = round(random 4) + 4;
		
		_lootTable = ["HeliCrash","HeliCrashWEST","HeliCrashEAST","MilitarySpecial"] call BIS_fnc_selectRandom;	
		_itemTypes =	[] + getArray (configFile >> "CfgBuildingLoot" >> _lootTable >> "lootType");	
		_index =        dayz_CBLBase  find _lootTable;
		_weights =		dayz_CBLChances select _index;
		_cntWeights = count _weights;		
		diag_log ( format [ "DZAI_Crash: Current Loot Pile: %1", _itemTypes ] );
		diag_log ( format [ "DZAI_Crash: Current Loot Weights: %1", _weights ] );
		
		//Creating the Lootpiles outside of the _crashModel
		for "_x" from 1 to _num do {
			//Create loot
			_index = floor(random _cntWeights);
			_index = _weights select _index;
			_itemType = _itemTypes select _index;

			//Let the Loot spawn in a non-perfect circle around _crashModel
			_lootPos = [_pos, ((random 2) + (sizeOf(_crashModel) * _lootRadius)), random 360] call BIS_fnc_relPos;
			//_lootPos = [_lootPos select 0,_lootPos select 1,0];
			[_itemType select 0, _itemType select 1, _lootPos, 0] call spawn_loot;

			diag_log(format["DZAI_Crash: Loot spawn at '%1' with loot table '%2'", _lootPos, sizeOf(_crashModel)]); 

			// ReammoBox is preferred parent class here, as WeaponHolder wouldn't match MedBox0 and other such items.
			_nearby = _pos nearObjects ["ReammoBox", sizeOf(_crashModel)];
			{
				_x setVariable ["permaLoot",true];
			} forEach _nearBy;
		};

		//Adding 5 dead soldiers around the wreck, poor guys
		for "_x" from 1 to 5 do {
		
			_lootPos = [_pos, ((random 4)+3), random 360] call BIS_fnc_relPos;
			_deadBody = createVehicle[["Body1","Body2"] call BIS_fnc_selectRandom,_lootPos,[], 0, "CAN_COLLIDE"];
			_deadBody setDir (random 360);
			diag_log(format["DZAI_Crash: Body spawn at '%1'", _lootPos]);
		};
		
		/*_trigPos = [_lootPos,random(DZAI_centerSize),random(360),false,[1,500]] call SHK_pos;
		_trigger = createTrigger ["EmptyDetector",_pos];
		_trigger setTriggerArea [DZAI_dynTriggerRadius, DZAI_dynTriggerRadius, 0, false];
		_trigger setTriggerActivation ["ANY", "PRESENT", true];
		_trigger setTriggerTimeout [5, 7, 20, true];
		_trigger setTriggerStatements ["{(isPlayer _x) && !(_x isKindOf 'Air')} count thisList > 0;","[300,thisTrigger,thisList] call fnc_spawnBandits_dynamic;", "[thisTrigger] spawn fnc_despawnBandits_dynamic;"];
		*/
		diag_log(format["DZAI_Crash: Crash completed! Wreck at: %1", str(getPos _crash)]); 
		
{
	if (alive _x) then {
		deleteVehicle _x;
	};
} forEach (units _unitGroup);

deleteGroup _unitGroup;
DZAI_curHeliPatrols = DZAI_curHeliPatrols - 1;

if (DZAI_debugLevel > 0) then {diag_log format ["DZAI Debug: Helicopter patrol destroyed at %1",mapGridPosition _helicopter];};
0 = ["air"] spawn fnc_respawnHandler;
[_helicopter,5] spawn DZAI_deleteObject;

/*
	unit_resupply (debugging version)
	
	Credits:  Basic script concept adapted from Sarge AI.
	
	Description: Handles AI ammo reload and zombie hostility. Called by fnc_createAI upon AI unit creation.
	
	Last updated: 4:44 PM 8/2/2013
*/
private["_unit","_currentWeapon","_weaponMagazine","_needsReload","_nearbyZeds","_marker","_markername","_lastBandage","_bandages","_unitGroup"];
if (!isServer) exitWith {};
if (DZAI_debugLevel > 1) then {diag_log "DZAI Extended Debug: AI resupply script active.";};

_unit = _this select 0;								//Unit to monitor/reload ammo

_markername = format["AI_%1",_unit];
if ((getMarkerColor _markername) != "") then {deleteMarker _markername; sleep 5;};	//Delete the previous marker if it wasn't deleted for some reason.
_marker = createMarker[_markername,(getposATL _unit)];
_marker setMarkerShape "ELLIPSE";
_marker setMarkerType "Dot";
_marker setMarkerColor "ColorRed";
_marker setMarkerBrush "SolidBorder";
_marker setMarkerSize [5, 5];

_currentWeapon = currentWeapon _unit;									//Retrieve unit's current weapon
waitUntil {sleep 0.1; !isNil "_currentWeapon"};
_weaponMagazine = getArray (configFile >> "CfgWeapons" >> _currentWeapon >> "magazines") select 0;	//Retrieve ammo used by unit's current weapon
waitUntil {sleep 0.1; !isNil "_weaponMagazine"};

_lastBandage = 0;
_bandages = 3;
_unitGroup = (group _unit);

if (DZAI_debugLevel > 0) then {
	if (isNull (unitBackpack _unit)) then {
		diag_log format ["DZAI Error :: Unit backpack not found! Skin: %1. Backpack: %2. Skin classname possibly incompatible with backpacks.",(typeOf _unit),(unitBackpack _unit)];
	};		//Check if backpack is missing
	if (DZAI_debugLevel > 1) then {
		0 = [_unit] spawn {
			private ["_unit"];
			_unit = _this select 0;
			sleep 5;
			diag_log format ["DZAI ExtDebug (Unit Skills): %1, %2, %3, %4, %5, %6, %7, %8, %9, %10.",_unit skill "aimingAccuracy",_unit skill "aimingShake",_unit skill "aimingSpeed",_unit skill "endurance",_unit skill "spotDistance",_unit skill "spotTime",_unit skill "courage",_unit skill "reloadSpeed",_unit skill "commanding",_unit skill "general"];
			true
		};
	};
};

while {(alive _unit)&&(!(isNull _unit))} do {													//Run script for as long as unit is alive
	_marker setmarkerpos (getposATL _unit);
		if (DZAI_zombieEnemy && ((leader _unitGroup) == _unit)) then {		//Run only if both zombie hostility and zombie spawns are enabled.
		_nearbyZeds = (position _unit) nearEntities ["zZombie_Base",DZAI_zDetectRange];
		{
			if(rating _x > -30000) then {
				_x addrating -30000;
				//_unitGroup reveal [_x,1.5];
			};
		} forEach _nearbyZeds;
	};
	if !(_unit getVariable ["unconscious",false]) then {
		_needsReload = true;
		if (_weaponMagazine in magazines _unit) then {						//If unit already has at least one magazine, assume reload is not needed
			_needsReload = false;
		}; 
		if ((_unit ammo _currentWeapon == 0) || (_needsReload))  then {		//If active weapon has no ammunition, or AI has no magazines, remove empty magazines and add a new magazine.
			_unit removeMagazines _weaponMagazine;
			_unit addMagazine _weaponMagazine;
			if (DZAI_debugLevel > 1) then {diag_log "DZAI Extended Debug: AI ammo depleted, added one magazine to AI unit.";};
		};
		if (((getDammage _unit) > 0.25)&&(_bandages > 0)) then {
			if ((time - _lastBandage) > 60) then {
				if ((random 1) < 0.4) then {
					_bandages = _bandages - 1;
					_unit disableAI "FSM";
					_unit playActionNow "Medic";
					sleep 4;
					_unit enableAI "FSM";
					_unit setDamage 0;
					_unit setVariable ["gethit",[0,0,0,0]];
					_lastBandage = time;
				};
			};
		};
		//Uncomment to debug death-related scripts.
		/*if ((time - _unit) > 20) then {
			_helicopter setDamage 1;
		};*/
		//diag_log format ["Group %1 has %2 waypoints.",(group _unit),count (waypoints (group _unit))];
	};
	sleep DZAI_refreshRate;												//Check again in x seconds.
};
deleteMarker _marker;
if (DZAI_debugLevel > 1) then {diag_log "DZAI Extended Debug: AI resupply script deactivated.";};

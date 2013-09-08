/*
	unit_resupply
	
	Credits:  Basic script concept adapted from Sarge AI.
	
	Description: Handles AI ammo reload and zombie hostility. Called by fnc_createAI upon AI unit creation.
	
	Last updated: 4:44 PM 8/2/2013
*/
private["_unit","_currentWeapon","_weaponMagazine","_needsReload","_nearbyZeds","_marker","_markername","_lastBandage","_bandages","_unitGroup"];
if (!isServer) exitWith {};
if (DZAI_debugLevel > 1) then {diag_log "DZAI Extended Debug: AI resupply script active.";};

_unit = _this select 0;								//Unit to monitor/reload ammo

_currentWeapon = currentWeapon _unit;				//Retrieve unit's current weapon
waitUntil {sleep 0.1; !isNil "_currentWeapon"};
_weaponMagazine = getArray (configFile >> "CfgWeapons" >> _currentWeapon >> "magazines") select 0;	//Retrieve ammo used by unit's current weapon
waitUntil {sleep 0.1; !isNil "_weaponMagazine"};

_lastBandage = 0;
_bandages = 3;
_unitGroup = (group _unit);

if (DZAI_debugLevel > 0) then {
	if (isNull (unitBackpack _unit)) then {
		diag_log format ["DZAI Error :: Unit backpack not found! Debug info -- Skin: %1. Backpack: %2. WeaponPrimary: %3. WeaponSecondary: %4.",(typeOf _unit),(unitBackpack _unit),(primaryWeapon _unit),(secondaryWeapon _unit)];
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

while {(alive _unit)&&(!(isNull _unit))} do {	
	if (DZAI_zombieEnemy && ((leader _unitGroup) == _unit)) then {	//Run only if both zombie hostility and zombie spawns are enabled.
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
		if (_weaponMagazine in magazines _unit) then {	//If unit already has at least one magazine, assume reload is not needed
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
	};
	sleep DZAI_refreshRate;										//Check again in x seconds.
};
if (DZAI_debugLevel > 1) then {diag_log "DZAI Extended Debug: AI resupply script deactivated.";};

/*
	aiBrain (debugging version)
	
	Credits:  Basic script concept adapted from Sarge AI.
	
	Description: Handles AI ammo reload and zombie hostility. Called by fnc_createAI upon AI unit creation.
	
	Last updated: 3:46 PM 6/20/2013
*/
private["_unit","_currentWeapon","_weaponMagazine","_needsReload","_nearbyZeds","_marker","_markername"];
if (!isServer) exitWith {};
if (DZAI_debugLevel > 1) then {diag_log "DZAI Extended Debug: AI brain active.";};

_unit = _this select 0;								//Unit to monitor/reload ammo
_currentWeapon = currentWeapon _unit;				//Retrieve unit's current weapon
waitUntil {sleep 0.001; !isNil "_currentWeapon"};
_weaponMagazine = getArray (configFile >> "CfgWeapons" >> _currentWeapon >> "magazines") select 0;	//Retrieve ammo used by unit's current weapon
waitUntil {sleep 0.001; !isNil "_weaponMagazine"};

_markername = format["AI_%1",_unit];
_marker = createMarker[_markername,(getposATL _unit)];
_marker setMarkerShape "ELLIPSE";
_marker setMarkerType "Dot";
_marker setMarkerColor "ColorRed";
_marker setMarkerBrush "SolidBorder";
_marker setMarkerSize [5, 5];

//_timeToDie = time+40;
while {alive _unit} do {							//Run script for as long as unit is alive
	_marker setmarkerpos (getposATL _unit);
	if (DZAI_zombieEnemy) then {	//Run only if both zombie hostility and zombie spawns are enabled.
		_nearbyZeds = (position _unit) nearEntities ["zZombie_Base",DZAI_zDetectRange];
		{
			if(rating _x > -30000) then {
                _x addrating -30000;
                //if(DZAI_debugLevel > 2) then {diag_log "DZAI Super Debug: AI brain recognizes an nearby zombie as enemy.";};
            };
		} forEach _nearbyZeds;
	};
	_needsReload = true;
	if (_weaponMagazine in magazines _unit) then {	//If unit already has at least one magazine, assume reload is not needed
		_needsReload = false;
	}; 
	if ((_unit ammo _currentWeapon == 0) || (_needsReload))  then {		//If active weapon has no ammunition, or AI has no magazines, remove empty magazines and add a new magazine.
		_unit removeMagazines _weaponMagazine;
		_unit addMagazine _weaponMagazine;
		if (DZAI_debugLevel > 1) then {diag_log "DZAI Extended Debug: AI ammo depleted, added one magazine to AI unit.";};
	};
	if ((getDammage _unit > 0.10)&&(getDammage _unit < 1)) then {
		_unit setDamage ((getDammage _unit) - 0.10);			//AI heals periodically
	};
	//Uncomment to debug death-related scripts.
	/*if (time > _timeToDie) then {
		_unit setDamage 1;
	};*/
	//diag_log format ["Group %1 has %2 waypoints.",(group _unit),count (waypoints (group _unit))];
	sleep DZAI_refreshRate;										//Check again in x seconds.
};
deleteMarker _marker;
if (DZAI_debugLevel > 1) then {diag_log "DZAI Extended Debug: AI killed, AI brain deactivated.";};

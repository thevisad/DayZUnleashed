/*
		DZAI_unitDeath
		
		Description: Called when AI unit blood level drops below zero to process unit death.
		
        Usage: [_unit,_killer] call DZAI_unitDeath;
		
		Last updated: 7:09 PM 12/15/2013
*/

private["_victim","_killer","_unitGroup","_unitType","_launchWeapon"];
_victim = _this select 0;
_killer = _this select 1;

if (_victim getVariable ["deathhandled",false]) exitWith {};
_victim setVariable ["deathhandled",true];
/*if ((vehicle _victim) != _victim) then {
	_victim action ["eject",(vehicle _victim)];
	unassignVehicle _victim;
};*/
_victim setDamage 1;
_victim removeAllEventHandlers "HandleDamage";

_unitGroup = (group _victim);
_unitType = _unitGroup getVariable ["unitType",""];
switch (_unitType) do {
	case "static":
	{
		[_victim,_unitGroup] spawn DZAI_AI_killed_static;
	};
	case "dynamic":
	{
		[_victim,_unitGroup] spawn DZAI_AI_killed_dynamic;
	};
	case "air": 
	{
		if ((_victim getVariable ["removeNVG",0]) == 1) then {
			_victim removeWeapon "NVGoggles";
		};
		_victim spawn DZAI_deathFlies;
		_victim setVariable ["bodyName",_victim getVariable ["bodyName","unknown"],true];		//Broadcast the unit's name (was previously a private variable).
		_victim setVariable ["deathType","bled",true];
		_victim setVariable ["DZAI_deathTime",time];
		_victim enableSimulation false;
	};
	case "land":
	{
		if ((_victim getVariable ["removeNVG",0]) == 1) then {
			_victim removeWeapon "NVGoggles";
		};
		_victim spawn DZAI_deathFlies;
		_victim setVariable ["bodyName",_victim getVariable ["bodyName","unknown"],true];		//Broadcast the unit's name (was previously a private variable).
		_victim setVariable ["deathType","bled",true];
		_victim setVariable ["DZAI_deathTime",time];
		_victim enableSimulation false;
	};
	case default {
		if ((_victim getVariable ["removeNVG",0]) == 1) then {
			_victim removeWeapon "NVGoggles";
		};
		_victim setVariable ["bodyName",_victim getVariable ["bodyName","unknown"],true];		//Broadcast the unit's name (was previously a private variable).
		_victim setVariable ["deathType",_victim getVariable ["deathType","bled"],true];
		_victim setVariable ["DZAI_deathTime",time];
		_victim spawn DZAI_deathFlies;
		_victim enableSimulation false;
		if (DZAI_debugMarkers > 0) then {
			if (({alive _x} count (units _unitGroup)) == 0) then {
				{
					deleteMarker (str _x);
				} forEach (waypoints _unitGroup);
			};
		};
		DZAI_numAIUnits = DZAI_numAIUnits - 1;
	};
};

if (_unitType in ["static","dynamic"]) then {
	0 = [_victim,_killer,_unitGroup] call DZAI_AI_killed_all;
};

_launchWeapon = (secondaryWeapon _victim);
if (_launchWeapon in DZAI_launcherTypes) then {
	private ["_launchAmmo"];
	_launchAmmo = getArray (configFile >> "CfgWeapons" >> _launchWeapon >> "magazines") select 0;
	_victim removeMagazines _launchAmmo;
	_victim removeWeapon _launchWeapon;
};

//diag_log format ["DEBUG :: AI %1 (Group %2) killed by %3",_victim,_unitGroup,_killer];

_victim

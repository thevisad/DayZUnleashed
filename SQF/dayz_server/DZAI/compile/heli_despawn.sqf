/*
	heli_despawn
	
	Description:
	
	Last updated: 7:25 PM 7/9/2013
	
*/

if (!isServer) exitWith {};

private ["_helicopter","_unitGroup","_deleteQueue","_cleanupTime"];

_helicopter = _this select 0;
_unitGroup = _helicopter getVariable "unitGroup";

{
	deleteVehicle _x;
} forEach (units _unitGroup);
sleep 0.1;
deleteGroup _unitGroup;

DZAI_curHeliPatrols = DZAI_curHeliPatrols - 1;

_deleteQueue = [_helicopter];

if (DZAI_heliLoot) then {
	private ["_heliPos"];
	_heliPos = getPosATL _helicopter;
	if (!(surfaceIsWater _heliPos)) then {
		for "_i" from 1 to 3 do {
			private ["_dropPos","_agentType","_weapongrade","_agent","_parachute"];
			_agentType = (DZAI_BanditTypes call BIS_fnc_selectRandom2);
			_weapongrade = [DZAI_weaponGrades,DZAI_gradeChances3] call fnc_selectRandomWeighted;
			_dropPos = [((_heliPos select 0) + (random 10) - (random 10)),((_heliPos select 1) + (random 10) - (random 10)),100];
			_parachute = createVehicle ["ParachuteWest", _dropPos, [], 0, "FLY"];
			_agent = createAgent [_agentType,[0,0,0],[],1,"NONE"];
			_agent moveInDriver _parachute;
			_nul = [_agent,_weapongrade] call fnc_unitLoadout;
			_nul = [_agent,_weapongrade] spawn fnc_addLoot;
			_deleteQueue set [count _deleteQueue,_agent];
			_agent setDamage 1;
			if (DZAI_debugLevel > 0) then {
				diag_log format ["DZAI Debug: Spawned loot agent with weapongrade %2 at %1.",_dropPos,_weapongrade];
				if (DZAI_debugLevel > 1) then {diag_log format ["DZAI Extended Debug: Agent %1 deployed in parachute %2. Parachute passenger is %3.",_agent,_parachute,(crew _parachute)];};
			};
			sleep 0.5;
		};
	};
};

_cleanupTime = 600;	//seconds to despawn helicopter and loot agents.
if (DZAI_debugLevel > 0) then {diag_log format ["DZAI Debug: Helicopter patrol destroyed. Cleanup in %1 seconds.",_cleanupTime];};
[_deleteQueue,_cleanupTime] spawn DZAI_deleteObject;

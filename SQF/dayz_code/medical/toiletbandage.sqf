// bleed.sqf
_unit = (_this select 3) select 0;
player removeMagazine "ToiletBandage";

call fnc_usec_medic_removeActions;
r_action = false;

if (vehicle player == player) then {
	//not in a vehicle
	player playActionNow "Medic";
};

r_interrupt = false;
_animState = animationState player;
r_doLoop = true;
_started = false;
_finished = false;
[player,"bandage",0,false] call dayz_zombieSpeak;
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
	//["PVDZ_hlt_Bandage",[_unit,player]] call broadcastRpcCallAll;
	PVDZ_hlt_Bandage = [_unit,player];
	publicVariable "PVDZ_hlt_Bandage";

	if (_unit == player) then {
		//Self Healing
		_id = [player,player] execVM "\z\addons\dayz_code\medical\publicEH\medBandaged.sqf";
		dayz_sourceBleeding = objNull;
		call fnc_usec_resetWoundPoints;
	} else {
		//PVDZ_plr_Humanity = [player,20];
		//[player,1,3] call player_variableChange; //1,engineer:2,hunter:3,medic:4,soldier
        [player,"Generic_Medical"] call DZU_fnc_giveEXP;        
	};
} else {
	r_interrupt = false;
	[objNull, player, rSwitchMove,""] call RE;
	player playActionNow "stop";
	player addMagazine "ToiletBandage";
};
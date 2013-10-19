// bleed.sqf
_unit = (_this select 3) select 0;

player removeMagazine "ItemMorphine";

_unit setVariable ["hit_legs",0];
_unit setVariable ["hit_hands",0];

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
    _skillMedical    = [player,"Medical"] call DZU_fnc_getVariable;
	if ((random 10 < 3) and (_skillMedical < 60)) then {
		r_player_infected = true;
		player setVariable["USEC_infected",true,true];
	};
	
	if (r_interrupt) then {
		r_doLoop = false;
	};
	sleep 0.1;
};
r_doLoop = false;

if (_finished) then {
	if (_unit == player) then {
		//Self Healing
		_id = [player,player] execVM "\z\addons\dayz_code\medical\publicEH\medMorphine.sqf";
	} else {
		//PVDZ_plr_Humanity = [player,50];
		[player,50] call player_humanityChange;
	};

	//["PVDZ_hlt_Morphine",[_unit,player]] call broadcastRpcCallAll;
	PVDZ_hlt_Morphine = [_unit,player];
	publicVariable "PVDZ_hlt_Morphine";
	
	
	[nil, nil, rSPAWN, _unit, { if !(local _this) exitWith {}; 
	_i = 0;
				_drugeffects = 0;
				scopeName "drugeffect";
				hint "You are under the effects of morphine";
		
				for "_i" from 0 to 4 step 1 do {
					nonapsi_ef = ppEffectCreate ["colorCorrections", 1555]; 
					nonapsi_ef ppEffectEnable true;
					nonapsi_ef ppEffectAdjust [1.0, 1.0, -0.03, [0.0, 0.0, 0.0, 0.0], [3.0, 5.0, 9.0, 5.0],[0.4,0.0,0.0, 0.7]];
					nonapsi_ef ppEffectCommit 1;

					sleep 1;

					wetdist1 = ppEffectCreate ["wetDistortion", 2006];
					wetdist1 ppEffectAdjust [0, 8, 0.8,8,8, 0.2, 1, 0, 0, 0.08, 0.08, 0, 0, 0, 0.77];
					wetdist1 ppEffectEnable true;
					wetdist1 ppEffectCommit 0;
					ppe = ppEffectCreate ["colorCorrections", 1555]; 
					ppe ppEffectAdjust [1, 1, 0, [1.5,6,2.5,0.5], [5,3.5,5,-0.5], [-3,5,-5,-0.5]]; 
					ppe ppEffectCommit 1;
					ppe ppEffectEnable true; 
					ppe2 = ppEffectCreate ["chromAberration", 1555]; 
					ppe2 ppEffectAdjust [0.01,0.01,true];
					ppe2 ppEffectCommit 1;
					ppe2 ppEffectEnable true;
					ppe3 = ppEffectCreate ["radialBlur", 1555]; 
					ppe3 ppEffectEnable true;
					ppe3 ppEffectAdjust [0.02,0.02,0.15,0.15]; 
					ppe3 ppEffectCommit 1;

					sleep 1;

					wetdist1 = ppEffectCreate ["wetDistortion", 2006];
					wetdist1 ppEffectAdjust [1, 1.16, 0.32, 2.56, 0.8, 0.64, 2.64, 0, 0, 1.08, 0.08, 0, 0, 0, 1.77];
					wetdist1 ppEffectEnable true;
					wetdist1 ppEffectCommit 0;

					sleep 1;

					nonapsi_ef = ppEffectCreate ["colorCorrections", 1555]; 
					nonapsi_ef ppEffectEnable true;
					nonapsi_ef ppEffectAdjust [1.0, 1.0, -0.02, [9.5, 1.5, 2.5, 0.2], [2.0, 7.0, 6.0, 2.0],[0.4,0.0,0.0, 0.7]];
					nonapsi_ef ppEffectCommit 1;

					sleep 1;
					
				}; 
				_drugeffects = 1;
				ppe ppEffectEnable false; 
				ppe2 ppEffectEnable false;
				ppe3 ppEffectEnable false;
				wetdist1 ppEffectEnable false;
				nonapsi_ef ppEffectEnable false;

		}] call RE;
		//[player,1,3] call player_variableChange; //1,engineer:2,hunter:3,medic:4,soldier
        [player,"Generic_Medical"] call DZU_fnc_giveEXP;        
} else {
	player addMagazine "ItemMorphine";
	r_interrupt = false;
	[objNull, player, rSwitchMove,""] call RE;
	player playActionNow "stop";
};
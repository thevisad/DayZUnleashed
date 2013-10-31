private ["_characterID","_temp","_class","_currentWpn","_magazines","_force","_isNewPos","_humanity","_isNewGear","_currentModel","_modelChk","_playerPos","_playerGear","_playerBackp","_backpack","_killsB","_killsH","_medical","_isNewMed","_character","_timeSince","_charPos","_isInVehicle","_distanceFoot","_lastPos","_kills","_headShots","_timeGross","_timeLeft","_onLadder","_isTerminal","_currentAnim","_muzzles","_array","_key","_lastTime","_config","_currentState","_pos"];
diag_log("VARIABLE SAVE ATEMPT!");
_target_character = _this select 0;
_target_variable  = _this select 1;
_target_value     = _this select 2;
diag_log("Character : " + str(_target_character));
diag_log("Variable  : " + str(_target_variable));
diag_log("NewValue  : " + str(_target_value));
_target_characterID =  _target_character getVariable ["characterID","0"];

if (isnil "_target_characterID") exitWith {
    diag_log ("ERROR: Cannot Save Character " + (name _target_character) + " has nil characterID");    
};

if (_target_characterID == "0") exitWith {
    diag_log ("ERROR: Cannot Sync Character " + (name _target_character) + " as no characterID");
};

if (_target_characterID != "0") then {
        if (!isNull _target_character) then {
            if (alive _target_character) then {
                             //CHILD:152:14276:hunter:fdghfdghdf:
                _key = format["CHILD:152:%1:%2:%3:",_target_characterID,_target_variable,_target_value];
                diag_log ("HIVE: WRITE: "+ str(_key) + " / " + str(_target_character));
                _key call server_hiveWrite;
            };
        };
        
};

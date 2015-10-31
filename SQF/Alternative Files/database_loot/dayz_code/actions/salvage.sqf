private["_vehicle","_part","_hitpoint","_type","_selection","_array"];
_id = _this select 2;
_array =    _this select 3;
_vehicle =    _array select 0;
_part =        _array select 1;
_hitpoint = _array select 2;
_type = typeOf _vehicle;
 
 
_hasToolbox =    "ItemToolbox" in items player;
 
_nameType =        getText(configFile >> "cfgVehicles" >> _type >> "displayName");
_namePart =        getText(configFile >> "cfgMagazines" >> _part >> "displayName");
 
if (_hasToolbox) then {
    if (getDammage _vehicle < 2) then {
 
        _damage = [_vehicle,_hitpoint] call object_getHit;
        //check if part is not damaged and remove it
        if( _damage < 0.16 ) then {
                {silver_myCursorTarget removeAction _x} forEach s_player_removeActions;
                s_player_removeActions = [];
                silver_myCursorTarget = objNull;
 
                _selection = getText(configFile >> "cfgVehicles" >> _type >> "HitPoints" >> _hitpoint >> "name");
                //check if part is engine or fueltank, otherwise vehicle will explode if damage is set to 1.
                if( _hitpoint == "HitEngine" or _hitpoint == "HitFuel" ) then {
                    _total = [_vehicle,  _selection, 0.89,  _array, "zombie", true] call fnc_veh_handleDam;
                } else {
                    // set damage to 1
                    _total = [_vehicle,  _selection, 1,  _array, "zombie", true] call fnc_veh_handleDam;
                };
                //play animation
                player playActionNow "Medic";
                sleep 1;
 
                [player,"repair",0,false] call dayz_zombieSpeak;
                null = [player,10,true,(getPosATL player)] spawn player_alertZombies;
                sleep 5;
                _vehicle setvelocity [0,0,1];
   
            //recheck damage to be sure that part is removed from vehicle
                _damage = [_vehicle,_hitpoint] call object_getHit;
                if( _damage > 0.16 ) then {
                        _result = [player,_part] call BIS_fnc_invAdd;
                        //check if there is enough space in inventar
                        if (_result) then {
                            cutText [format["You have successfully taken %1 from the %2",_namePart,_nameType], "PLAIN DOWN"];
							//[player,1,1] call player_variableChange; //1,engineer:2,hunter:3,medic:4,soldier
                            [player,"Generic_Engineering"] call DZU_fnc_giveEXP;
                            
                        } else {
                            //if not enought space say "not enough space"
                            cutText [localize "str_player_24", "PLAIN DOWN"];
                            //and add the part back to the vehicle.
                            [_vehicle, _selection, 0, true] call fnc_veh_handleRepair;
							//[player,-1,1] call player_variableChange; //1,engineer:2,hunter:3,medic:4,soldier
                        };               
                };
            } else {
            cutText [format["Cannot remove %1 from %2, the part has been damaged.",_namePart,_nameType], "PLAIN DOWN"];
        };
    } else {
        {silver_myCursorTarget removeAction _x} forEach s_player_removeActions;
        s_player_removeActions = [];
        silver_myCursorTarget = objNull;
    };
};
 
if( silver_myCursorTarget != objNull ) then {
    {silver_myCursorTarget removeAction _x} forEach s_player_removeActions;
    s_player_removeActions = [];
    silver_myCursorTarget = objNull;
};
//update vehicle in database
[_vehicle,_type] spawn server_updateObject;
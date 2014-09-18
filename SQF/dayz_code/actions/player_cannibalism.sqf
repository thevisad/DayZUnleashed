private["_hasKnife","_qty","_item","_text","_string","_type","_loop","_meat","_timer"];
_item = _this select 3;
_hasKnife =    "ItemKnife" in items player;
_type = typeOf _item;
_hasHarvested = _item getVariable["meatHarvested",false];
 
player removeAction s_player_butcher;
s_player_butcher = -1;
 
if (_hasKnife and !_hasHarvested) then {
 
    _loop = true;
    _rnd = random 1;
 
    player playActionNow "Medic";
    [player,"gut",0,false] call dayz_zombieSpeak;
    _item setVariable["meatHarvested",true,true];
 
    if (_rnd < 0.1) then {
        r_player_inpain = true;
        player setVariable["USEC_inPain",true,true];
        r_player_blood = r_player_blood - 500;
        cutText ["You cut yourself while attempting to gut the player.", "PLAIN DOWN"];
    };
 
    _qty = (random 3);
 
    _id = [player,50,true,(getPosATL player)] spawn player_alertZombies;
 
	[player,-500] call player_humanityChange;
 
    _array = [_item,_qty];
    _meat = "FoodSteakRaw";
 
        for "_x" from 1 to _qty do {
                _item addMagazine "FoodSteakRaw";
                _result = [player,_meat] call BIS_fnc_invAdd;
                if (_result) then {
 
                } else {
                    cutText ["You didn't have enough room to store the meat :(", "PLAIN DOWN"];
                    _x = _qty;
                }
 
        };
 
    sleep 8;
    cutText ["You have cut up another human for food, you feel your humanity lower.", "PLAIN DOWN"];
	//[player,2,2] call player_variableChange; //1,engineer:2,hunter:3,medic:4,soldier
    [player,"Generic_Hunting"] call DZU_fnc_giveEXP;
};
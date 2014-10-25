//additional search condition to verify the player is not currently picking something.
// CHECK TO MAKE SURE THEY ARENT ALREADY PICKING: (!(player getVariable["PickingInProgress",false]))

if (player getVariable["PickingInProgress",false]) 
    exitWith {
		if (unleashed_debug == 1) then {
			diag_log "DZU_PickLock ERROR: Picking Already In Progress!"; 
		};
    };

player removeAction unleashed_hack_garage;
unleashed_hack_garage = -1; 

_args                   = _this select 3;
_onComplete             = _args select 1;
_onFail                 = _args select 2;
_onInterupt             = _args select 3;
_cursorTarget           = _args select 0;
_playerSkill            = [player,"Engineer"] call DZU_fnc_getVariable;        //Player skill used to lower timed loop
_searchMessage          = "Picking Lock %1%2";                                 //Search message to display to player. 
_searchTime             = 33;                                                  //Baseline search time in seconds, just dont change this
_requiredItems          = ["ItemToolbox"];                                     //Item needed in player inventory
_searchEXP              = "Generic_Engineering";                               //exp reward
_searchSkillCurve       = 11.8;                                                //Player skill divide by this skill to reduce total search time.  
_searchMinTick          = 3;                                                   //Absolute minimum time required to search
_failChance             = g_pickFailChance_dzu-1;                              //Chance to fail per second of searching.

if((count _args)>4)then{_failChance=_args select 4;};						   //Allow failchance override via script call.

        _searchTime = ( 
                    (round(_searchTime/(1+(_playerSkill/_searchSkillCurve))) max _searchMinTick)
                ); 
    player setVariable["PickingInProgress", true, false];
    _location = getPosATL player;
    _completed = true;
    _fail      = false;

   
if({_x in items player||_x in magazines player||_x in weapons player} count _requiredItems == count _requiredItems) then {
   //Search      
    for "_x" from 1 to _searchTime do {
        player playActionNow "PutDown";
        //null = [player,10,true,(getPosATL player)] spawn player_alertZombies;
        sleep 1;
        //roll failure
        _fail = ((floor(random(100))) < _failChance + _x);
        //check search
        if(
               ((_location distance (getPosATL player)) > 0.5 )
               ||        
               (!alive player)
               ||
               (_fail)
           ) exitWith {
             //Check failed exit search, set flag.  
             _completed = false;
           };
        //still valid   
        _percent =  str(floor((_x/_searchTime)*100))+"%";
        cutText [format[_searchMessage,_percent], "PLAIN DOWN"];
        };

    if(_fail)then{
    cutText [format[_searchMessage,"Failed"], "PLAIN DOWN"];
        if (_onFail !="")then{
            call compile format["_onFail=%1",_onFail];
            call _onFail;
        };
        
    } else {
    //We didn't fail, check to see if we completed the search.
        if(_completed) then {
            cutText [format[_searchMessage,"Success"], "PLAIN DOWN"];
            if (_onComplete !="")then{
                call compile format["_onComplete=%1",_onComplete];
                call _onComplete;
            };     
            
        } else {
            cutText [format[_searchMessage,"Interrupted"], "PLAIN DOWN"];
            if (_onInterupt !="")then{
                call compile format["_onInterupt=%1",_onInterupt];
                call _onInterupt;
            };
            
        };
        
    };
    
} else {
            _message=if(count _requiredItems==1)then{"you need a %1 to open this."}else{"You dont have the right tools to open this. %1"};
    cutText [format[_message,_requiredItems], "PLAIN DOWN"];
};
//end reset search item. 
 player setVariable["PickingInProgress", false, false];
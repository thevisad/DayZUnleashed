if ((isNil "_this")||(isNull _this)) exitWith {diag_log format["%1:ERROR> _this is not specifyed!","DZU_fnc_searchLoot"]; };
if (!(_this isKindOf "activeLoot")) exitWith {diag_log format["%1:ERROR> object is not type activeLoot: %2","DZU_fnc_searchLoot",(typeOf _this)]; };
//args
_object             = _this;
_config             = configFile >> "CfgVehicles" >> (typeof _object);
_searchSkill        = getText(_config >> "searchSkill");
_playerSkill        = [player,_searchSkill] call DZU_fnc_getVariable;
_survivalSkill      = [player,"Survival"] call DZU_fnc_getVariable;
_requiredSkill      = getNumber(_config >>"requiredSkill");
_displayName        = getText(_config >> "displayName");
_searchMessage      = getText(_config>>"searchMessage");
_searchTime         = getNumber(_config >>"searchTime");
_requiredItems      = getArray(_config >> "requiredItems");
_searchSkillCurve   = getNumber(_config >>"searchSkillCurve");
_searchMinTick      = getNumber(_config >>"minTick");
_lootTable          = getArray(_config >> "lootTable");
_lootMin            = getNumber(_config >>"minLootDrop");
_lootMax            = getNumber(_config >>"maxLootDrop");

     _searchTime = ( 
                    (floor(_searchTime/(1+(_playerSkill/_searchSkillCurve))) max _searchMinTick) max 1 
                   ); 
         player setVariable["SearchInProgress", _object, false];//(isNull (player getVariable[""SearchInProgress"",objNull]))
       _location = getPosATL player;
           //_time = 1;
      _completed = true;

/*
if(count _requiredItems>0) then {
_requiredItems = _requiredItems - (items player);
_requiredItems = _requiredItems - (weapons player);
_requiredItems = _requiredItems - (magazines player);
};
*/ 
//_canSearch= {_x in items player||_x in magazines player||_x in weapons player} count _requiredItems == count _requiredItems;
      
if({_x in items player||_x in magazines player||_x in weapons player} count _requiredItems == count _requiredItems) then {
	//Search      
    for "_x" from 1 to _searchTime do {
        player playActionNow "PutDown";
	    sleep 1;
	    //check search
	    if(
	        ((_location distance (getPosATL player)) > 0.1 )
	        ||
	        (_object != (player getVariable["SearchInProgress",objNull]))
	        ||
	        (isNull _object)
	        ||
	        (!alive player)
           ) exitWith {
             //Check failed exit search, set flag.  
	         _completed = false;
	         cutText [format[_searchMessage,"interupted"], "PLAIN DOWN"];
	       };
        //still valid   
        _percent =  str(floor((_x/_searchTime)*100))+"%";
		cutText [format[_searchMessage,_percent], "PLAIN DOWN"];
	    };
	
	if(_completed && (!isNull _object))then {
        cutText [format[_searchMessage,"Complete"], "PLAIN DOWN"];
        
	           	_searchSound   = getText(_config >> "searchSound");
			if (_searchSound != "") then {playSound _searchSound;};
			
			_position = getPosATL _object;
			deleteVehicle _object;
			_newObject = createVehicle [getText(_config >> "searchedClass"), _position, [], 0, "CAN_COLLIDE"];
			_newObject setposATL _position;
	   
			[_newObject,_survivalSkill,_lootMin,_lootMax,_lootTable] call DZU_fnc_addToLootBox;
	  
	        player action ["Gear", _newObject];
            
                _searchEXP = getText(_config >> "searchEXP");
            if (_searchEXP != "") then {sleep 1;[player,_searchEXP] call DZU_fnc_giveEXP;};                  
	};
} else {
            _message=if(count _requiredItems==1)then{"you need a %1 to open this %2."}else{"You dont have the right tools to open this %2. %1"};
    cutText [format[_message,_requiredItems,_displayName], "PLAIN DOWN"];
};
//end reset search item. 
 player setVariable["SearchInProgress", objNull, false];

if (({isNil "_x"} count _this) != 0) exitWith {diag_log format["%1:ERROR> all parameters must be defined values!","DZU_fnc_searchLoot"]; };
if((count _this)<2) exitWith {diag_log format["%1:ERROR> Requires at least %2 parameters!","DZU_fnc_searchLoot",2]; };
if (!((_this select 0) isKindOf "activeLoot")) exitWith {diag_log format["%1:ERROR> object is not type activeLoot:%2","DZU_fnc_searchLoot",_this]; };
//args
_object             = (_this select 0);
_person             = (_this select 1);
_config             = configFile >> "CfgVehicles" >> (typeof _object);
_searchSkill        = getText(_config >> "searchSkill");
_personSkill        = [_person,_searchSkill] call DZU_fnc_getVariable;
_requiredSkill      = getNumber(_config >>"requiredSkill");
_displayName        = getText(_config >> "displayName");
_searchMessage      = getText(_config>>"searchMessage");
_searchTime         = getNumber(_config >>"searchTime");
_requiredItems      = getArray(_config >> "requiredItems");
 
                    
     _searchTime = (_searchTime /( 1 + (_personSkill/getNumber(_config >>"searchSkillCurve")))) max getNumber(_config >>"minTick"); 
         _person   setVariable["SearchInProgress", _object, false];
       _location = getPosATL player;
           _time = 0;
      _completed = true;

if(count _requiredItems>0) then {
_requiredItems = _requiredItems - (items player);
_requiredItems = _requiredItems - (weapons player);
_requiredItems = _requiredItems - (magazines player);
};
//_canSearch= {_x in items player||_x in magazines player||_x in weapons player} count _requiredItems == count _requiredItems;
      
if(count _requiredItems==0) then {
	//Search      
	while{_searchTime > _time} do {
	    sleep 1;
	    
	    if((_location distance (getPosATL player)) > 0.1 ) exitWith {
	        _completed = false;
	        cutText [format[_searchMessage,"interupted"], "PLAIN DOWN"];
	    };
		
	    _time = _time + 1;
	    _percent =  str(floor((_time/_searchTime)*100))+"%";
		cutText [format[_searchMessage,_percent], "PLAIN DOWN"];
	};
	
	if(_completed)then {
	    if(isNull _object) exitWith {diag_log format["%1:ERROR> Loot went missing after search completed","DZU_fnc_searchLoot"];};
	           	_searchSound = getText(_config >> "searchSound");
			if (_searchSound != "") then {playSound _searchSound;};
			
			_position = getPosATL _object;
			deleteVehicle _object;
			_newObject = createVehicle [getText(_config >> "searchedClass"), _position, [], 0, "CAN_COLLIDE"];
			_newObject setposATL _position;
	   
			[_newObject,_person] call DZU_fnc_addToLootBox;
	  
	        player action ["Gear", _newObject];      
	};
} else {
_message=if(count _requiredItems==1)then{"you need a %1 to open this %2."}else{"You dont have the right tools to open this %2. %1"};
cutText [format[_message,_requiredItems,_displayName], "PLAIN DOWN"];
};
 _person setVariable["SearchInProgress", objNull, false];

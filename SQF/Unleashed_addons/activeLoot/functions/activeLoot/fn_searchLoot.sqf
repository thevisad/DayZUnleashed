if (({isNil "_x"} count _this) != 0) exitWith {diag_log format["%1:ERROR> all parameters must be defined values!","DZU_fnc_searchLoot"]; };
if((count _this)<2) exitWith {diag_log format["%1:ERROR> Requires at least %2 parameters!","DZU_fnc_searchLoot",2]; };
if (!((_this select 0) isKindOf "activeLoot")) exitWith {diag_log format["%1:ERROR> object is not type activeLoot:%2","DZU_fnc_searchLoot",_this]; };

_object             = (_this select 0);
_person             = (_this select 1);
_config             = configFile >> "CfgVehicles" >> (typeof _object);
//_location   = getPosATL _person;

_displayName       = getText(_config >> "displayName");
_searchSkill       = getText(_config >> "searchSkill");
_personSkill       = [_person,_searchSkill] call DZU_fnc_getVariable;
_requiredSkill     = getNumber(_config >>"requiredSkill");
//requiredskillCheck

_searchSkillCurve  = getNumber(_config >>"searchSkillCurve");
_searchedClass     = getText(_config >> "searchedClass");
_searchMessage     = getText(_config>>"searchMessage");
_searchTime        = getNumber(_config >>"searchTime");
_maxTick            = getNumber(_config >>"maxTick");

_searchTime = floor(_searchTime / (1+((_personSkill/_searchSkillCurve) min _maxTick)))+1; 
      _time = 0;
//if((_location distance (getPosATL _person)) > 0.1 ) exitWith{cutText [format["Stop moving, %1 > %2",_location,(getPosATL _person)], "PLAIN DOWN"];};             
while{_searchTime > _time} do {
_time=_time+1;
_completed =  str(floor((_time/_searchTime)*100) min 100)+"%";
cutText [format[_searchMessage,_displayName,_completed], "PLAIN DOWN"];
sleep 1;
};

if(isNull _object) exitWith {diag_log format["%1:ERROR> Loot went missing after search completed","DZU_fnc_searchLoot"];};

_position = getPosATL _object;
deleteVehicle _object;
_newObject = createVehicle [_searchedClass, _position, [], 0, "CAN_COLLIDE"];
_newObject setposATL _position;
_newObject addWeaponCargo ["M16A4",1];


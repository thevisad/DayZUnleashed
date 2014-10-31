private ["_activatingplayerUID","_class","_uid","_charID","_object","_worldspace","_key","_allowed","_obj","_objectID","_objectUID","_proceed","_activatingplayer"];
//[dayz_characterID,_tent,[_dir,_location],"TentStorage"]
_charID =		_this select 0;
_object = 		_this select 1;
_worldspace = 	_this select 2;
_class = 		_this select 3;
_obj = 		_this select 4;
_activatingplayer = 		_this select 5;
_activatingplayerUID = [_activatingplayer] call FNC_GetPlayerUID;
_proceed = false;

_objectID = "0";
_objectUID = "0";

if(!isNull(_obj)) then {
	// Find objectID
	_objectID 	= _obj getVariable ["ObjectID","0"];
	// Find objectUID
	_objectUID	= _obj getVariable ["ObjectUID","0"];
	_obj removeAllMPEventHandlers "MPKilled";
	// Remove old object
	deleteVehicle _obj;
	
	_proceed = true;
};

if(isNull(_object)) then {
	_proceed = false;
};

if(_objectID == "0" && _objectUID == "0") then { 
	_proceed = false;
} else {
	[_objectID,_objectUID,_activatingplayer] call server_deleteObj;
};

_allowed = [_object, "Server"] call check_publishobject;
if (!_allowed || !_proceed) exitWith { 
	if(!isNull(_object)) then {
		deleteVehicle _object; 
	};
	diag_log ("Invalid object swap by playerUID:"+ str(_activatingplayerUID));
};

// Publish variables
_object setVariable ["CharacterID",_charID,true];
		
//_object setVariable ["ObjectUID",_objectUID,true];
_object setVariable ["OEMPos",(_worldspace select 1),true];

//diag_log ("PUBLISH: Attempt " + str(_object));

//Send request
[_charID,_object,_worldspace,_class, 0 , "server_swapObject",dayz_playerUID,"0"] spawn server_publishBld;
_object setVariable ["lastUpdate",time];


_object addMPEventHandler ["MPKilled",{_this call object_handleServerKilled;}];
	
// Test disabling simulation server side on buildables only.
_object enableSimulation false;
diag_log ("PUBLISH: " + str(_activatingPlayer) + " upgraded " + (_class) + " with ID " + str(_uid));
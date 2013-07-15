private ["_panel","_convertInput"];
	
	//[_panel, _convertInput, globalAuthorizedUID] call add_UIDCode;		
	addUIDCode = false;
	_panel 			= _this select 0;
	_convertInput 	= _this select 1;
	//globalAuthorizedUID 	= _this select 3;
	for "_i" from 0 to (count _convertInput - 1) do {_convertInput set [_i, (_convertInput select _i) + 48]};
	if ((toString _convertInput) in globalAuthorizedUID) exitWith 
	{
		CODEINPUT = [];
		cuttext [format["PlayerUID %1 already in\nobject %2\n with UID: %3", (toString _convertInput), typeOf(_panel), str(keyCode)],"PLAIN DOWN",1];
		hint format["PlayerUID %1 already in\nobject %2\n with UID: %3", (toString _convertInput), typeOf(_panel), str(keyCode)];
	};
	globalAuthorizedUID set [count globalAuthorizedUID, (toString _convertInput)];
	_panel setVariable ["AuthorizedUID", globalAuthorizedUID, true];
	// Update to database
	dayzUpdateVehicle = [_panel,"gear"];
	publicVariableServer "dayzUpdateVehicle";
	if (isServer) then {
		dayzUpdateVehicle call server_updateObject;
	};
	hint format["PlayerUID %1 access granted to\nobject %2\n with UID: %3", (toString _convertInput), typeOf(_panel), str(keyCode)];
	cuttext [format["PlayerUID %1 access granted to\nobject %2\n with UID: %3", (toString _convertInput), typeOf(_panel), str(keyCode)],"PLAIN DOWN",1];
	CODEINPUT = [];

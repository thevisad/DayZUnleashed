private ["_authorizedUID","_nearbyPanel","_playerUID","_isPanel","_validObject","_validObjectCode","_panelPos","_playerPos","_cnt","_gateAccess","_inVehicle","_soundSource","_panel","_convertInput","_code", "_inputCode", "_validMatch"];
_panel = cursortarget;
_playerPos = getpos player;
_panelPos = getpos _panel;
_playerUID = GetPlayerUID player;
_nearbyPanel = nearestObject [(getposATL _panel), "Infostand_2_EP1"];
_cnt = 600;
_validMatch = false;
_validObjectCode = false;
keyCode = _this select 0;
	// This is only if we are adding/removing playerUIDs and not entering code to operate gate
	if (addUIDCode) exitWith 
	{
		//_authorizedUID = _panel getVariable "AuthorizedUID";
		_inputCode = _this select 1;
		_convertInput =+ _inputCode;
		[_panel, _convertInput] spawn add_UIDCode;		
	};
	if (removeUIDCode) exitWith 
	{
		//_authorizedUID = _panel getVariable "AuthorizedUID";
		_inputCode = _this select 1;
		_convertInput =+ _inputCode;
		[_panel, _convertInput] spawn remove_UIDCode;
	};
//hint format["keycode after enter: %1", keyCode];
sleep 3;
_code = keyCode;
_inputCode = _this select 1;
//hint format["Keycode: %1 | CodeInput: %2", _code, _inputCode];
_convertInput =+ _inputCode;
for "_i" from 0 to (count _convertInput - 1) do {_convertInput set [_i, (_convertInput select _i) + 48]};
//hint format["Keycode: %1 | CodeInput: %2", _code, (toString _convertInput)];

// compare arrays to see if code matches
	if ((typeOf(_panel) == "Infostand_2_EP1") || (typeOf(_panel) == "Fence_corrugated_plate")) then {
	_validMatch = [_code, (toString _convertInput)] call BIS_fnc_areEqual;
	} else {
	_validObjectCode = [_code, (toString _convertInput)] call BIS_fnc_areEqual;
	};

//Determine camoNet since camoNets cannot be targeted with Crosshair
switch (true) do
{
	case(camoNetB_East distance player < 10 && isNull _panel):
	{
		_panel = camoNetB_East;
		_panelPos = getpos _panel;
	};
	case(camoNetVar_East distance player < 10 && isNull _panel):
	{
		_panel = camoNetVar_East;
		_panelPos = getpos _panel;
	};
	case(camoNet_East distance player < 10 && isNull _panel):
	{
		_panel = camoNet_East;
		_panelPos = getpos _panel;
	};
	case(camoNetB_Nato distance player < 10 && isNull _panel):
	{
		_panel = camoNetB_Nato;
		_panelPos = getpos _panel;
	};
	case(camoNetVar_Nato distance player < 10 && isNull _panel):
	{
		_panel = camoNetVar_Nato;
		_panelPos = getpos _panel;
	};
	case(camoNet_Nato distance player < 10 && isNull _panel):
	{
		_panel = camoNet_Nato;
		_panelPos = getpos _panel;
	};
};

if (_validMatch) then {
		cutText ["### ACCESS GRANTED ###", "PLAIN DOWN"];
		// Make it so we dont have to keep typing in the damn code!
		_authorizedUID = _panel getVariable "AuthorizedUID";
		_authorizedUID set [count _authorizedUID, _playerUID];
		_panel setVariable ["AuthorizedUID", _authorizedUID, true];
		dayzUpdateVehicle = [_panel,"gear"];
		publicVariableServer "dayzUpdateVehicle";
		if (isServer) then {
			dayzUpdateVehicle call server_updateObject;
		};
		playsound "beep";
		sleep 0.5;
		playsound "beep";
		sleep 0.5;
		playsound "beep";

		_gateAccess = true;
		sleep 2;
		cutText ["You can now operate the bases gate panel(s)", "PLAIN DOWN"];
} else {
if (!_validObjectCode) then {
	removeObject = false;
	cutText ["!!! ACCESS DENIED !!!", "PLAIN DOWN"];
	playsound "beep";
	sleep 2;
	cutText ["Wrong code was entered", "PLAIN DOWN"];
	} else {
	removeObject = true;
	//_validObject setVariable ["validObject",true];
	_panel setVariable ["validObject", true];
	cutText ["### ACCESS GRANTED ###\n You can now delete object", "PLAIN DOWN"];
	playsound "beep";
	sleep 0.5;
	playsound "beep";
	sleep 0.5;
	playsound "beep";
	_gateAccess = true;
		while {_gateAccess} do 
		{
			_playerPos = getpos player;
			_panelPos = getpos _panel;
			//_inVehicle = (vehicle player != player);
			if (_playerPos distance _panelPos > 5) then {
				_gateAccess = false;
				cutText ["Object access lost, player > 5 meters away", "PLAIN DOWN"];
			};
			_cnt = _cnt - 1;
			if (_cnt <= 600 && _cnt % 10 == 0) then {
				cutText [format["Access to object expires in %1 seconds",(_cnt / 10)], "PLAIN DOWN",1];
			};	
			if (_cnt <= 0) then {
				_gateAccess = false;
				cutText ["You no longer have object access, type code in again to have access", "PLAIN DOWN"];
			};
		sleep .1;
		};
		removeObject = false;
	};
};

CODEINPUT = [];

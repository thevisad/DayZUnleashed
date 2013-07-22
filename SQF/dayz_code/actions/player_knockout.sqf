private["_hasCrowbar1","_item","_text","_body","_name","_hasCrowbar2","_knockoutMode"];
_body = 	_this select 3;
_onLadder =		(getNumber (configFile >> "CfgMovesMaleSdr" >> "States" >> (animationState player) >> "onLadder")) == 1;

if (_onLadder) exitWith {cutText ["You can't knock a player out while you're on a ladder; don't you know anything?" , "PLAIN DOWN"]};

//\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
// Knockout Configuration \\\\\\\\\\\\\\\\\\\\\\\\\
///////////////////////////////////////////////////
//==============================================//
// Knockout Gear Requirements
//--------------------------------------------//
// 2: Weapon (Primary or Secondary) Required
// 1: Crowbar Required
// 0: Nothing Required 
//---------------------------------------//
_knockoutMode = 0;
//=====================================//
// Credits
//-----------------------------------//
// Script by Player2
// Thanks To:
// DayZRedux, OpenDayZ
// GhostZ, Gorsy
//==============================//
// www.ZombZ.net
//============================//

_hasCrowbar1 = "MeleeCrowbar" in weapons player;
_hasCrowbar2 = "ItemCrowbar" in items player;
_hasPrimary = 0;

 if (PrimaryWeapon player != "") then {
	 _hasPrimary = 1;
 } else {
	_hasPrimary = 0;
 };
 

if (_knockoutMode == 0) then {
	dayz_knockout = [_body,3.5];
	publicVariable "dayz_knockout";
	player playActionNow "PutDown";
	sleep 1;
};

if (_knockoutMode == 1) then {
	if (_hasCrowbar1) then {
		dayz_knockout = [_body,3.5];
		publicVariable "dayz_knockout";
		player playActionNow "PutDown";
		sleep 1;
	};

	if (_hasCrowbar2) then {
		dayz_knockout = [_body,3.5];
		publicVariable "dayz_knockout";
		player playActionNow "PutDown";
		sleep 1;
	};

	if (!_hasCrowbar1 and !_hasCrowbar2) exitWith 
	{
		cutText ["You need a Crowbar for this!" , "PLAIN DOWN"];
	};
};

if (_knockoutMode == 2) then {
	if (_hasPrimary == 1) then {
		dayz_knockout = [_body,3.5];
		publicVariable "dayz_knockout";
		player playActionNow "PutDown";
		sleep 1;
	} else {
		cutText ["You need a Primary Weapon for this!" , "PLAIN DOWN"];
	};
};
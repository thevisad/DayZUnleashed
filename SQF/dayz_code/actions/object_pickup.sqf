private["_array","_type","_classname","_holder","_playerID","_text","_broken","_claimedBy","_config","_isOk"];

_array = _this select 3;
_type = _array select 0;
_classname = _array select 1;
_holder = _array select 2;

if (player distance _holder > 3) exitwith {"You need to be within 3 meters to pickup!","PLAIN DOWN"};

_playerID = getPlayerUID player;
player removeAction s_player_holderPickup;
_text = getText (configFile >> _type >> _classname >> "displayName");

if (!canPickup) exitwith {
	if (pickupInit) then {
		cutText ["[ANTI-DUPE] You must wait to pickup this item!","PLAIN DOWN"]
	} else {
		cutText ["[ANTI-DUPE] You may only pickup one item at a time!","PLAIN DOWN"]
	};
};

_claimedBy = _holder getVariable "claimed";

if (isnil "claimed") then {
	_holder setVariable["claimed",_playerID,true];
};

canPickup = false;

if(_classname isKindOf "TrapBear") exitwith {deleteVehicle _holder;};

player playActionNow "PutDown";

//Adding random chance of arrow is re-usable on pickup
_broken = false;
if(_classname == "WoodenArrow") then {
	if (15 > random 100) then {
		_broken = true;
	};
};
if (_broken) exitWith { deleteVehicle _holder; cutText [localize "str_broken_arrow", "PLAIN DOWN"]; };

sleep 0.25; //Why are we waiting? Animation

_claimedBy = _holder getVariable["claimed","0"];

if (_claimedBy != _playerID) exitWith {cutText [format[(localize "str_player_beinglooted"),_text] , "PLAIN DOWN"]; };

if(_classname isKindOf "Bag_Base_EP1") exitwith {

	_PlayerNear = {isPlayer _x} count ((getPosATL _holder) nearEntities ["CAManBase", 10]) > 1;
	if (_PlayerNear) exitWith {cutText [format["Another Player Near by, Only one player must be within 5 meters of a bag to pickup"] , "PLAIN DOWN"]};
	if (unleashed_debug == 1) then {
		diag_log(format["COP: Picked up a bag:%1 ",_classname]);
	};
	player action ["TakeBag", _holder];
};

_config = (configFile >> _type >> _classname);

//Remove melee magazines (BIS_fnc_invAdd fix)
{player removeMagazines _x} forEach MeleeMagazines;

_isOk = [player,_config] call BIS_fnc_invAdd;
waitUntil {!isNil "_isOk"};
if (_isOk) then {
	deleteVehicle _holder;
} else {
	if (!_isOk) exitWith {
		_holder setVariable["claimed",0,true];
		cutText [localize "str_player_24", "PLAIN DOWN"];
	};
};


sleep 3;

//adding melee mags back if needed
_wpn = primaryWeapon player;
_ismelee = (gettext (configFile >> "CfgWeapons" >> _wpn >> "melee"));
if (_ismelee == "true") then {
	call dayz_meleeMagazineCheck;
};
private["_qty_quivers","_control","_qty_quiverarrows","_empty","_emptymagslotcount"];

disableSerialization;
call gear_ui_init;

_qty_quivers = {_x == "Quiver"} count magazines player;
_control = uiNamespace getVariable 'uiControl';
_qty_quiverarrows = gearSlotAmmoCount _control;

//Remove melee magazines (BIS_fnc_invAdd fix) (add new melee ammo to array if needed)
{player removeMagazines _x} forEach ["hatchet_swing","crowbar_swing","Machete_swing","Bat_Swing","BatBarbed_Swing","BatNails_Swing","Fishing_Swing","sledge_swing"];

_empty = [player] call BIS_fnc_invSlotsEmpty;
_emptymagslotcount = _empty select 4; //empty magazines slots

//adding melee mags back if needed
switch (primaryWeapon player) do {
	case "MeleeHatchet": {player addMagazine 'hatchet_swing';};
	case "MeleeCrowbar": {player addMagazine 'crowbar_swing';};
	case "MeleeMachete": {player addMagazine 'Machete_swing';};	
	case "MeleeFishingPole": {player addMagazine 'Fishing_Swing';};
	case "MeleeSledge": {player addMagazine 'sledge_swing';};
	case "MeleeBaseBallBat": {player addMagazine 'Bat_Swing';};
	case "MeleeBaseBallBatBarbed": {player addMagazine 'BatBarbed_Swing';};
	case "MeleeBaseBallBatNails": {player addMagazine 'BatNails_Swing';};
};

if (_qty_quivers > 1) exitWith { cutText ["You cannot have more quivers.", "PLAIN DOWN"];};
if (_qty_quiverarrows == 2) then { //remove quiver - add 2 arrows
	if (_emptymagslotcount > 0) then {
		player removeMagazine "Quiver";
		player addMagazine "WoodenArrow";
		player addMagazine "WoodenArrow";
	} else {
		cutText [localize "str_player_24", "PLAIN DOWN"]; //Error
	};
} else {
	if (_emptymagslotcount > 0) then {
		player removeMagazine "Quiver";
		player addMagazine "WoodenArrow";
		player addMagazine ["Quiver",_qty_quiverarrows-1];
	} else {
		cutText [localize "str_player_24", "PLAIN DOWN"]; //Error
	};
};

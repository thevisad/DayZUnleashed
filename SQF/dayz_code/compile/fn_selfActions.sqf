scriptName "Functions\misc\fn_selfActions.sqf";
/***********************************************************
	ADD ACTIONS FOR SELF
	- Function
	- [] call fnc_usec_selfActions;
************************************************************/
private["_isStash","_vehicle","_inVehicle","_bag","_classbag","_isWater","_hasAntiB","_hasFuelE","_hasFuel5","_hasbottleitem","_hastinitem","_hasKnife","_hasToolbox","_hasTent","_onLadder","_nearLight","_canPickLight","_canDo","_text","_isHarvested","_isVehicle","_isVehicletype","_isMan","_ownerID","_isAnimal","_isDog","_isZombie","_isDestructable","_isTent","_isFuel","_isAlive","_canmove","_rawmeat","_hasRawMeat","_allFixed","_hitpoints","_damage","_part","_cmpt","_damagePercent","_color","_string","_handle","_dogHandle","_lieDown","_warn","_dog","_speed"];

_vehicle = vehicle player;
_inVehicle = (_vehicle != player);
_bag = unitBackpack player;
_classbag = typeOf _bag;
_isWater = (surfaceIsWater (position player)) or dayz_isSwimming;
_hasAntiB = "ItemAntibiotic" in magazines player;
_hasFuelE20 = "ItemJerrycanEmpty" in magazines player;
_hasFuelE5 = "ItemFuelcanEmpty" in magazines player;
//boiled Water
_hasbottleitem = "ItemWaterbottle" in magazines player;
_hastinitem = false;
{
    if (_x in magazines player) then {
        _hastinitem = true;
    };

} forEach boil_tin_cans;


_hasKnife = "ItemKnife" in items player;
_hasToolbox = "ItemToolbox" in items player;
//_hasTent = "ItemTent" in items player;
_onLadder = (getNumber (configFile >> "CfgMovesMaleSdr" >> "States" >> (animationState player) >> "onLadder")) == 1;
_nearLight = nearestObject [player,"LitObject"];

_canPickLight = false;

if (!isNull _nearLight) then {
	if (_nearLight distance player < 4) then {
		_canPickLight = isNull (_nearLight getVariable ["owner",objNull]);
	};
};
_canDo = (!r_drag_sqf and !r_player_unconscious and !_onLadder);


//##### BASE BUILDING 1.2 Custom Actions (CROSSHAIR IS TARGETING NOTHING) #####
// #### START1 ####
_currentSkin = typeOf(player);
			// Get closest camonet since we cannot target with crosshair Base Building Script, got lazy here, didnt fix with array
			camoNetB_East = nearestObject [player, "Land_CamoNetB_EAST"];
			camoNetVar_East = nearestObject [player, "Land_CamoNetVar_EAST"];
			camoNet_East = nearestObject [player, "Land_CamoNet_EAST"];
			camoNetB_Nato = nearestObject [player, "Land_CamoNetB_NATO"];
			camoNetVar_Nato = nearestObject [player, "Land_CamoNetVar_NATO"];
			camoNet_Nato = nearestObject [player, "Land_CamoNet_NATO"];
	// Check mags in player inventory to show build recipe menu	
	_mags = magazines player;
	if ("ItemTankTrap" in _mags || "ItemSandbag" in _mags || "ItemWire" in _mags || "PartWoodPile" in _mags || "PartGeneric" in _mags) then {
		hasBuildItem = true;
	} else { hasBuildItem = false;};
	//Build Recipe Menu Action
	if((speed player <= 1) && hasBuildItem && _canDo) then {
		if (s_player_recipeMenu < 0) then {
			s_player_recipeMenu = player addaction [("<t color=""#0074E8"">" + ("Build Recipes") +"</t>"),"\z\addons\dayz_code\buildRecipeBook\build_recipe_dialog.sqf","",5,false,true,"",""];
		};
	} else {
		player removeAction s_player_recipeMenu;
		s_player_recipeMenu = -1;
	};

	//Add in custom eventhandlers or whatever on skin change
	if (_currentSkin != globalSkin) then {
		globalSkin = _currentSkin;
		player removeMPEventHandler ["MPHit", 0]; 
		player removeEventHandler ["AnimChanged", 0];
		ehWall = player addEventHandler ["AnimChanged", { player call antiWall; } ];
	};
	// Remove CamoNets, (Not effecient but works)
	if((isNull cursorTarget) && _hasToolbox && _canDo && !remProc && !procBuild && 
		(camoNetB_East distance player < 10 or 
		camoNetVar_East distance player < 10 or 
		camoNet_East distance player < 10 or 
		camoNetB_Nato distance player < 10 or 
		camoNetVar_Nato distance player < 10 or 
		camoNet_Nato distance player < 10)) then {
		if (s_player_deleteCamoNet < 0) then {
			s_player_deleteCamoNet = player addaction [("<t color=""#F01313"">" + ("Remove Netting") +"</t>"),"\z\addons\dayz_code\actions\player_remove.sqf","",1,true,true,"",""];
			s_player_netCodeObject = player addaction [("<t color=""#8E11F5"">" + ("Enter Code of Object to remove Netting") +"</t>"),"\z\addons\dayz_code\external\keypad\fnc_keyPad\enterCode.sqf","",5,false,true,"",""];
		};
	} else {
		player removeAction s_player_deleteCamoNet;
		s_player_deleteCamoNet = -1;
		player removeAction s_player_netCodeObject;
		s_player_netCodeObject = -1;
	};
	
		
	// Remove CamoNets Owner removal, (Not effecient but works)
if(_canDo && removeObject && !procBuild && !remProc && 
(camoNetB_East distance player < 10 or 
camoNetVar_East distance player < 10 or 
camoNet_East distance player < 10 or 
camoNetB_Nato distance player < 10 or 
camoNetVar_Nato distance player < 10 or 
camoNet_Nato distance player < 10)) then {
		if (s_player_codeRemoveNet < 0) then {
			s_player_codeRemoveNet = player addaction [("<t color=""#8E11F5"">" + ("Base Owners Remove Object Netting") +"</t>"),"\z\addons\dayz_code\actions\player_remove.sqf","",5,false,true,"",""];
		};
	} else {
			player removeAction s_player_codeRemoveNet;
			s_player_codeRemoveNet = -1;
	};
	
//##### BASE BUILDING 1.2 Custom Actions (CROSSHAIR IS TARGETING NOTHING) #####
// #### END1 ####

//Grab Flare
if (_canPickLight and !dayz_hasLight) then {
	if (s_player_grabflare < 0) then {
		_text = getText (configFile >> "CfgAmmo" >> (typeOf _nearLight) >> "displayName");
		s_player_grabflare = player addAction [format[localize "str_actions_medical_15",_text], "\z\addons\dayz_code\actions\flare_pickup.sqf",_nearLight, 1, false, true, "", ""];
		s_player_removeflare = player addAction [format[localize "str_actions_medical_17",_text], "\z\addons\dayz_code\actions\flare_remove.sqf",_nearLight, 1, false, true, "", ""];
	};
} else {
	player removeAction s_player_grabflare;
	player removeAction s_player_removeflare;
	s_player_grabflare = -1;
	s_player_removeflare = -1;
};

if (!isNull cursorTarget and !_inVehicle and (player distance cursorTarget < 4)) then { //Has some kind of target
	_isHarvested = cursorTarget getVariable["meatHarvested",false];
	_isVehicle = cursorTarget isKindOf "AllVehicles";
	_isVehicletype = typeOf cursorTarget in ["ATV_US_EP1","ATV_CZ_EP1"];
	_isMan = cursorTarget isKindOf "Man";
	_ownerID = cursorTarget getVariable ["characterID","0"];
	_isAnimal = cursorTarget isKindOf "Animal";
	_isDog = (cursorTarget isKindOf "DZ_Pastor" || cursorTarget isKindOf "DZ_Fin");
	_isZombie = cursorTarget isKindOf "zZombie_base";
	_isDestructable = cursorTarget isKindOf "BuiltItems";
	_isTent = cursorTarget isKindOf "TentStorage";
	_isStash = cursorTarget isKindOf "StashSmall";
	_isMediumStash = cursorTarget isKindOf "StashMedium";
	_isFuel = false;
	_hasFuel20 = "ItemJerrycan" in magazines player;
	_hasFuel5 = "ItemFuelcan" in magazines player;
	_isAlive = alive cursorTarget;
	_canmove = canmove cursorTarget;
	_text = getText (configFile >> "CfgVehicles" >> typeOf cursorTarget >> "displayName");

	_rawmeat = meatraw;
	_hasRawMeat = false;
		{
			if (_x in magazines player) then {
				_hasRawMeat = true;
			};
		} forEach _rawmeat;


	if (_hasFuelE20 or _hasFuelE5) then {
		_isFuel = (cursorTarget isKindOf "Land_Ind_TankSmall") or (cursorTarget isKindOf "Land_fuel_tank_big") or (cursorTarget isKindOf "Land_fuel_tank_stairs") or (cursorTarget isKindOf "Land_wagon_tanker");
	};
	//diag_log ("OWNERID = " + _ownerID + " CHARID = " + dayz_characterID + " " + str(_ownerID == dayz_characterID));
		
	//##### BASE BUILDING 1.2 Custom Actions (CROSSHAIR HAS A TARGET) #####
	// ##### START #####
	// Operate Gates
	if ((dayz_myCursorTarget != cursorTarget) && (cursorTarget isKindOf "Infostand_2_EP1") && keyValid) then {
		_lever = cursorTarget;
		{dayz_myCursorTarget removeAction _x} forEach s_player_gateActions;s_player_gateActions = [];
		dayz_myCursorTarget = _lever;
		_gates = nearestObjects [_lever, ["Concrete_Wall_EP1"], 100];
		if (count _gates > 0) then {
			_handle = dayz_myCursorTarget addAction ["Operate Gate", "\z\addons\dayz_code\external\keypad\fnc_keyPad\operate_gates.sqf", _lever, 1, false, true, "", ""];
			s_player_gateActions set [count s_player_gateActions,_handle];
		};
	};

	// Remove Object Custom removal test
	if((typeOf(cursortarget) in allremovables) && _hasToolbox && _canDo && !remProc && !procBuild && !removeObject) then {
		if (s_player_deleteBuild < 0) then {
			s_player_deleteBuild = player addAction [format[localize "str_actions_delete",_text], "\z\addons\dayz_code\actions\player_remove.sqf",cursorTarget, 1, true, true, "", ""];
		};
	} else {
		player removeAction s_player_deleteBuild;
		s_player_deleteBuild = -1;
	};
	

	// Enter Code to Operate Gates Action
	if((speed player <= 1) && !keyValid && (typeOf(cursortarget) == "Infostand_2_EP1") && cursorTarget distance player < 5 && _canDo) then {
		if (s_player_enterCode < 0) then {
			s_player_enterCode = player addaction [("<t color=""#4DFF0D"">" + ("Enter Key Code to Operate Gate") +"</t>"),"\z\addons\dayz_code\external\keypad\fnc_keyPad\enterCode.sqf","",5,false,true,"",""];
		};
	} else {
		player removeAction s_player_enterCode;
		s_player_enterCode = -1;
	};
	
	// Enter Code to remove object
	if((speed player <= 1) && !removeObject && (typeOf(cursortarget) in allbuildables_class) && cursorTarget distance player < 5 && _canDo) then {
			if (s_player_codeObject < 0) then {
				s_player_codeObject = player addaction [("<t color=""#8E11F5"">" + ("Enter Code of Object to remove") +"</t>"),"\z\addons\dayz_code\external\keypad\fnc_keyPad\enterCode.sqf","",5,false,true,"",""];
			};
	} else {
		player removeAction s_player_codeObject;
		s_player_codeObject = -1;
	};

	
	// Remove Object from code
	if((typeOf(cursortarget) in allbuildables_class) && _canDo && removeObject && !procBuild && !remProc) then {
		_validObject = cursortarget getVariable ["validObject",false];
		if (_validObject) then {
			if (s_player_codeRemove < 0) then {
				s_player_codeRemove = player addaction [("<t color=""#8E11F5"">" + ("Base Owners Remove Object") +"</t>"),"\z\addons\dayz_code\actions\player_remove.sqf","",5,false,true,"",""];
			};
		} else {
			player removeAction s_player_codeRemove;
			s_player_codeRemove = -1;
		};
	} else {
		player removeAction s_player_codeRemove;
		s_player_codeRemove = -1;
	};
	// Disarm Booby Trap Action
	if(_hasToolbox && _canDo && !remProc && !procBuild && (cursortarget iskindof "Grave" && cursortarget distance player < 2.5 && !(cursortarget iskindof "Body" || cursortarget iskindof "GraveCross1" || cursortarget iskindof "GraveCross2" || cursortarget iskindof "GraveCrossHelmet" || cursortarget iskindof "Land_Church_tomb_1" || cursortarget iskindof "Land_Church_tomb_2" || cursortarget iskindof "Land_Church_tomb_3" || cursortarget iskindof "Mass_grave"))) then {
		if (s_player_disarmBomb < 0) then {
			s_player_disarmBomb = player addaction [("<t color=""#F01313"">" + ("Disarm Bomb") +"</t>"),"\z\addons\dayz_code\actions\player_disarmBomb.sqf","",1,true,true,"", ""];
		};
	} else {
		player removeAction s_player_disarmBomb;
		s_player_disarmBomb = -1;
	};
	
//##### BASE BUILDING 1.2 Custom Actions (CROSSHAIR HAS A TARGET) #####
// ##### END #####

// THIS NEEDS TO BE REMOVED \/ \/ \/ For BASE BUILDING REMOVAL TO WORK
/*  << REMOVE THESE TOO! 
	
	
	//Allow player to delete objects
	if(_isDestructable and _hasToolbox and _canDo) then {
		if (s_player_deleteBuild < 0) then {
			s_player_deleteBuild = player addAction [format[localize "str_actions_delete",_text], "\z\addons\dayz_code\actions\remove.sqf",cursorTarget, 1, true, true, "", ""];
		};
	} else {
		player removeAction s_player_deleteBuild;
		s_player_deleteBuild = -1;
	};
	
*/ //<< REMOVE THESE TOO!
// THIS NEEDS TO BE REMOVED /\ /\ /\ For BASE BUILDING REMOVAL TO WORK

	//Allow player to force save
	if((_isVehicle or _isTent or _isStash or _isMediumStash) and _canDo and !_isMan and (damage cursorTarget < 1)) then {
		if (s_player_forceSave < 0) then {
			s_player_forceSave = player addAction [format[localize "str_actions_save",_text], "\z\addons\dayz_code\actions\forcesave.sqf",cursorTarget, 1, true, true, "", ""];
		};
	} else {
		player removeAction s_player_forceSave;
		s_player_forceSave = -1;
	};

	//flip vehicle
	if ((_isVehicletype) and !_canmove and _isAlive and (player distance cursorTarget >= 2) and (count (crew cursorTarget))== 0 and ((vectorUp cursorTarget) select 2) < 0.5) then {
		if (s_player_flipveh < 0) then {
			s_player_flipveh = player addAction [format[localize "str_actions_flipveh",_text], "\z\addons\dayz_code\actions\player_flipvehicle.sqf",cursorTarget, 1, true, true, "", ""];
		};
	} else {
		player removeAction s_player_flipveh;
		s_player_flipveh = -1;
	};

	//Allow player to fill Fuel can
	if((_hasFuelE20 or _hasFuelE5) and _isFuel and _canDo and !a_player_jerryfilling) then {
		if (s_player_fillfuel < 0) then {
			s_player_fillfuel = player addAction [localize "str_actions_self_10", "\z\addons\dayz_code\actions\jerry_fill.sqf",[], 1, false, true, "", ""];
		};
	} else {
		player removeAction s_player_fillfuel;
		s_player_fillfuel = -1;
	};

	//Allow player to fill vehilce 20L
	if(_hasFuel20 and _canDo and _isVehicle and (fuel cursorTarget < 1)) then {
		if (s_player_fillfuel20 < 0) then {
			s_player_fillfuel20 = player addAction [format[localize "str_actions_medical_10"+" with 20L",_text], "\z\addons\dayz_code\actions\refuel.sqf",["ItemJerrycan"], 0, true, true, "", "'ItemJerrycan' in magazines player"];
		};
	} else {
		player removeAction s_player_fillfuel20;
		s_player_fillfuel20 = -1;
	};

	//Allow player to fill vehilce 5L
	if(_hasFuel5 and _canDo and _isVehicle and (fuel cursorTarget < 1)) then {
		if (s_player_fillfuel5 < 0) then {
			s_player_fillfuel5 = player addAction [format[localize "str_actions_medical_10"+" with 5L",_text], "\z\addons\dayz_code\actions\refuel.sqf",["ItemFuelcan"], 0, true, true, "", "'ItemFuelcan' in magazines player"];
		};
	} else {
		player removeAction s_player_fillfuel5;
		s_player_fillfuel5 = -1;
	};

	//Harvested
	if (!alive cursorTarget and _isAnimal and _hasKnife and !_isHarvested and _canDo) then {
		if (s_player_butcher < 0) then {
			s_player_butcher = player addAction [localize "str_actions_self_04", "\z\addons\dayz_code\actions\gather_meat.sqf",cursorTarget, 3, true, true, "", ""];
		};
	} else {
		player removeAction s_player_butcher;
		s_player_butcher = -1;
	};

	//Fireplace Actions check
	if (inflamed cursorTarget and _hasRawMeat and _canDo and !a_player_cooking) then {
		if (s_player_cook < 0) then {
			s_player_cook = player addAction [localize "str_actions_self_05", "\z\addons\dayz_code\actions\cook.sqf",cursorTarget, 3, true, true, "", ""];
		};
	} else {
		player removeAction s_player_cook;
		s_player_cook = -1;
	};
	if (inflamed cursorTarget and (_hasbottleitem and _hastinitem) and _canDo and !a_player_boil) then {
		if (s_player_boil < 0) then {
			s_player_boil = player addAction [localize "str_actions_boilwater", "\z\addons\dayz_code\actions\boil.sqf",cursorTarget, 3, true, true, "", ""];
		};
	} else {
		player removeAction s_player_boil;
		s_player_boil = -1;
	};

	if(cursorTarget == dayz_hasFire and _canDo) then {
		if ((s_player_fireout < 0) and !(inflamed cursorTarget) and (player distance cursorTarget < 3)) then {
			s_player_fireout = player addAction [localize "str_actions_self_06", "\z\addons\dayz_code\actions\fire_pack.sqf",cursorTarget, 0, false, true, "",""];
		};
	} else {
		player removeAction s_player_fireout;
		s_player_fireout = -1;
	};

	//Packing my tent
	if(cursorTarget isKindOf "TentStorage" and _canDo and _ownerID == dayz_characterID) then {
		if ((s_player_packtent < 0) and (player distance cursorTarget < 3)) then {
			s_player_packtent = player addAction [localize "str_actions_self_07", "\z\addons\dayz_code\actions\tent_pack.sqf",cursorTarget, 0, false, true, "",""];
		};
	} else {
		player removeAction s_player_packtent;
		s_player_packtent = -1;
		};

	//Sleep
	if(cursorTarget isKindOf "TentStorage" and _canDo and _ownerID == dayz_characterID) then {
		if ((s_player_sleep < 0) and (player distance cursorTarget < 3)) then {
			s_player_sleep = player addAction [localize "str_actions_self_sleep", "\z\addons\dayz_code\actions\player_sleep.sqf",cursorTarget, 0, false, true, "",""];
		};
	} else {
		player removeAction s_player_sleep;
		s_player_sleep = -1;
	};

	//Repairing Vehicles
	if ((dayz_myCursorTarget != cursorTarget) and _isVehicle and !_isMan and _hasToolbox and (damage cursorTarget < 1)) then {
		_vehicle = cursorTarget;
		{dayz_myCursorTarget removeAction _x} forEach s_player_repairActions;s_player_repairActions = [];
		dayz_myCursorTarget = _vehicle;

		_allFixed = true;
		_hitpoints = _vehicle call vehicle_getHitpoints;

		{
			_damage = [_vehicle,_x] call object_getHit;

			_cmpt = toArray (_x);
			_cmpt set [0,20];
			_cmpt set [1,toArray ("-") select 0];
			_cmpt set [2,20];
			_cmpt = toString _cmpt;

			_configVeh = configFile >> "cfgVehicles" >> "RepairParts" >> _x;
			_part = getText(_configVeh >> "part");
			if (isnil ("_part")) then { _part = "PartGeneric"; };

			// get every damaged part no matter how tiny damage is!
			_damagePercent = round((1 - _damage) * 100);
			if (_damage > 0) then {
				_allFixed = false;
				_color = "color='#ffff00'"; //yellow
				if (_damage >= 0.5) then {_color = "color='#ff8800'";}; //orange
				if (_damage >= 0.9) then {_color = "color='#ff0000'";}; //red
				_cmpt = format[localize "str_actions_medical_09_status",_cmpt,_damagePercent];

				_string = format[localize "str_actions_medical_09",_cmpt,_color]; //Repair - Part
				_handle = dayz_myCursorTarget addAction [_string, "\z\addons\dayz_code\actions\repair.sqf",[_vehicle,_part,_x], 0, false, true, "",""];
				s_player_repairActions set [count s_player_repairActions,_handle];
			};

		} forEach _hitpoints;
		if (_allFixed) then {
			_vehicle setDamage 0;
		};
	};
	/*
	if (_isMan and !_isAlive) then {
		if (s_player_dragbody < 0) then {
			s_player_dragbody = player addAction [localize "str_action_studybody", "\z\addons\dayz_code\actions\drag_body.sqf",cursorTarget, 0, false, true, "",""];
		};
		} else {
		player removeAction s_player_dragbody;
		s_player_dragbody = -1;
	};
	*/
	if (_isMan and !_isAlive and !_isZombie) then {
		if (s_player_studybody < 0) then {
			s_player_studybody = player addAction [localize "str_action_studybody", "\z\addons\dayz_code\actions\study_body.sqf",cursorTarget, 0, false, true, "",""];
		};
	} else {
		player removeAction s_player_studybody;
		s_player_studybody = -1;
	};
	 //CLOTHES
    if (_isMan and !_isAlive and !_isZombie and !_isAnimal) then {
    if (s_clothes < 0) then {
            s_clothes = player addAction [("<t color=""#FF0000"">" + ("Take Clothes") + "</t>"), "\z\addons\dayz_code\actions\player_swapcloths.sqf",cursorTarget, 1, false, true, "",""];
        };
    } else {
        player removeAction s_clothes;
        s_clothes = -1;
    };

	//Dog
	if (_isDog and _isAlive and (_hasRawMeat) and _canDo and _ownerID == "0" and player getVariable ["dogID", 0] == 0) then {
		if (s_player_tamedog < 0) then {
			s_player_tamedog = player addAction [localize "str_actions_tamedog", "\z\addons\dayz_code\actions\tame_dog.sqf", cursorTarget, 1, false, true, "", ""];
		};
	} else {
		player removeAction s_player_tamedog;
		s_player_tamedog = -1;
	};

	if (_isDog and _ownerID == dayz_characterID and _isAlive and _canDo) then {
		_dogHandle = player getVariable ["dogID", 0];
		if (s_player_feeddog < 0 and _hasRawMeat) then {
			s_player_feeddog = player addAction [localize "str_actions_feeddog","\z\addons\dayz_code\actions\dog\feed.sqf",[_dogHandle,0], 0, false, true,"",""];
		};
		if (s_player_waterdog < 0 and "ItemWaterbottle" in magazines player) then {
			s_player_waterdog = player addAction [localize "str_actions_waterdog","\z\addons\dayz_code\actions\dog\feed.sqf",[_dogHandle,1], 0, false, true,"",""];
		};
		if (s_player_staydog < 0) then {
			_lieDown = _dogHandle getFSMVariable "_actionLieDown";
			if (_lieDown) then { _text = "str_actions_liedog"; } else { _text = "str_actions_sitdog"; };
			s_player_staydog = player addAction [localize _text,"\z\addons\dayz_code\actions\dog\stay.sqf", _dogHandle, 5, false, true,"",""];
		};
		if (s_player_trackdog < 0) then {
			s_player_trackdog = player addAction [localize "str_actions_trackdog","\z\addons\dayz_code\actions\dog\track.sqf", _dogHandle, 4, false, true,"",""];
		};
		if (s_player_barkdog < 0) then {
			s_player_barkdog = player addAction [localize "str_actions_barkdog","\z\addons\dayz_code\actions\dog\speak.sqf", cursorTarget, 3, false, true,"",""];
		};
		if (s_player_warndog < 0) then {
			_warn = _dogHandle getFSMVariable "_watchDog";
			if (_warn) then { _text = "Quiet"; _warn = false; } else { _text = "Alert"; _warn = true; };
			s_player_warndog = player addAction [format[localize "str_actions_warndog",_text],"\z\addons\dayz_code\actions\dog\warn.sqf",[_dogHandle, _warn], 2, false, true,"",""];
		};
		if (s_player_followdog < 0) then {
			s_player_followdog = player addAction [localize "str_actions_followdog","\z\addons\dayz_code\actions\dog\follow.sqf",[_dogHandle,true], 6, false, true,"",""];
		};
	} else {
		player removeAction s_player_feeddog;
		s_player_feeddog = -1;
		player removeAction s_player_waterdog;
		s_player_waterdog = -1;
		player removeAction s_player_staydog;
		s_player_staydog = -1;
		player removeAction s_player_trackdog;
		s_player_trackdog = -1;
		player removeAction s_player_barkdog;
		s_player_barkdog = -1;
		player removeAction s_player_warndog;
		s_player_warndog = -1;
		player removeAction s_player_followdog;
		s_player_followdog = -1;
	};
	

	if( _canDo and !churchie_defusing_started and cursorTarget isKindOf "LandVehicle" and _hasToolbox and getDammage cursorTarget < 0.95) then { 
				//diag_log ("check churchie_check before: " +str(_nearPipe));
				if( churchie_check < 0 ) then {
					churchie_check = player addAction [("<t color=""#FF0000"">" + ("Check vehicle for bomb") + "</t>"), "\z\addons\dayz_code\actions\player_rigVehicleExplosives.sqf", [_nearPipe, 3], 6, false, true, "","getDammage _target < 0.95"]; 
					//diag_log ("check churchie_check inside: " +str(churchie_check));
				};			
	} else { 
		player removeAction churchie_check; 
		//diag_log ("rig churchie_check removed: " +str(churchie_check));
		churchie_check = -1; 
	};
	
	if( _canDo and !churchie_defusing_started and cursorTarget isKindOf "LandVehicle" and churchie_explosion_checked and _hasToolbox and getDammage cursorTarget < 0.95) then { 
		_nearPipe = nearestObject [player,"BAF_ied_v1"];
		if( _nearPipe distance player < 2 ) then { 
			if( churchie_defuse < 0 ) then { 
				churchie_defuse = player addAction [("<t color=""#FF0000"">" + ("Defuse vehicle bomb") + "</t>"), "\z\addons\dayz_code\actions\player_rigVehicleExplosives.sqf", [_nearPipe, 1], 6, false, true, "",""]; 
			}; 
		} else { 
		player removeAction churchie_defuse; 
		churchie_defuse = -1; 
		}; 
	} else { 
		player removeAction churchie_defuse; 
		//diag_log ("rig churchie_check removed: " +str(churchie_defuse));
		churchie_defuse = -1; 
	};
	
	if( _canDo and "PipeBomb" in magazines player and cursorTarget isKindOf "LandVehicle" and _hasToolbox and getDammage cursorTarget < 0.95) then {
			//diag_log ("rig churchie_rig_veh inside: " +str(churchie_rig_veh));
			if( (churchie_rig_veh < 0) ) then {
				churchie_rig_veh = player addAction [("<t color=""#FF0000"">" + ("Rig engine to detonate on ignition") + "</t>"), "\z\addons\dayz_code\actions\player_rigVehicleExplosives.sqf", [cursorTarget, 0], 5, false, true, ""
				,"getDammage _target < 0.95"]; 
				//diag_log ("rig churchie_rig_veh after: " +str(churchie_rig_veh));
		};			
	} else { 
		player removeAction churchie_rig_veh; 
		//diag_log ("rig churchie_rig_veh removed: " +str(churchie_rig_veh));
		churchie_rig_veh = -1; 
	};
	
	_typeOfVeh = typeOf _vehicle;
	if( _typeOfVeh == "LandVehicle" ) then { _neonMenu = _vehicle getVariable["NeonMenu", false]; 
	if( !_neonMenu ) then { _vehicle setVariable["NeonMenu", true, false]; neon = _vehicle addAction [("<t color=""#9900FF"">" + ("Neon!") + "</t>"),"\z\addons\dayz_code\compile\object_neon.sqf",[_vehicle],5,false,true,"","driver _target == _this && (daytime > 20 || daytime < 4)"]; }; 
	}; 
	

} else {
	//Engineering
	{
	dayz_myCursorTarget removeAction _x} forEach s_player_repairActions;
	s_player_repairActions = [];
	dayz_myCursorTarget = objNull;
	// ### BASE BUILDING 1.2 ### For gates: 
	// ### START ###
	{dayz_myCursorTarget removeAction _x} forEach s_player_gateActions;s_player_gateActions = [];
	dayz_myCursorTarget = objNull;	
	// ### BASE BUILDING 1.2 ### For gates: 
	// ### END ###
	//Others
	player removeAction s_player_flipveh;
	s_player_flipveh = -1;
	player removeAction s_player_sleep;
	s_player_sleep = -1;
	player removeAction s_player_deleteBuild;
	s_player_deleteBuild = -1;
	// ### BASE BUILDING 1.2 ### Add in these: 
	// ### START ###
	player removeAction s_player_codeRemove;
	s_player_codeRemove = -1;
	player removeAction s_player_forceSave;
	s_player_forceSave = -1;
	player removeAction s_player_disarmBomb;
	s_player_disarmBomb = -1;
	player removeAction s_player_codeObject;
	s_player_codeObject = -1;
	player removeAction s_player_enterCode;
	s_player_enterCode = -1;
	player removeAction s_player_smeltRecipes;
	s_player_smeltRecipes = -1;
	player removeAction s_player_smeltItems;
	s_player_smeltItems = -1;
	// ### BASE BUILDING 1.2 ### Add in these:
	// ### END ###
	player removeAction s_player_butcher;
	s_player_butcher = -1;
	player removeAction s_player_cook;
	s_player_cook = -1;
	player removeAction s_player_boil;
	s_player_boil = -1;
	player removeAction s_player_fireout;
	s_player_fireout = -1;
	player removeAction s_player_packtent;
	s_player_packtent = -1;
	player removeAction s_player_fillfuel;
	s_player_fillfuel = -1;
	player removeAction s_player_studybody;
	s_player_studybody = -1;
	player removeAction s_clothes;
    s_clothes = -1;
	/*
	//Drag Body
	player removeAction s_player_dragbody;
	s_player_dragbody = -1;
	*/
	//fuel
	player removeAction s_player_fillfuel20;
	s_player_fillfuel20 = -1;
	player removeAction s_player_fillfuel5;
	s_player_fillfuel5 = -1;

	//Dog
	player removeAction s_player_tamedog;
	s_player_tamedog = -1;
	player removeAction s_player_feeddog;
	s_player_feeddog = -1;
	player removeAction s_player_waterdog;
	s_player_waterdog = -1;
	player removeAction s_player_staydog;
	s_player_staydog = -1;
	player removeAction s_player_trackdog;
	s_player_trackdog = -1;
	player removeAction s_player_barkdog;
	s_player_barkdog = -1;
	player removeAction s_player_warndog;
	s_player_warndog = -1;
	player removeAction s_player_followdog;
	s_player_followdog = -1;
	// Below others near the bottom add:
	player removeAction churchie_rig_veh; 
	churchie_rig_veh = -1;
	player removeAction churchie_check; 
	churchie_check = -1;
	player removeAction churchie_defuse; 
	churchie_defuse = -1; 	
};

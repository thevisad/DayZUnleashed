private ["_vehicle","_inVehicle","_color","_part","_bag","_classbag","_isWater","_hasfuelbarrele","_hasAntiB","_hasRawMeat","_hasKnife","_hasToolbox","_onLadder","_nearLight","_canPickLight","_nextVehicle","_typeCursorTarget","_canDo","_text","_ownerID","_isHarvested","_isVehicle","_isMan","_isAnimal","_isZombie","_isDestructable","_isTent","_isFuel","_isAlive","_totpa","_allFixed","_hitpoints","_damage","_cmpt","_damagePercent","_string","_handle","_hasMatches","_hastinitem","_lever","_gates","_validObject","_authorizedUID","_authorizedGateCodes","_findNearestGens","_findNearestGen","_IsNearRunningGen","_magazinesPlayer","_lieDown","_warn","_dogHandle","_nearPipe","_neonMenu","_isStorage","_isVehicletype","_isDog","_isStash","_isMediumStash","_hasFuel20","_hasFuel5","_canmove","_typeOfCursorTarget","_cursorTarget","_rawmeat","_currentSkin","_mags","_typeOfVeh","_vehDriver","_isPilot","_isPilotAvalible","_isSwapableAirVehicle","_canTakeControls","_hasFuelE20","_hasFuelE5","_hasbottleitem","_combi","_hasBarrelE","_hasBarrel","_hasFuel210","_unconscious","_isPZombie","_player_SurrenderedGear"];

if (DZE_ActionInProgress) exitWith {}; // Do not allow if any script is running.

_vehicle = vehicle player;
_isPZombie = player isKindOf "PZombie_VB";
_inVehicle = (_vehicle != player);
_bag = unitBackpack player;
_classbag = typeOf _bag;
_isWater = (surfaceIsWater (position player)) or dayz_isSwimming;
_hasAntiB = "ItemAntibiotic" in magazines player;
_hasETool = "ItemEtool" in weapons player;
_hasFuelE20 = "ItemJerrycanEmpty" in magazines player;
_hasFuelE5 = "ItemFuelcanEmpty" in magazines player;
_hasFuelBarrelE = "ItemFuelBarrelEmpty" in magazines player;
//boiled Water
_hasbottleitem = "ItemWaterbottle" in magazines player;
_hastinitem = false;
_unconscious = false;

{
    if (_x in magazines player) then {
        _hastinitem = true;
    };

} forEach boil_tin_cans;


_hasKnife = "ItemKnife" in items player;
_hasToolbox = "ItemToolbox" in items player;
_hasMatches = "ItemMatchbox" in items player;

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

if (dayz_onBack != "" && !dayz_onBackActive && !_inVehicle && !_onLadder && !r_player_unconscious) then {
	if (s_player_equip_carry < 0) then {
		_text = getText (configFile >> "CfgWeapons" >> dayz_onBack >> "displayName");
		s_player_equip_carry = player addAction [format[localize "STR_ACTIONS_WEAPON", _text], "\z\addons\dayz_code\actions\player_switchWeapon.sqf", "action", 0.5, false, true];
	};
} else {
	player removeAction s_player_equip_carry;
	s_player_equip_carry = -1;
};
/*
if (!_isPZombie) then {
	if (unleashed_change_variable1 < 0) then {
		unleashed_change_variable1 = player addAction ["Increase Values", "\z\addons\dayz_code\actions\unleashed\increaseVariables.sqf",player, 3, true, false, "",""];
		unleashed_change_variable2 = player addAction ["Decrease Values", "\z\addons\dayz_code\actions\unleashed\decreaseVariables.sqf",player, 3, true, false, "",""];
	};
} else {
	player removeAction unleashed_change_variable1;
	player removeAction unleashed_change_variable2;
	unleashed_change_variable1 = -1;
	unleashed_change_variable2 = -1;
};
*/
//Grab Flare
if (_canPickLight and !dayz_hasLight and !_isPZombie) then {
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
/*
if(_isPZombie) then {
	if (s_player_callzombies < 0) then {
		s_player_callzombies = player addAction ["Raise Horde", "\z\addons\dayz_code\actions\pz_call_zombies.sqf",player, 5, true, false, "",""];
	};
	if (s_player_pzombiesattack < 0) then {
		s_player_pzombiesattack = player addAction ["Attack", "\z\addons\dayz_code\actions\pzombie\pz_attack.sqf",cursorTarget, 6, true, false, "",""];
	};
	if (s_player_pzombiesvision < 0) then {
		s_player_pzombiesvision = player addAction ["Night Vision", "\z\addons\dayz_code\actions\pzombie\pz_vision.sqf", [], 4, false, true, "nightVision", "_this == _target"];
	};
	if (!isNull cursorTarget and (player distance cursorTarget < 3)) then {	//Has some kind of target
		_isAnimal = cursorTarget isKindOf "Animal";
		_isZombie = cursorTarget isKindOf "zZombie_base";
		_isHarvested = cursorTarget getVariable["meatHarvested",false];
		_isMan = cursorTarget isKindOf "Man";
		// Pzombie Gut human corpse or animal
		if (!alive cursorTarget and (_isAnimal or _isMan) and !_isZombie and !_isHarvested) then {
			if (s_player_pzombiesfeed < 0) then {
				s_player_pzombiesfeed = player addAction ["Feed", "\z\addons\dayz_code\actions\pzombie\pz_feed.sqf",cursorTarget, 3, true, false, "",""];
			};
		} else {
			player removeAction s_player_pzombiesfeed;
			s_player_pzombiesfeed = -1;
		};
	} else {
		player removeAction s_player_pzombiesfeed;
		s_player_pzombiesfeed = -1;
	};
} else {
	if (s_player_callzombies < 0) then {
		s_player_callzombies = player addAction ["Call Zombies", "\z\addons\dayz_code\actions\call_zombies.sqf",player, 5, true, false, "",""];
	};
};
*/
//Take Control Air action
//
if ( _inVehicle and _vehicle isKindOf "Air" and !(_vehicle isKindOf "ParachuteBase")) then {
        if(s_pilot_swap < 0) then {        
            s_pilot_swapObj = _vehicle;
            s_pilot_swap = s_pilot_swapObj addAction ["Take Control","\z\addons\dayz_code\actions\actionHeliSwitchSeat.sqf","",1,false,true, "", "((isNull(driver(vehicle player)))&&(vehicle player != player))"];
            };
    } else {
        if (!isNull s_pilot_swapObj) then {
            s_pilot_swapObj removeAction s_pilot_swap;
            s_pilot_swapObj = objNull;
            s_pilot_swap = -1;
        };
    };

if (!isNull cursorTarget and !_inVehicle and !_isPZombie and (player distance cursorTarget < 8)) then { //Has some kind of target
	_isHarvested = cursorTarget getVariable["meatHarvested",false];
	_isVehicle = cursorTarget isKindOf "AllVehicles";
	_isStorage = typeOf cursorTarget in ["Bunker_PMC"];
	_isVehicletype = typeOf cursorTarget in ["ATV_US_EP1","ATV_CZ_EP1"];
	
	_cursorTarget = cursorTarget;
	_typeOfCursorTarget = typeOf _cursorTarget;
	_isnewstorage = _typeOfCursorTarget in DZE_isNewStorage;
	
	_isMan = _cursorTarget isKindOf "Man";
	_ownerID = _cursorTarget getVariable ["CharacterID","0"];
	_isAnimal = _cursorTarget isKindOf "Animal";
	_isGarage = _cursorTarget isKindOf "dzu_playerGarage";
	_isDog = (_cursorTarget isKindOf "DZ_Pastor" || _cursorTarget isKindOf "DZ_Fin");
	_isBoar = (_cursorTarget isKindOf "DZ_Pastor" || _cursorTarget isKindOf "DZ_Fin");
	_isRabbit = (_cursorTarget isKindOf "DZ_Pastor" || _cursorTarget isKindOf "DZ_Fin");

	_isZombie = _cursorTarget isKindOf "zZombie_base";
	_isDestructable = _cursorTarget isKindOf "BuiltItems";
	_isWreck = _typeOfCursorTarget in DZE_isWreck;
	_isWreckBuilding = _typeOfCursorTarget in DZE_isWreckBuilding;
	_isModular = _cursorTarget isKindOf "ModularItems";
	_isModularDoor = _typeOfCursorTarget in ["Land_DZE_WoodDoor","Land_DZE_LargeWoodDoor","Land_DZE_GarageWoodDoor","CinderWallDoor_DZ","CinderWallDoorSmall_DZ"];

	_isRemovable = _typeOfCursorTarget in DZE_isRemovable;
	_isDisallowRepair = _typeOfCursorTarget in ["M240Nest_DZ"];
	_itemsPlayer = items player;
	_isTent = _cursorTarget isKindOf "TentStorage";
	_isStash = _cursorTarget isKindOf "StashSmall";
	_isMediumStash = _cursorTarget isKindOf "StashMedium";
	_isFuel = false;
	_hasBarrelE = 	"ItemFuelBarrelEmpty" in magazines player;
	_hasBarrel = 	"ItemFuelBarrel" in magazines player;
	_hasFuel210 = "ItemFuelBarrel" in magazines player;
	_hasFuel20 = "ItemJerrycan" in magazines player;
	_hasFuel5 = "ItemFuelcan" in magazines player;
	
	_isAlive = alive _cursorTarget;
	_canmove = canmove _cursorTarget;
	_typeCursorTarget = typeOf _cursorTarget;
	_text = getText (configFile >> "CfgVehicles" >> typeOf _cursorTarget >> "displayName");
	
	_magazinesPlayer = magazines player;
	
	_rawmeat = meatraw;
	_hasRawMeat = false;
		{
			if (_x in magazines player) then {
				_hasRawMeat = true;
			};
		} forEach _rawmeat;


	if (_hasFuelE20 or _hasFuelE5 or _hasFuelBarrelE) then {
		_isFuel = (cursorTarget isKindOf "Land_Ind_TankSmall") or (cursorTarget isKindOf "Land_fuel_tank_big") or (cursorTarget isKindOf "Land_fuel_tank_stairs") or (cursorTarget isKindOf "Land_wagon_tanker");
	};
	//diag_log ("OWNERID = " + _ownerID + " CHARID = " + dayz_characterID + " " + str(_ownerID == dayz_characterID));

	
		// logic vars
	_player_flipveh = false;
	_player_deleteBuild = false;
	_player_lockUnlock_crtl = false;
	
	_player_SurrenderedGear = false;
	if (_isAlive) then {
		// unit alive
		//Allow player to delete objects
		if(_isDestructable or _isWreck or _isRemovable or _isWreckBuilding) then {
			if(_hasToolbox and "ItemCrowbar" in _itemsPlayer) then {
				_player_deleteBuild = true;
			};
		};
		//diag_log (format["FSA: _ownerID %1", _ownerID]);
		//diag_log (format["FSA: dayz_characterID %1", dayz_characterID]);
		//diag_log (format["FSA: _ownerID typeName %1", typeName _ownerID]);
		//diag_log (format["FSA: dayz_characterID typeName %1", typeName dayz_characterID]);
		
		//Allow owners to delete modulars
		if(_isModular and (dayz_characterID == _ownerID)) then {
				if(_hasToolbox and "ItemCrowbar" in _itemsPlayer) then {
						_player_deleteBuild = true;
				};
		};
		// gear access on surrendered player
		if(_isMan and !_isZombie and !_isAnimal) then {
			_isSurrendered = _cursorTarget getVariable ["DZE_Surrendered",false];
			if (_isSurrendered) then {
				_player_SurrenderedGear = true;
			};
		};
		
		
	};
	
	//Allow player to delete objects DZE
	if(_player_deleteBuild) then {
		if (s_player_deleteBuild_DZE < 0) then {
			s_player_deleteBuild_DZE = player addAction [format[localize "str_actions_delete",_text], "\z\addons\dayz_code\actions\remove.sqf",cursorTarget, 1, true, true, "", ""];
		};
	} else {
		player removeAction s_player_deleteBuild_DZE;
		s_player_deleteBuild_DZE = -1;
	};

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
	if((_hasFuelE20 or _hasFuelE5 or _hasFuelBarrelE) and _isFuel and _canDo and !a_player_jerryfilling) then {
		if (s_player_fillfuel < 0) then {
			s_player_fillfuel = player addAction [localize "str_actions_self_10", "\z\addons\dayz_code\actions\jerry_fill.sqf",[], 1, false, true, "", ""];
		};
	} else {
		player removeAction s_player_fillfuel;
		s_player_fillfuel = -1;
	};

	//Allow player to fill vehilce 210L
	if(_hasFuel210 and _canDo and _isVehicle and (fuel cursorTarget < 1)) then {
		if (s_player_fillfuel210 < 0) then {
			s_player_fillfuel210 = player addAction [format[localize "str_actions_medical_10"+" with 210L",_text], "\z\addons\dayz_code\actions\refuel.sqf",["ItemFuelBarrel"], 0, true, true, "", "'ItemFuelBarrel' in magazines player"];
		};
	} else {
		player removeAction s_player_fillfuel210;
		s_player_fillfuel210 = -1;
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

	if (_isVehicle and _canDo and (_hasFuelE20 or _hasFuelE5 or _hasBarrelE or _hasFuelBarrelE) and (fuel _cursorTarget > 0)) then {
		if (s_player_siphonfuel < 0) then {
			s_player_siphonfuel = player addAction [format["Siphon fuel from %1",_text], "\z\addons\dayz_code\actions\siphonFuel.sqf",[], 0, true, true, "", ""];
		};
	} else {
		player removeAction s_player_siphonfuel;
		s_player_siphonfuel = -1;
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
	
	//Player Deaths
	if(_typeOfCursorTarget == "Info_Board_EP1") then {
		if (s_player_information < 0) then {
			s_player_information = player addAction [localize "STR_EPOCH_ACTIONS_MURDERS", "\z\addons\dayz_code\actions\list_playerDeaths.sqf",[], 7, false, true, "",""];
		};
	} else {
		player removeAction s_player_information;
		s_player_information = -1;
	};

	//Packing my tent
	if(cursorTarget isKindOf "TentStorage" and _canDo/* and _ownerID == dayz_characterID*/) then {
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
	
	//Burning tent
	if(cursorTarget isKindOf "TentStorage" and _canDo and _hasMatches) then {
		if ((s_player_burntent < 0) and (player distance cursorTarget < 3)) then {
		s_player_burntent = player addAction [("<t color=""#ff0000"">" + ("Burn Tent") +"</t>"), "\z\addons\dayz_code\actions\tent_burn.sqf",cursorTarget, 0, false, true, "",""];
		};
	} else {
		player removeAction s_player_burntent;
		s_player_burntent = -1;
	};
	
	// ---------------------------------------SUICIDE------------------------------------

	private ["_handGun"];
	_handGun = currentWeapon player;
	if ((_handGun in ["glock17_EP1","M9","M9SD","Makarov","MakarovSD","revolver_EP1","UZI_EP1","Sa61_EP1","Colt1911"]) && (player ammo _handGun > 0)) then {
		hasSecondary = true;
	} else {
		hasSecondary = false;
	};
	
	if((speed player <= 1) && hasSecondary && _canDo) then {
		if (s_player_suicide < 0) then {
			s_player_suicide = player addaction[("<t color=""#ff0000"">" + ("Commit Suicide") +"</t>"),"\z\addons\dayz_code\actions\player_suicide.sqf",_handGun,0,false,true,"", ""];
		};
	} else {
		player removeAction s_player_suicide;
		s_player_suicide = -1;
	};

	// ---------------------------------------SUICIDE------------------------------------

	//Repairing Vehicles / Remove Parts from Vehicle
	if ((dayz_myCursorTarget != cursorTarget) and !_isMan and _hasToolbox and (damage cursorTarget < 1)) then {
		_vehicle = cursorTarget;
		_totpa = ["HitFuel","HitEngine","HitLFWheel","HitRFWheel","HitLBWheel","HitRBWheel","HitGlass1","HitGlass2","HitGlass3","HitGlass4","HitGlass5","HitGlass6","HitHRotor"];
		if ((_vehicle isKindOf "Truck") or (_typeCursorTarget == "rth_amphicar") or (_typeCursorTarget == "rth_ScrapApc")) then { _totpa set [count _totpa,"HitLMWheel"]; _totpa set [count _totpa,"HitRMWheel"]; };
		{dayz_myCursorTarget removeAction _x} forEach s_player_repairActions;s_player_repairActions = [];
		dayz_myCursorTarget = _vehicle;
		//diag_log format ["SizeOfCAR = %1", sizeOf (typeOf cursorTarget)];
		_nextVehicle = (_vehicle isKindOf "Motorcycle") or (_vehicle isKindOf "Tractor");
		_allFixed = true;
		_hitpoints = _vehicle call vehicle_getHitpoints;
		
		{
			_damage = [_vehicle,_x] call object_getHit;
			_part = "PartGeneric";
			
			//change "HitPart" to " - Part" rather than complicated string replace
			_cmpt = toArray (_x);
			_cmpt set [0,20];
			_cmpt set [1,toArray ("-") select 0];
			_cmpt set [2,20];
			_cmpt = toString _cmpt;
				
			if(["Engine",_x,false] call fnc_inString) then {
				_part = "PartEngine";
			};
					
			if(["HRotor",_x,false] call fnc_inString) then {
				_part = "PartVRotor";
			};

			if(["Fuel",_x,false] call fnc_inString) then {
				_part = "PartFueltank";
			};
			
			if(["Wheel",_x,false] call fnc_inString) then {
				_part = "PartWheel";

			};
					
			if(["Glass",_x,false] call fnc_inString) then {
				_part = "PartGlass";
			};

			// get every damaged part no matter how tiny damage is!
			_damagePercent = round((1 - _damage) * 100);
			if (_damage > 0) then {
				
				_allFixed = false;
				_color = "color='#ffff00'"; //yellow
				if (_damage >= 0.5) then {_color = "color='#ff8800'";}; //orange
				if (_damage >= 0.9) then {_color = "color='#ff0000'";}; //red
				_cmpt = _cmpt + " Status: " + str(_damagePercent) + "%";
				_string = format["<t %2>Repair%1</t>",_cmpt,_color]; //Repair - Part
				_handle = dayz_myCursorTarget addAction [_string, "\z\addons\dayz_code\actions\repair.sqf",[_vehicle,_part,_x], 0, false, true, "",""];
				s_player_repairActions set [count s_player_repairActions,_handle];

			};
/*
			if ( (_damage < 0.15) and (_x in _totpa) and !_nextVehicle and (_part != "PartGlass")) then {
				_allFixed = false;
				_color = "color='#00baff'"; //blue
				_string = format["<t %2>Remove %1 part</t>",_cmpt,_color]; //Remove - Part
				_handle = dayz_myCursorTarget addAction [_string, "\z\addons\dayz_code\actions\salvage.sqf",[_vehicle,_part,_x], 0, false, true, "",""];
				s_player_repairActions set [count s_player_repairActions,_handle];
			};
			*/
			
			if ( (_damage < 0.15) and (_x in _totpa) and !_nextVehicle and (_part != "PartGlass")) then {
				_allFixed = false;
				_color = "color='#00baff'"; //blue
				_string = format["<t %2>Remove %1 part</t>",_cmpt,_color]; //Remove - Part
				_handle = dayz_myCursorTarget addAction [_string, "\z\addons\dayz_code\actions\salvage.sqf",[_vehicle,_part,_x], 0, false, true, "",""];
				s_player_repairActions set [count s_player_repairActions,_handle];
			};
					
		} forEach _hitpoints;
		if (_allFixed) then {
			_vehicle setDamage 0;
		};
	};

	// Power assisted auto refuel
	//Fuel Pump
	if(_typeOfCursorTarget in dayz_fuelpumparray) then {	
		if ((s_player_fuelauto < 0) and (player distance cursorTarget < 3)) then {
			
			// check if Generator_DZ is running within 30 meters
			_findNearestGens = nearestObjects [player, ["Generator_DZ"], 30];
			_findNearestGen = [];
			{
				if (alive _x and (_x getVariable ["GeneratorRunning", false])) then {
					_findNearestGen set [(count _findNearestGen),_x];
				};
			} foreach _findNearestGens;
			_IsNearRunningGen = count (_findNearestGen);
			
			// show that pump needs power if no generator nearby.
			if(_IsNearRunningGen > 0) then {
				s_player_fuelauto = player addAction ["Fill Vehicle", "\z\addons\dayz_code\actions\fill_nearestVehicle.sqf",[], 0, false, true, "",""];
			} else {
				s_player_fuelauto = player addAction ["<t color='#ff0000'>Needs Power</t>", "",[], 0, false, true, "",""];
			};
		};
	} else {
		player removeAction s_player_fuelauto;
		s_player_fuelauto = -1;
	};

	//Start Generator
	if(cursorTarget isKindOf "Generator_DZ") then {
		if ((s_player_fillgen < 0) and (player distance cursorTarget < 3)) then {
			
			// check if not running 
			if((cursorTarget getVariable ["GeneratorRunning", false])) then {
				s_player_fillgen = player addAction ["Stop Generator", "\z\addons\dayz_code\actions\stopGenerator.sqf",cursorTarget, 0, false, true, "",""];				
			} else {
			// check if not filled and player has jerry.
				if((cursorTarget getVariable ["GeneratorFilled", false])) then {
					s_player_fillgen = player addAction ["Start Generator", "\z\addons\dayz_code\actions\fill_startGenerator.sqf",cursorTarget, 0, false, true, "",""];
				} else {
					if("ItemJerrycan" in _magazinesPlayer) then {
						s_player_fillgen = player addAction ["Fill and Start Generator", "\z\addons\dayz_code\actions\fill_startGenerator.sqf",cursorTarget, 0, false, true, "",""];
					};
				};
			};
		};
	} else {
		player removeAction s_player_fillgen;
		s_player_fillgen = -1;
	};
	
	//Allow owner to unlock vault
	if((_typeOfCursorTarget in DZE_LockableStorage) and _ownerID != "0" and (player distance _cursorTarget < 3)) then {
		if (s_player_unlockvault < 0) then {
			if(_typeOfCursorTarget in DZE_LockedStorage) then {
				if(_ownerID == dayz_combination or _ownerID == dayz_playerUID) then {
					_combi = player addAction [format["Open %1",_text], "\z\addons\dayz_code\actions\vault_unlock.sqf",_cursorTarget, 0, false, true, "",""];
				} else {
					_combi = player addAction [format["Unlock %1",_text], "\z\addons\dayz_code\actions\vault_combination_1.sqf",_cursorTarget, 0, false, true, "",""];
				};
				s_player_combi set [count s_player_combi,_combi];
				s_player_unlockvault = 1;
			} else {
				if(_ownerID != dayz_combination and _ownerID != dayz_playerUID) then {
					_combi = player addAction ["Re-Enter Combination", "\z\addons\dayz_code\actions\vault_combination_1.sqf",_cursorTarget, 0, false, true, "",""];
					s_player_combi set [count s_player_combi,_combi];
					s_player_unlockvault = 1;
				};
			};
		};
	} else {
		{player removeAction _x} forEach s_player_combi;s_player_combi = [];
		s_player_unlockvault = -1;
	};

	//Allow owner to pack vault
	if(_typeOfCursorTarget in DZE_UnLockedStorage and _ownerID != "0" and (player distance _cursorTarget < 3)) then {

		if (s_player_lockvault < 0) then {
			if(_ownerID == dayz_combination or _ownerID == dayz_playerUID) then {
				s_player_lockvault = player addAction [format["Lock %1",_text], "\z\addons\dayz_code\actions\vault_lock.sqf",_cursorTarget, 0, false, true, "",""];
			};
		};
		if (s_player_packvault < 0 and (_ownerID == dayz_combination or _ownerID == dayz_playerUID)) then {
			s_player_packvault = player addAction [format["<t color='#ff0000'>Pack %1</t>",_text], "\z\addons\dayz_code\actions\vault_pack.sqf",_cursorTarget, 0, false, true, "",""];
		};
	} else {
		player removeAction s_player_packvault;
		s_player_packvault = -1;
		player removeAction s_player_lockvault;
		s_player_lockvault = -1;
	};
	
	
	
	//Harvested
	if (!alive cursorTarget and _isAnimal and _hasKnife and !_isHarvested and _canDo ) then {
		if (s_player_butcher < 0) then {
			s_player_butcher = player addAction [localize "str_actions_self_04", "\z\addons\dayz_code\actions\gather_meat.sqf",cursorTarget, 3, true, true, "", ""];
		};
	} else {
		player removeAction s_player_butcher;
		s_player_butcher = -1;
	};
	
	if (_isMan and !_isAlive and !_isZombie) then {
		if (s_player_studybody < 0) then {
			s_player_studybody = player addAction [localize "str_action_studybody", "\z\addons\dayz_code\actions\study_body.sqf",cursorTarget, 0, false, true, "",""];
		};
	} else {
		player removeAction s_player_studybody;
		s_player_studybody = -1;
	};
	
	if (_isMan and !_isAlive and !_isZombie and _hasETool) then {
		if (s_player_burybody < 0) then {
			s_player_burybody = player addAction [localize "str_action_burybody", "\z\addons\dayz_code\actions\bury_body.sqf",cursorTarget, 0, false, true, "",""];
		};
	} else {
		player removeAction s_player_burybody;
		s_player_burybody = -1;
	};
	
	if (_player_SurrenderedGear) then {
		if (s_player_SurrenderedGear < 0) then {
			s_player_SurrenderedGear = player addAction [localize "STR_EPOCH_ACTION_GEAR", "\z\addons\dayz_code\actions\surrender_gear.sqf",_cursorTarget, 1, true, true, "", ""];
		};
	} else {
		player removeAction s_player_SurrenderedGear;
		s_player_SurrenderedGear = -1;
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
	/*
	if (_isBoar and _isAlive and (_hasRawMeat) and _canDo and _ownerID == "0" and player getVariable ["boarID", 0] == 0) then {
		if (s_player_tameboar < 0) then {
			s_player_tameboar = player addAction [localize "str_actions_tameboar", "\z\addons\dayz_code\actions\tame_boar.sqf", cursorTarget, 1, false, true, "", ""];
		};
	} else {
		player removeAction s_player_tameboar;
		s_player_tameboar = -1;
	};

	if (_isBoar and _ownerID == dayz_characterID and _isAlive and _canDo) then {
		_boarHandle = player getVariable ["boarID", 0];
		if (s_player_feedboar < 0 and _hasRawMeat) then {
			s_player_feedboar = player addAction [localize "str_actions_feedboar","\z\addons\dayz_code\actions\boar\feed.sqf",[_boarHandle,0], 0, false, true,"",""];
		};
		if (s_player_waterboar < 0 and "ItemWaterbottle" in magazines player) then {
			s_player_waterboar = player addAction [localize "str_actions_waterboar","\z\addons\dayz_code\actions\boar\feed.sqf",[_boarHandle,1], 0, false, true,"",""];
		};
		if (s_player_stayboar < 0) then {
			_lieDown = _boarHandle getFSMVariable "_actionLieDown";
			if (_lieDown) then { _text = "str_actions_lieboar"; } else { _text = "str_actions_sitboar"; };
			s_player_stayboar = player addAction [localize _text,"\z\addons\dayz_code\actions\boar\stay.sqf", _boarHandle, 5, false, true,"",""];
		};
		if (s_player_trackboar < 0) then {
			s_player_trackboar = player addAction [localize "str_actions_trackboar","\z\addons\dayz_code\actions\boar\track.sqf", _boarHandle, 4, false, true,"",""];
		};
		if (s_player_barkboar < 0) then {
			s_player_barkboar = player addAction [localize "str_actions_barkboar","\z\addons\dayz_code\actions\boar\speak.sqf", cursorTarget, 3, false, true,"",""];
		};
		if (s_player_warnboar < 0) then {
			_warn = _boarHandle getFSMVariable "_watchDog";
			if (_warn) then { _text = "Quiet"; _warn = false; } else { _text = "Alert"; _warn = true; };
			s_player_warnboar = player addAction [format[localize "str_actions_warnboar",_text],"\z\addons\dayz_code\actions\boar\warn.sqf",[_boarHandle, _warn], 2, false, true,"",""];
		};
		if (s_player_followboar < 0) then {
			s_player_followboar = player addAction [localize "str_actions_followboar","\z\addons\dayz_code\actions\boar\follow.sqf",[_boarHandle,true], 6, false, true,"",""];
		};
	} else {
		player removeAction s_player_feedboar;
		s_player_feedboar = -1;
		player removeAction s_player_waterboar;
		s_player_waterboar = -1;
		player removeAction s_player_stayboar;
		s_player_stayboar = -1;
		player removeAction s_player_trackboar;
		s_player_trackboar = -1;
		player removeAction s_player_barkboar;
		s_player_barkboar = -1;
		player removeAction s_player_warnboar;
		s_player_warnboar = -1;
		player removeAction s_player_followboar;
		s_player_followboar = -1;
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
	*/


	if (_isGarage and (player distance _cursorTarget < 15)) then {
		_ObjectUID = cursorTarget getVariable ["ObjectUID", 0];
		_OwnerID = cursorTarget getVariable ["OwnerID", 0];
		_garageID = cursorTarget getVariable ["GarageID", 0];
		_vehicleClassArray = cursorTarget getVariable ["VehicleClassArray",[]];
		_vehicleIDArray = cursorTarget getVariable ["VehicleIDArray",[]];
		_vehicleNameArray = cursorTarget getVariable ["VehicleNameArray",[]];
		if (unleashed_bug == 1) then {
			diag_log(format["FSA: _vehicleClassArray: %1, _vehicleIDArray: %2, _vehicleNameArray: %3",_vehicleClassArray,_vehicleIDArray,_vehicleNameArray]);
		};
		unleashed_GarageVehicleClassArray =_vehicleClassArray;
		unleashed_GarageVehicleIDArray =_vehicleIDArray;
		unleashed_GarageVehicleNameArray =_vehicleNameArray;
		unleashed_CurrentGarage = cursorTarget;
		unleashed_CurrentGarageID = _garageID;
		unleashed_GarageOwner = _OwnerID;
		unleashed_GarageUID =_ObjectUID;
		if (dayz_playerUID == unleashed_GarageOwner) then {
			_nearVehicle = nearestObjects [player, ["LandVehicle"], 15];
			_countNearVehicles = count _nearVehicle;
			if (remove_vehicle < 0) then {
				remove_vehicle = player addAction [("<t color=""#FF0000"">" + ("Remove Vehicle from Garage") + "</t>"), "\z\addons\dayz_code\actions\player_VehicleRemove.sqf",[], 0, false, true, "",""];
			};
			if (insert_vehicle < 0) then {
				if( _countNearVehicles > 0 ) then {
					_nearVehicle = _nearVehicle select 0;
					_nearVehicleClass = typeOf _nearVehicle;
					_nearVehicleID = _nearVehicle getVariable ["ObjectUID", 0]; 
					_vehicleName = getText (configFile >> "CfgVehicles" >> _nearVehicleClass >> "displayName");
					if (unleashed_bug == 1) then {
						diag_log(format["FSA: GARAGE _nearVehicle: %1",_nearVehicle]);
						diag_log(format["FSA: GARAGE _nearVehicleID: %1",_nearVehicleID]);
					};
					insert_vehicle = player addAction [("<t color=""#FF0000"">" + ("Insert " + str(_vehicleName) + " into Garage") + "</t>"), "\z\addons\dayz_code\actions\player_VehicleAdd.sqf",[_nearVehicle,_nearVehicleID,_ObjectUID,getPosATL player], 0, false, true, "",""]; 
				};
			};
		} else {
			_engineering_skill =  [player,"Engineer"] call DZU_fnc_getVariable;
			if (_engineering_skill > 100) then {
				unleashed_hack_garage = player addAction ["pickLock","\z\addons\dayz_code\actions\pickLock.sqf",["{createDialog ""UnleashedGarageDialog"";}","",""],1,false,true,"",""];
			};
		};

	} else {
		player removeAction unleashed_hack_garage; 
		unleashed_hack_garage = -1; 
		player removeAction remove_vehicle; 
		remove_vehicle = -1; 
		player removeAction insert_vehicle; 
		insert_vehicle = -1; 
	};
	


    _unconscious = cursorTarget getVariable ["NORRN_unconscious", false];

	if (_isMan and _isAlive and !_isZombie and _canDo and !_unconscious and !_isAnimal) then {
        if (s_player_meleeattack < 0) then {
            s_player_meleeattack = player addAction [("<t color=""#FF9800"">" + ("Melee Target!") + "</t>"), "\z\addons\dayz_code\actions\player_weaponButtAttack.sqf",cursorTarget, 0, false, true, "",""];
        };
    } else {
        player removeAction s_player_meleeattack;
        s_player_meleeattack = -1;
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
	
	if( _canDo and !churchie_defusing_started and cursorTarget isKindOf "LandVehicle" and churchie_explosion_checked and _hasToolbox and getDammage cursorTarget < 0.95 ) then { 
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
    	
	//Player Gutting
	
	if (!_isAlive and !_isZombie and !_isAnimal and !_isHarvested and _isMan and _hasKnife and _canDo) then {
        if (player_Cannibalism < 0) then {
            player_Cannibalism = player addAction [format["<t color='#42426F'>Gut Player%1</t>"], "\z\addons\dayz_code\actions\player_cannibalism.sqf",cursorTarget, 3, true, true, "", ""];
        };
    } else {
        player removeAction player_Cannibalism;
        player_Cannibalism = -1;
    };
	
	// inplace upgrade tool
	if ((_cursorTarget isKindOf "ModularItems") or (_cursorTarget isKindOf "Land_DZE_WoodDoor_Base") or (_cursorTarget isKindOf "CinderWallDoor_DZ_Base")) then {
		if ((s_player_lastTarget select 0) != _cursorTarget) then {
			if (s_player_upgrade_build > 0) then {
				player removeAction s_player_upgrade_build;
				s_player_upgrade_build = -1;
			};
		};
		if (s_player_upgrade_build < 0) then {
			// s_player_lastTarget = _cursorTarget;
			s_player_lastTarget set [0,_cursorTarget];
			s_player_upgrade_build = player addAction [format[localize "STR_EPOCH_ACTIONS_UPGRADE",_text], "\z\addons\dayz_code\actions\player_upgrade.sqf",_cursorTarget, -1, false, true, "",""];
		};
	} else {
		player removeAction s_player_upgrade_build;
		s_player_upgrade_build = -1;
	};
	// downgrade system
	if((_isDestructable or _cursorTarget isKindOf "Land_DZE_WoodDoorLocked_Base" or _cursorTarget isKindOf "CinderWallDoorLocked_DZ_Base") and (DZE_Lock_Door == _ownerID)) then {
		if ((s_player_lastTarget select 1) != _cursorTarget) then {
			if (s_player_downgrade_build > 0) then {	
				player removeAction s_player_downgrade_build;
				s_player_downgrade_build = -1;
			};
		};

		if (s_player_downgrade_build < 0) then {
			s_player_lastTarget set [1,_cursorTarget];
			s_player_downgrade_build = player addAction [format[localize "STR_EPOCH_ACTIONS_REMLOCK",_text], "\z\addons\dayz_code\actions\player_buildingDowngrade.sqf",_cursorTarget, -2, false, true, "",""];
		};
	} else {
		player removeAction s_player_downgrade_build;
		s_player_downgrade_build = -1;
	};

	// inplace maintenance tool
	if((_cursorTarget isKindOf "ModularItems" or _cursorTarget isKindOf "DZE_Housebase" or _typeOfCursorTarget == "LightPole_DZ") and (damage _cursorTarget >= DZE_DamageBeforeMaint)) then {
		if ((s_player_lastTarget select 2) != _cursorTarget) then {
			if (s_player_maint_build > 0) then {	
				player removeAction s_player_maint_build;
				s_player_maint_build = -1;
			};
		};

		if (s_player_maint_build < 0) then {
			s_player_lastTarget set [2,_cursorTarget];
			s_player_maint_build = player addAction [format[localize "STR_EPOCH_ACTIONS_MAINTAIN",_text], "\z\addons\dayz_code\actions\player_buildingMaint.sqf",_cursorTarget, -2, false, true, "",""];
		};
	} else {
		player removeAction s_player_maint_build;
		s_player_maint_build = -1;
	};

	//Dynamic Taking
    if(_canDo and (dayz_myCursorTarget2 != cursorTarget) and (cursorTarget isKindOf "ReammoBox") and (player distance cursorTarget < 3)) then {
		_entity = cursorTarget;
		{dayz_myCursorTarget2 removeAction _x} forEach s_player_cursorLoot;
		s_player_cursorLoot = [];
		dayz_myCursorTarget2 = _entity;
		_weaponLoot = (getWeaponCargo _entity select 0);
		_magazineLoot = (getMagazineCargo _entity select 0);
		_backpackLoot = (getBackpackCargo _entity select 0);
		
		if(getNumber (configFile >> "CfgVehicles" >> (typeOf _entity) >> "isbackpack")==1) then {
		        _class_name = (typeOf _entity);
		        _display_name = getText (configFile >> "CfgVehicles" >> _class_name >> "displayname");
		        _action_text = format["Take %1",_display_name];
		        _handle = _entity addAction [_action_text, "\z\addons\dayz_code\actions\player_take.sqf",[_entity,_class_name,"ISBACKPACK"], 0, false, true, "",""];
		        s_player_cursorLoot set [count s_player_cursorLoot,_handle];
		};
		
		
		if(count _weaponLoot > 0 ) then {
		    for "_x" from 0 to ((count _weaponLoot - 1) min 10) do {
		        _class_name = (_weaponLoot select _x);
		        _display_name = getText (configFile >> "CfgWeapons" >> _class_name >> "displayname");
		        _action_text = format["Take %1",_display_name];
		        _handle = _entity addAction [_action_text, "\z\addons\dayz_code\actions\player_take.sqf",[_entity,_class_name,"WEAPON"], 0, false, true, "",""];
		        s_player_cursorLoot set [count s_player_cursorLoot,_handle];
		    };
		};
		
		if(count _magazineLoot > 0 ) then {
		    for "_x" from 0 to ((count _magazineLoot - 1) min 10) do {
		        _class_name = (_magazineLoot select _x);
		        _display_name = getText (configFile >> "CfgMagazines" >> _class_name >> "displayname");
		        _action_text = format["Take %1",_display_name];
		        _handle = _entity addAction [_action_text, "\z\addons\dayz_code\actions\player_take.sqf",[_entity,_class_name,"MAGAZINE"], 0, false, true, "",""];
		        s_player_cursorLoot set [count s_player_cursorLoot,_handle];
		    };
		};
		
		if(count _backpackLoot > 0 ) then {
		    for "_x" from 0 to ((count _backpackLoot - 1) min 10) do {
		        _class_name = (_backpackLoot select _x);
		        _display_name = getText (configFile >> "CfgVehicles" >> _class_name >> "displayname");
		        _action_text = format["Take %1",_display_name];
		        _handle = _entity addAction [_action_text, "\z\addons\dayz_code\actions\player_take.sqf",[_entity,_class_name,"BACKPACK"], 0, false, true, "",""];
		        s_player_cursorLoot set [count s_player_cursorLoot,_handle];
		    };
		};		
	};
    //Dynamic Taking end
	
} else {
	//Engineering
	
	{dayz_myCursorTarget removeAction _x} forEach s_player_repairActions;
	s_player_repairActions = [];
	dayz_myCursorTarget = objNull;

	//Dynamic Taking
    {dayz_myCursorTarget2 removeAction _x} forEach s_player_cursorLoot;
	s_player_cursorLoot = [];
	dayz_myCursorTarget2 = objNull;

	//Others
	player removeAction s_player_flipveh;
	s_player_flipveh = -1;
	player removeAction s_player_sleep;
	s_player_sleep = -1;
	player removeAction s_player_deleteBuild;
	s_player_deleteBuild = -1;
	player removeAction s_player_deleteBuild_DZE;
	s_player_deleteBuild_DZE = -1;
	
	// Vaults 
	{player removeAction _x} forEach s_player_combi;
	s_player_combi = [];
	s_player_unlockvault = -1;
	player removeAction s_player_packvault;
	s_player_packvault = -1;
	player removeAction s_player_lockvault;
	s_player_lockvault = -1;
	
	//Gut Players
	player removeAction player_Cannibalism;
	player_Cannibalism = -1;
	player removeAction s_player_SurrenderedGear;
	s_player_SurrenderedGear = -1;
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
	player removeAction s_player_burybody;
	s_player_burybody = -1;
	player removeAction s_clothes;
	s_clothes = -1;
	player removeAction s_player_meleeattack;
	s_player_meleeattack = -1;
	player removeAction s_player_callzombies;
	s_player_callzombies = 1;
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
	//Remove Parts
	{silver_myCursorTarget removeAction _x} forEach s_player_removeActions;
	s_player_removeActions = [];
	
	silver_myCursorTarget = objNull;
	
	player removeAction s_player_information;
	s_player_information = -1;
	player removeAction s_player_upgrade_build;
	s_player_upgrade_build = -1;
	player removeAction s_player_maint_build;
	s_player_maint_build = -1;
	player removeAction s_player_downgrade_build;
	s_player_downgrade_build = -1;
	
	//Dog
	player removeAction s_player_tamedog;
	s_player_tamedog = -1;
	player removeAction s_player_feeddog;
	s_player_feeddog = -1;
	player removeAction s_player_waterdog;
	s_player_waterdog = -1;
	player removeAction s_player_staydog;
	s_player_staydog = -1;
	player removeAction unleashed_change_variable2;
	unleashed_change_variable2 = -1;
	player removeAction unleashed_change_variable1;
	unleashed_change_variable1 = -1;
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
	// power assisted refuel
	player removeAction s_player_fuelauto;
	s_player_fuelauto = -1;
	// fill and start generator
	player removeAction s_player_fillgen;
	s_player_fillgen = -1;
	player removeAction insert_vehicle; 
	insert_vehicle = -1; 
	player removeAction remove_vehicle; 
	remove_vehicle = -1; 
	player removeAction unleashed_hack_garage; 
	unleashed_hack_garage = -1; 
};


//Dog actions on player self
_dogHandle = player getVariable ["dogID", 0];
if (_dogHandle > 0) then {
	_dog = _dogHandle getFSMVariable "_dog";
	_ownerID = "0";
	if (!isNull cursorTarget) then { _ownerID = cursorTarget getVariable ["CharacterID","0"]; };
	if (_canDo and !_inVehicle and alive _dog and _ownerID != dayz_characterID) then {
		if (s_player_movedog < 0) then {
			s_player_movedog = player addAction [localize "str_actions_movedog", "\z\addons\dayz_code\actions\dog\move.sqf", player getVariable ["dogID", 0], 1, false, true, "", ""];
		};
		if (s_player_speeddog < 0) then {
			_text = (localize "str_epoch_player_249");
			_speed = 0;
			if (_dog getVariable ["currentSpeed",1] == 0) then { _speed = 1; _text = (localize "str_epoch_player_250"); };
			s_player_speeddog = player addAction [format[localize "str_actions_speeddog", _text], "\z\addons\dayz_code\actions\dog\speed.sqf",[player getVariable ["dogID", 0],_speed], 0, false, true, "", ""];
		};
		if (s_player_calldog < 0) then {
			s_player_calldog = player addAction [localize "str_actions_calldog", "\z\addons\dayz_code\actions\dog\follow.sqf", [player getVariable ["dogID", 0], true], 2, false, true, "", ""];
		};
	};
} else {
	player removeAction s_player_movedog;		
	s_player_movedog =		-1;
	player removeAction s_player_speeddog;
	s_player_speeddog =		-1;
	player removeAction s_player_calldog;
	s_player_calldog = 		-1;
};

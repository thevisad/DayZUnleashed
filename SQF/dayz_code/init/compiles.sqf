if (!isDedicated) then {
	"filmic" setToneMappingParams [0.07, 0.31, 0.23, 0.37, 0.011, 3.750, 6, 4]; setToneMapping "Filmic";
	_nul = [] execVM "\z\addons\dayz_code\init\dzai_initclient.sqf";
	_void = [] execVM "\z\addons\dayz_code\R3F_Realism\R3F_Realism_Init.sqf";
	
	DZE_player_build			= compile preprocessFileLineNumbers "\z\addons\dayz_code\actions\player_build.sqf";
	player_buildControls	= compile preprocessFileLineNumbers "\z\addons\dayz_code\actions\player_buildControls.sqf";
	snap_object				= compile preprocessFileLineNumbers "\z\addons\dayz_code\actions\snap_object.sqf";
	
	

	player_zombieCheck = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_zombieCheck.sqf";	//Run on a players computer, checks if the player is near a zombie
	player_zombieAttack = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_zombieAttack.sqf";	//Run on a players computer, causes a nearby zombie to attack them
	fnc_usec_damageActions = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_damageActions.sqf";		//Checks which actions for nearby casualty
	fnc_inAngleSector = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_inAngleSector.sqf";		//Checks which actions for nearby casualty
	fnc_usec_selfActions = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_selfActions.sqf";		//Checks which actions for self
	fnc_usec_unconscious = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_unconscious.sqf";      //moves a pilot to the passenger area of a helicopter/plane.
	fnc_dzuSwapPilot = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_dzuSwapPilot.sqf";  
	player_temp_calculation = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_temperatur.sqf";		//Temperatur System //TeeChange
	player_weaponFiredNear = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_weaponFiredNear.sqf";
	player_animalCheck = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_animalCheck.sqf";
	player_spawnCheck = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_spawnCheck.sqf";
	//player_spawnLootCheck = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_spawnlootCheck.sqf";
	player_spawnZedCheck = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_spawnzedCheck.sqf";
	building_spawnLoot = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\building_spawnLoot.sqf";
	player_taskHint = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_taskHint.sqf";
	building_spawnZombies = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\building_spawnZombies.sqf";
	//animal_monitor = compile preprocessFileLineNumbers "\z\addons\dayz_code\system\animal_monitor.sqf";
	building_monitor = compile preprocessFileLineNumbers "\z\addons\dayz_code\system\building_monitor.sqf";
	player_fired = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_fired.sqf";			//Runs when player fires. Alerts nearby Zeds depending on calibre and audial rating
	player_packTent = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_packTent.sqf";
	player_unlockDoor =			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_unlockDoor.sqf";
	player_packVault = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_packVault.sqf";
	player_unlockVault = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_unlockVault.sqf";
	player_lockVault = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_lockVault.sqf";
	//player_gearsync = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_gearSync.sqf";
	//player_vaultPitch = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\vault_pitch.sqf";
	//Player Aggravation
	player_aggro_check = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_aggro_check.sqf";
	player_aggro_lieve = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_aggro_decrease.sqf";     //Lowers dayz_aggro_value when above 0
	player_aggro_vate = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_aggro_increase.sqf";     //Increased dayz_aggro_value, up to limit
	player_deathBoard =			compile preprocessFileLineNumbers "\z\addons\dayz_code\actions\list_playerDeathsAlt.sqf";
	player_harvestPlant =			compile preprocessFileLineNumbers "\z\addons\dayz_code\actions\player_harvestPlant.sqf";
	//player_mineOre =			compile preprocessFileLineNumbers "\z\addons\dayz_code\actions\player_mineOre.sqf";
	player_countMagazines = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_countMagazines.sqf";
	player_forceSave = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_forceSave.sqf";
	//BurnTent
	player_burnTent = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_burnTent.sqf";
	agro_spawnZombies =     compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\agro_spawnZombies.sqf";
	player_updateGui = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_updateGui.sqf";
	player_crossbowBolt = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_crossbowBolt.sqf";
	stream_locationFill = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\stream_locationFill.sqf";
	stream_locationDel = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\stream_locationDel.sqf";
	stream_locationCheck = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\stream_locationCheck.sqf";
	player_music = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_music.sqf";			//Used to generate ambient music
	player_login = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_login.sqf";			//Used to generate ambient music
	player_death = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_death.sqf";
	player_switchModel = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_switchModel.sqf";
	player_checkStealth = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_checkStealth.sqf";
	world_sunRise = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_sunRise.sqf";
	world_surfaceNoise = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_surfaceNoise.sqf";
	player_humanityMorph = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_humanityMorph.sqf";
	player_throwObject = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_throwObject.sqf";
	player_alertZombies = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_alertZombies.sqf";
	player_fireMonitor = compile preprocessFileLineNumbers "\z\addons\dayz_code\system\fire_monitor.sqf";
	player_addtoBack = compile preprocessFileLineNumbers "\z\addons\dayz_code\actions\player_addtoBack.sqf";
	
	//Objects
	object_roadFlare = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\object_roadFlare.sqf";
	object_setpitchbank = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_setpitchbank.sqf";
	object_monitorGear = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\object_monitorGear.sqf";

	//Zombies
	zombie_findTargetAgent = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\zombie_findTargetAgent.sqf";
	
	zombie_generate = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\zombie_generate.sqf";			//Server compile, used for loiter behaviour

	//
	dog_findTargetAgent = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\dog_findTargetAgent.sqf";
	player_perroCheck = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_perroCheck.sqf";	//Run on a players computer, checks if the player is near a zombie
	player_perroAttack = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_perroAttack.sqf";	//Run on a players computer, causes a nearby zombie to attack them
	
	//perro_findTargetAgent = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\perro_findTargetAgent.sqf";
	//perro_loiter = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\perro_loiter.sqf";			//Server compile, used for loiter behaviour
	//local_perroDamage = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_damageHandlerP.sqf";		//Generated by the client who created a zombie to track damage
	//actions
	player_addToolbelt = compile preprocessFileLineNumbers "\z\addons\dayz_code\actions\player_addToolbelt.sqf";
	player_reloadMag = compile preprocessFileLineNumbers "\z\addons\dayz_code\actions\player_reloadMags.sqf";
	player_tentPitch = compile preprocessFileLineNumbers "\z\addons\dayz_code\actions\tent_pitch.sqf";
	player_createstash = compile preprocessFileLineNumbers "\z\addons\dayz_code\actions\player_createstash.sqf";
	player_drink = compile preprocessFileLineNumbers "\z\addons\dayz_code\actions\player_drink.sqf";
	player_eat = compile preprocessFileLineNumbers "\z\addons\dayz_code\actions\player_eat.sqf";
	player_useMeds = compile preprocessFileLineNumbers "\z\addons\dayz_code\actions\player_useMeds.sqf";
	player_fillWater = compile preprocessFileLineNumbers "\z\addons\dayz_code\actions\water_fill.sqf";
	player_makeFire = compile preprocessFileLineNumbers "\z\addons\dayz_code\actions\player_makefire.sqf";
	player_chopWood = compile preprocessFileLineNumbers "\z\addons\dayz_code\actions\player_chopWood.sqf";
	
	player_wearClothes = compile preprocessFileLineNumbers "\z\addons\dayz_code\actions\player_wearClothes.sqf";
	player_dropWeapon = compile preprocessFileLineNumbers "\z\addons\dayz_code\actions\player_dropWeapon.sqf";
	player_setTrap = compile preprocessFileLineNumbers "\z\addons\dayz_code\actions\player_setTrap.sqf";
	object_pickup = compile preprocessFileLineNumbers "\z\addons\dayz_code\actions\object_pickup.sqf";
	player_flipvehicle = compile preprocessFileLineNumbers "\z\addons\dayz_code\actions\player_flipvehicle.sqf";
	player_sleep = compile preprocessFileLineNumbers "\z\addons\dayz_code\actions\player_sleep.sqf";
	player_combineMag = compile preprocessFileLineNumbers "\z\addons\dayz_code\actions\player_combineMags.sqf";
	player_createquiver = compile preprocessFileLineNumbers "\z\addons\dayz_code\actions\player_createQuiver.sqf";
	player_fillquiver = compile preprocessFileLineNumbers "\z\addons\dayz_code\actions\player_fillQuiver.sqf";
	player_takearrow = compile preprocessFileLineNumbers "\z\addons\dayz_code\actions\player_takeArrow.sqf";
	player_vehicleExplosives = compile preprocessFileLineNumbers "\z\addons\dayz_code\actions\player_rigVehicleExplosives.sqf";
	player_changeCombo =			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_changeCombo.sqf";
	ui_gear_sound = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\ui_gear_sound.sqf";
	player_switchWeapon = compile preprocessFileLineNumbers "\z\addons\dayz_code\actions\player_switchWeapon.sqf";
	
	// DZE specific
	DZE_player_goFishing =	compile preprocessFileLineNumbers "\z\addons\dayz_code\actions\player_goFishing.sqf";
	
	player_breaklegs =	compile preprocessFileLineNumbers "\z\addons\dayz_code\medical\publicEH\medBreakLegs.sqf";
	player_giveEXP = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_giveEXP.sqf";
	
	//ui
	player_selectSlot = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\ui_selectSlot.sqf";
	player_gearSet = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_gearSet.sqf";
	ui_changeDisplay = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\ui_changeDisplay.sqf";

	//playerstats
	horde_epeen_fnc_fill_page = compile preProcessFile "\z\addons\dayz_code\actions\playerstats\fill_page_fnc.sqf";
	horde_epeen_determine_humanity_fnc = compile preProcessFile "\z\addons\dayz_code\actions\playerstats\determine_humanity_fnc.sqf";
	horde_epeen_setText_journal_fnc = compile preProcessFile "\z\addons\dayz_code\actions\playerstats\epeen_setText_journal.sqf";
	horde_epeen_setText_humanity_fnc = compile preProcessFile "\z\addons\dayz_code\actions\playerstats\epeen_setText_humanity.sqf";
	horde_epeen_setText_stats_fnc = compile preProcessFile "\z\addons\dayz_code\actions\playerstats\epeen_setText_stats.sqf";
	horde_epeen_show_humanity_fnc = compile preProcessFile "\z\addons\dayz_code\actions\playerstats\show_humanity_fnc.sqf";

	//System
	player_monitor = compile preprocessFileLineNumbers "\z\addons\dayz_code\system\player_monitor.sqf";
	player_spawn_1 = compile preprocessFileLineNumbers "\z\addons\dayz_code\system\player_spawn_1.sqf";
	player_spawn_2 = compile preprocessFileLineNumbers "\z\addons\dayz_code\system\player_spawn_2.sqf";
	//onPreloadStarted "diag_log (""preload started"");dayz_preloadFinished = false;";
	//onPreloadFinished "diag_log (""preload finished"");dayz_preloadFinished = true;";
	infectedcamps = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\object_infectedcamps.sqf";
	camp_spawnZombies = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\camp_spawnZombies.sqf";			//Server compile, used for loiter behaviour
	
	//Crafting
	//player_craftItem = compile preprocessFileLineNumbers "\z\addons\dayz_code\actions\player_craftItem.sqf";
	DZE_player_craftItem =	compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_craftItem.sqf";
	
	fnc_dzuSwapPilot = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fnc_dzuSwapPilot.sqf";                    //Server side script to swap player. 
	
	//Group Management
	acceptGroupInvite = compile preprocessFileLineNumbers "\z\addons\dayz_code\system\dzgm\acceptGroupInvite.sqf";
	declineGroupInvite = compile preprocessFileLineNumbers "\z\addons\dayz_code\system\dzgm\declineGroupInvite.sqf";
	disbandGroup = compile preprocessFileLineNumbers "\z\addons\dayz_code\system\dzgm\disbandGroup.sqf";
	inviteToGroup = compile preprocessFileLineNumbers "\z\addons\dayz_code\system\dzgm\inviteToGroup.sqf";
	kickFromGroup = compile preprocessFileLineNumbers "\z\addons\dayz_code\system\dzgm\kickFromGroup.sqf";
	leaveGroup = compile preprocessFileLineNumbers "\z\addons\dayz_code\system\dzgm\leaveGroup.sqf";
	mapLoop = compile preprocessFileLineNumbers "\z\addons\dayz_code\system\dzgm\mapLoop.sqf";
	playerSelectChange = compile preprocessFileLineNumbers "\z\addons\dayz_code\system\dzgm\playerSelectChange.sqf";
	updatePlayerList = compile preprocessFileLineNumbers "\z\addons\dayz_code\system\dzgm\updatePlayerList.sqf";
	
	dayz_HungerThirst = {
		dayz_hunger = dayz_hunger + (_this select 0);
		dayz_thirst = dayz_thirst + (_this select 1);
	};
	
	// TODO: need move it in player_monitor.fsm
	// allow player disconnect from server, if loading hang, kicked by BE etc.

	//This is still needed but the fsm should terminate if any errors pop up.

	[] spawn {
		private["_timeOut","_display","_control1","_control2"];
		disableSerialization;
		_timeOut = 0;
		dayz_loadScreenMsg = "";
		diag_log "DEBUG: loadscreen guard started.";
		_display = uiNameSpace getVariable "BIS_loadingScreen";
		_control1 = _display displayctrl 8400;
		_control2 = _display displayctrl 102;
	// 120 sec timeout
		while { _timeOut < 3000 && !dayz_clientPreload && !dayz_authed } do {

			if ( isNull _display ) then {
				waitUntil { !dialog; };
				startLoadingScreen ["","RscDisplayLoadCustom"];
				_display = uiNameSpace getVariable "BIS_loadingScreen";
				_control1 = _display displayctrl 8400;
				_control2 = _display displayctrl 102;
			};

			if ( dayz_loadScreenMsg != "" ) then {
				_control1 ctrlSetText dayz_loadScreenMsg;
				dayz_loadScreenMsg = "";
			};
			_control2 ctrlSetText format["%1",round(_timeOut*0.01)];
			_timeOut = _timeOut + 1;
			sleep 0.01;
		};
		endLoadingScreen;
		/*
		if ( !dayz_clientPreload && !dayz_authed ) then {
			diag_log "DEBUG: loadscreen guard ended with timeout.";
			disableUserInput false;
			1 cutText ["Disconnected!", "PLAIN"];
			player enableSimulation false;
		} else { diag_log "DEBUG: loadscreen guard ended."; };
		*/
	};

	dayz_losChance = {
		private["_agent","_maxDis","_dis","_val","_maxExp","_myExp"];
		_agent = _this select 0;
		_dis = _this select 1;
		_maxDis = _this select 2;
	//diag_log ("VAL:  " + str(_this));
		_val = (_maxDis - _dis) max 0;
		_maxExp = ((exp 2) * _maxDis);
		_myExp = ((exp 2) * (_val)) / _maxExp;
		_myExp = _myExp * 0.7;
		_myExp
	};
	
	dayz_objectUID2 = {
		private["_position","_dir","_key"];
		_dir = _this select 0;
		_key = "";
		_position = _this select 1;
		{
			_x = _x * 10;
			if ( _x < 0 ) then { _x = _x * -10 };
			_key = _key + str(round(_x));
		} forEach _position;
		_key = _key + str(round(_dir));
		_key
	};
	
	DZE_getModelName = {
		_objInfo = toArray(str(_this));
		_lenInfo = count _objInfo - 1;
		_objName = [];
		_i = 0;
		// determine where the object name starts
		{
			if (58 == _objInfo select _i) exitWith {};
			_i = _i + 1;
		} count _objInfo;
		_i = _i + 2; // skip the ": " part
		for "_k" from _i to _lenInfo do {
			_objName set [(count _objName), (_objInfo select _k)];
		};
		_objName = toLower(toString(_objName));
		_objName
	};
	

	ui_initDisplay = {
		private["_control","_ctrlBleed","_display","_ctrlFracture","_ctrlDogFood","_ctrlDogWater","_ctrlDogWaterBorder", "_ctrlDogFoodBorder"];
		disableSerialization;
		_display = uiNamespace getVariable 'DAYZ_GUI_display';
		_control = _display displayCtrl 1204;
		_control ctrlShow false;
		if (!r_player_injured) then {
			_ctrlBleed = _display displayCtrl 1303;
			_ctrlBleed ctrlShow false;
		};
		if (!r_fracture_legs and !r_fracture_arms) then {
			_ctrlFracture = _display displayCtrl 1203;
			_ctrlFracture ctrlShow false;
		};
		_ctrlDogFoodBorder = _display displayCtrl 1501;
		_ctrlDogFoodBorder ctrlShow false;
		_ctrlDogFood = _display displayCtrl 1701;
		_ctrlDogFood ctrlShow false;

		_ctrlDogWaterBorder = _display displayCtrl 1502;
		_ctrlDogWaterBorder ctrlShow false;
		_ctrlDogWater = _display displayCtrl 1702;
		_ctrlDogWater ctrlShow false
	};

	dayz_losCheck = {
		private["_target","_agent","_cantSee"];
		_target = _this select 0; // PUT THE PLAYER IN FIRST ARGUMENT!!!!
		_agent = _this select 1;
		_cantSee = true;
		if (!isNull _target) then {
			_tPos = eyePos _target;
			_zPos = eyePos _agent;
			if ((count _tPos > 0) and (count _zPos > 0)) then {
				_cantSee = terrainIntersectASL [_tPos, _zPos];
				if (!_cantSee) then {
					_cantSee = lineIntersects [_tPos, _zPos, _agent, vehicle _target];
				};
			};
		};
		_cantSee
	};

	dayz_losCheck_attack = {
		private["_target","_agent","_cantSee"];
		_target = _this select 0;
		_agent = _this select 1;
		_cantSee = true;
		if (!isNull _target) then {
			_tPos = eyePos _target;
			_zPos = eyePos _agent;
			if ((count _tPos > 0) and (count _zPos > 0)) then {
				_cantSee = terrainIntersectASL [_tPos, _zPos];
				if (!_cantSee) then {
					_ob_arr = lineIntersectsWith [_zPos, _tPos, _agent, _target];
					_cantSee = ((count _ob_arr) != 0 and {((_ob_arr select 0) isKindOf "All")});
				};
			};
		};
		_cantSee
	};



	dayz_spaceInterrupt = {
		private ["_dikCode", "_handled","_displayg"];
		_dikCode = _this select 1;
		_shift = 	_this select 2;
		_ctrl = 	_this select 3;
		_alt =		_this select 4;
		_handled = false;
		
		if (_dikCode in[0x02,0x03,0x04,0x58,0x57,0x44,0x43,0x42,0x41,0x40,0x3F,0x3D,0x3C,0x3B,0x0B,0x0A,0x09,0x08,0x07,0x06,0x05]) then {
			_handled = true;
		};
		if (_dikCode in [0xDB,0xDC]) then {
			if (tagname) then {tagname = false;} else {tagname = true;};
		};

		if (_dikCode in actionKeys "TacticalView") then {
			execVM "\z\addons\dayz_code\system\dzgm\noTactical.sqf";
		};

		if (_dikCode == 0x01 && r_player_dead) then {
			_handled = true;
		};

		if (_dikCode in[0x0F,0x1D,0x2A,0x36,0x3E]  and (time - dayz_lastCheckBit > 2) ) then {
			dayz_lastCheckBit = time;
		};
		
				// numpad 8 0x48 now pgup 0xC9 1
		if ((_dikCode == 0xC9 and (!_alt or !_ctrl)) or (_dikCode in actionKeys "User15")) then {
			DZE_Q = true;
		};
		// numpad 2 0x50 now pgdn 0xD1
		if ((_dikCode == 0xD1 and (!_alt or !_ctrl)) or (_dikCode in actionKeys "User16")) then {
			DZE_Z = true;
		};


		// numpad 8 0x48 now pgup 0xC9 0.1
		if ((_dikCode == 0xC9 and (_alt and !_ctrl)) or (_dikCode in actionKeys "User13")) then {
			DZE_Q_alt = true;
		};
		// numpad 2 0x50 now pgdn 0xD1
		if ((_dikCode == 0xD1 and (_alt and !_ctrl)) or (_dikCode in actionKeys "User14")) then {
			DZE_Z_alt = true;
		};


		// numpad 8 0x48 now pgup 0xC9 0.01
		if ((_dikCode == 0xC9 and (!_alt and _ctrl)) or (_dikCode in actionKeys "User7")) then {
			DZE_Q_ctrl = true;
		};
		// numpad 2 0x50 now pgdn 0xD1
		if ((_dikCode == 0xD1 and (!_alt and _ctrl)) or (_dikCode in actionKeys "User8")) then {
			DZE_Z_ctrl = true;
		};

		// numpad 4 0x4B now Q 0x10
		if (_dikCode == 0x10 or (_dikCode in actionKeys "User17")) then {
			DZE_4 = true;
		};		
		// numpad 6 0x4D now E 0x12
		if (_dikCode == 0x12 or (_dikCode in actionKeys "User18")) then {
			DZE_6 = true;
		};
		// numpad 5 0x4C now space 0x39
		if (_dikCode == 0x39 or (_dikCode in actionKeys "User19")) then {
			DZE_5 = true;
		};
		
		if (_dikCode == 0x15 ) then {
			if (!dayz_isSwimming and !dialog) then {
				//createDialog "levels";
				createDialog "UnleashedLevelDialog";
			};
			_keys = ["skill1", "skill2", "skill3", "etc"];
			_values = ["val1", "val2", "val3", "etc"];
			[_keys, _values] call updateUI;
			_handled = true;
		};
	
		if ((_dikCode in actionKeys "Gear") and (vehicle player != player) and !_shift and !_ctrl and !_alt && !dialog) then {
			dayz_lastCheckBit = time;
			call player_forceSave;
			createGearDialog [player, "RscDisplayGear"];
			_handled = true;
		};
		
		// surrender 
		if (_dikCode in actionKeys "Surrender") then {
			
			_vehicle = vehicle player;
			_inVehicle = (_vehicle != player);
			_onLadder =	(getNumber (configFile >> "CfgMovesMaleSdr" >> "States" >> (animationState player) >> "onLadder")) == 1;
			_canDo = (!r_drag_sqf and !r_player_unconscious and !_onLadder and !_inVehicle);
			
			if (_canDo and !DZE_Surrender and !(player isKindOf  "PZombie_VB")) then {
				DZE_Surrender = true;
				_dropPrimary = false;
				_dropSecondary = false;

				_primaryWeapon = primaryWeapon player;
				if (_primaryWeapon != "") then {_dropPrimary = true;};
				_secondaryWeapon = "";
				{
					if ((getNumber (configFile >> "CfgWeapons" >> _x >> "Type")) == 2) exitWith {
							_secondaryWeapon = _x;
					};
				} forEach (weapons player);
				if (_secondaryWeapon != "") then {_dropSecondary = true;};

				if (_dropPrimary or _dropSecondary) then {
					player playActionNow "PutDown";
					_iPos = getPosATL player;
					_radius = 1;
					_item = createVehicle ["WeaponHolder", _iPos, [], _radius, "CAN_COLLIDE"];
					_item setposATL _iPos;
					if (_dropPrimary) then {
						_iItem = _primaryWeapon;
						_removed = ([player,_iItem,1] call BIS_fnc_invRemove);
						if (_removed == 1) then {
							_item addWeaponCargoGlobal [_iItem,1];
							//diag_log( "SL: _dropPrimary: " + str(_iItem));
						};
					};
					if (_dropSecondary) then {
						_iItem = _secondaryWeapon;
						_removed = ([player,_iItem,1] call BIS_fnc_invRemove);
						if (_removed == 1) then {
							_item addWeaponCargoGlobal [_iItem,1];
							//diag_log( "SL: _dropSecondary: " + str(_iItem));
						};
					};
					player reveal _item;
				};

				// set publicvariable that allows other player to access gear
				player setVariable ["DZE_Surrendered", true, true];
				// surrender animation
				player playMove "AmovPercMstpSsurWnonDnon";
			};
			_handled = true;
		};
		
		
		if (_dikCode in actionKeys "MoveForward") exitWith {r_interrupt = true; if (DZE_Surrender) then {call dze_surrender_off};};
		if (_dikCode in actionKeys "MoveLeft") exitWith {r_interrupt = true; if (DZE_Surrender) then {call dze_surrender_off};};
		if (_dikCode in actionKeys "MoveRight") exitWith {r_interrupt = true; if (DZE_Surrender) then {call dze_surrender_off};};
		if (_dikCode in actionKeys "MoveBack") exitWith {r_interrupt = true; if (DZE_Surrender) then {call dze_surrender_off};};

				//Prevent exploit of drag body
		if ((_dikCode in actionKeys "Prone") and r_drag_sqf) then { force_dropBody = true; };
		if ((_dikCode in actionKeys "Crouch") and r_drag_sqf) then { force_dropBody = true; };
		

		
		
		if (_dikCode in (actionKeys "GetOver")) then {
			// this prevents the player zombie from performing the getover action as it will cause pz to just get stuck standing. 
			// but will cause side effect of auto run/walk, perform attack to stop.
			if (player isKindOf  "PZombie_VB") exitWith {
				player switchAction "walkf";
			};
			if (!r_fracture_legs and (time - dayz_lastCheckBit > 4)) then {
				_inBuilding = [player] call fnc_isInsideBuilding;
				_nearbyObjects = nearestObjects[getPosATL player, ["TentStorage", "Hedgehog_DZ", "Sandbag1_DZ","TrapBear","Wire_cat1"], 8];
				if (!_inBuilding and (count _nearbyObjects == 0)) then {
					dayz_lastCheckBit = time;
					call player_CombatRoll;
				};
			};
		};
		//if (_dikCode == 57) then {_handled = true}; // space
		//if (_dikCode in actionKeys 'MoveForward' or _dikCode in actionKeys 'MoveBack') then {r_interrupt = true};
		/*
		if (_dikCode == 210) then //insert Key
		{
			_nill = execvm "\z\addons\dayz_code\actions\playerstats.sqf";
		};
		*/


		if (_dikCode in actionKeys "MoveLeft") then {r_interrupt = true};
		if (_dikCode in actionKeys "MoveRight") then {r_interrupt = true};
		if (_dikCode in actionKeys "MoveForward") then {r_interrupt = true};
		if (_dikCode in actionKeys "MoveBack") then {r_interrupt = true};
		if (_dikCode in actionKeys "ForceCommandingMode") then {_handled = true};
		if (_dikCode in actionKeys "PushToTalk" and (time - dayz_lastCheckBit > 10)) then {
			dayz_lastCheckBit = time;
			[player,15,true,(getPosATL player)] spawn player_alertZombies;
		};
		if (_dikCode in actionKeys "VoiceOverNet" and (time - dayz_lastCheckBit > 10)) then {
			dayz_lastCheckBit = time;
			[player,15,true,(getPosATL player)] spawn player_alertZombies;
		};
		if (_dikCode in actionKeys "PushToTalkDirect" and (time - dayz_lastCheckBit > 10)) then {
			dayz_lastCheckBit = time;
			[player,5,false,(getPosATL player)] spawn player_alertZombies;
		};
		if (_dikCode in actionKeys "Chat" and (time - dayz_lastCheckBit > 10)) then {
			dayz_lastCheckBit = time;
			[player,15,false,(getPosATL player)] spawn player_alertZombies;
		};
		if (_dikCode in actionKeys "User20" and (time - dayz_lastCheckBit > 5)) then {
			dayz_lastCheckBit = time;
			_nill = execvm "\z\addons\dayz_code\actions\playerstats.sqf";
		};
		


		/*
		if (_dikCode in actionKeys "IngamePause") then {
			waitUntil {
				_display = findDisplay 49;
				!isNull _display;
			};
			_btnRespawn = _display displayCtrl 1010;
			_btnAbort = _display displayCtrl 104;
			_btnRespawn ctrlEnable false;
			_btnAbort ctrlEnable false;
		};
		*/
		_handled
	};
	
	FNC_GetPlayerUID = {
		private ["_object","_version","_PID"];
		_object = _this select 0;
		_version = productVersion select 3;
		if (DayZ_UseSteamID) then {
			_PID = GetPlayerUID _object;
		} else {
			if (_version >= 125548) then {
				_PID = call (compile "GetPlayerUIDOld _object");
			} else {
				_PID = GetPlayerUID _object;
				diag_log format["Your game version, %1, is less than the required for the old UID system; using Steam ID system instead. Update to 1.63.125548 (or latest steam beta)", _version];
			};
		};
		_PID;
	};
	
	gear_ui_hide = {
		//private["_display","_BP"];
		disableSerialization;
		_display = findDisplay 106;
		_BP = unitBackpack player;
		if (ctrlShown (_display displayCtrl 159)) then {//prevent background images in backpack view
			for "_i" from 1006 to 1011 do {
				(_display displayCtrl _i) ctrlShow false;
			};
		} else {
			for "_i" from 1006 to 1011 do {
				if (!(ctrlShown (_display displayCtrl _i))) then {
					(_display displayCtrl _i) ctrlShow true;
				};
			};
		};
		//hide buttons if unnecessary
		if (isNull _BP || ((typeOf _BP) == "")) then {
			(_display displayCtrl 132) ctrlShow false;
			(_display displayCtrl 157) ctrlShow false;
			(_display displayCtrl 158) ctrlShow false;
		};

		// Prevent carrying 2 rifles 'exploit'
		if (primaryWeapon player == "" && dayz_onBack != "" && !(dayz_onBack in MeleeWeapons)) then {
			["gear"] call player_switchWeapon;
		};

		if (primaryWeapon player != "" && (primaryWeapon player in MeleeWeapons || dayz_onBack in MeleeWeapons)) then {
			(_display displayCtrl 1204) ctrlShow true;
		} else {
			(_display displayCtrl 1204) ctrlShow false;
		};

		if (DayZ_onBack != "") then {
			(_display displayCtrl 1208) ctrlShow true;
		} else {
			(_display displayCtrl 1208) ctrlShow false;
		};

		for "_i" from 0 to (lbSize (_display displayCtrl 105)) - 1 do {
			(_display displayCtrl 105) lbSetColor [_i, [0.06, 0.05, 0.03, 1]];
		};
	};
	
	updateUI = {
		private["_keys", "_values", "_display", "_i"];
		_skillpoints = [player] call DZU_fnc_getSkillPoints;
		_display = findDisplay 8567;
		_i = 0;
		_control = _display displayCtrl (8020);
		_control ctrlSetText str(_skillpoints);
		//_target_characterID =  player getVariable ["characterID","0"];
		_userid = _display displayCtrl (8040);
		_userid ctrlSetText str(dayz_playerID);
		/*
		_consumedPassword = 1;
		_playerRegged = [player,"Reg"] call DZU_fnc_getVariable;
		
		if (_playerRegged != 2) then {
			diag_log("VARIABLES: Setup player Pin for new player.");
			_accountPasswordText = "Pin";
			if (accountPassword > 0) then {
				_userpass = _display displayCtrl (8041);
				_userpass ctrlSetText str(accountPassword);	
			}
			else 
			{
				accountPassword = floor(random 9999);
				_userpass = _display displayCtrl (8041);
				_userpass ctrlSetText str(accountPassword);
				[player,_accountPasswordText,accountPassword] call DZU_fnc_setVariable;
				diag_log format ["VARIABLES: Player Password set to: %1", accountPassword];
			};
		}
		else 
		{
			_consumedText = "consumed";
			_userpass = _display displayCtrl (8041);
			_userpass ctrlSetText str(_consumedText);	
		};*/
		
		{
			_skill_value = [player,_x] call DZU_fnc_getVariable;
			_skill_name  = _x;
			_control = _display displayCtrl (8010 + _i);
			_control2 = _display displayCtrl (8000 + _i);
			_control2 ctrlSetText str(_skill_value);
			_control ctrlSetText str(_skill_name);
			//diag_log ("Compiles _skill_name: " + str(_skill_name));
			//diag_log ("Compiles _skill_value: " + str(_skill_value));
			//diag_log ("Compiles _x: " + str(_x));
            _i = _i + 1;
        } forEach DZU_rpg_skillsList;

	};
	
	updateUI2 = {
		//if (isServer) exitWith {};
		disableSerialization;
		_display = findDisplay 20001;
		_listbox = _display displayCtrl 20004;
		_sel = lbCurSel _listbox; if(_sel < 0) exitWith{};

		_leveltype = DZU_rpg_skillsList select _sel;
		_skill_name = lbtext [20004,_sel];
		_skill_value = [player,_leveltype] call DZU_fnc_getVariable;
		_skillpoints = [player] call DZU_fnc_getSkillPoints;
		//diag_log(format["_skillpoints: %1 _skill_name: %2 _skill_value: %3",_skillpoints,_skill_name,_skill_value]);
		_queuelist = _display displayCtrl 20005;
		_queuelist ctrlSetText format["%1 value is %2",_leveltype,_skill_value ];
		
		_skillvalue = _display displayCtrl 20006;
		_skillvalue ctrlSetText format["Current Points: %1",_skillpoints ];
	};
	

	buildLevelList = {
		//if (isServer) exitWith {};
		disableSerialization;
		_display = findDisplay 20001;
		_Levellist = _display displayCtrl 20004;
		_queuelist = _display displayCtrl 20005;

		_queuelist ctrlSetText format["Levels queued: %1",count unleashed_leveling_queue];


		_levelstring = "";

		{
			_skill_value = [player,_x] call DZU_fnc_getVariable;
			_skill_name  = _x;
			_levelstring = format["%1",_skill_name,_skill_value];
			//diag_log(format["_skill_name: %1\n_skill_value: %2\n_levelstring: %3\n_display: %4\n",_skill_name,_skill_value,_levelstring,_display]);
			_Levellist lbAdd _skill_name;
		} forEach DZU_rpg_skillsList;
	};

	player_CombatRoll = {
		DoRE = ({isPlayer _x} count (player nearEntities ["AllVehicles",100]) > 1);
		if (canRoll && animationState player in ["amovpercmrunslowwrfldf","amovpercmrunsraswrfldf","amovpercmevaslowwrfldf","amovpercmevasraswrfldf"]) then {
			canRoll = false;
			null = [] spawn {
				if (DoRE) then {
					[nil, player, rSWITCHMOVE, "ActsPercMrunSlowWrflDf_FlipFlopPara"] call RE;
				} else {
					player switchMove "ActsPercMrunSlowWrflDf_FlipFlopPara";
				};
				sleep 0.3;
				player setVelocity [(velocity player select 0) + 1.5 * sin direction player, (velocity player select 1) + 1.5 * cos direction player, (velocity player select 2) + 4];
				sleep 1;
				canRoll = true;
			};
			_handled = true;
		};
	};
	
	dze_isnearest_player = {
		private ["_notClosest","_playerDistance","_nearPlayers","_obj","_playerNear"];
		if(!isNull _this) then {
			_nearPlayers = _this nearEntities ["CAManBase", 12];
			_playerNear = ({isPlayer _x} count _nearPlayers) > 1;
			_notClosest = false;
			if (_playerNear) then {
				// check if another player is closer
				_playerDistance = player distance _this;
				{
					if (_playerDistance > (_x distance _this)) exitWith { _notClosest = true; };
				} count _nearPlayers;
			};
		} else {
			_notClosest = false;
		};
		_notClosest
	};

// 	player_serverModelChange = {
// 		private["_object","_model"];
// 		_object = _this select 0;
// 		_model = _this select 1;
// 		if (_object == player) then {
// 			_model call player_switchModel;
// 		};
// 	};

	player_guiControlFlash = {
		private["_control"];
		_control = _this;
		if (ctrlShown _control) then {
			_control ctrlShow false;
		} else {
			_control ctrlShow true;
		};
	};

	gear_ui_offMenu = {
		private["_control","_parent","_menu"];
		disableSerialization;
		_control = _this select 0;
		_parent = findDisplay 106;
		if (!(_this select 3)) then {
			for "_i" from 0 to 9 do {
				_menu = _parent displayCtrl (1600 + _i);
				_menu ctrlShow false;
			};
			_grpPos = ctrlPosition _control;
			_grpPos set [3,0];
			_control ctrlSetPosition _grpPos;
			_control ctrlShow false;
			_control ctrlCommit 0;
		};
	};
	
	dze_surrender_off = {
		player setVariable ["DZE_Surrendered", false, true];
		DZE_Surrender = false;	
	};

	gear_ui_init = {
		//private["_control","_parent","_menu","_grpPos"];
		disableSerialization;
		_parent = findDisplay 106;
		_control = _parent displayCtrl 6902;
		for "_i" from 0 to 9 do {
			_menu = _parent displayCtrl (1600 + _i);
			_menu ctrlShow false;
		};
		_grpPos = ctrlPosition _control;
		_grpPos set [3,0];
		_control ctrlSetPosition _grpPos;
		_control ctrlShow false;
		_control ctrlCommit 0;
	};

	dayz_lowHumanity = {
		private["_unit","_humanity","_delay"];
		_unit = _this;
		if ((_unit distance player) < 15) then {
			_humanity = _unit getVariable["humanity",0];
			dayz_heartBeat = true;
			if (_humanity < -3000) then {
				_delay = ((10000 + _humanity) / 5500) + 0.3;
				playSound "heartbeat_1";
				sleep _delay;
			};
			dayz_heartBeat = false;
		};
	};

	dayz_meleeMagazineCheck = {
		private["_meleeNum","_magType","_wpnType","_ismelee"];
		_wpnType = primaryWeapon player;
		_ismelee = (gettext (configFile >> "CfgWeapons" >> _wpnType >> "melee"));
		if (_ismelee == "true") then {
			_magType = ([] + getArray (configFile >> "CfgWeapons" >> _wpnType >> "magazines")) select 0;
			_meleeNum = ({_x == _magType} count magazines player);
			if (_meleeNum < 1) then {
				player addMagazine _magType;
			};
		};
	};
	
	fnc_pwrotate = {
		private ["_turntable","_holder","_time","_dir"];
		_turntable = createVehicle [
			"Land_Can_V3_F",
			_this select 0,
			[],
			0, 
			"CAN_COLLIDE"
		];
		_turntable hideObject true;
		_holder = createVehicle [
			"WeaponHolderSimulated",
			_this select 0,
			[],
			0, 
			"CAN_COLLIDE"
		];
		//diag_log( "SL: fnc_pwrotate: " + str(_this select 1));
		_holder addWeaponCargoGlobal [_this select 1, 1];
		_holder attachTo [_turntable, [0,-0.63,0.7]];
		_holder setVectorDirAndUp [[0,0,1],[0,-1,0]];
		_time = time + 10;
		_dir = getDir _turntable;
		waitUntil {
			_dir = _dir + (
				if (_dir > 360) then [{-360},{3}]
			);
			_turntable setDir _dir;
			time > _time
		};
		deleteVehicle _holder;
		deleteVehicle _turntable;
	};

	dayz_futurePos = {
		private ["_vehicle","_velo","_speed","_nextPlayerPos"];

		_vehicle = (vehicle _this);
		_velo = velocity _vehicle;
		_speed = ([0, 0, 0] distance (_velo)); // buggy: if player/veh is blocked by an object, speed is not zero
		_nextPlayerPos = getPosATL _this;
		if (_speed > 0) then {
			// try compute next player pos. This works both whether player is bare foot, or in a vehicle, whatever his place.
			_velo = [ (_velo select 0) / _speed, (_velo select 1) / _speed, (_velo select 2) / _speed];  // normalize speed vector
			_nextPlayerPos set [0, (_nextPlayerPos select 0) + (_velo select 0) * 1]; // 1  = a meter alongside the movement
			_nextPlayerPos set [1, (_nextPlayerPos select 1) + (_velo select 1) * 1];
			_nextPlayerPos set [2, (_nextPlayerPos select 2) + (_velo select 2) * 1];
		};

		_nextPlayerPos
	};

	dayz_originalPlayer = player;
	
	//Group Management
	if (count units group player > 1) then {[player] join grpNull;};	
	if (isNil "dzgmInit") then {call compile preprocessFileLineNumbers "\z\addons\dayz_code\system\dzgm\icons.sqf";};
	uiSleep 1;
	[] spawn dzgmInit;
	[] spawn mapLoop;
	systemChat "Right click on radio to open group management";
};

	progressLoadingScreen 0.8;
	
	//BIS_fnc_selectRandom =		compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\BIS_fnc\fn_selectRandom.sqf";
	BIS_fnc_selectRandom =  	compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_selectRandom.sqf";
	BIS_fnc_vectorAdd =         compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\BIS_fnc\fn_vectorAdd.sqf";
	BIS_fnc_halo =              compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\BIS_fnc\fn_halo.sqf";
	BIS_fnc_findNestedElement =	compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\BIS_fnc\fn_findNestedElement.sqf";
	BIS_fnc_param = 			compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\BIS_fnc\fn_param.sqf";

	//Both
	BIS_Effects_Init = true; //A2 won't overwrite this if var is not nil
	/* BIS_Effects_* fixes from Dwarden */
	diag_log "Res3tting B!S effects...";
	BIS_Effects_EH_Fired = {false};
	BIS_Effects_EH_Killed = compile preprocessFileLineNumbers "\z\addons\dayz_code\system\BIS_Effects\killed.sqf";
	BIS_Effects_Rifle = {false};
	BIS_Effects_Cannon=compile preprocessFileLineNumbers "\ca\Data\ParticleEffects\SCRIPTS\muzzle\cannon.sqf";
	BIS_Effects_HeavyCaliber=compile preprocessFileLineNumbers "\ca\Data\ParticleEffects\SCRIPTS\muzzle\heavycaliber.sqf";
	BIS_Effects_HeavySniper=compile preprocessFileLineNumbers "\ca\Data\ParticleEffects\SCRIPTS\muzzle\heavysniper.sqf";
	BIS_Effects_Rocket=compile preprocessFileLineNumbers "\ca\Data\ParticleEffects\SCRIPTS\muzzle\rocket.sqf";
	BIS_Effects_SmokeShell=compile preprocessFileLineNumbers "\ca\Data\ParticleEffects\SCRIPTS\muzzle\smokeshell.sqf";
	BIS_Effects_SmokeLauncher=compile preprocessFileLineNumbers "\ca\Data\ParticleEffects\SCRIPTS\muzzle\smokelauncher.sqf";
	BIS_Effects_Flares=compile preprocessFileLineNumbers "\ca\Data\ParticleEffects\SCRIPTS\muzzle\flares.sqf";
	BIS_Effects_Burn=compile preprocessFileLineNumbers "\ca\Data\ParticleEffects\SCRIPTS\destruction\burn.sqf";
	BIS_Effects_AircraftVapour=compile preprocessFileLineNumbers "\ca\Data\ParticleEffects\SCRIPTS\misc\aircraftvapour.sqf";
	BIS_Effects_AirDestruction = compile preprocessFileLineNumbers "\z\addons\dayz_code\system\BIS_Effects\AirDestruction.sqf";
	BIS_Effects_AirDestructionStage2 = compile preprocessFileLineNumbers "\z\addons\dayz_code\system\BIS_Effects\AirDestructionStage2.sqf";
	BIS_Effects_Secondaries = compile preprocessFileLineNumbers "\z\addons\dayz_code\system\BIS_Effects\secondaries.sqf";
	BIS_Effects_globalEvent = {
		BIS_effects_gepv = _this;
		publicVariable "BIS_effects_gepv";
		_this call BIS_Effects_startEvent;
	};
	BIS_Effects_startEvent = {
		switch (_this select 0) do {
			case "AirDestruction": {
					[_this select 1] spawn BIS_Effects_AirDestruction;
			};
			case "AirDestructionStage2": {
					[_this select 1, _this select 2, _this select 3] spawn BIS_Effects_AirDestructionStage2;
			};
			case "Burn": {
					[_this select 1, _this select 2, _this select 3, false, true] spawn BIS_Effects_Burn;
			};
		};
	};
	"BIS_effects_gepv" addPublicVariableEventHandler {
		(_this select 1) call BIS_Effects_startEvent;
	};
	
	
	zombie_loiter = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\zombie_loiter.sqf";			//Server compile, used for loiter behaviour
	fnc_buildWeightedArray = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_buildWeightedArray.sqf";		//Checks which actions for nearby casualty
	zombie_initialize = compile preprocessFileLineNumbers "\z\addons\dayz_code\init\zombie_init.sqf";
	perro_initialize = compile preprocessFileLineNumbers "\z\addons\dayz_code\init\perro_init.sqf";
	object_vehicleKilled = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\object_vehicleKilled.sqf";		//Event handler run on damage
	object_getHit = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\object_getHit.sqf";			//gets the hit value for a HitPoint (i.e. HitLegs) against the selection (i.e. "legs"), returns the value
	object_setHit = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\object_setHit.sqf";			//process the hit as a NORMAL damage (useful for persistent vehicles)
	object_processHit = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\object_processHit.sqf";		//process the hit in the REVO damage system (records and sets hit)
	object_delLocal = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\object_delLocal.sqf";
	object_cargoCheck = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\object_cargoCheck.sqf";		//Run by the player or server to monitor changes in cargo contents
	fnc_usec_damageHandler = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_damageHandler.sqf";		//Event handler run on damage
	// Vehicle damage fix
	fnc_veh_handleDam = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\veh_handleDam.sqf";
	fnc_veh_handleKilled = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\veh_handleKilled.sqf";
	fnc_veh_handleRepair = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\veh_handleRepair.sqf";	//process the hit as a NORMAL damage (useful for persistent vehicles)
	fnc_veh_ResetEH = compile preprocessFileLineNumbers "\z\addons\dayz_code\init\veh_ResetEH.sqf";			//Initialize vehicle
	fnc_inString = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_inString.sqf";
	fnc_isInsideBuilding = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_isInsideBuilding.sqf";	//_isInside = [_unit,_building] call fnc_isInsideBuilding;
	dayz_zombieSpeak = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\object_speak.sqf";			//Used to generate random speech for a unit
	vehicle_getHitpoints = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\vehicle_getHitpoints.sqf";
	local_gutObject = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\local_gutObject.sqf";		//Generated on the server (or local to unit) when gutting an object
	local_zombieDamage = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_damageHandlerZ.sqf";		//Generated by the client who created a zombie to track damage
	local_perroDamage = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_damageHandlerZ.sqf";		//Generated by the client who created a zombie to track damage
	local_setFuel = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\local_setFuel.sqf";			//Generated when someone refuels a vehicle
	local_eventKill = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\local_eventKill.sqf";		//Generated when something is killed
	//player_weaponCheck = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_weaponCheck.sqf";	//Run by the player or server to monitor whether they have picked up a new weapon
	curTimeStr = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_curTimeStr.sqf";
	player_medBandage = compile preprocessFileLineNumbers "\z\addons\dayz_code\medical\publicEH\medBandaged.sqf";
	player_medInject = compile preprocessFileLineNumbers "\z\addons\dayz_code\medical\publicEH\medInject.sqf";
	player_medEpi = compile preprocessFileLineNumbers "\z\addons\dayz_code\medical\publicEH\medEpi.sqf";
	player_medTransfuse = compile preprocessFileLineNumbers "\z\addons\dayz_code\medical\publicEH\medTransfuse.sqf";
	player_medMorphine = compile preprocessFileLineNumbers "\z\addons\dayz_code\medical\publicEH\medMorphine.sqf";
	player_medPainkiller = compile preprocessFileLineNumbers "\z\addons\dayz_code\medical\publicEH\medPainkiller.sqf";
	world_isDay = {if ((daytime < (24 - dayz_sunRise)) and (daytime > dayz_sunRise)) then {true} else {false}};
	player_humanityChange = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_humanityChange.sqf";
	spawn_loot = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\spawn_loot.sqf";
	player_projectileNear = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_projectileNear.sqf";
	

	//Unleashed
	//[] execVM "\z\addons\dayz_code\compile\houseLighting.sqf";
	[] execVM "\z\addons\dayz_code\actions\player_repairActions.sqf";

	player_sumMedical = {
		private["_character","_wounds","_legs","_arms","_medical", "_status"];
		_character = _this;
		_wounds = [];
		if (_character getVariable["USEC_injured",false]) then {
			{
				_status = _character getVariable["hit_"+_x,false];
				if ((typeName _status == "BOOLEAN") AND {(_status)}) then {
					_wounds set [count _wounds,_x];
				};
			} forEach USEC_typeOfWounds;
		};
		_legs = _character getVariable ["hit_legs",0];
		_arms = _character getVariable ["hit_arms",0];
		_medical = [
			_character getVariable["USEC_isDead",false],
			_character getVariable["NORRN_unconscious", false],
			_character getVariable["USEC_infected",false],
			_character getVariable["USEC_injured",false],
			_character getVariable["USEC_inPain",false],
			_character getVariable["USEC_isCardiac",false],
			_character getVariable["USEC_lowBlood",false],
			_character getVariable["USEC_BloodQty",12000],
			_wounds,
			[_legs,_arms],
			_character getVariable["unconsciousTime",0],
			_character getVariable["messing",[0,0]]
		];
		_medical
	};

	fn_niceSpot = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_niceSpot.sqf";
	
	
	// http://killzonekid.com/arma-scripting-tutorials-kk_fnc_assocarrayxxxx/
	//_myAArray = call KK_fnc_assocArrayCreate;
	KK_fnc_assocArrayCreate = {
		//_ref = call KK_fnc_assocArrayCreate;
		private "_ref";
		_ref = str ("WeaponHolderSimulated" createVehicleLocal [0,0,0]);
		missionNamespace setVariable [_ref + "_KEYS", []];
		missionNamespace setVariable [_ref + "_VALS", []];
		_ref
	};
	
	//[_myAArray, "Name", "KK"] call KK_fnc_assocArrayAddKeyVal;
	//_newAArray = [netId player, "Name", name player] call KK_fnc_assocArrayAddKeyVal;
	KK_fnc_assocArrayAddKeyVal = {
		//_ref = [_ref, _key, _val] call KK_fnc_assocArrayAddKeyVal;
		private ["_ref","_keysRef","_valsRef","_keys","_vals","_key","_indx"];
		_ref = _this select 0;
		_keysRef = format ["%1_KEYS", _ref];
		_valsRef = format ["%1_VALS", _ref];
		if (isNil _keysRef || isNil _valsRef) then {
			missionNamespace setVariable [_keysRef, []];
			missionNamespace setVariable [_valsRef, []];
		};
		_keys = missionNamespace getVariable _keysRef;
		_vals = missionNamespace getVariable _valsRef;
		_key = _this select 1;
		_indx = _keys find _key;
		if (_indx < 0) then {
			_indx = count _keys;
			_keys set [_indx, _key];
		};
		_vals set [_indx, _this select 2];
		_ref
	};


	/*
	if ([_myAArray, "Name"] call KK_fnc_assocArrayKeyExists) then {
		hint "Key 'Name' exists!";
	};
	*/
	KK_fnc_assocArrayKeyExists = {
		//_bool = [_ref, _key] call KK_fnc_assocArrayKeyExists
		(_this select 1 in (missionNamespace getVariable [format [
			"%1_KEYS", 
			_this select 0
		], []]))
	};
	
	//_value = [_myAArray, "Name"] call KK_fnc_assocArrayGetVal;
	/*
	if (!isNil {_value}) then {
		hint _value;
	} else {
		hint "'Name' is either empty or doesn't exist!";
	};
	*/
	KK_fnc_assocArrayGetVal = {
		//_val = [_ref, _key] call KK_fnc_assocArrayGetVal;
		private ["_ref","_keys","_indx"];
		_ref = _this select 0;
		_keys = missionNamespace getVariable [format ["%1_KEYS", _ref], []];
		_indx = _keys find (_this select 1);
		if (_indx < 0) exitWith {};
		(missionNamespace getVariable [format ["%1_VALS", _ref], []]) select _indx
	};
	/*
	if ([_myAArray, "Name"] call KK_fnc_assocArrayDeleteKey) then {
		hint "Existing key 'Name' is successfully deleted";
	};
	*/
	KK_fnc_assocArrayDeleteKey = {
		//_bool = [_ref, _key] call KK_fnc_assocArrayDeleteKey;
		private ["_ref","_keys","_vals","_indx"];
		_ref = _this select 0;
		_keys = missionNamespace getVariable [format ["%1_KEYS", _ref], []];
		_vals = missionNamespace getVariable [format ["%1_VALS", _ref], []];
		_indx = _keys find (_this select 1);
		if (_indx < 0) exitWith {false};
		_keys set [_indx, nil];
		_vals set [_indx, nil];
		true
	};

	//_myAArray call KK_fnc_assocArrayDestroy;
	KK_fnc_assocArrayDestroy = {
		//_ref call KK_fnc_assocArrayDestroy;
		missionNamespace setVariable [format ["%1_KEYS", _this], nil];
		missionNamespace setVariable [format ["%1_VALS", _this], nil];
	};
		
	//_size = count (_myAArray call KK_fnc_assocArrayAllKeys);
	KK_fnc_assocArrayAllKeys = {
		//_keys = _ref call KK_fnc_assocArrayAllKeys
		missionNamespace getVariable [format ["%1_KEYS", _this], []]
	};	
			
	//Server Only
	if (isServer) then {
		call compile preprocessFileLineNumbers "\z\addons\dayz_server\init\server_functions.sqf";
	} else {
		eh_localCleanup = {};
	};

	
	//Start Dynamic Weather
	execVM "\z\addons\dayz_code\system\DynamicWeatherEffects.sqf";
	initialized = true;
    dayz_preloadFinished = false;

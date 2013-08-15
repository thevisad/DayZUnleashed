//Animated Helicrashs for DayZ 1.7.7.1
//Version 0.3 Updated by Skaronator for 1.7.7.x
//Release Date: 01. Juli 2013
//Author: Grafzahl / Finest
//Thread-URL: http://opendayz.net/threads/animated-helicrashs-0-1-release.9084/

private ["_useStatic","_crashDamage","_lootRadius","_preWaypoints","_preWaypointPos","_endTime","_startTime","_safetyPoint","_heliStart","_deadBody","_exploRange","_heliModel","_lootPos","_wp2","_wp3","_landingzone","_aigroup","_wp","_helipilot","_crashwreck","_staticcoords","_pos","_position","_num","_itemType","_weights","_index","_crashModel","_lootTable","_guaranteedLoot","_randomizedLoot","_frequency","_variance","_spawnChance","_spawnMarker","_spawnRadius","_spawnFire","_crashName","_nearby","_itemTypes","_cntWeights","_trigPos","_trigger","_fadeFire","_dir"];

//_crashModel	= _this select 0;
//_lootTable	= _this select 1;
_guaranteedLoot = _this select 0;
_randomizedLoot = _this select 1;
_frequency	= _this select 2;
_variance	= _this select 3;
_spawnChance	= _this select 4;
_spawnMarker	= _this select 5;
_spawnRadius	= _this select 6;
_spawnFire	= _this select 7;
_fadeFire	= _this select 8;

if(count _this > 9) then {
	_useStatic = _this select 9;
} else {
	_useStatic = false;
};

if(count _this > 10) then {
	_preWaypoints	= _this select 10;
} else {
	_preWaypoints = 1;
};

if(count _this > 11) then {
	_crashDamage = _this select 11;
} else {
	_crashDamage = 1;
};

diag_log(format["CRASHSPAWNER: Starting spawn logic for animated helicrashs - written by dayzforum.net / Grafzahl [SC:%1||PW:%2||CD:%3]", str(_useStatic), str(_preWaypoints), _crashDamage]);

while {true} do {
	private["_timeAdjust","_timeToSpawn","_spawnRoll","_crash","_hasAdjustment","_newHeight","_adjustedPos"];
	// Allows the variance to act as +/- from the spawn frequency timer
	_timeAdjust = round(random(_variance * 2) - _variance);
	_timeToSpawn = time + _frequency + _timeAdjust;

	//Random Heli-Type
	_heliModel = "UH1H_DZ";

	//Random-Startpositions, Adjust this for other Maps then Chernarus
	_heliStart = [[3461.92,5021.77,0],[8582.35,14077.7,0]] call BIS_fnc_selectRandom;

	//A Backup Waypoint, if not Chernarus, set some Coordinates far up in the north (behind all possible Crashsites)
	_safetyPoint = [8450.08,20240,0];

	//Settings for the Standard UH1H_DZ
	_crashModel = "UH1Wreck_DZ";
	_exploRange = 195;
	_lootRadius = 0.35;

	//Adjust Wreck and Range of Explosion if its a Mi17_DZ
	if(_heliModel == "Mi17_DZ") then {
		_crashModel = "Mi8Wreck";
		_exploRange = 285;
		_lootRadius = 0.3;
	};

	//Crash loot just uncomment the one you wish to use by default with 50cals is enabled.
    //Table including 50 cals
    //_lootTable = ["Military"] call BIS_fnc_selectRandom;
    _lootTable = ["HeliCrash","HeliCrashWEST","HeliCrashEAST","MilitarySpecial"] call BIS_fnc_selectRandom;

	_crashName	= getText (configFile >> "CfgVehicles" >> _heliModel >> "displayName");

	diag_log(format["CRASHSPAWNER: %1%2 chance to start a crashing %3 with loot table '%4' at %5", round(_spawnChance * 100), '%', _crashName, _lootTable, _timeToSpawn]);

	// Apprehensive about using one giant long sleep here given server time variances over the life of the server daemon
	while {time < _timeToSpawn} do {
		sleep 5;
	};

	_spawnRoll = random 1;

	// Percentage roll
	if (_spawnRoll <= _spawnChance) then {

/*
==================================================================================================
		_staticcoords give you the possibility to organize your crashsites!

		Crashsites close to cherno or electro would be possible with that.
		Use the editor for your map, create some vehicles or triggers at points where you
		want your crashside (aprox), save it and extract all coordinates and put them in this
		2D-Array. If you dont know how to do this, dont use _staticcoords.

		I would advise you to create at least 100 positions, otherwise its too easy for your players
		to find the crash-locations after some time of playing on your server.

		!!!!!After you put in the coordinates you have to set _useStatic to true inside
		your server_monitor.sqf, default is false!!!!!
==================================================================================================
*/

		_staticcoords =	[
[9035.38,11098.9,0],
[5024.07,15557,0],
[10423,18396.3,0],
[7733.63,10606.6,0],
[8383.72,10474.9,0],
[7555.64,13363,0],
[6862.63,14008.9,0],
[6767.52,15186.4,0],
[6119.33,15241.9,0],
[6636.61,15705.8,0],
[7068.45,15610.5,0],
[8244.49,17614.7,0],
[9260.75,16638.1,0],
[11886.4,16193.7,0],
[12928.1,15979,0],
[12735.4,15531,0],
[13283.3,15051.5,0],
[13243.1,15197.3,0],
[14624,16844.6,0],
[14093.5,17152.1,0],
[14726.1,16758.8,0],
[15114.7,16328.5,0],
[11118.4,13004.1,0],
[9410.81,14096.6,0],
[9758.57,15128.6,0],
[14718.2,10878.1,0],
[6560.87,11536.6,0],
[5688.95,12560,0],
[5357.1,13228.4,0],
[5567.96,14149.5,0],
[8421.87,14703.1,0],
[11614.1,13804.8,0],
[8739.05,12693.2,0],
[6866.55,12324.3,0],
[3937.17,12979.5,0],
[11729.4,10417.5,0],
[10353,14163.8,0],
[11530.6,9183.73,0],
[12089,9220.29,0],
[12217.7,9672.16,0],
[13340.9,10644.7,0],
[13678.6,10945.7,0],
[12753.6,11595.6,0],
[10182.9,12159.2,0],
[8075.77,13339.6,0],
[7154.4,14538.3,0],
[12453.8,13816.9,0],
[14016.3,12922,0],
[14733.7,13388.8,0],
[10871,11676.3,0],
[11343.8,12026.7,0],
[9816.13,12768.9,0],
[11296.2,14780.8,0],
[11316.2,15009.9,0],
[5948.32,9562.74,0],
[6786.93,10847.5,0],
[7537.63,11929.7,0],
[10094.2,10616.7,0],
[12777.2,12769.5,0],
[10434.7,10882.4,0],
[14472,12103.1,0],
[9334.37,16739.9,0],
[9562.65,16421.4,0],
[7690.09,16839.4,0],
[9018.17,13384.6,0],
[9063.09,13607,0],
[9122.98,13747.9,0],
[9294.45,13925.3,0],
[9137.24,13895.4,0],
[8586.58,13942.5,0],
[8333.39,13816,0],
[7840.7,13972.8,0],
[9084.29,11799.6,0],
[8444.78,11372.2,0],
[8660.67,11334,0],
[8125.65,11824.6,0],
[7269.91,12973.8,0],
[7655,9800.72,0],
[7576.77,10053.2,0],
[8063.71,11275.2,0],
[7775.79,11237.7,0],
[9149.48,12177.4,0],
[7501.33,12525.9,0],
[10113.9,12962.6,0],
[10142.7,14611.8,0],
[9472.2,14427.7,0],
[8475.71,9746.43,0],
[9910.07,9192.36,0],
[9728.54,9363.15,0],
[10523.6,9929.89,0],
[12157.1,12003.2,0],
[11686.6,13152.2,0],
[8680.09,14925.7,0],
[6864.39,13694.2,0],
[8972.93,7642.55,0],
[5340.23,10112.8,0],
[4823.03,11514.2,0],
[4668.44,10501.8,0],
[9138.24,8362.57,0],
[10658,7157.31,0],
[12271.9,8190.9,0],
[15041.1,10152.7,0],
[14405.8,11410.4,0],
[14400.1,11423.5,0],
[14405.7,11399.8,0],
[14395.5,11413.8,0],
[14398.4,11402.4,0],
[14410.3,11418.5,0],
[14414.3,11404,0],
[11068.2,10066.1,0],
[11111.2,10101.4,0],
[11642.2,11234.8,0],
[11280.2,11330.5,0],
[11303.5,11245.7,0],
[8453.2,13122.7,0],
[10075,11249.7,0]
];

		if(_useStatic) then {
			_position = _staticcoords call BIS_fnc_selectRandom;
		} else {
			_position = [getMarkerPos _spawnMarker,0,_spawnRadius,10,0,2000,0] call BIS_fnc_findSafePos;
		};
		//DEFAULT: GET COORDS FROM BIS_fnc_findSafePos, COMMENT OUT IF YOU USE _STATICCOORDS

		diag_log(format["CRASHSPAWNER: %1 started flying from %2 to %3 NOW!(TIME:%4||LT:%5)", _crashName,  str(_heliStart), str(_position), round(time), _lootTable]);

		//Spawn the AI-Heli flying in the air
		_startTime = time;
		_crashwreck = createVehicle [_heliModel,_heliStart, [], 0, "FLY"];

		PVDZ_obj_Fire = [_crashwreck,5,time,false,false];
		publicVariable "PVDZ_obj_Fire";
		_crashwreck setvariable ["fadeFire",false,true];

		//Make sure its not destroyed by the Hacker-Killing-Cleanup (Thanks to Sarge for the hint)
		_crashwreck setVariable["Sarge",1];

		_crashwreck engineOn true;
		_crashwreck flyInHeight 120;
		_crashwreck forceSpeed 110;
		_crashwreck setspeedmode "LIMITED";

		//Create an Invisibile Landingpad at the Crashside-Coordinates
		_landingzone = createVehicle ["HeliHEmpty", [_position select 0, _position select 1,0], [], 0, "CAN_COLLIDE"];
		_landingzone setVariable["Sarge",1];

		//Only a Woman could crash a Heli this way...
		_aigroup = creategroup civilian;
		_helipilot = _aigroup createUnit ["SurvivorW2_DZ",getPos _crashwreck,[],0,"FORM"];
		_helipilot moveindriver _crashwreck;
		_helipilot assignAsDriver _crashwreck;

		sleep 0.5;

		if(_preWaypoints > 0) then {
			for "_x" from 1 to _preWaypoints do {
				if(_useStatic) then {
					_preWaypointPos = _staticcoords call BIS_fnc_selectRandom;
				} else {
					_preWaypointPos = [getMarkerPos _spawnMarker,0,_spawnRadius,10,0,2000,0] call BIS_fnc_findSafePos;
				};
				diag_log(format["CRASHSPAWNER: Adding Pre-POC-Waypoint #%1 on %2", _x,str(_preWaypointPos)]);
				_wp = _aigroup addWaypoint [_preWaypointPos, 0];
				_wp setWaypointType "MOVE";
				_wp setWaypointBehaviour "CARELESS";
			};
		};

		_wp2 = _aigroup addWaypoint [position _landingzone, 0];
		_wp2 setWaypointType "MOVE";
		_wp2 setWaypointBehaviour "CARELESS";

		//Even when the Heli flys to high, it will burn when reaching its Waypoint
		_wp2 setWaypointStatements ["true", "_crashwreck setdamage 1;"];

		//Adding a last Waypoint up in the North, so the Heli doesnt Hover at WP1 (OR2)
		//and would also come back to WP1 if somehow it doesnt explode.
		_wp3 = _aigroup addWaypoint [_safetyPoint, 0];
		_wp3 setWaypointType "CYCLE";
		_wp3 setWaypointBehaviour "CARELESS";

		//Get some more Speed when close to the Crashpoint and go on even if Heli died or hit the ground
		waituntil {(_crashwreck distance _position) <= 1000 || not alive _crashwreck || (getPosATL _crashwreck select 2) < 5 || (damage _crashwreck) >= _crashDamage};
			_crashwreck flyInHeight 95;
			_crashwreck forceSpeed 160;
			_crashwreck setspeedmode "NORMAL";

		//BOOOOOOM!
		waituntil {(_crashwreck distance _position) <= _exploRange || not alive _crashwreck || (getPosATL _crashwreck select 2) < 5 || (damage _crashwreck) >= _crashDamage};
			//Taking out the Tailrotor would be more realistic, but makes the POC not controllable
			//_crashwreck setHit ["mala vrtule", 1]; ??? Not updated and why not in use?!
			_crashwreck setdamage 1;
			_crashwreck setfuel 0;
			diag_log(format["CRASHSPAWNER: %1 just exploded at %2!, ", _crashName, str(getPosATL _crashwreck)]);

			//She cant survive this :(
			_helipilot setdamage 1;

			//Giving the crashed Heli some time to find its "Parkingposition"
			sleep 13;

		//Get position of the helis wreck, but make sure its on the ground;
		_pos = [getpos _crashwreck select 0, getpos _crashwreck select 1,0];

		//saving the direction of the wreck(not used right now)
		_dir = getdir _crashwreck; 

		//Send Public Variable so every client can delete the craters around the new Wreck (musst be added in init.sqf)
		heliCrash = _pos;
		publicVariable "heliCrash";
		
		//Clean Up the Crashsite
		deletevehicle _crashwreck;
		deletevehicle _helipilot;
		deletevehicle _landingzone;

		//Animation is done, lets create the actual Crashside
		_crash = createVehicle [_crashModel, _pos, [], 0, "CAN_COLLIDE"];
		_crash setVariable["Sarge",1];

		//If you want all Grass around the crashsite to be cutted: Uncomment the next Line (Noobmode)
		//_crashcleaner = createVehicle ["ClutterCutter_EP1", _pos, [], 0, "CAN_COLLIDE"];

		//Setting the Direction would add realism, but it sucks because of the bugged model when not on plane ground.
		//If you want it anyways, just uncomment the next line
		//_crash setDir _dir;

		// I don't think this is needed (you can't get "in" a crash), but it was in the original DayZ Crash logic
		dayz_serverObjectMonitor set [count dayz_serverObjectMonitor,_crash];

		_crash setVariable ["ObjectID",1,true];

		//Make it burn (or not)
		if (_spawnFire) then {
                PVDZ_obj_Fire = [_crash,2,time,false,_fadeFire];
                publicVariable "PVDZ_obj_Fire";
                _crash setvariable ["fadeFire",_fadeFire,true];
		};

		_num        = round(random 4) + 4;

		_num		= round(random _randomizedLoot) + _guaranteedLoot;
		
		_itemTypes =	[] + getArray (configFile >> "CfgBuildingLoot" >> _lootTable >> "lootType");	
		_index =        dayz_CBLBase  find _lootTable;
		_weights =		dayz_CBLChances select _index;
		_cntWeights = count _weights;
		
		diag_log ( format [ "CRASHSPAWNER: Current Loot Pile: %1", _itemTypes ] );
		diag_log ( format [ "CRASHSPAWNER: Current Loot Weights: %1", _weights ] );
		
		//Creating the Lootpiles outside of the _crashModel
				for "_x" from 1 to _num do {
			//Create loot
			_index = floor(random _cntWeights);
			_index = _weights select _index;
			_itemType = _itemTypes select _index;

			//Let the Loot spawn in a non-perfect circle around _crashModel
			_lootPos = [_pos, ((random 2) + (sizeOf(_crashModel) * _lootRadius)), random 360] call BIS_fnc_relPos;
			//_lootPos = [_lootPos select 0,_lootPos select 1,0];
			[_itemType select 0, _itemType select 1, _lootPos, 0] call spawn_loot;

			diag_log(format["CRASHSPAWNER: Loot spawn at '%1' with loot table '%2'", _lootPos, sizeOf(_crashModel)]); 

			// ReammoBox is preferred parent class here, as WeaponHolder wouldn't match MedBox0 and other such items.
			_nearby = _pos nearObjects ["ReammoBox", sizeOf(_crashModel)];
			{
				_x setVariable ["permaLoot",true];
			} forEach _nearBy;
		};

		//Adding 5 dead soldiers around the wreck, poor guys
		for "_x" from 1 to 5 do {
			_lootPos = [_pos, ((random 4)+3), random 360] call BIS_fnc_relPos;
			_deadBody = createVehicle[["Body1","Body2"] call BIS_fnc_selectRandom,_lootPos,[], 0, "CAN_COLLIDE"];
			_deadBody setDir (random 360);
		};
		
		_trigPos = [_lootPos,random(DZAI_centerSize),random(360),false,[1,500]] call SHK_pos;
		_trigger = createTrigger ["EmptyDetector",_trigPos];
		_trigger setTriggerArea [DZAI_dynTriggerRadius, DZAI_dynTriggerRadius, 0, false];
		_trigger setTriggerActivation ["ANY", "PRESENT", true];
		_trigger setTriggerTimeout [5, 7, 20, true];
		_trigger setTriggerStatements ["{(isPlayer _x) && !(_x isKindOf 'Air')} count thisList > 0;","[300,thisTrigger,thisList] call fnc_spawnBandits_dynamic;", "[thisTrigger] spawn fnc_despawnBandits_dynamic;"];
		if (DZAI_debugMarkers == 1) then {
			private ["_markername","_marker"];
			_markername = format["trigger_%1",_trigger];
			_marker = createMarker[_markername,_trigPos];
			_marker setMarkerShape "ELLIPSE";
			_marker setMarkerType "Flag";
			_marker setMarkerBrush "SOLID";
			_marker setMarkerSize [DZAI_dynTriggerRadius, DZAI_dynTriggerRadius];
			_marker setMarkerColor "ColorYellow";
			_marker setMarkerAlpha 0.8;		//Dark yellow = Trigger in ready state.
		};
		
		
		_endTime = time - _startTime;
		diag_log(format["CRASHSPAWNER: Crash completed! Wreck at: %2 - Runtime: %1 Seconds || Distance from calculated POC: %3 meters", round(_endTime), str(getPos _crash), round(_position distance _crash)]); 
	};
};

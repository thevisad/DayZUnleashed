// globals
if (isNil "HCsignal") then {HCsignal = 0;}; // headless clients use it to notify that they exist
if (isNil "HClist") then {HClist =[];}; // list of available HCs for server dispatch to use
if (isNil "HCdo_spawn") then {HCdo_spawn = [];}; // message sent to selected client for building loot and zed spawn
if (isNil "HCrequest_spawn") then {HCrequest_spawn = [];}; // message sent by player client to server requesting spawn check

if (isServer) then {
	HCsignalRCV = {
		private ["_val", "_found", "_holder"];
		
		_val = owner (_this select 1); // owner of HC broadcast
		_found = false; // track whether owner is found in HClist
		_holder = + HClist; // work on a copy in case of overlapping call
		{
			if ((_x select 0) == _val) exitwith { // does HC ID already exist in array?
				_x set [1,time]; // refresh the HC's ID
				_found = true; // no need to add it to the array again
			};
		} foreach _holder;
		
		if (!_found) then { // if HC not found in the array, then add it
			_holder set [count _holder, [ _val, floor time ]]; // new ID added to HClist
			diag_log "added HC:" + str _val;
		};
		HClist = + _holder; // changed copy is presented
	};
	
	"HCsignal" addPublicVariableEventHandler HCsignalRCV;
	
	// broadcast list
	[] spawn {
		private ["_cursor","_holder","_time","_arrsize"];
		while {true} do {
			_cursor = 0; // location in array we are iterating
			_holder = + HClist; // copy array... HClist may change while looping
			_time = floor time; // time snapshot
			_arrsize = count _holder; // number of elements in HClist
			while { _cursor < _arrsize } do // while there are still elements to process
			{
				if ((((_holder select _cursor) select 1) + 20) < _time) then { // eject
					diag_log "lost HC:" + str ((_holder select _cursor) select 1);
					_holder set [_cursor, _holder select (_arrsize - 1)];
					_holder resize (_arrsize - 1);
					_arrsize = _arrsize - 1;
				} else {
					_cursor = _cursor + 1;  // otherwise go on to next element
				};
			};
			HClist = + _holder;
			publicVariable "HClist";  // make the entries known
			sleep 7;
		};
	};
	
	HCrequest_spawnRCV = {
		private ["_temp","_HClist","_numHC","_client"];
		
		_temp = + (_this select 1); // copy in case value changes suddenly
		_HClist = + HClist; // value changes asynchronously so copy it
		_numHC = count _HClist;
		if ((_numHC) != 0) then { // pick random headless client to spawn zeds etc...
			_client = ((_HClist select floor random(_numHC - 1)) select 0);
		} else { // no headless clients
			_client = owner (_temp select 8); // bounce it back to same player client.
		};
			HCdo_spawn = 
			[	_temp select 0,
				_temp select 1,
				_temp select 2,
				_temp select 3,
				_temp select 4,
				_temp select 5,
				_temp select 6,
				_temp select 7 ];
			_client publicVariableClient "HCdo_spawn"; // target specific machine
// worst case is that selected HC has gone offline in the last few moments, so no spawn
	};
	
	"HCrequest_spawn" addPublicVariableEventHandler HCrequest_spawnRCV;
};

if (!isServer && !hasInterface ) then {  // headless clients only
	// broadcast availability
	waituntil {!isNull player}; // wait until player object is set
	[] spawn {
		while {true} do {
			HCsignal = player;
			publicVariableServer "HCsignal";
			sleep 3;  // send heartbeat to server every 3 seconds (prime number)
		};
	};
};
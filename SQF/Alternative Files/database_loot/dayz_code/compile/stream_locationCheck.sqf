
private ["_location", "_distCfg","_configClass","_distAct","_rubbish","_config","_locHdr","_position","_w8", "_ahead" ];
_w8 = _this select 0;
//diag_log "running location check...";
_rubbish = dayz_Trash == 1;
{
	_location = _x select 0;
	_distCfg = (_x select 2);
	_configClass = _x select 1;
	_distAct = player distance _location;
	_ahead = (speed player) / 3.6 * 6;

	if (!(_forEachIndex in dayz_locationsActive)) then {
		if ((_distAct < _distCfg + dayz_spawnArea + _ahead) and _rubbish) then {
			dayz_locationsActive set [count dayz_locationsActive,_forEachIndex];
			_config = configFile >> "CfgTownGeneratorUnleashed" >> _configClass;
			_locHdr = configName _config;
			//if (typeName _locHdr != "STRING") then { _locHdr = str _location; };
			diag_log format ["%1: creating %2 objects at '%3'", __FILE__, count _config, _locHdr];
			[_config, _w8] call stream_locationFill; // create wrecks & rubbish as local objects
		};
	} else {
		if (_distAct > _distCfg + dayz_canDelete + _ahead) then {
			_config = configFile >> "CfgTownGeneratorUnleashed" >> _configClass;
			_locHdr = configName _config;
			//if (typeName _locHdr != "STRING") then { _locHdr = str _location; };
			diag_log format ["%1: removing %2 objects from '%3'", __FILE__, count _config, _locHdr];
			[_config, _w8] call stream_locationDel; // delete wrecks & rubbish
			dayz_locationsActive = dayz_locationsActive - [_forEachIndex];
		};
	};
} forEach dayz_Locations;

private ["_array","_vehicle","_part","_hitpoint","_type","_hasToolbox","_nameType","_namePart","_nearby2","_nearby","_damage","_findspace","_selection","_magazines"];
_id = _this select 2;
_array = 	_this select 3;
_vehicle = 	_array select 0;
_part =		_array select 1;
_hitpoint = _array select 2;
_type = typeOf _vehicle;

//diag_log format ["_this=%1",_this];
//
_hasToolbox = 	"ItemToolbox" in items player;

//moving this here because we need to know which part needed if we don't have it
_nameType = 		getText(configFile >> "cfgVehicles" >> _type >> "displayName");
_namePart = 		getText(configFile >> "cfgMagazines" >> _part >> "displayName");

_nearby2 = (getposATL _vehicle) nearEntities [["SurvivorW2_DZ","Survivor2_DZ","Sniper1_DZ","Soldier1_DZ","Camo1_DZ","BanditW1_DZ","Bandit1_DZ","SurvivorW2_DZ","Rocket_DZ","BanditSkin_DZ","SniperBandit_DZ","SniperBanditW_DZ","Sniper1W_DZ","BanditSkinW_DZ"],8];
_nearby = count _nearby2;
if(_nearby > 1) exitWith { cutText [format["Cannot remove %1 from %2, another payer is too close.",_namePart,_nameType], "PLAIN DOWN"]; };
	
if (_hasToolbox && (_part != "PartGlass")) then {
	
	_damage = [_vehicle,_hitpoint] call object_getHit;
	_vehicle removeAction _id;
	
	if (_damage < 0.16) then {
		_findspace = [player,_part] call BIS_fnc_invAdd;
		if (_findspace) then {
					
			_selection = getText(configFile >> "cfgVehicles" >> _type >> "HitPoints" >> _hitpoint >> "name");
			if( _hitpoint == "HitEngine" or _hitpoint == "HitFuel" ) then {
				dayzSetFix = [_vehicle,_selection,0.90];
			} else {
				dayzSetFix = [_vehicle,_selection,1];
			};
			publicVariable "dayzSetFix";
			if (local _vehicle) then {
				dayzSetFix call object_setFixServer;
			};
			
			player playActionNow "Medic";
			sleep 1;
			
			[player,"repair",0,false] call dayz_zombieSpeak;
			null = [player,50,true,(getPosATL player)] spawn player_alertZombies;
			sleep 5;
			_vehicle setvelocity [0,0,1];
			
			//Get Damage again
			_damage = [_vehicle,_hitpoint] call object_getHit;
			if (_damage < 0.16) then {
				player removeMagazine _part;
			};
			//Success!
			cutText [format["%1 has been been added to your Inventory",_namePart,_nameType], "PLAIN DOWN"];
			_magazines	= call player_countmagazines;
			dayz_lastSave = time;
			dayz_Magazines = [];
		} else {
			cutText [localize "str_player_24", "PLAIN DOWN"];
		};
	} else {
		cutText [format["%1 is damaged and can not be removed",_namePart,_nameType], "PLAIN DOWN"];
	};

} else {
	cutText [format["You need ToolBox to remove %1",_namePart], "PLAIN DOWN"];
};
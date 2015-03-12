if !(isClass (configFile >> "CfgMods" >> "DayZ")) then {
	// DayZ mod not installed, so we can't show anything
	sleep 1;
	hintc "DayZ mod must be installed and activated, for this mission to show loot information!";
} else {
	titleText ["Open the map and click on a location to show loot/zombie information.\n(Player will be moved to the clicked location.)\n\nLMB (left mouse button) will only mark the buildings,\n<Shift>-LMB will also show probabilities:\nChance of zombies / maximum number of them - chance of loot/maximum loot positions","plain"];
};
call compile preprocessFileLineNumbers "system\variables.sqf";	

nul = [] execVM "system\KRON_Strings.sqf";
nul = [] execVM "system\bisOverrides.sqf";
KRON_rootclass = "";
KRON_QCON = isClass (configFile >> "CfgMovesMaleSdr" >> "States" >> "x01Lamb");
// Action to search for locations for specific items
DXSP_Searching = false;
// Class to display
_objclass="Car";

// Distance between objects
_distance=7;

// Orientation of objects
_orientation=90;

// Maximum number of objects to display in one batch
_maxobj=15;
_base = "ALL";




// create loot info when clicked on the map
onMapSingleClick "_nul = [_pos,_shift,_alt] execVM 'DayZ_Loot_Finder\showloot.sqf'"; 
LootLastPos = [0,0];
LootInfo = false; 
LootRadius = false;




// no bugs and floating stuff 
enableEnvironment false;


// create a player marker, and update it constantly
_marker = createMarker ["mrk_player",getpos player];
_marker setMarkerShape "ICON";
_marker setMarkerType "Flag";
_marker setMarkerColor "ColorBlack";


DXSP_Searching = false;




diag_log ["DevCon AutoInit.sqf executed"];

DEV_ShowMiniMap = true;
DEV_ShowUnitMapMarkers = true;
Dev_DebugUnitInfoAsMapMarker = true;
DEV_ShowWeaponUseAsMapMarkers = true;
DEV_DebugPerceivedTargetPositionAsMapMarker = true;

if (!(isNil "killer")) then
{
	DEV_UnitToDebug = killer;
};
diag_log ["Init.sqf execute complete1"];
setAccTime 4;
diag_log ["Init.sqf execute complete15"];
(findDisplay 46) displayAddEventHandler ["KeyDown", "altstate_Admin = _this select 4"];
			((findDisplay 12) displayCtrl 51) ctrlAddEventHandler ["MouseButtonDown", "if (((_this select 1) == 0) && altstate_Admin) then
			{
				PVDZ_admin_rq = [1, player, ((_this select 0) posScreenToWorld [_this select 2, _this select 3])];
				publicVariableServer 'PVDZ_admin_rq';
			};"];	

diag_log ["Init.sqf execute complete17"];
"filmic" setToneMappingParams [0.153, 0.357, 0.231, 0.1573, 0.011, 3.750, 6, 4];
setToneMapping "Filmic";
normcc_efx = ppEffectCreate ["colorCorrections",10]; 
normcc_efx   ppEffectEnable true;
normcc_efx   ppEffectAdjust [1, 0.8, -0.001, [0.0, 0.0, 0.0, 0.0], [0.4*2, 0.3*2, 0.0, 0.7], [0.9, 0.9, 0.9, 0.0]];
normcc_efx   ppEffectCommit 0;


if(!isNil "vehicleLoop")then {
    terminate vehicleLoop;
};
vehicleLoop = [] spawn {
	while {true} do {
		_lstobj = player;
		_objlist = nearestObjects [player,["AllVehicles"],20];
		_obj = objNull;
		{
			if (_x!=player) exitWith {
					_obj = _x;
			};
		} forEach _objlist;

		if (!(isNull _obj) && (_obj != _lstobj)) then {
			_lstobj = _obj;
			_cn = typeOf _obj;
			_dn = getText (configFile >> "CfgVehicles" >> typeof _obj >> "displayName");
			hint format["Display Name: %1\nClass Name: %2",_dn,_cn];
		};
		sleep 0.5;
	};
};
diag_log ["Init.sqf execute complete20"];
LootLastPos = [0,0];




while {true} do {
		if (alive player) then {
		
			if (findSpawnsAction < 0) then {
				findSpawnsAction = player addaction ["Find Spawns", "lootSystem\findSpawns.sqf"];
			} else {
				player removeAction findSpawnsAction;
				findSpawnsAction = -1;
			};

			
			if (selectLootPositionAction < 0) then {
				selectLootPositionAction = player addaction ["Select Loot Position", "lootSystem\Make_lootPos.sqf", ["select"], 99];
			} else {
				player removeAction selectLootPositionAction;
				selectLootPositionAction = -1;
			};
			
			if (showLootPositonAction < 0) then {
				showLootPositonAction = player addaction ["Show Loot Position", "lootSystem\lootPos.sqf"];
			} else {
				player removeAction showLootPositonAction;
				showLootPositonAction = -1;
			};
			
			if (saveLootPositonAction < 0) then {
				saveLootPositonAction = player addaction ["Save Loot Position", "lootSystem\Make_lootPos.sqf", ["start"], 99];
			} else {
				player removeAction saveLootPositonAction;
				saveLootPositonAction = -1;
			};
			
			if (raise1LootPositonAction < 0) then {
				raise1LootPositonAction = player addaction ["Raise Z .1", "lootSystem\Make_lootPos.sqf", ["up"], 99];
			} else {
				player removeAction raise1LootPositonAction;
				raise1LootPositonAction = -1;
			};
			
			if (loser1LootPositonAction < 0) then {
				loser1LootPositonAction = player addaction ["Lower Z .1", "lootSystem\Make_lootPos.sqf", ["down"], 99];
			} else {
				player removeAction loser1LootPositonAction;
				loser1LootPositonAction = -1;
			};
			
			if (raise01LootPositonAction < 0) then {
				raise01LootPositonAction = player addaction ["Raise Z .01", "lootSystem\Make_lootPos.sqf", ["up_small"], 99];
			} else {
				player removeAction raise01LootPositonAction;
				raise01LootPositonAction = -1;
			};
			
			if (lower01LootPositonAction < 0) then {
				lower01LootPositonAction = player addaction ["Lower Z .01", "lootSystem\Make_lootPos.sqf", ["down_small"], 99];
			} else {
				player removeAction lower01LootPositonAction;
				lower01LootPositonAction = -1;
			};
			
			if (dlgaction < 0) then {
				dlgaction = player addaction ["Open Animations", "AnimationViewer\createDialog.sqf"];
			} else {
				player removeAction dlgaction;
				dlgaction = -1;
			};
			
			if (dlgactionqc < 0) then {
				dlgactionqc = player addaction ["Open Animations (QG)", "AnimationViewer\createDialogQC.sqf"];
			} else {
				player removeAction dlgactionqc;
				dlgactionqc = -1;
			};
			
			if (dlgactionf < 0) then {
				dlgactionf = player addAction ["Open Music", "AnimationViewer\createDialogm.sqf"];
			} else {
				player removeAction dlgactionf;
				dlgactionf = -1;
			};

			if (dlgactionm < 0) then {
				dlgactionm = player addaction ["Find Spawns", "lootSystem\findSpawns.sqf"];
			} else {
				player removeAction dlgactionm;
				dlgactionm = -1;
			};
			
			if (dlgactionw < 0) then {
				dlgactionw = player addAction ["Select Weapon","WeaponSelector\selectweapon.sqf"];
			} else {
				player removeAction dlgactionw;
				dlgactionw = -1;
			};
			
			if (vehaction < 0) then {
				vehaction = player addAction ["Browse Vehicles", "objectbrowser\createDialog.sqf", ["cfgVehicles"]];
			} else {
				player removeAction vehaction;
				vehaction = -1;
			};
			
			if (wpnaction < 0) then {
				wpnaction = player addAction ["Browse Weapons", "objectbrowser\createDialog.sqf", ["cfgWeapons"]];
			} else {
				player removeAction wpnaction;
				wpnaction = -1;
			};
					
			if (aniaction < 0) then {
				aniaction = player addAction ["Browse NonAIVehicles", "objectbrowser\createDialog.sqf", ["cfgNonAiVehicles"]];
			} else {
				player removeAction aniaction;
				aniaction = -1;
			};
			
			if (searchaction < 0) then {
				searchaction = player addAction ["Search for specific items","DayZ_Loot_Finder\finditems.sqf",1,1,true,true,"","!DXSP_Searching"];
			} else {
				player removeAction searchaction;
				searchaction = -1;
			};
			
			if (KRON_AID < 0) then {
				KRON_AID = player addAction["Create Objects","Lineup\lineup.sqf",[_objclass,_distance,_orientation,_maxobj]];
			} else {
				player removeAction KRON_AID;
				KRON_AID = -1;
			};
			
			if (postaction < 0) then {
				postaction = player addAction ["Browse PPEffects", "system\createDialog.sqf", ["cfgNonAiVehicles"]];
			} else {
				player removeAction postaction;
				postaction = -1;
			};
						
			if (getBuildingsAction < 0) then {
				getBuildingsAction = player addaction ["Dump Classes", "system\getBuildings.sqf"];
			} else {
				player removeAction getBuildingsAction;
				getBuildingsAction = -1;
			};
			
			if (getPicturesAction < 0) then {
				getPicturesAction = player addaction ["Dump Pictures", "system\getPictures.sqf"];
			} else {
				player removeAction getPicturesAction;
				getPicturesAction = -1;
			};
			
			if (getAllInfoAction < 0) then {
				getAllInfoAction = player addaction ["Get All Data", "system\getAllInfo.sqf"];
			} else {
				player removeAction getAllInfoAction;
				getAllInfoAction = -1;
			};
		
		
		} else {
			player removeaction findSpawnsAction;
			player removeaction selectLootPositionAction;
			player removeaction showLootPositonAction;
			player removeaction saveLootPositonAction;
			player removeaction raise1LootPositonAction;
			player removeaction loser1LootPositonAction;
			player removeaction raise01LootPositonAction;
			player removeaction lower01LootPositonAction;
			player removeaction dlgaction;
			player removeaction dlgactionqc;
			player removeaction dlgactionf;
			player removeaction dlgactionm;
			player removeaction dlgactionw;
			player removeaction vehaction;
			player removeaction wpnaction;
			player removeaction aniaction;
			player removeaction searchaction;
			player removeaction KRON_AID;
			player removeaction postaction;
			player removeaction getBuildingsAction;
			player removeaction getPicturesAction;
			player removeaction getAllInfoAction;
			findSpawnsAction = -1;
			selectLootPositionAction = -1;
			showLootPositonAction = -1;
			saveLootPositonAction = -1;
			raise1LootPositonAction = -1;
			loser1LootPositonAction = -1;
			raise01LootPositonAction = -1;
			lower01LootPositonAction = -1;
			dlgaction = -1;
			dlgactionqc = -1;
			dlgactionf = -1;
			dlgactionm = -1;
			dlgactionw = -1;
			vehaction = -1;
			wpnaction = -1;
			aniaction = -1;
			searchaction = -1;
			KRON_AID = -1;
			postaction = -1;
			getBuildingsAction = -1;
			getPicturesAction = -1;
			getAllInfoAction = -1;

		};		
		sleep 0.1;
};

call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\compiles.sqf";					//Compile regular functions
waitUntil {

	if !(DXSP_Searching) then {
	
		"mrk_player" setMarkerPos (getPos player);
		// once the player has moved a bit, update the indicators
		if ((player distance LootLastPos)>100) then {
			LootLastPos = getPos player;
			_nul = [LootLastPos] execVM "DayZ_Loot_Finder\showloot.sqf";
		};
	};
	sleep 0.1;
};


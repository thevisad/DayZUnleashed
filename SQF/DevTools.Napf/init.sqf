if !(isClass (configFile >> "CfgMods" >> "DayZ")) then {
	// DayZ mod not installed, so we can't show anything
	sleep 1;
	hintc "DayZ mod must be installed and activated, for this mission to show loot information!";
} else {
	titleText ["Open the map and click on a location to show loot/zombie information.\n(Player will be moved to the clicked location.)\n\nLMB (left mouse button) will only mark the buildings,\n<Shift>-LMB will also show probabilities:\nChance of zombies / maximum number of them - chance of loot/maximum loot positions","plain"];
};
nul = [] execVM "system\KRON_Strings.sqf";
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

findSpawnsAction = player addaction ["Find Spawns", "lootSystem\findSpawns.sqf"];
selectLootPositionAction = player addAction ["Select Loot Position", "lootSystem\Make_lootPos.sqf", ["select"], 99];
showLootPositonAction = player addaction ["Show Loot Position", "lootSystem\lootPos.sqf"];
saveLootPositonAction = player addAction ["Save Loot Position", "lootSystem\Make_lootPos.sqf", ["start"], 99];
raise1LootPositonAction = player addAction ["Raise Z .1", "lootSystem\Make_lootPos.sqf", ["up"], 99];
loser1LootPositonAction = player addAction ["Lower Z .1", "lootSystem\Make_lootPos.sqf", ["down"], 99];
raise01LootPositonAction = player addAction ["Raise Z .01", "lootSystem\Make_lootPos.sqf", ["up_small"], 99];
lower01LootPositonAction = player addAction ["Lower Z .01", "lootSystem\Make_lootPos.sqf", ["down_small"], 99];
dlgaction = player addAction ["Open Animations", "AnimationViewer\createDialog.sqf"];
if (KRON_QCON) then {dlgactionqc = player addAction ["Open Animations (QG)", "AnimationViewer\createDialogQC.sqf"]};
dlgactionf = player addAction ["Open Faces", "AnimationViewer\createDialogF.sqf"];
dlgactionm = player addAction ["Open Music", "AnimationViewer\createDialogm.sqf"];
dlgactionw = player addAction ["Select Weapon","WeaponSelector\selectweapon.sqf"];
vehaction = player addAction ["Browse Vehicles", "objectbrowser\createDialog.sqf", ["cfgVehicles"]];
wpnaction = player addAction ["Browse Weapons", "objectbrowser\createDialog.sqf", ["cfgWeapons"]];
aniaction = player addAction ["Browse NonAIVehicles", "objectbrowser\createDialog.sqf", ["cfgNonAiVehicles"]];
searchaction = player addAction ["Search for specific items","DayZ_Loot_Finder\finditems.sqf",1,1,true,true,"","!DXSP_Searching"];
KRON_AID = player addAction["Create Objects","Lineup\lineup.sqf",[_objclass,_distance,_orientation,_maxobj]];
postaction = player addAction ["Browse PPEffects", "system\createDialog.sqf", ["cfgNonAiVehicles"]];
getBuildingsAction = player addaction ["Dump Classes", "system\getBuildings.sqf"];
getPicturesAction = player addaction ["Dump Pictures", "system\getPictures.sqf"];
getAllInfoAction = player addaction ["Get All Data", "system\getAllInfo.sqf"];




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

setAccTime 4;

BIS_PPList = [
	"ColorCorrections",
	"FilmGrain",
	"DynamicBlur",
	"RadialBlur",
	"ChromAberration",
	"ColorInversion",
	"WetDistortion"
];

{_x ppEffectEnable FALSE} forEach BIS_PPList;

BIS_PPTexts = [
	"Color Corrections",
	"Film Grain",
	"Dynamic Blur",
	"Radial Zoom Blur",
	"Chromatic Aberration",
	"Color Inversion",
	"Wet Distortion"
];

BIS_PPParams = [
	[1, 1, 0, [0, 0, 0, 0], [0, 0, 0, 1], [0, 0, 0, 0]],									//"ColorCorrections",
	[0.1, -1, 0.1, 0.05, 2, FALSE],															//"FilmGrain",
	[0.5],																					//"Dynamic Blur",
	[0.5, 0.5, 0.25, 0.25],																	//"RadialBlur",
	[0.5, 0.5, TRUE],																		//"ChromaticAberration",
	[0, 1, 0],																				//"ColorInversion",
	[0.5, 1, 1, 4.1, 3.7, 2.5, 1.85, 0.0051, 0.0051, 0.0051, 0.0051, 0.5, 0.3, 10, 6.0]		//"WetDistortion"
];

BIS_lastParams = +BIS_PPParams;

BIS_PPParamTexts = [
	["Brightness", "Contrast", "Offset", "Blend color", "Colorize color 1", "Colorize color 2"],		//"ColorCorrections",
	["Overall intensity", "Sharpness", "Grain size", "Intensity 1", "Intensity 2", "Monochromatic"],		//"FilmGrain",
	["Blurriness"],		//"Dynamic Blur",
	["Blur degree X axis", "Blur degree Y axis", "Blur-free zone X axis", "Blur-free zone Y axis"],		//"RadialBlur",
	["Strength X axis", "Strength Y axis", "Aspect ratio correction"],		//"ChromaticAberration",
	["R channel inevrsion", "G channel inevrsion", "B channel inevrsion"],		//"ColorInversion",
	["Blurriness", "Strength (top part)", "Strength (bottom part)", "Wave speed 1", "Wave speed 2", "Wave speed 3", "Wave speed 4", "Wave amplitude 1", "Wave amplitude 2", "Wave amplitude 3", "Wave amplitude 4", "Phase coefficient 1", "Phase coefficient 2", "Phase coefficient 3", "Phase coefficient 4"]		//"WetDistortion"
];

{player setVariable [_x, FALSE]} forEach BIS_PPList;

BIS_PPEnable = {
	_ppEffect = BIS_PPList select (lbCurSel 108201);
	_ppEffect ppEffectEnable (!(player getVariable _ppEffect));
	player setVariable [_ppEffect, !(player getVariable _ppEffect)];
	if (player getVariable _ppEffect) then {call BIS_applyNewPP};
};

BIS_PPDisableAll = {
	{_x ppEffectEnable FALSE} forEach BIS_PPList;
	{player setVariable [_x, FALSE]} forEach BIS_PPList;
};

BIS_PPEnableAll = {
	{_x ppEffectEnable TRUE} forEach BIS_PPList;
	{
		_ppParams = BIS_lastParams select _forEachIndex;
		_ppEffect ppEffectAdjust _ppParams;
		_ppEffect ppEffectCommit 0;
	} forEach BIS_PPList;
	{player setVariable [_x, TRUE]} forEach BIS_PPList;
};

BIS_applyNewPP = {
	_ppEffect = BIS_PPList select (lbCurSel 108201);
	_ppParamsDef = BIS_PPParams select (lbCurSel 108201);
	_ppParams = [];
	{_ppParams = _ppParams + [call compile (ctrlText (108203 + _forEachIndex))]} forEach _ppParamsDef;
	_ppEffect ppEffectAdjust _ppParams;
	_ppEffect ppEffectCommit 0;
	BIS_lastParams set [lbCurSel 108201, _ppParams];
};

BIS_output = {
	if (!ctrlEnabled 108201) then {
		ctrlShow [108244, FALSE];
		ctrlShow [108245, FALSE];
		{ctrlEnable [_x, TRUE]} forEach [108201, 108202, 108248, 108249, 108246];
		ctrlSetText [108247, "SHOW OUTPUT"];
	} else {
		ctrlShow [108244, TRUE];
		ctrlShow [108245, TRUE];
		
		_output = "";
		{
			if (player getVariable _x) then {
				_output = _output +
				format ["""%1"" ppEffectEnable TRUE;", _x] + toString [13,10] +
				format ["""%1"" ppEffectAdjust %2;", _x, BIS_lastParams select _forEachIndex] + toString [13,10] +
				format ["""%1"" ppEffectCommit 0;", _x] + toString [13,10] + toString [13,10]
			}
		} forEach BIS_PPList;
		
		ctrlSetText [108245, _output];
		
		{ctrlEnable [_x, FALSE]} forEach [108201, 108202, 108248, 108249, 108246];
		ctrlSetText [108247, "HIDE OUTPUT"];
	}
};

BIS_loadDefaults = {
	_paramsArray = BIS_PPParams select (lbCurSel 108201);
	{ctrlSetText [108203 + _forEachIndex, str _x]} forEach _paramsArray;
	call BIS_applyNewPP;
};

sleep 0.01;

(findDisplay 46) displayAddEventHandler ["KeyDown", "altstate_Admin = _this select 4"];
			((findDisplay 12) displayCtrl 51) ctrlAddEventHandler ["MouseButtonDown", "if (((_this select 1) == 0) && altstate_Admin) then
			{
				PVDZ_admin_rq = [1, player, ((_this select 0) posScreenToWorld [_this select 2, _this select 3])];
				publicVariableServer 'PVDZ_admin_rq';
			};"];

			
			
// no labels in ArmA -  use nearestObjects instead
_lstobj = player;
while {true} do {
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




waitUntil {
	if !(DXSP_Searching) then {
		"mrk_player" setMarkerPos (getPos player);
		// once the player has moved a bit, update the indicators
		if ((player distance LootLastPos)>100) then {
			LootLastPos = getPos player;
			_nul = [LootLastPos] execVM 'DayZ_Loot_Finder\showloot.sqf';
		};
	};

	sleep 1;
};

call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\compiles.sqf";					//Compile regular functions

"filmic" setToneMappingParams [0.153, 0.357, 0.231, 0.1573, 0.011, 3.750, 6, 4];
setToneMapping "Filmic";
normcc_efx = ppEffectCreate ["colorCorrections",10]; 
normcc_efx   ppEffectEnable true;
normcc_efx   ppEffectAdjust [1, 0.8, -0.001, [0.0, 0.0, 0.0, 0.0], [0.4*2, 0.3*2, 0.0, 0.7], [0.9, 0.9, 0.9, 0.0]];
normcc_efx   ppEffectCommit 0;



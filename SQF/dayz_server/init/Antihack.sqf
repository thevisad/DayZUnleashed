waitUntil {!isNil "BIS_fnc_init"};

_agent = createAgent ["Sheep", [0,0,0], [], 0, "FORM"];
_agent allowdamage false;
_agent disableAI "MOVE";
_agent disableAI "ANIM";

loadFile = "STRING";
markerText = "STRING";

//_debug = getMarkerPos "respawn_west";

_list = ["0"]; //LEAVE THIS ALONE
_list = ["27570758","66951686","6163586","136052870","40975110","4163522","22773510","34319366","43767494","59883846","95700038","37624070","52002246"]; //admin playerUID goes here
//k4n30, Mattz, Skaronator, Skaronator, Alexander Hjelm,
noob_list = []; //noob admin playerUID goes here (make sure the same playerUID is also in _list)
publicVariable "noob_list";

fn_genRand =
{
	_arr = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","0","1","2","3","4","5","6","7","8","9"];
	_gen = "v_";
	for "_i" from 1 to 5 do {_gen = _gen + (_arr select (random ((count _arr)-1)));};
	_gen
};

_antihackrand1 = call fn_genRand;
_antihackrand2 = call fn_genRand;
_antihackrand3 = call fn_genRand; //
_antihackrand4 = call fn_genRand;
_antihackrand5 = call fn_genRand;
_antihackrand6 = call fn_genRand;
_antihackrand7 = call fn_genRand;
_antihackrand8 = call fn_genRand;
_antihackrand9 = call fn_genRand;
_antihackrand10 = call fn_genRand;
_antihackrand11 = call fn_genRand;
_antihackrand12 = call fn_genRand;
_antihackrand13 = call fn_genRand;
_antihackrand14 = call fn_genRand;
_antihackrand15 = call fn_genRand;
_antihackrand16 = call fn_genRand;
_antihackrand17 = call fn_genRand;
_antihackrand18 = call fn_genRand;
_antihackrand19 = call fn_genRand;
_antihackrand20 = call fn_genRand; //
_antihackrand21 = call fn_genRand;
_antihackrand22 = call fn_genRand; //

call compile ("
"+_antihackrand1+" =
{
	[] spawn
	{
		[] spawn {sleep 5; if (isNil '"+_antihackrand21+"') then {endMission ""END1""; [] spawn {"+_antihackrand10+" = [player,""OPTIX OPTIX OPTIX""];publicVariable '"+_antihackrand10+"';};};};
	
	
		_sName = name player;
		_sUID = getPlayerUID player;
		"+_antihackrand16+" = true;
		while {"+_antihackrand16+"} do
		{
			(findDisplay 46) displayRemoveAllEventHandlers 'KeyDown';
			(findDisplay 46) displayRemoveAllEventHandlers 'KeyUp';
			(findDisplay 46) displayAddEventHandler ['KeyDown','if ((_this select 4) and ((_this select 1) == 0x3E)) then { [] spawn dayz_forceSave; }; _this call dayz_spaceInterrupt'];
			(findDisplay 46) displayAddEventHandler ['KeyUp','_this call "+_antihackrand6+"'];
			sleep 0.5; "+_antihackrand7+" = true; "+_antihackrand21+" = ((getPlayerUID player) in [""hello there optix""]);
			if (!isNull (findDisplay 106)) then {
			(findDisplay 106) displayRemoveAllEventHandlers 'KeyDown';
			(findDisplay 106) displayRemoveAllEventHandlers 'KeyUp'; };
			((findDisplay 12) displayCtrl 51) ctrlRemoveAllEventHandlers 'MouseButtonDown';
			((findDisplay 12) displayCtrl 51) ctrlRemoveAllEventHandlers 'MouseButtonUp';
			if (!isNull (findDisplay 3030)) then { ((findDisplay 3030) displayCtrl 2) ctrlRemoveAllEventHandlers 'LBDblClick';};
			if (!isNull (findDisplay 49)) then { (findDisplay 49) displayRemoveAllEventHandlers 'KeyDown';
			(findDisplay 49) displayRemoveAllEventHandlers 'KeyUp'; call dayz_forceSave;};
			if (isNull (findDisplay 106) and isNull (findDisplay 6902) and !(ctrlEnabled 1900)) then {closeDialog 0;};
			if ((typeName player != ""OBJECT"") or (typeName true != ""BOOL"")) then
			{
				"+_antihackrand10+" = [_sName, _sUID, toArray 'Anti-Anti Hack', toArray ('player = '+(typeName player)+' - true = '+(typeName true))];
				publicVariable '"+_antihackrand10+"';
				for '_i' from 0 to 99 do {(findDisplay _i) closeDisplay 0;};
			};
		};
		"+_antihackrand10+" = [_sName, _sUID, toArray 'Anti-Anti Hack', toArray 'Loop Exited'];
		publicVariable '"+_antihackrand10+"';
		for '_i' from 0 to 99 do {(findDisplay _i) closeDisplay 0;};
	};
	BIS_MPF_remoteExecutionServer2 = compile preprocessFile (BIS_MP_Path + BIS_PATH_SQF + 'remExServer.sqf');
	BIS_MPF_remoteExecutionServer =
	{
		_input = (_this select 1) select 2;
		if (_input in ['switchmove','playmove','say','jipexec','execvm','spawn','titleCut','titleText']) then {_this call BIS_MPF_remoteExecutionServer2;};
	};
	"+_antihackrand2+" =
	{
		if (isNil '"+_antihackrand3+"') then
		{
			"+_antihackrand3+" = true;
			preProcessFileLineNumbers 'scan completed, bad content was';
			_fileArray = ['scr\exec.sqf','Scripts\ajmenu.sqf','wuat\screen.sqf','TM\menu.sqf','TM\screen.sqf','Scripts\menu.sqf','crinkly\keymenu.sqf','ASM\startup.sqf',
			'RSTMU\scr\startMenu.sqf','scr\startMenu.sqf','scr\STrial.sqf','wuat\vet@start.sqf','TM\keybind.sqf','startup.sqf','start.sqf','startupMenu.sqf','yolo\startup.sqf',
			'xTwisteDx\menu.sqf','wuat\start.sqf','TM\startmenu.sqf','infiSTAR_Menu\setup\startup.sqf','startMenu.sqf','custom.sqf','WiglegHacks\mainmenu.sqf',
			'TM\98. Enable hotkeys --------------------------------------------------.sqf','TM\98. Enable hotkeys --------------------------------------------------.sqf',
			'97. Secret hakez -----------------------------------------------------.sqf','0------------------------------------------------------------------------------.sqf',
			'bowenisthebest.sqf','Scripts\Menu_Scripts\empty.sqf','Missions\Scripts\ajmenu.sqf','@mymod\Scripts\ajmenu.sqf','i_n_f_i_S_T_A_R___Menu\setup\scrollmenu.sqf',
			'yolo\w4ssup YoloMenu v2.sqf','Menus\infiSTAR_SEVEN\startup.sqf','Menus\battleHIGH_Menu\startup.sqf','battleHIGH_Menu\startup.sqf','infiSTAR_SEVEN\startup.sqf',
			'infiSTAR_EIGHT\startup.sqf','infiSTAR_SSH\startup.sqf','TM\start.sqf','TM\DemonicMenu.sqf','Scripts\screen.sqf','Scripts\start.sqf','Scripts\startmenu.sqf',
			'Rustler v4\startup.sqf','Rustler v5\startup.sqf','Rustler v4\exec.sqf','Rustler v5\exec.sqf','Missions\battleHIGH_Menu\startup.sqf',
			'Scripts\exec.sqf','Scripts\list.sqf','Scripts\mah.sqf','Menu\start.sqf','Menu\startup.sqf','i_n_f_i_S_T_A_R.sqf','i_n_f_i_S_T_A_R___Menu\list.sqf',
			'infiSTAR_Confin3d_edit\infiSTAR.sqf','infiSTAR_Confin3d_edit\startup.sqf','RustlerV5\startup.sqf',
			'Rustlerv5\exec.sqf.sqf','Rustlerv4\startup.sqf','Rustlerv4\exec.sqf','YoloMenu Updated v6.sqf','Scripts\YoloMenu Updated v6.sqf','yolo\YoloMenu Updated v6.sqf',
			'Common\scr\exec.sqf','Common\Scripts\ajmenu.sqf','Common\wuat\screen.sqf','Common\TM\menu.sqf','Common\TM\screen.sqf','Common\Scripts\menu.sqf','Common\crinkly\keymenu.sqf','Common\ASM\startup.sqf',
			'Common\RSTMU\scr\startMenu.sqf','Common\scr\startMenu.sqf','Common\scr\STrial.sqf','Common\wuat\vet@start.sqf','Common\TM\keybind.sqf','Common\startup.sqf','Common\start.sqf','Common\startupMenu.sqf','Common\yolo\startup.sqf',
			'Common\xTwisteDx\menu.sqf','Common\wuat\start.sqf','Common\TM\startmenu.sqf','Common\infiSTAR_Menu\setup\startup.sqf','Common\startMenu.sqf','Common\custom.sqf','Common\WiglegHacks\mainmenu.sqf',
			'Common\TM\98. Enable hotkeys --------------------------------------------------.sqf','Common\TM\98. Enable hotkeys --------------------------------------------------.sqf',
			'Common\97. Secret hakez -----------------------------------------------------.sqf','Common\0------------------------------------------------------------------------------.sqf',
			'Common\bowenisthebest.sqf','Common\Scripts\Menu_Scripts\empty.sqf','Common\@mymod\Scripts\ajmenu.sqf','Common\i_n_f_i_S_T_A_R___Menu\setup\scrollmenu.sqf',
			'Common\yolo\w4ssup YoloMenu v2.sqf','Common\Menus\infiSTAR_SEVEN\startup.sqf','Common\Menus\battleHIGH_Menu\startup.sqf','Common\battleHIGH_Menu\startup.sqf','Common\infiSTAR_SEVEN\startup.sqf',
			'Common\infiSTAR_EIGHT\startup.sqf','Common\infiSTAR_SSH\startup.sqf','Common\TM\start.sqf','Common\TM\DemonicMenu.sqf','Common\Scripts\screen.sqf','Common\Scripts\start.sqf','Common\Scripts\startmenu.sqf',
			'Common\Rustler v4\startup.sqf','Common\Rustler v5\startup.sqf','Common\Rustler v4\exec.sqf','Common\Rustler v5\exec.sqf',
			'Common\Scripts\exec.sqf','Common\Scripts\list.sqf','Common\Scripts\mah.sqf','Common\Menu\start.sqf','Common\Menu\startup.sqf','Common\i_n_f_i_S_T_A_R.sqf','Common\i_n_f_i_S_T_A_R___Menu\list.sqf',
			'Common\infiSTAR_Confin3d_edit\infiSTAR.sqf','Common\infiSTAR_Confin3d_edit\startup.sqf','Common\RustlerV5\startup.sqf',
			'Common\Rustlerv5\exec.sqf.sqf','Common\Rustlerv4\startup.sqf','Common\Rustlerv4\exec.sqf','Common\YoloMenu Updated v6.sqf','Common\Scripts\YoloMenu Updated v6.sqf','Common\yolo\YoloMenu Updated v6.sqf',
			'Missions\scr\exec.sqf','Missions\wuat\screen.sqf','Missions\TM\menu.sqf','Missions\TM\screen.sqf','Missions\Scripts\menu.sqf','Missions\crinkly\keymenu.sqf','Missions\ASM\startup.sqf',
			'Missions\RSTMU\scr\startMenu.sqf','Missions\scr\startMenu.sqf','Missions\scr\STrial.sqf','Missions\wuat\vet@start.sqf','Missions\TM\keybind.sqf','Missions\startup.sqf',
			'Missions\start.sqf','Missions\startupMenu.sqf','Missions\yolo\startup.sqf',
			'Missions\xTwisteDx\menu.sqf','Missions\wuat\start.sqf','Missions\TM\startmenu.sqf','Missions\infiSTAR_Menu\setup\startup.sqf','Missions\startMenu.sqf','Missions\custom.sqf','Missions\WiglegHacks\mainmenu.sqf',
			'Missions\TM\98. Enable hotkeys --------------------------------------------------.sqf','Missions\TM\98. Enable hotkeys --------------------------------------------------.sqf',
			'Missions\97. Secret hakez -----------------------------------------------------.sqf','Missions\0------------------------------------------------------------------------------.sqf',
			'Missions\bowenisthebest.sqf','Missions\Scripts\Menu_Scripts\empty.sqf','Missions\@mymod\Scripts\ajmenu.sqf','Missions\i_n_f_i_S_T_A_R___Menu\setup\scrollmenu.sqf',
			'Missions\yolo\w4ssup YoloMenu v2.sqf','Missions\Menus\infiSTAR_SEVEN\startup.sqf','Missions\Menus\battleHIGH_Menu\startup.sqf','Missions\infiSTAR_SEVEN\startup.sqf',
			'Missions\infiSTAR_EIGHT\startup.sqf','Missions\infiSTAR_SSH\startup.sqf','Missions\TM\start.sqf','Missions\TM\DemonicMenu.sqf','Missions\Scripts\screen.sqf','Missions\Scripts\start.sqf','Missions\Scripts\startmenu.sqf',
			'Missions\Rustler v4\startup.sqf','Missions\Rustler v5\startup.sqf','Missions\Rustler v4\exec.sqf','Missions\Rustler v5\exec.sqf',
			'Missions\Scripts\exec.sqf','Missions\Scripts\list.sqf','Missions\Scripts\mah.sqf','Missions\Menu\start.sqf','Missions\Menu\startup.sqf','Missions\i_n_f_i_S_T_A_R.sqf','Missions\i_n_f_i_S_T_A_R___Menu\list.sqf',
			'Missions\infiSTAR_Confin3d_edit\infiSTAR.sqf','Missions\infiSTAR_Confin3d_edit\startup.sqf','Missions\RustlerV5\startup.sqf',
			'Missions\Rustlerv5\exec.sqf.sqf','Missions\Rustlerv4\startup.sqf','Missions\Rustlerv4\exec.sqf','Missions\YoloMenu Updated v6.sqf','Missions\Scripts\YoloMenu Updated v6.sqf','Missions\yolo\YoloMenu Updated v6.sqf',
			'ASM\_for_keybinds\mystuff.sqf','wookie_wuat\startup.sqf','gc_menu\starten.sqf',
			'gc_menu\uitvoeren.sqf','tm\starthack.sqf','scr_wasteland\menu\initmenu.sqf','scr_wasteland\exec.sqf',
			'infiSTAR_chewSTAR_Menu\infiSTAR_chewSTAR.sqf','infiSTAR_chewSTAR_Menu\scrollmenu\addweapon.sqf',
			'Demonic Menu\scr\startMenu.sqf','Demonic Menu\TM\STARTMENU.sqf','scr\scr\keybinds.sqf',
			'RustleSTAR_Menu\menu\initmenu.sqf','RustleSTAR_Menu\setup\startup.sqf','RustleSTAR_Menu\menu\initmenu.sqf',
			'Pickled Menu 3.0\Scripts\ajmenu.sqf','Pickled Menu 3.0\Scripts\exec.sqf','ShadowyFaze\exec.sqf','DayZLegendZ Scripts\Menu_Scripts\exec.sqf','DayZLegendZ Scripts\mah.sqf',
			'Scripts\mpghmenu.sqf','DevCon.pbo','DayZLegendZ Scripts\startMenu.sqf','DayZLegendZ Scripts\mah.sqf','EASYTM\start.sqf','Rustler v6\startup.sqf'];
			for '_i' from 0 to (count _fileArray)-1 do
			{
				if ((preProcessFileLineNumbers (_fileArray select _i)) != '') then
				{
					"+_antihackrand10+" = [name player, getPlayerUID player, toArray 'Script', toArray (_fileArray select _i)];
					publicVariable '"+_antihackrand10+"';
					for '_j' from 0 to 99 do {(findDisplay _j) closeDisplay 0;};
				};
				sleep 0.1;
			};
			sleep 60;
			"+_antihackrand3+" = nil;
		};
	};
	"+_antihackrand4+" =
	{
		if (isNil '"+_antihackrand5+"') then
		{
			"+_antihackrand5+" = true;
			"+_antihackrand10+" = [name player, getPlayerUID player, _this select 0];
			publicVariable '"+_antihackrand10+"';
			sleep 1;
			"+_antihackrand5+" = nil;
		};
	};
	"+_antihackrand6+" =
	{
		_key = _this select 1;
		_shift = _this select 2;
		_ctrl = _this select 3;
		_alt = _this select 4;
		if ((_key == 0xD3) && !_alt && !_ctrl) then {['Delete'] spawn "+_antihackrand4+";};
		if (_key == 0xD2) then {['Insert'] spawn "+_antihackrand4+";};
		if (_key == 0x58) then {['F12'] spawn "+_antihackrand4+";};
		if (_key == 0x3B) then {['F1'] spawn "+_antihackrand4+";};
		if (_key == 0x3C) then {['F2'] spawn "+_antihackrand4+";};
		if (_key == 0x3D) then {['F3'] spawn "+_antihackrand4+";};
		if ((_key == 0x3E) && _alt) then {['Alt-F4'] spawn "+_antihackrand4+";};
		if ((_key == 0x29) && _shift) then {['DAMI'] spawn "+_antihackrand4+";};
		if ((_key == 0x19) && _shift) then {['Shift-P'] spawn "+_antihackrand4+";};
		if (_key == 0x0F) then {['TAB'] spawn "+_antihackrand4+";};
	};
	[] spawn "+_antihackrand2+";
	[] spawn
	{
		"+_antihackrand20+" = true;
		while {"+_antihackrand20+"} do
		{
			{
				if (!(_x isKindOf ""TentStorage"") and !(_x isKindOf ""AllVehicle"") and (_x != player)) then
				{
					if ((((count ((getWeaponCargo _x) select 1))+(count ((getMagazineCargo _x) select 1))) > 100) or (count ([currentWeapon _x] + (weapons _x) + (magazines _x)) > 40)) then {
						diag_log (""CLEANUP: DELETING AN HACKBOX "" + (typeOf _x));
						deleteVehicle _x;
					};
				};
			} foreach (position player nearObjects 50);
			sleep 5;
		};
	};
	[] spawn {
		"+_antihackrand22+" = true;
		while {"+_antihackrand22+"} do {
			{
				call compile format [""typeName; remExFP = 1; publicVariable """"remExFP""""; ""];
				call compile format [""[] spawn {if (typeName (%1) == """"STRING"""") then {remExFP = 1; publicVariable """"remExFP"""";};};"",_x];
			} forEach [""closeDisplay"",""endMission"",""displayRemoveAllEventHandlers"",""ctrlRemoveAllEventHandlers"",""closeDialog"",""findDisplay"",""preProcessFileLineNumbers"",
			""groupIconsVisible"",""removeMagazine"",""removeWeapon"",""removeAction"",""isNil"",""currentWeapon"",""weapons"",""magazines"",""in"",""getPlayerUID""];
			sleep 10;
		};
	};
	[] spawn
	{
		"+_antihackrand15+" = true;
		while {"+_antihackrand15+"} do
		{
			{
				if !(isNil _x) exitWith
				{
					"+_antihackrand10+" = [name player, getPlayerUID player, toArray 'Global Var', toArray _x];
					publicVariable '"+_antihackrand10+"';
					for '_i' from 0 to 99 do {(findDisplay _i) closeDisplay 0;};
				};
			} forEach ['monkyProRE','pic','veh','wuat_fpsMonitor','unitList','list_wrecked','addgun','ESP','BIS_fnc_3dCredits_n','ViLayer','maphalf','activeITEMlist',
			'activeITEMlistanzahl','xyzaa','iBeFlying','rem','DAYZ_CA1_Lollipops','HMDIR','HDIR','YOLO','carg0d',
			'p','fffffffffff','markPos','pos','marker','TentS','VL','MV','monky','qopfkqpofqk','monkytp','pbx',
			'mk2','j','fuckmegrandma','mehatingjews','scode','TTT5OptionNR','zombieDistanceScreen','cargodz',
			'igodokxtt','omgwtfbbq','namePlayer','thingtoattachto','HaxSmokeOn','v','testIndex','g0d',
			'antiloop','ARGT_JUMP','selecteditem','moptions','delaymenu','gluemenu','g0dmode','zeus','zeusmode','cargod',
			'spawnweapons1','abcd','skinmenu','playericons','changebackpack','keymenu','godall','theKeyControl',
			'custom_clothing','img','surrmenu','footSpeedIndex','ctrl_onKeyDown','plrshldblcklst','DEV_ConsoleOpen',
			'teepee','spwnwpn','xtags','musekeys','dontAddToTheArray','morphtoanimals','aesp','LOKI_GUI_Key_Color',
			'playerDistanceScreen','monkytp','ihatelife','debugConsoleIndex','MY_KEYDOWN_FNC','pathtoscrdir',
			'TAG_onKeyDown','changestats','derp123','heel','rangelol','unitsmenu','xZombieBait','plrshldblckls',
			'shnmenu','xtags','pm','lmzsjgnas','vm','bowen','bowonkys','glueallnigga','hotkeymenu','Monky_hax_toggled',
			'atext','boost','nd','vspeed','Ug8YtyGyvguGF','inv','rspwn','pList','loldami','bowonky','dwarden','aimbott',
			'helpmenu','godlol','rustlinginit','qofjqpofq','invall','initarr','reinit','byebyezombies','dayz_godmode',
			'Monky_funcs_inited','FUK_da_target','damihakeplz','damikeyz_veryhawt','mapopt','hangender','slag','maphalf',
			'tell_me_more_infiSTAR','airborne_spawn_vehicle_infiSTAR','sxy_list_stored','scrl_list_stored','mainmenu_stored','specificmenu_stored',
			'ammenu_stored','MDmenu_stored','Fmenu_stored','CASHmenu_stored','SMmenu_stored','MMYmenu_stored','VMmenu_stored','LVMmenu_stored',
			'SVMmenu_stored','OBJmenu_stored','WEPmenu_stored','advert_SSH','_exec','_remexec',	'antiantiantiantih4x','Ruslter',	
			'Rustler_RE','bl4ck1ist','_spwncode','keybinds','_aim'];
			if ((groupIconsVisible select 0) or (groupIconsVisible select 1)) exitWith
			{
				"+_antihackrand10+" = [name player, getPlayerUID player, toArray 'Group Icons', toArray (str groupIconsVisible)];
				publicVariable '"+_antihackrand10+"';
				for '_i' from 0 to 99 do {(findDisplay _i) closeDisplay 0;};
			};
			[] spawn "+_antihackrand2+";
			sleep 10;
		};
	};
	[] spawn
	{
		"+_antihackrand17+" = true;
		while {"+_antihackrand17+"} do
		{
			_items = [currentWeapon player] + (weapons player) + (magazines player);
			{
				if (_x in _items) then
				{
					[_x,_items] spawn
					{
						_item = _this select 0;
						_items = _this select 1;
						if (_item in ['Mine','MineE','pipebomb']) then
						{
							for '_i' from 0 to ({_x == _item} count _items) do {player removeMagazine _item;};
						} else {for '_i' from 0 to ({_x == _item} count _items) do {player removeWeapon _item;};};
					};
					"+_antihackrand10+" = [name player, getPlayerUID player, toArray 'Bad Item', toArray _x];
					publicVariable '"+_antihackrand10+"';
				};
			} forEach (['BAF_AS50_TWS','ItemRadio','UZI_SD_EP1',
			'G36_C_SD_camo','revolver_gold_EP1','G36_C_SD_eotech',
			'BAF_LRR_scoped','M4A1_HWS_GL','Sa61_EP1','M4SPR','M4A3_RCO_GL_EP1',
			'Mk_48_DES_EP1','M4A1_Aim_camo','AKS_GOLD','Mk_48','AK_107_GL_pso',
			'MG36','M16A4_ACG_GL','ksvk','Pecheneg','SVD_des_EP1','M24_des_EP1',
			'BAF_LRR_scoped_W','BAF_ied_v1','m16a4','AKS_74_UN_kobra','M4A1_RCO_GL',
			'M249_m145_EP1','BAF_L86A2_ACOG','AK_107_GL_kobra','Saiga12K','PK','M60A4_EP1',
			'BAF_M240_veh','BAF_L85A2_UGL_Holo','SVD','m240_scoped_EP1','M16A4_GL','m107_TWS_EP1_DZ',
			'bizon','BAF_L85A2_UGL_ACOG','BAF_L85A2_RIS_ACOG','AK_107_pso','Mine','MineE','AK_74_GL_kobra','AKS_74_GOSHAWK','FN_FAL_ANPVS4','SCAR_H_STD_EGLM_Spect',
			'SCAR_L_CQC_EGLM_Holo','SCAR_L_STD_EGLM_RCO','SCAR_L_STD_EGLM_TWS','m107_TWS_EP1','M110_NVG_EP1','M110_TWS_EP1','SCAR_H_STD_TWS_SD',
			'SVD_NSPU_EP1','M249_TWS_EP1','M249_EP1','AA12_PMC','M47Launcher_EP1','M79_EP1','MAAWS','Mk13_EP1','BAF_L85A2_RIS_SUSAT','BAF_L85A2_UGL_SUSAT',
			'BAF_L85A2_RIS_CWS','M8_carbine','M8_carbineGL','M8_compact','M8_carbine_pmc','M8_compact_pmc','M8_holo_sd','M8_tws_sd','M8_tws',
			'BAF_L110A1_Aim','BAF_L7A2_GPMG','PMC_AS50_scoped','PMC_AS50_TWS','M8_sharpshooter','M4A1_HWS_GL_SD_Camo'] +
			
			['GAU8','2A14','2A38M','2A42','2A46M','2A46MRocket','2A70','2A70Rocket','2A72','2B14','57mmLauncher','57mmLauncher_128',
			'57mmLauncher_64','80mmLauncher','9M311Laucher','AALauncher_twice','AGS17','AGS30','AGS30_heli','AirBombLauncher',
			'AT10LauncherSingle','AT11LauncherSingle','AT13LauncherSingle','AT2Launcher','AT5Launcher','AT5LauncherSingle','AT6Launcher',
			'AT9Launcher','AZP85','BAF_GMG','BAF_L2A1','BAF_L7A2','BAF_L94A1','BAF_static_GMG','BikeHorn','BombLauncher','BombLauncherA10',
			'BombLauncherF35','CamelGrenades','CarHorn','Ch29Launcher','Ch29Launcher_Su34','CMFlareLauncher','CRV7_FAT','CRV7_HEPD','CRV7_PG','CTWS',
			'D10','D30','D81','DSHKM','DT_veh','FFARLauncher','FFARLauncher_14','FlareLauncher','GAU12','GRAD','GSh23L','GSh23L_L39','GSh301','GSh302',
			'HeliBombLauncher','HellfireLauncher','HellfireLauncher_AH6','Igla_twice','KORD','KPVT','Laserdesignator_mounted','M119','M120','M134','M134_2',
			'M168','M197','M2','M230','M240_veh','M240_veh_2','M240_veh_MG_Nest','M240BC_veh','M242','M242BC','M252','M256','M2BC','M32_heli','M3P','M621',
			'M68','MaverickLauncher','MiniCarHorn','MK19','MK19BC','Mk82BombLauncher','Mk82BombLauncher_6','MLRS','PKT','PKT_2','PKT_3','PKT_high_AI_dispersion',
			'PKT_high_AI_dispersion_tank','PKT_MG_Nest','PKT_veh','PKTBC','PKTBC_veh','R73Launcher','R73Launcher_2','S8Launcher','SEARCHLIGHT','SGMT',
			'SidewinderLaucher','SidewinderLaucher_AH1Z','SidewinderLaucher_AH64','SidewinderLaucher_F35','SmokeLauncher','SPG9','SportCarHorn','StingerLaucher',
			'StingerLaucher_4x','StingerLauncher_twice','TOWLauncher','TOWLauncherSingle','TruckHorn','TruckHorn2','TwinM134','TwinVickers','VikhrLauncher','YakB',
			'ZiS_S_53']);
			sleep 10;
		};
	};
	[] spawn
	{
		"+_antihackrand18+" = true;
		while {"+_antihackrand18+"} do
		{
			_cMenuDefault = ["""",""RscMainMenu"",""RscMoveHigh"",""#WATCH"",""#WATCH0"",""RscWatchDir"",""RscWatchMoreDir"",""#GETIN"",""RscStatus"",""RscCallSupport"",""#ACTION"",""RscCombatMode"",""RscFormations"",""RscTeam"",""RscSelectTeam"",""RscReply"",""#CUSTOM_RADIO"",""RscRadio"",""RscGroupRootMenu""];
			if !(commandingMenu in _cMenuDefault) then {showCommandingMenu """";};
			_tempRemoveAction = player addAction ["""", """", [], 1, false, true, """", ""false""];
			_startRemove = _tempRemoveAction - 35;
			_endRemove = _tempRemoveAction + 50;
			for '_i' from _startRemove to _endRemove do
			{
				_dayzActions = (s_player_repairActions + r_player_actions2 + r_player_actions +
				[s_player_holderPickup,s_player_fillfuel5,s_player_fillfuel20,s_player_grabflare,s_player_removeflare,s_player_deleteBuild,s_player_forceSave,
				s_player_flipveh,s_player_fillfuel,s_player_dropflare,s_player_butcher,s_player_cook,
				s_player_boil,s_player_fireout,null,s_player_packtent,s_player_sleep,s_player_studybody,NORRN_dropAction]);
				if (!(_i in _dayzActions) and (_i > -1)) then {player removeAction _i};
			};
			player allowDamage true;
			sleep 1;
		};
	};
};
BIS_MPF_remoteExecutionServer =
{
	if ((_this select 1) select 2 == ""JIPrequest"") then
	{
		_playerObj = (_this select 1) select 0;
		_BanList = 	profileNamespace getVariable [""AHBanList"",[]];
		
		remExField = [nil, nil, format [""; BanList = ""+str(_BanList)+""; [] spawn { createTeam = """"redwagon!""""; };
		if !(isServer) then {[] execVM """"ca\Modules\Functions\init.sqf"""";
		[] spawn { waitUntil {!isNil '"+_antihackrand19+"'}; [] spawn "+_antihackrand19+";};};""]];
		(owner _playerObj) publicVariableClient ""remExField"";

		_list = [0,0,0] nearEntities 1000000000000000; (_list select 0) setVehicleInit ""if !(isServer) then {[getPlayerUID player] spawn "+_antihackrand8+";};""; processInitCommands;
		clearVehicleInit (_list select 0);
	};
};
"""+_antihackrand10+""" addPublicVariableEventHandler
{
	if (count (_this select 1) == 3) then
	{
		_name = (_this select 1) select 0;
		_uid = (_this select 1) select 1;
		_key = (_this select 1) select 2;
		_log = format [""Key Log: %1 (%2) KEY: %3 - |DayZ Instance: %4|"", _name, _uid, _key, dayZ_instance];
		diag_log (_log);
	}
	else
	{
		if (count (_this select 1) == 1) then
		{
			_player = (_this select 1) select 0;
			_uid = getPlayerUID _player;
			_log = format [""Hack Log: %1 (%2) REASON: %3 (%4) - |DayZ Instance: %5|"", name _player, getPlayerUID _player, ""Anti-Hax OFF"", format [""Time: %1"", str time], dayZ_instance];
			diag_log (_log);
		}
		else
		{
			if (count (_this select 1) == 2) then
			{
				_player = (_this select 1) select 0;
				_uid = getPlayerUID _player;
				_log = format [""Hack Log: %1 (%2) REASON: %3 (%4) - |DayZ Instance: %5|"", name _player, getPlayerUID _player, ""VA Bypass"", format [""Time: %1"", str time], dayZ_instance];
				diag_log (_log);
			}
			else {
				_array = _this select 1;
				_name = _array select 0;
				_uid = _array select 1;
				_reason = toString (_array select 2);
				_field = toString (_array select 3);
				_log = format [""Hack Log: %1 (%2) REASON: %3 (%4) - |DayZ Instance: %5|"", _name, _uid, _reason, _field, dayZ_instance];
				diag_log (_log);
				"+_antihackrand13+" = format [""Anti-Hax Caught: %1 Reason: %2 (%3)"", _name, _reason, _field];
				publicVariable """+_antihackrand13+""";
			};
		};
	};
};
"+_antihackrand8+" =
{
	waitUntil {(typeName (getPlayerUID player) == ""STRING"") and ((getPlayerUID player) != """")};
	_"+_antihackrand14+" = (getPlayerUID player);
	if (!(_"+_antihackrand14+" in "+(str _list)+") && !(isNull player)) then
	{
		if (isNil '"+_antihackrand11+"') then
		{
			waitUntil {!isNil 'dayz_animalCheck'};
			"+_antihackrand11+" = true;
			sleep 10;
			"+_antihackrand7+" = false;
			sleep 5;
			if !("+_antihackrand7+") then
			{
				"+_antihackrand10+" = [player];
				publicVariable '"+_antihackrand10+"';
				endMission ""END1"";
			};
			"+_antihackrand11+" = nil;
		};
	};
};
"+_antihackrand9+" =
{
	hackerLog = [];
	keyLog = [];
	"""+_antihackrand10+""" addPublicVariableEventHandler
	{
		if ((count hackerLog) > 150) then
		{
			for ""_i"" from 0 to 49 do
			{
				hackerLog = hackerLog - [hackerLog select 0];
			};
		};
		if ((count keyLog) > 150) then
		{
			for ""_i"" from 0 to 49 do
			{
				keyLog = keyLog - [keyLog select 0];
			};
		};
		if (count (_this select 1) == 3) then
		{
			_name = (_this select 1) select 0;
			_uid = (_this select 1) select 1;
			_key = (_this select 1) select 2;
			_log = format [""KEY LOGGED: %1 (%2) KEY: %3"", _name, _uid, _key];
			keyLog = keyLog + [[""     ""+_log,"""",""0"",""1"",""0"",""0"",[]]];
		}
		else
		{
			if (count (_this select 1) == 1) then
			{
				_player = (_this select 1) select 0;
				_log = format [""HACKER: %1 (%2) REASON: %3 (%4)"", name _player, getPlayerUID _player, ""Anti-Hax OFF"", format [""Time: %1"", str time]];
				hackerLog = hackerLog + [[""     ""+_log,"""",""0"",""1"",""0"",""0"",[]]];
			}
			else
			{
				if (count (_this select 1) == 2) then
				{
					_player = (_this select 1) select 0;
					_uid = getPlayerUID _player;
					_log = format [""Hack Log: %1 (%2) REASON: %3 (%4) - |DayZ Instance: %5|"", name _player, getPlayerUID _player, ""VA Bypass"", format [""Time: %1"", str time], dayZ_instance];
					hackerLog = hackerLog + [[""     ""+_log,"""",""0"",""1"",""0"",""0"",[]]];
				}
				else {
					_array = _this select 1;
					_name = _array select 0;
					_uid = _array select 1;
					_reason = toString (_array select 2);
					_field = toString (_array select 3);
					_log = format [""HACKER: %1 (%2) REASON: %3 (%4)"", _name, _uid, _reason, _field];
					hackerLog = hackerLog + [[""     ""+_log,"""",""0"",""1"",""0"",""0"",[]]];
				};
			};
		};
	};
};
"+_antihackrand19+" =
{
	call compile ""diag_log createTeam;""; 
	waitUntil {(typeName (getPlayerUID player) == ""STRING"") and ((getPlayerUID player) != """")};
	_puid = getPlayerUID player;
	if (_puid in BanList) exitWith
	{
		hiveupdateresu = 1; publicVariable ""hiveupdateresu""; 
		""Sheep"" createUnit [[0,0,0], createGroup EAST,"";call compile """"[] spawn {};"""";"", 0.6, ""corporal""]; 
		for ""_i"" from 0 to 99 do {(findDisplay _i) closeDisplay 0;}; endMission ""END1""; 
	};
	if (_puid in "+(str _list)+") then
	{
		'"+_antihackrand13+"' addPublicVariableEventHandler {taskHint [_this select 1, [1, 0.05, 0.55, 1], 'taskNew'];};
		[] spawn "+_antihackrand9+";
		[] spawn tlmxzyxzy;
	}
	else
	{
		[] spawn
		{
			waitUntil {!isNil 'dayz_animalCheck'};
			_blCmd = ['createDiaryRecord','createTask','createSimpleTask','buttonSetAction','processDiaryLink','createDiaryLink',
			'lbSetData','createMarkerLocal','createTeam','profileNamespace','exec'];
			for '_i' from 0 to (count _blCmd)-1 do {call compile ((_blCmd select _i)+""='STRING';"");};
			_retArr = ['allUnits','entities','allMissionObjects','vehicles','playableUnits'];
			for '_j' from 0 to (count _retArr)-1 do {call compile ((_retArr select _j)+""=[player];"");};
		};
		_id = [] spawn "+_antihackrand1+";
	};
};
publicVariable """+_antihackrand1+""";
publicVariable """+_antihackrand8+""";
publicVariable """+_antihackrand9+""";
publicVariable """+_antihackrand19+""";
");

/*
	Admin Menu
*/

tlmxzyxzy =
{
	waitUntil {!isNull (findDisplay 46)};
	inSub = false;
	tpEnabled = false;
	getControl = {(findDisplay 3030) displayCtrl _this;};
	if (isNil "admin_toggled") then {admin_toggled = [];};
	admin_list =
	{
		if ((getPlayerUID player) in noob_list) then {
			adminadd = adminadd + ["     Main Menu","MainMenu","0","0","1","0",[1,0.1,0.55,1]];
			adminadd = adminadd + ["     Hacker Log","hackerLog","0","0","1","0",[1,0.1,0.55,1]];
			adminadd = adminadd + ["     Key Log","keyLog","0","0","1","0",[1,0.1,0.55,1]];
			adminadd = adminadd + ["     View PlayerUIDs","uidLog","0","0","1","0",[1,0.1,0.55,1]];
			adminadd = adminadd + ["","","0","1","0","0",[]];
			adminadd = adminadd + ["","","0","1","0","0",[]];
			adminadd = adminadd + [" Server Management","","0","1","0","0",[]];
			adminadd = adminadd + ["","","0","1","0","0",[]];
			adminadd = adminadd + ["     Kick",adminkick,"0","0","0","1",[]];
			adminadd = adminadd + ["","","0","1","0","0",[]];
			adminadd = adminadd + [" Spawn Scripts ","","0","1","0","0",[]];
			adminadd = adminadd + ["","","0","1","0","0",[]];
			adminadd = adminadd + ["","","0","1","0","0",[]];
			adminadd = adminadd + [" Toggleable Scripts ","","0","1","0","0",[]];
			adminadd = adminadd + ["","","0","1","0","0",[]];
			 adminadd = adminadd + ["     Toggle Map Markers",adminmark,"1","0","0","0",[]];
			 adminadd = adminadd + ["     Toggle ESP",adminesp,"1","0","0","0",[]];
			 adminadd = adminadd + ["     Toggle Wardrobe",adminskin,"1","0","0","0",[]];
			adminadd = adminadd + ["","","0","1","0","0",[]];
			adminadd = adminadd + [" Targeted Scripts ","","0","1","0","0",[]];
			adminadd = adminadd + ["","","0","1","0","0",[]];
			adminadd = adminadd + ["     Spectate Target",adminspec,"0","0","0","1",[]];
			 adminadd = adminadd + ["     Move to Target",admintele,"0","0","0","1",[]];
			adminadd = adminadd + ["     Move Target to Me",admint2me,"0","0","0","1",[]];
			 adminadd = adminadd + ["     Heal Target",adminheal,"0","0","0","1",[]];
			 adminadd = adminadd + ["     Slap Target",adminSlap,"0","0","0","1",[]];
			adminadd = adminadd + ["","","0","1","0","0",[]];
			adminadd = adminadd + [" Miscellaneous ","","0","1","0","0",[]];
			adminadd = adminadd + ["","","0","1","0","0",[]];
			 adminadd = adminadd + ["     Repair Vehicle",adminrepair,"0","0","0","0",[]];
			 adminadd = adminadd + ["     Delete CursorTarget",{deleteVehicle cursorTarget;},"0","0","0","0",[]];
			 adminadd = adminadd + ["     Bypass Anti-TP",admin_aatp,"0","0","0","0",[]];
		}
		else {
			adminadd = adminadd + ["     Main Menu","MainMenu","0","0","1","0",[1,0.1,0.55,1]];
			adminadd = adminadd + ["     Hacker Log","hackerLog","0","0","1","0",[1,0.1,0.55,1]];
			adminadd = adminadd + ["     Key Log","keyLog","0","0","1","0",[1,0.1,0.55,1]];
			adminadd = adminadd + ["     View PlayerUIDs","uidLog","0","0","1","0",[1,0.1,0.55,1]];
			adminadd = adminadd + ["","","0","1","0","0",[]];
			adminadd = adminadd + ["","","0","1","0","0",[]];
			adminadd = adminadd + [" Server Management","","0","1","0","0",[]];
			adminadd = adminadd + ["","","0","1","0","0",[]];
			adminadd = adminadd + ["     Mass Message",adminmsg,"0","0","0","0",[]];
			adminadd = adminadd + ["     Kick",adminkick,"0","0","0","1",[]];
			 adminadd = adminadd + ["     Ban",adminban,"0","0","0","1",[]];
			 adminadd = adminadd + ["     Clear Ban List",adminClearBan,"0","0","0","0",[]];
			 adminadd = adminadd + ["","","0","1","0","0",[]];
			adminadd = adminadd + [" Spawn Scripts ","","0","1","0","0",[]];
			adminadd = adminadd + ["","","0","1","0","0",[]];
			 adminadd = adminadd + ["     Spawn Vehicle","Vehicles","0","0","1","0",[]];
			 adminadd = adminadd + ["     Spawn Buildings & Objects","Objects","0","0","1","0",[]];
			 adminadd = adminadd + ["     Spawn Weapons & Items","Weaponz","0","0","1","0",[]];
			 adminadd = adminadd + ["     Spawn Box",admincrate,"0","0","0","0",[]];
			adminadd = adminadd + ["","","0","1","0","0",[]];
			adminadd = adminadd + [" Toggleable Scripts ","","0","1","0","0",[]];
			adminadd = adminadd + ["","","0","1","0","0",[]];
			adminadd = adminadd + ["     Toggle TP",{if !(tpEnabled) then {tpEnabled = true;} else {tpEnabled = false;};},"1","0","0","0",[]];
			 adminadd = adminadd + ["     Toggle Map Markers",adminmark,"1","0","0","0",[]];
			 adminadd = adminadd + ["     Toggle ESP",adminesp,"1","0","0","0",[]];
			 adminadd = adminadd + ["     Toggle God",admingod,"1","0","0","0",[]];
			 adminadd = adminadd + ["     Toggle Wardrobe",adminskin,"1","0","0","0",[]];
			 adminadd = adminadd + ["     Toggle Vehicle Boost",adminVehicleSpeed,"1","0","0","0",[]];
			 adminadd = adminadd + ["     Toggle Stealth",admininvis,"1","0","0","0",[]];
			 adminadd = adminadd + ["     Toggle ZombieShield",adminZombieShield,"1","0","0","0",[]];
			adminadd = adminadd + ["","","0","1","0","0",[]];
			adminadd = adminadd + [" Targeted Scripts ","","0","1","0","0",[]];
			adminadd = adminadd + ["","","0","1","0","0",[]];
			adminadd = adminadd + ["     Spectate Target",adminspec,"0","0","0","1",[]];
			 adminadd = adminadd + ["     Move to Target",admintele,"0","0","0","1",[]];
			adminadd = adminadd + ["     Move Target to Me",admint2me,"0","0","0","1",[]];
			 adminadd = adminadd + ["     Break Target's Legs",adminbreakleg,"0","0","0","1",[]];
			 adminadd = adminadd + ["     Kill Target",adminkill,"0","0","0","1",[]];
			 adminadd = adminadd + ["     Knockout Target",adminUncon,"0","0","0","1",[]];
			 adminadd = adminadd + ["     Heal Target",adminheal,"0","0","0","1",[]];
			 adminadd = adminadd + ["     GiveGod Target",{[_this select 0, 1] call adminGiveGod;},"0","0","0","1",[]];
			 adminadd = adminadd + ["     UnGod Target",{[_this select 0, 0] call adminGiveGod;},"0","0","0","1",[]];
			 adminadd = adminadd + ["     VehicleBoost Target",adminTargetVehBoost,"0","0","0","1",[]];
			 adminadd = adminadd + ["     Slap Target",adminSlap,"0","0","0","1",[]];
			 adminadd = adminadd + ["     Drug Target",adminDrug,"0","0","0","1",[]];
			 adminadd = adminadd + ["     Suicide Target",adminSuicide,"0","0","0","1",[]];
			adminadd = adminadd + ["","","0","1","0","0",[]];
			adminadd = adminadd + [" WeatherLord ","Weather","0","0","1","0",[]];
			adminadd = adminadd + [" TimeLord ","Time","0","0","1","0",[]];
			adminadd = adminadd + ["","","0","1","0","0",[]];
			adminadd = adminadd + [" Miscellaneous ","","0","1","0","0",[]];
			adminadd = adminadd + ["","","0","1","0","0",[]];
			 adminadd = adminadd + ["     Repair Vehicle",adminrepair,"0","0","0","0",[]];
			 adminadd = adminadd + ["     Delete CursorTarget",{deleteVehicle cursorTarget;},"0","0","0","0",[]];
			 adminadd = adminadd + ["     Bypass Anti-TP",admin_aatp,"0","0","0","0",[]];
		};
	};
	admin_tgfnc =
	{
		_toggle = _this select 0;
		if !(_toggle in admin_toggled) then
		{
			lbSetColor [2, _toggle, [0, 1, 0, 1]];
			admin_toggled = admin_toggled + [_toggle];
		}
		else
		{
			lbSetColor [2, _toggle, [1, 0, 0, 1]];
			admin_toggled = admin_toggled - [_toggle];
		};
	};
	admin_dbclick =
	{
		_isran = false;
		_code = adminadd select ((lbCurSel 2))*7+1;
		_istoggle = adminadd select ((lbCurSel 2))*7+2;
		_istitle = adminadd select ((lbCurSel 2))*7+3;
		_issubmenu = adminadd select ((lbCurSel 2))*7+4;
		_isplayer = adminadd select ((lbCurSel 2))*7+5;
		if (_istitle == "1") exitWith {};
		if (_issubmenu == "1") then
		{
			if (_code == "Vehicles") exitWith {call admin_fillveh};
			if (_code == "Objects") exitWith {call admin_fillobj};
			if (_code == "Weaponz") exitWith {call admin_fillwpn};
			if (_code == "HackerLog") exitWith {call admin_fillhlog};
			if (_code == "KeyLog") exitWith {call admin_fillklog};
			if (_code == "MainMenu") exitWith {call admin_filllist};
			if (_code == "uidLog") exitWith {call admin_filluLog};
			if (_code == "Weather") exitWith {call admin_weather};
			if (_code == "Time") exitWith {call admin_time};
		};
		if (inSub) then
		{
			call compile _code;
			_isran = true;
		};
		if (_istoggle == "1") then
		{
			[] spawn _code;
			[lbCurSel 2] call admin_tgfnc;
			_isran = true;
		};
		if (_isplayer == "1") then
		{
			if ((lbCurSel 1) >= 0) then
			{
				[lbtext [1, (lbCurSel 1)]] spawn _code;
				_isran = true;
			}
			else
			{
				hint "Select a player!";
				_isran = true;
			};
		};
		if ((_isplayer == "0") && !_isran && (typeName _code != "STRING")) then {[] spawn _code;};
	};
	adminmsg =
	{
		createDialog "RscDisplayPassword";
		ctrlSetText [1001,"BroadCast Message Plugin"];
		ctrlSetText [101,"Type Message Here..."];
		ctrlshow [1002,false];
		buttonSetAction [1,"tlmadminrq = [19, player, toArray(ctrlText 101)]; publicVariable ""tlmadminrq"";"];
	};
	adminskin =
	{
		if (isNil "adminskinz") then {adminskinz = 0;};
		if (adminskinz == 0) then
		{
			_formatLine = "[dayz_playerUID,dayz_characterID,'%1'] call player_humanityMorph;
			adminSkin_wardrobe = player addaction [(""<t color=""""#ff8810"""">"" + (""Wardrobe"") +""</t>""),""ca\modules\MP\data\scriptCommands\moveIn.sqf"",
			""Driver (call adminSkin_helper);"",5,false,false,"""",""""];";
			wardrobe =
			[
				["",true],
					["DayZ Clothing", [2], "#USER:WardrobeDayZ", -5, [["expression", ""]], "1", "1"],
					["Custom Clothing", [3], "#USER:WardrobeCustom", -5, [["expression", ""]], "1", "1"],
					["", [-1], "", -5, [["expression", ""]], "1", "0"],
						["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
					
			];
			WardrobeCustom =
			[
				["",true],
					["Rocket Uniform", [2],  "", -5, [["expression", format[_formatLine,"Rocket_DZ"]]], "1", "1"],
					["Desert Rocket Uniform", [3],  "", -5, [["expression", format[_formatLine,"BAF_Soldier_Officer_DDPM"]]], "1", "1"],
					["Desert Camo Clothing", [4],  "", -5, [["expression", format[_formatLine,"BAF_Soldier_L_DDPM"]]], "1", "1"],
					["Desert Soldier Uniform", [5],  "", -5, [["expression", format[_formatLine,"BAF_Soldier_DDPM"]]], "1", "1"],
					["Desert Green Uniform", [6],  "", -5, [["expression", format[_formatLine,"BAF_Soldier_MTP"]]], "1", "1"],
					["US Soldier Uniform", [7],  "", -5, [["expression", format[_formatLine,"US_Soldier_EP1"]]], "1", "1"],
					["Czech Soldier Uniform", [8],  "", -5, [["expression", format[_formatLine,"CZ_Soldier_DES_EP1"]]], "1", "1"],
					["", [-1], "", -5, [["expression", ""]], "1", "0"],
						["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
			];

			WardrobeDayZ =
			[
				["",true],
					["Male Suvivor", [2],  "", -5, [["expression", format[_formatLine,"Survivor2_DZ"]]], "1", "1"],
					["Female Suvivor", [3],  "", -5, [["expression", format[_formatLine,"SurvivorW2_DZ"]]], "1", "1"],
					["Male Bandit", [4],  "", -5, [["expression", format[_formatLine,"Bandit1_DZ"]]], "1", "1"],
					["Female Bandit", [5],  "", -5, [["expression", format[_formatLine,"BanditW1_DZ"]]], "1", "1"],
					["Camo Clothing", [6],  "", -5, [["expression", format[_formatLine,"Camo1_DZ"]]], "1", "1"],
					["Ghillie Suit", [7],  "", -5, [["expression", format[_formatLine,"Sniper1_DZ"]]], "1", "1"],
					["Soldier Uniform", [8],  "", -5, [["expression", format[_formatLine,"Soldier1_DZ"]]], "1", "1"],
					["", [-1], "", -5, [["expression", ""]], "1", "0"],
						["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
			];
			adminskinz = 1;
			adminSkin_wardrobe = player addaction [("<t color=""#ff8810"">" + ("Wardrobe") +"</t>"),"ca\modules\MP\data\scriptCommands\moveIn.sqf",
			"Driver (call adminSkin_helper);",5,false,false,"",""];
			adminSkin_helper = {showCommandingMenu "#USER:wardrobe";};
		}
		else
		{
			player removeAction adminSkin_wardrobe;
			adminskinz = 0;
		};
	};
	adminZombieShield =
	{
		if (isNil "adminZombieShieldz") then {adminZombieShieldz = 0;};
		if (adminZombieShieldz == 0) then
		{
			hint "Zombie shield On";
			adminZombieShieldz = 1;
			while {adminZombieShieldz == 1} do
			{
				{
					_x setDamage 1.1;
				} forEach ((position player) nearEntities ["zZombie_Base",10]);
				sleep 0.8;
			};
		}
		else
		{
			hint "Zombie shield Off";
			adminZombieShieldz = 0;
		};
	};
	adminVehicleSpeed =
	{
		if (isNil "adminvehicleSpeedz") then {adminvehicleSpeedz = 0;};
		if (adminvehicleSpeedz == 0) then
		{
			hint "Speed upgrade loaded!";
			waituntil {!isnull (finddisplay 46)};
			adminvehicleSpeedy = (findDisplay 46) displayAddEventHandler ["KeyDown","_this select 1 call MY_KEYDOWN_FNC_xx1;false;"];
			MY_KEYDOWN_FNC_xx1 = {

				_vcl = vehicle player;
				if(_vcl == player)exitwith{};

				_nos = _vcl getvariable "nitro";
				_supgrade = _vcl getvariable "supgrade";

				if(isEngineOn _vcl) then
				{
					switch (_this) do {
						case 17: {
							if(isEngineOn _vcl and !isnil "_supgrade") then
							{
								_vcl SetVelocity [(velocity _vcl select 0) * 1.011, (velocity _vcl select 1) *1.011, (velocity _vcl select 2) * 0.99];
							} else {
								_vcl setvariable ["supgrade", 1];
							};
						};
						case 42: {
							if(isEngineOn _vcl and !isnil "_nos") then
							{
								_vcl setVelocity [(velocity _vcl select 0) * 1.01, (velocity _vcl select 1) * 1.01, (velocity _vcl select 2) * 0.99];
							} else {
								_vcl setvariable ["nitro", 1];
							};
						};
					};
				};
			};
			adminvehicleSpeedz = 1;
		}
		else
		{
			(findDisplay 46) displayRemoveEventHandler ["KeyDown",adminvehicleSpeedy];
			adminvehicleSpeedz = 0;
		};
	};
	admin_filllist =
	{
		inSub = false;
		_ctrl = 2 call getControl;
		lbclear _ctrl;
		adminadd = [];
		call admin_list;
		for [{_num = 0}, {_num <= count(adminadd)-1}, {_num = _num+7}] do
		{
			_index = _ctrl lbAdd format["%1", adminadd select _num];
			_togglable = adminadd select (_num+2);
			_istitle = adminadd select (_num+3);
			_issubmenu = adminadd select (_num+4);
			_thcolor = adminadd select (_num+6);
			if (count _thcolor == 0) then
			{
				_ctrl lbSetColor [(lbsize _ctrl)-1, [1, 1, 1, 1]];
			} else {_ctrl lbSetColor [(lbsize _ctrl)-1, _thcolor];};
			if (_togglable == "1") then
			{
				if (_index in admin_toggled) then
				{
					_ctrl lbSetColor [(lbsize _ctrl)-1, [0, 1, 0, 1]];
				} else {_ctrl lbSetColor [(lbsize _ctrl)-1, [1, 0, 0, 1]];};
			};
			if (_istitle == "1") then {_ctrl lbSetColor [(lbsize _ctrl)-1, [0.0, 0.6, 1.0, 1.0]];};
			if ((_issubmenu == "1") && (count _thcolor == 0)) then {_ctrl lbSetColor [(lbsize _ctrl)-1, [0.9, 0.44, 0, 1]];};
		};
	};
	admin_fillplr =
	{
		disableSerialization;
		while {!(isNull (findDisplay 3030))} do
		{
			_count = count playableUnits;
			_ctrl = 1 call getControl;
			lbclear _ctrl;
			{
				if (getPlayerUID _x != "") then
				{
					_ctrl lbAdd format ["%1", name _x];
					_ctrl lbSetData [(lbsize _ctrl)-1, "1"];
					_ctrl lbSetColor [(lbsize _ctrl)-1, [0.0, 0.6, 1.0, 1.0]];
				};
			} forEach ([6800, 9200, 0] nearEntities [["AllVehicles"], 110000000]);
			lbSort _ctrl;
			sleep 15;
		};
	};
	admin_fillveh =
	{
		inSub = true;
		_ctrl = 2 call getControl;
		lbclear _ctrl;
		_spwx = "['%1'] call adminsveh;";
		adminadd = [];
		adminadd = adminadd + ["     Main Menu","MainMenu","0","0","1","0",[1,0.1,0.55,1]];
		adminadd = adminadd + ["     Hacker Log","hackerLog","0","0","1","0",[1,0.1,0.55,1]];
		adminadd = adminadd + ["     Key Log","keyLog","0","0","1","0",[1,0.1,0.55,1]];
		adminadd = adminadd + ["     View PlayerUIDs","uidLog","0","0","1","0",[1,0.1,0.55,1]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		_cfgvehicles = configFile >> "cfgVehicles";
		for "_i" from 0 to (count _cfgvehicles)-1 do
		{
			_vehicle = _cfgvehicles select _i;
			if (isClass _vehicle) then
			{
				_veh_type = configName _vehicle;
				if ((getNumber (_vehicle >> "scope") == 2) && (getText (_vehicle >> "picture") != "") && (((_veh_type isKindOf "LandVehicle") or (_veh_type isKindOf "Air") or (_veh_type isKindOf "Boat"))) && !((_veh_type isKindOf "ParachuteBase") or (_veh_type isKindOf "BIS_Steerable_Parachute"))) then
				{
					adminadd = adminadd + ["     "+_veh_type,format[_spwx,_veh_type],"0","0","0","0",[]];
				};
			};
		};
		for [{_num = 0}, {_num <= count(adminadd)-1}, {_num = _num+7}] do
		{
			_index     = _ctrl lbAdd format ["%1",adminadd select _num];
			_issubmenu = adminadd select (_num+4);
			_thcolor   = adminadd select (_num+6);
			if (count _thcolor == 0) then
			{
				_ctrl lbSetColor [(lbsize _ctrl)-1, [1, 1, 1, 1]];
			} else {_ctrl lbSetColor [(lbsize _ctrl)-1, _thcolor];};
		};
	};
	admin_fillobj =
	{
		inSub = true;
		_ctrl = 2 call getControl;
		lbclear _ctrl;
		_spwx = "['%1'] call adminsobj;";
		adminadd = [];
		adminadd = adminadd + ["     Main Menu","MainMenu","0","0","1","0",[1,0.1,0.55,1]];
		adminadd = adminadd + ["     Hacker Log","hackerLog","0","0","1","0",[1,0.1,0.55,1]];
		adminadd = adminadd + ["     Key Log","keyLog","0","0","1","0",[1,0.1,0.55,1]];
		adminadd = adminadd + ["     View PlayerUIDs","uidLog","0","0","1","0",[1,0.1,0.55,1]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		_cfgobjects = configFile >> "cfgVehicles";
		for "_i" from 0 to (count _cfgobjects)-1 do
		{
			_object = _cfgobjects select _i;
			if (isClass _object) then
			{
				_obj_type = configName _object;
				if ((getNumber (_object >> "scope") == 2) && (getText (_object >> "picture") != "") && !((_obj_type isKindOf "ParachuteBase") or (_obj_type isKindOf "BIS_Steerable_Parachute")) && (_obj_type isKindOf "Building")) then
				{
					adminadd = adminadd + ["     "+_obj_type,format[_spwx,_obj_type],"0","0","0","0",[]];
				};
			};
		};
		for [{_num = 0}, {_num <= count(adminadd)-1}, {_num = _num+7}] do
		{
			_index = _ctrl lbAdd format ["%1", adminadd select _num];
			_issubmenu = adminadd select (_num+4);
			_thcolor   = adminadd select (_num+6);
			if (count _thcolor == 0) then
			{
				_ctrl lbSetColor [(lbsize _ctrl)-1, [1, 1, 1, 1]];
			} else {_ctrl lbSetColor [(lbsize _ctrl)-1, _thcolor];};
		};
	};
	admin_fillwpn =
	{
		inSub = true;
		_ctrl = 2 call getControl;
		lbclear _ctrl;
		_spwx = "['%1'] spawn adminweapon;";
		adminadd = [];
		adminadd = adminadd + ["     Main Menu","MainMenu","0","0","1","0",[1,0.1,0.55,1]];
		adminadd = adminadd + ["     Hacker Log","hackerLog","0","0","1","0",[1,0.1,0.55,1]];
		adminadd = adminadd + ["     Key Log","keyLog","0","0","1","0",[1,0.1,0.55,1]];
		adminadd = adminadd + ["     View PlayerUIDs","uidLog","0","0","1","0",[1,0.1,0.55,1]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		_cfgweapons = configFile >> 'cfgWeapons';
		for "_i" from 0 to (count _cfgweapons)-1 do
		{
			_weapon = _cfgweapons select _i;
			if (isClass _weapon) then
			{
				_wpn_type = configName _weapon;
				if ((getNumber (_weapon >> "scope") == 0) or (getNumber (_weapon >> "scope") == 2)) then
				{
					adminadd = adminadd + ["     "+_wpn_type,format[_spwx,_wpn_type],"0","0","0","0",[]];
				};
			};
		};
		for [{_num = 0}, {_num <= count(adminadd)-1}, {_num = _num+7}] do
		{
			_index     = _ctrl lbAdd format["%1", adminadd select _num];
			_issubmenu = adminadd select (_num+4);
			_thcolor   = adminadd select (_num+6);
			if (count _thcolor == 0) then
			{
				_ctrl lbSetColor [(lbsize _ctrl)-1, [1, 1, 1, 1]];
			} else {_ctrl lbSetColor [(lbsize _ctrl)-1, _thcolor];};
		};
	};
	admin_fillhlog =
	{
		inSub = true;
		_ctrl = 2 call getControl;
		lbclear _ctrl;
		adminadd = [];
		adminadd = adminadd + ["     Main Menu","MainMenu","0","0","1","0",[1,0.1,0.55,1]];
		adminadd = adminadd + ["     Hacker Log","hackerLog","0","0","1","0",[1,0.1,0.55,1]];
		adminadd = adminadd + ["     Key Log","keyLog","0","0","1","0",[1,0.1,0.55,1]];
		adminadd = adminadd + ["     View PlayerUIDs","uidLog","0","0","1","0",[1,0.1,0.55,1]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		_num = if (count hackerLog > 100) then {(count hackerLog)-100;} else {0;};
		for "_i" from (count hackerLog)-1 to _num step -1 do
		{
			adminadd = adminadd + (hackerLog select _i);
		};
		for [{_num = 0}, {_num <= count(adminadd)-1}, {_num = _num+7}] do
		{
			_index     = _ctrl lbAdd format["%1", adminadd select _num];
			_issubmenu = adminadd select (_num+4);
			_thcolor   = adminadd select (_num+6);
			if (count _thcolor == 0) then
			{
				_ctrl lbSetColor [(lbsize _ctrl)-1, [1, 1, 1, 1]];
			} else {_ctrl lbSetColor [(lbsize _ctrl)-1, _thcolor];};
		};
	};
	admin_fillklog =
	{
		inSub = true;
		_ctrl = 2 call getControl;
		lbclear _ctrl;
		adminadd = [];
		adminadd = adminadd + ["     Main Menu","MainMenu","0","0","1","0",[1,0.1,0.55,1]];
		adminadd = adminadd + ["     Hacker Log","hackerLog","0","0","1","0",[1,0.1,0.55,1]];
		adminadd = adminadd + ["     Key Log","keyLog","0","0","1","0",[1,0.1,0.55,1]];
		adminadd = adminadd + ["     View PlayerUIDs","uidLog","0","0","1","0",[1,0.1,0.55,1]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		_num = if (count keyLog > 100) then {(count keyLog)-100;} else {0;};
		for "_i" from (count keyLog)-1 to _num step -1 do
		{
			adminadd = adminadd + (keyLog select _i);
		};
		for [{_num = 0}, {_num <= count(adminadd)-1}, {_num = _num+7}] do
		{
			_index     = _ctrl lbAdd format["%1", adminadd select _num];
			_issubmenu = adminadd select (_num+4);
			_thcolor   = adminadd select (_num+6);
			if (count _thcolor == 0) then
			{
				_ctrl lbSetColor [(lbsize _ctrl)-1, [1, 1, 1, 1]];
			} else {_ctrl lbSetColor [(lbsize _ctrl)-1, _thcolor];};
		};
	};
	admin_filluLog =
	{
		inSub = true;
		_ctrl = 2 call getControl;
		lbclear _ctrl;
		adminadd = [];
		adminadd = adminadd + ["     Main Menu","MainMenu","0","0","1","0",[1,0.1,0.55,1]];
		adminadd = adminadd + ["     Hacker Log","hackerLog","0","0","1","0",[1,0.1,0.55,1]];
		adminadd = adminadd + ["     Key Log","keyLog","0","0","1","0",[1,0.1,0.55,1]];
		adminadd = adminadd + ["     View PlayerUIDs","uidLog","0","0","1","0",[1,0.1,0.55,1]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		{
			if ( isPlayer _x ) then
			{
				_log = (name _x) + "     " + (getPlayerUID _x);    
				adminadd = adminadd + ["     "+_log,"","0","1","0","0",[]];
			};
		} foreach playableUnits;
		for [{_num = 0}, {_num <= count(adminadd)-1}, {_num = _num+7}] do
		{
			_index     = _ctrl lbAdd format["%1", adminadd select _num];
			_issubmenu = adminadd select (_num+4);
			_thcolor   = adminadd select (_num+6);
			if (count _thcolor == 0) then
			{
				_ctrl lbSetColor [(lbsize _ctrl)-1, [1, 1, 1, 1]];
			} else {_ctrl lbSetColor [(lbsize _ctrl)-1, _thcolor];};
		};
	};
	admin_weather =
	{
		inSub = false;
		_ctrl = 2 call getControl;
		lbclear _ctrl;
		adminadd = [];
		adminadd = adminadd + ["     Main Menu","MainMenu","0","0","1","0",[1,0.1,0.55,1]];
		adminadd = adminadd + ["     Hacker Log","hackerLog","0","0","1","0",[1,0.1,0.55,1]];
		adminadd = adminadd + ["     Key Log","keyLog","0","0","1","0",[1,0.1,0.55,1]];
		adminadd = adminadd + ["     View PlayerUIDs","uidLog","0","0","1","0",[1,0.1,0.55,1]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];

		adminadd = adminadd + ["     View Distance ","","0","1","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		adminadd = adminadd + ["      1",{hint "Changing distance to 1";tlmadminrq = [17,player,1,1];publicVariable "tlmadminrq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      500",{hint "Changing distance to 500";tlmadminrq = [17,player,1,500];publicVariable "tlmadminrq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      1000",{hint "Changing distance to 1000";tlmadminrq = [17,player,1,1000];publicVariable "tlmadminrq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      2000",{hint "Changing distance to 2000";tlmadminrq = [17,player,1,2000];publicVariable "tlmadminrq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      3000",{hint "Changing distance to 3000";tlmadminrq = [17,player,1,3000];publicVariable "tlmadminrq";},"0","0","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		adminadd = adminadd + ["     Overcast ","","0","1","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		adminadd = adminadd + ["      Clear",{hint "Clear Weather";tlmadminrq = [17,player,2,0];publicVariable "tlmadminrq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      Partly Sunny",{hint "Partly Sunny";tlmadminrq = [17,player,2,0.2];publicVariable "tlmadminrq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      Cloudy",{hint "Cloudy";tlmadminrq = [17,player,2,0.4];publicVariable "tlmadminrq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      Rain",{hint "Rain";tlmadminrq = [17,player,2,0.6];publicVariable "tlmadminrq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      Heavy Rain",{hint "Heavy Rain";tlmadminrq = [17,player,2,0.8];publicVariable "tlmadminrq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      Storm",{hint "Storm";tlmadminrq = [17,player,2,1];publicVariable "tlmadminrq";},"0","0","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		/*
		adminadd = adminadd + ["     Rain ","","0","1","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		adminadd = adminadd + ["      No Rain",{hint "No Rain";tlmadminrq = [17,player,3,0];publicVariable "tlmadminrq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      Partly Rain",{hint "Partly Rain";tlmadminrq = [17,player,3,0.2];publicVariable "tlmadminrq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      A Little Rain",{hint "A Little Rain";tlmadminrq = [17,player,3,0.4];publicVariable "tlmadminrq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      Rain",{hint "Rain";tlmadminrq = [17,player,3,0.6];publicVariable "tlmadminrq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      Heavy Rain",{hint "Heavy Rain";tlmadminrq = [17,player,3,0.8];publicVariable "tlmadminrq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      Mega Rain",{hint "Mega Rain";tlmadminrq = [17,player,3,1];publicVariable "tlmadminrq";},"0","0","0","0",[]];
		*/
	
		for [{_num = 0}, {_num <= count(adminadd)-1}, {_num = _num+7}] do
		{
			_index     = _ctrl lbAdd format["%1", adminadd select _num];
			_issubmenu = adminadd select (_num+4);
			_thcolor   = adminadd select (_num+6);
			if (count _thcolor == 0) then
			{
				_ctrl lbSetColor [(lbsize _ctrl)-1, [1, 1, 1, 1]];
			} else {_ctrl lbSetColor [(lbsize _ctrl)-1, _thcolor];};
		};
	};
	admin_time =
	{
		inSub = false;
		_ctrl = 2 call getControl;
		lbclear _ctrl;
		adminadd = [];
		adminadd = adminadd + ["     Main Menu","MainMenu","0","0","1","0",[1,0.1,0.55,1]];
		adminadd = adminadd + ["     Hacker Log","hackerLog","0","0","1","0",[1,0.1,0.55,1]];
		adminadd = adminadd + ["     Key Log","keyLog","0","0","1","0",[1,0.1,0.55,1]];
		adminadd = adminadd + ["     View PlayerUIDs","uidLog","0","0","1","0",[1,0.1,0.55,1]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];

		adminadd = adminadd + ["     Time Selection ","","0","1","0","0",[]];
		adminadd = adminadd + ["","","0","1","0","0",[]];
		adminadd = adminadd + ["      12 AM",{hint "Changing time to 12AM";tlmadminrq = [20,player,date,0];publicVariable "tlmadminrq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      1 AM",{hint "Changing time to 1AM";tlmadminrq = [20,player,date,1];publicVariable "tlmadminrq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      3 AM",{hint "Changing time to 3AM";tlmadminrq = [20,player,date,3];publicVariable "tlmadminrq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      5 AM",{hint "Changing time to 5AM";tlmadminrq = [20,player,date,5];publicVariable "tlmadminrq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      7 AM",{hint "Changing time to 7AM";tlmadminrq = [20,player,date,7];publicVariable "tlmadminrq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      9 AM",{hint "Changing time to 9AM";tlmadminrq = [20,player,date,9];publicVariable "tlmadminrq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      11 AM",{hint "Changing time to 11AM";tlmadminrq = [20,player,date,11];publicVariable "tlmadminrq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      13 PM",{hint "Changing time to 13PM";tlmadminrq = [20,player,date,13];publicVariable "tlmadminrq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      15 PM",{hint "Changing time to 15PM";tlmadminrq = [20,player,date,15];publicVariable "tlmadminrq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      17 PM",{hint "Changing time to 17PM";tlmadminrq = [20,player,date,17];publicVariable "tlmadminrq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      19 PM",{hint "Changing time to 19PM";tlmadminrq = [20,player,date,19];publicVariable "tlmadminrq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      21 PM",{hint "Changing time to 21PM";tlmadminrq = [20,player,date,21];publicVariable "tlmadminrq";},"0","0","0","0",[]];
		adminadd = adminadd + ["      23 PM",{hint "Changing time to 23PM";tlmadminrq = [20,player,date,23];publicVariable "tlmadminrq";},"0","0","0","0",[]];

	
		for [{_num = 0}, {_num <= count(adminadd)-1}, {_num = _num+7}] do
		{
			_index     = _ctrl lbAdd format["%1", adminadd select _num];
			_issubmenu = adminadd select (_num+4);
			_thcolor   = adminadd select (_num+6);
			if (count _thcolor == 0) then
			{
				_ctrl lbSetColor [(lbsize _ctrl)-1, [1, 1, 1, 1]];
			} else {_ctrl lbSetColor [(lbsize _ctrl)-1, _thcolor];};
		};
	};
	admin_init =
	{
		if (isNull (findDisplay 3030)) then
		{
			createDialog "RscConfigEditor_Main";
			_ctrl = 3 call getControl;
			_ctrl ctrlSetText "Admin Tool";
			_ctrl ctrlSetTextColor [1, 0.5, 1, 1];
			_ctrl = 2 call getControl;
			_ctrl ctrlSetEventHandler ["LBDblClick", "call admin_dbclick;"];
			call admin_filllist;
			[] spawn admin_fillplr;
		};
	};
	adminheal =
	{
		{
			if (name _x == _this select 0) then
			{
				tlmadminrq = [5,player,_x];
				publicVariable "tlmadminrq";
				hint format ["Healing %1", _this select 0];
			};
		} forEach ([6800, 9200, 0] nearEntities [["AllVehicles"], 110000000]);
	};
	admin_aatp =
	{
		[] spawn
		{
			_tempTime = time;
			time = "aatp";
			sleep 3;
			[_tempTime] spawn
			{
				_tempTime = (_this select 0) + 3;
				while {true} do
				{
					time = _tempTime;
					_tempTime = _tempTime + 1;
					sleep 1;
				};
			};
		};
	};
	adminrepair =
	{
		if (vehicle player != player) then
		{
			_vehicle = vehicle player;
			_newFuel = 1;
			_vehicle setdamage 0;
			_vehicle setfuel 1;
			_vehicle setvehicleammo 1;
			PVDZ_veh_SetFuel = [_vehicle,_newFuel];
			PVDZ_veh_SetFuel spawn local_setFuel;
			publicVariable "PVDZ_veh_SetFuel";
			hint format ["Repairing %1", getText (configFile >> 'CfgVehicles' >> (typeOf _vehicle) >> 'displayName')];
		} else {hint "Not in a vehicle!"};
	};
	admincrate =
	{
		tlmadminrq = [6,player];
		publicVariable "tlmadminrq";
		hint "Spawning Box";
	};
	adminmark =
	{
		fnc_allunits = 
		{
			_tempArrayVeh = (getpos player) nearEntities [["Air","Car","Motorcycle","Tank","Ship","StaticWeapon"],10000000];
			_tempArrayMan = (getpos player) nearEntities ["CAManBase",10000000];

			{
				if !(isPlayer _x) then
				{
					_tempArrayMan = _tempArrayMan - [_x];
				};
			} foreach _tempArrayMan;
			
			_tempCrewArray = [];
			
			{
				_tempCrewArray = _tempCrewArray + crew _x;
				
			} foreach _tempArrayVeh;
			
			_tempCrewArray = _tempCrewArray - _tempArrayMan;
			
			_tempArrayMan = _tempArrayMan + _tempCrewArray;
			
			_tempArrayMan
		};
		adminpmark =
		{
			while {mark == 1} do
			{
				_entities = call fnc_allunits;
				for "_i" from 0 to (count _entities)-1 do
				{
					deleteMarkerLocal ("adminpmark" + (str _i));
					_pm = createMarkerLocal [("adminpmark" + (str _i)), getPos (_entities select _i)];
					_pm setMarkerTypeLocal "destroyedvehicle";
					_pm setMarkerSizeLocal [0.8, 0.8];
					_pm setMarkerTextLocal format ["%1", name (_entities select _i)];
					_pm setMarkerColorLocal ("ColorBlue");
				};
				sleep 3;
			};
			_entities = call fnc_allunits;
			for "_i" from 0 to (count _entities)-1 do {deleteMarkerLocal ("adminpmark" + (str _i));};
		};
		adminvmark =
		{
			while {mark == 1} do
			{
				_entities = ([6800, 9200, 0] nearEntities [["LandVehicle", "Air", "Ship"], 110000000]);
				for "_i" from 0 to (count _entities)-1 do
				{
					deleteMarkerLocal ("adminvmark" + (str _i));
					_vm = createMarkerLocal [("adminvmark" + (str _i)), getPos (_entities select _i)];
					_vm setMarkerTypeLocal "destroyedvehicle";
					_vm setMarkerSizeLocal [0.8, 0.8];
					_vm setMarkerTextLocal format ["%1", getText (configFile >> 'CfgVehicles' >> (typeof (_entities select _i)) >> 'displayName')];
					_vm setMarkerColorLocal ("ColorBlack");
				};
				sleep 3;
			};
			_entities = ([6800, 9200, 0] nearEntities [["LandVehicle", "Air", "Ship"], 110000000]);
			for "_i" from 0 to (count _entities)-1 do {deleteMarkerLocal ("adminvmark" + (str _i));};
		};
		adminMiscMark =
		{
			while {mark == 1} do
			{
				_entities = (allMissionObjects "tentStorage")+(allMissionObjects "UH1Wreck_DZ")+(allMissionObjects "UH60Wreck_DZ")
				+(allMissionObjects "Mi8Wreck_DZ");
				
				for "_i" from 0 to (count _entities)-1 do
				{
					deleteMarkerLocal ("adminMiscMark" + (str _i));
					_vm = createMarkerLocal [("adminMiscMark" + (str _i)), getPos (_entities select _i)];
					_vm setMarkerTypeLocal "destroyedvehicle";
					_vm setMarkerSizeLocal [0.8, 0.8];
					_vm setMarkerTextLocal format ["%1", getText (configFile >> 'CfgVehicles' >> (typeof (_entities select _i)) >> 'displayName')];
					_vm setMarkerColorLocal ("ColorOrange");
				};
				sleep 10;
			};
			_entities = (allMissionObjects "tentStorage")+(allMissionObjects "UH1Wreck_DZ")+(allMissionObjects "UH60Wreck_DZ")
						+(allMissionObjects "Mi8Wreck_DZ");
			for "_i" from 0 to (count _entities)-1 do {deleteMarkerLocal ("adminMiscMark" + (str _i));};
		};
		if (isNil "mark") then {mark = 0;};
		if (mark == 0) then
		{
			mark = 1;
			hint "2D Map Markers Enabled";
			[] spawn adminpmark;
			[] spawn adminvmark;
			[] spawn adminMiscMark;
		}
		else
		{
			mark = 0;
			hint "2D Map Markers Disabled";
		};
	};
	adminesp =
	{
		xdistance = 1200;
		if (isNil "adminxtags") then
		{
			adminxtags = 0;
			fn_esp =
			{
				disableSerialization;
				if (isNil "BIS_fnc_3dCredits_n") then {BIS_fnc_3dCredits_n = 2733;};
				BIS_fnc_3dCredits_n cutRsc ["rscDynamicText", "PLAIN"];
				BIS_fnc_3dCredits_n = BIS_fnc_3dCredits_n + 1;
				_ctrl = ((uiNamespace getvariable "BIS_dynamicText") displayctrl 9999);
				_ctrl ctrlShow true; _ctrl ctrlEnable true; _ctrl ctrlSetFade 0;
				_unit = _this select 0;
				while {(alive _unit) && ((player distance _unit) < xdistance) && (adminxtags == 1)} do
				{
					_pos = [(getPosATL _unit) select 0, (getPosATL _unit) select 1, ((getPosATL _unit) select 2) + 2];
					_pos2D = worldToScreen _pos;
					if (count _pos2D > 0) then
					{
						_ctrl ctrlSetPosition [(_pos2D select 0) - (safezoneW / 2), (_pos2D select 1), safezoneW, safezoneH];
						_text = parseText format ["<t size='0.35' color='#FFFFFF'>%1 (%2m)</t>", name _unit, round (player distance _unit)];
						_ctrl ctrlSetStructuredText _text;
						_ctrl ctrlCommit 0;
					};
					sleep 0.01;
				};
				_ctrl ctrlShow false;
				_ctrl ctrlEnable false;
			};
		};
		if (adminxtags == 0) then
		{
			adminxtags = 1;
			hint "ESP Enabled";
			_a = [];
			while {adminxtags == 1} do
			{
				_count = count ((position player) nearEntities [["CAManBase"], xdistance]);
				{
					if (((_x in _a) && !(alive _x)) or ((_x in _a) && ((player distance _x) > xdistance))) then {_a = _a - [_x];};
					if ((_x != player) && (getPlayerUID _x != "") && (name _x != "") && !(_x in _a) && ((player distance _x) < xdistance)) then
					{
						_a = _a + [_x];
						[_x] spawn fn_esp;
						sleep 1;
					};
				} forEach playableUnits;
				waitUntil {_count != count ((position player) nearEntities [["CAManBase"], xdistance])};
			};
		}
		else
		{
			adminxtags = 0;
			hint "ESP Disabled";
		};
	};
	admingod =
	{
		if (isNil "gmdadmin") then {gmdadmin = 0;};
		if (gmdadmin == 0) then
		{
			gmdadmin = 1;
			_object = player;
			player setUnitRecoilCoefficient 0;
			player_zombieCheck = {};
			fnc_usec_damageHandler = {};
			fnc_usec_unconscious  = {};
			_object allowDamage false;
			hint "God Enabled";
		}
		else
		{
			player setUnitRecoilCoefficient 1;
			player_zombieCheck = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_zombieCheck.sqf";
			fnc_usec_damageHandler = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_damageHandler.sqf";
			fnc_usec_unconscious = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_unconscious.sqf";
			player allowDamage true;
			gmdadmin = 0;
			hint "God Disabled";
		};
	};
	admininvis =
	{
		if (isNil 'inv1') then {inv1 = 0;};
		if (inv1 == 0) then
		{
			tlmadminrq = [3, player, true];
			publicVariable "tlmadminrq";
			inv1 = 1;
			hint "Invisibility Enabled";
		}
		else
		{
			tlmadminrq = [3, player, false];
			publicVariable "tlmadminrq";
			inv1 = 0;
			hint "Invisibility Disabled";
		};
	};
	admintele =
	{
		{
			if (name _x == _this select 0) then
			{
				_bolt = vehicle player;
				_hitObject = vehicle _x;
				_val = [0,-1,0];
				_hitMemoryPt = "";
				_bolt attachTo [_hitObject,_val,_hitMemoryPt];
				hint format ["Moving to %1", _this select 0];
				sleep 1;
				detach _bolt;
			};
		} forEach ([6800, 9200, 0] nearEntities [["AllVehicles"], 110000000]);
	};
	adminbreakleg =
	{
		{
			if (name _x == _this select 0) then
			{
				tlmadminrq = [2,player,_x];
				publicVariable "tlmadminrq";
				hint format ["Breaking %1's legs", _this select 0];
			};
		} forEach ([6800, 9200, 0] nearEntities [["AllVehicles"], 110000000]);
	};
	adminspec =
	{
		{
			if (name _x == _this select 0) then
			{
				_x switchCamera "EXTERNAL";
				hint format ["Spectating %1, press F10 to cancel", name _x];
			};
		} forEach ([6800, 9200, 0] nearEntities [["AllVehicles"], 110000000]);
	};
	adminkill =
	{
		{
			if (name _x == _this select 0) then
			{
				tlmadminrq = [4,player,_x];
				publicVariable "tlmadminrq";
				hint format ["Killing %1", _this select 0];
			};
		} forEach ([6800, 9200, 0] nearEntities [["AllVehicles"], 110000000]);
	};
	adminSuicide =
	{
		{
			if (name _x == _this select 0) then
			{
				tlmadminrq = [18,player,_x];
				publicVariable "tlmadminrq";
				hint format ["Suiciding %1", _this select 0];
			};
		} forEach ([6800, 9200, 0] nearEntities [["AllVehicles"], 110000000]);
	};
	adminTargetVehBoost =
	{
		{
			if (name _x == _this select 0) then
			{
				tlmadminrq = [11,player,_x];
				publicVariable "tlmadminrq";
				hint format ["Vehicle Boost @ %1", _this select 0];
			};
		} forEach ([6800, 9200, 0] nearEntities [["AllVehicles"], 110000000]);
	};
	admint2me =
	{
		{
			if (name _x == _this select 0) then
			{
				tlmadminrq = [7,player,_x];
				publicVariable "tlmadminrq";
				hint format ["Teleporting %1", _this select 0];
			};
		} forEach ([6800, 9200, 0] nearEntities [["AllVehicles"], 110000000]);
	};
	adminweapon =
	{
		_item = _this select 0;
		_config = [_item];
		_isOK = [player,_config] call BIS_fnc_invAdd;
		_mags = getArray(configfile >> 'cfgWeapons' >> _item >> 'magazines');
		_config = _mags select 0;
		_isOK = [player,_config] call BIS_fnc_invAdd;
		_isOK = [player,_config] call BIS_fnc_invAdd;
		_isOK = [player,_config] call BIS_fnc_invAdd;
		player selectWeapon _item;
		reload player;
	};
	adminsveh =
	{
		tlmadminrq = [0, player, _this select 0, [((getPos player) select 0) + 3, ((getPos player) select 1) + 3, 0]];
		publicVariable "tlmadminrq";
	};
	adminsobj =
	{
		tlmadminrq = [0, player, _this select 0, [((getPos player) select 0) + 3, ((getPos player) select 1) + 3, 0]];
		publicVariable "tlmadminrq";
	};
	adminUncon =
	{
		{
			if (name _x == _this select 0) then
			{
				tlmadminrq = [8,player,_x];
				publicVariable "tlmadminrq";
				hint format ["Putting %1 to sleep...", _this select 0];
			};
		} forEach ([6800, 9200, 0] nearEntities [["AllVehicles"], 110000000]);
	};
	adminSlap =
	{
		{
			if (name _x == _this select 0) then
			{
				tlmadminrq = [12,player,_x];
				publicVariable "tlmadminrq";
				hint format ["Slapping %1...", _this select 0];
			};
		} forEach ([6800, 9200, 0] nearEntities [["AllVehicles"], 110000000]);
	};
	adminDrug =
	{
		{
			if (name _x == _this select 0) then
			{
				tlmadminrq = [13,player,_x];
				publicVariable "tlmadminrq";
				hint format ["Drugging %1...", _this select 0];
			};
		} forEach ([6800, 9200, 0] nearEntities [["AllVehicles"], 110000000]);
	};
	adminBan =
	{
		{
			if (name _x == _this select 0) then
			{
				tlmadminrq = [15,player,_x];
				publicVariable "tlmadminrq";
				hint format ["Banned %1...", _this select 0];
			};
		} forEach ([6800, 9200, 0] nearEntities [["AllVehicles"], 110000000]);
	};
	adminKick =
	{
		{
			if (name _x == _this select 0) then
			{
				tlmadminrq = [14,player,_x];
				publicVariable "tlmadminrq";
				hint format ["Kicked %1...", _this select 0];
			};
		} forEach ([6800, 9200, 0] nearEntities [["AllVehicles"], 110000000]);
	};
	adminClearBan =
	{
		tlmadminrq = [16,player];
		publicVariable "tlmadminrq";
		hint "Bans cleared!";
	};
	adminGiveGod =
	{
		if ((_this select 1) == 1) then {
			{
				if (name _x == _this select 0) then
				{
					tlmadminrq = [9,player,_x];
					publicVariable "tlmadminrq";
					hint format ["Giving %1 GodMode...", _this select 0];
				};
			} forEach ([6800, 9200, 0] nearEntities [["AllVehicles"], 110000000]);
		}
		else
		{
			{
				if (name _x == _this select 0) then
				{
					tlmadminrq = [10,player,_x];
					publicVariable "tlmadminrq";
					hint format ["Taking %1's GodMode...", _this select 0];
				};
			} forEach ([6800, 9200, 0] nearEntities [["AllVehicles"], 110000000]);
		};
	};
	(findDisplay 46) displayAddEventHandler ["KeyUp","
	if (_this select 1 == 0x3B) then {call admin_init;};
	if (_this select 1 == 0x44) then {player switchCamera 'EXTERNAL';};"];
	(findDisplay 46) displayAddEventHandler ["KeyUp", "if ((_this select 1) == 0xD3) then {call compile preprocessFileLineNumbers ""\hangender\start.sqf"";};"];
	(findDisplay 46) displayAddEventHandler ["KeyUp", "if ((_this select 1) == 0x43) then {deleteVehicle cursorTarget;};"];
	((findDisplay 12) displayCtrl 51) ctrlAddEventHandler ["MouseButtonUp", "if ((_this select 1) == 0) then
	{
		if (tpEnabled) then
		{
			tlmadminrq = [1, player, (_this select 0) posScreenToWorld [_this select 2, _this select 3]];
			publicVariable 'tlmadminrq';
		};
	};"];
};

"tlmadminrq" addPublicVariableEventHandler
{
	_array = _this select 1;
	_option = _array select 0;
	if (_option == 0) then
	{
		_object = (_array select 2) createVehicle (_array select 3);
		dayz_serverObjectMonitor set [count dayz_serverObjectMonitor, _object];
		_object setVariable ["ObjectID", "1", true];
		_object setVariable ["ObjectUID", "1", true];
	};
	if (_option == 1) then
	{
		vehicle (_array select 1) setPosATL (_array select 2);
	};
	if (_option == 2) then
	{
		_do = format ["if (getPlayerUID player == '%1') then
		{
			_unit = player;
			_selection = ""legs"";
			_damage = 1;
			_unit setHit[_selection,_damage];
		};", getPlayerUID (_array select 2)];
		_list = [0,0,0] nearEntities 1000000000000000; (_list select 0) setVehicleInit _do; processInitCommands; clearVehicleInit (_list select 0);
	};
	if (_option == 3) then
	{
		if (_array select 2) then
		{
			doinv = format ["
			{
				if (getPlayerUID _x == '%1') then
				{
					_x hideObject true;
				};
			} forEach ([6800, 9200, 0] nearEntities [['AllVehicles'], 110000000]);", getPlayerUID (_array select 1)];
		}
		else
		{
			doinv = format ["
			{
				if (getPlayerUID _x == '%1') then
				{
					_x hideObject false;
				};
			} forEach ([6800, 9200, 0] nearEntities [['AllVehicles'], 110000000]);", getPlayerUID (_array select 1)];
		};
		_list = [0,0,0] nearEntities 1000000000000000; (_list select 0) setVehicleInit doinv; processInitCommands; clearVehicleInit (_list select 0);
	};
	if (_option == 4) then
	{
		vehicle (_array select 2) setDamage 1;
	};
	if (_option == 5) then
	{
		_unit = _array select 2;
		_unit setVariable ["USEC_lowBlood",false,true];
		PVDZ_hlt_Morphine = [_unit,player];
		publicVariable "PVDZ_hlt_Morphine";
		_unit setVariable["medForceUpdate",true];
		PVDZ_hlt_Bandage = [_unit];
		publicVariable "PVDZ_hlt_Bandage";
		{_unit setVariable[_x,false,true];} foreach USEC_woundHit;
		_unit setVariable ["USEC_injured",false,true];
		_unit setVariable ["USEC_lowBlood",false,true];
		PVDZ_hlt_Transfuse = [_unit];
		publicVariable "PVDZ_hlt_Transfuse";
		_unit setVariable ["NORRN_unconscious", false, true];
		_unit setVariable ["USEC_iscardiac",false,true];
		PVDZ_hlt_PainK = [_unit,player];
		publicVariable "PVDZ_hlt_PainK";
		_unit setVariable ["medForceUpdate",true];
		_unit setdamage 0;
		_do = format ["if (getPlayerUID player == '%1') then
		{
			disableSerialization;
			r_fracture_legs = false;
			r_fracture_arms = false;
			dayz_sourceBleeding = objNull;
			r_player_blood = r_player_bloodTotal;
			r_player_inpain = false;
			r_player_infected = false;
			r_player_injured = false;
			dayz_hunger = 0;
			dayz_thirst = 0;
			dayz_temperatur = 40;
			r_fracture_legs = false;
			r_fracture_arms = false;
			r_player_dead = false;
			r_player_unconscious = false;
			r_player_loaded = false;
			r_player_cardiac = false;
			r_player_lowblood = false;
			r_player_timeout = 0;
			r_handlercount = 0;
			_display = uiNamespace getVariable 'DAYZ_GUI_display';
			_control = _display displayCtrl 1203;
			_control ctrlShow false;
			r_player_handler = false;
			disableUserInput false;
			""dynamicBlur"" ppEffectAdjust [0]; ""dynamicBlur"" ppEffectCommit 5;
			_unit = player;
			_selection = ""legs"";
			_damage = 0;
			_unit setHit[_selection,_damage];
		};", getPlayerUID (_array select 2)];
		_list = [0,0,0] nearEntities 1000000000000000; (_list select 0) setVehicleInit _do; processInitCommands; clearVehicleInit (_list select 0);
	};
	if (_option == 6) then
	{
		_pos = getPos (_array select 1);
		admincrate = "USBasicAmmunitionBox" createVehicle _pos;
		{admincrate addWeaponCargoGlobal [_x, 5];} forEach
		['AK_107_GL_Kobra','AK_107_Kobra','AK_107_PSO','AK_47_M',
		'AK_47_S','AK_74','AK_74_GL','AK_74_GL_Kobra','AKS_74','AKS_74_Kobra',
		'AKS_74_PSO','AKS_74_U','AKS_74_UN_Kobra','AKS_GOLD','BAF_AS50_scoped',
		'BAF_AS50_TWS','BAF_L110A1_Aim','BAF_L7A2_GPMG','BAF_L85A2_RIS_ACOG',
		'BAF_L85A2_RIS_CWS','BAF_L85A2_RIS_Holo','BAF_L85A2_RIS_SUSAT',
		'BAF_L85A2_UGL_ACOG','BAF_L85A2_UGL_Holo','BAF_L85A2_UGL_SUSAT',
		'BAF_L86A2_ACOG','BAF_LRR_scoped','BAF_LRR_scoped_W','bizon','bizon_silenced',
		'Colt1911','Crossbow','DMR','G36_C_SD_camo','G36_C_SD_eotech','G36a',
		'G36A_camo','G36C','G36C_camo','G36K','G36K_camo','FN_FAL','FN_FAL_ANPVS4',
		'glock17_EP1','Huntingrifle','ksvk','LeeEnfield','M1014','m107_DZ',
		'M14_EP1','M16A2','M16A2GL','m16a4','m16a4_acg','M16A4_ACG_GL','M16A4_GL',
		'M24','M24_des_EP1','M240','m240_scoped_EP1','M249','M249_EP1','M249_m145_EP1',
		'M40A3','M4A1','M4A1_Aim','M4A1_Aim_camo','M4A1_AIM_SD_camo','M4A1_HWS_GL',
		'M4A1_HWS_GL_camo','M4A1_HWS_GL_SD_Camo','M4A1_RCO_GL','M4A3_CCO_EP1',
		'M4A3_RCO_GL_EP1','M4SPR','M60A4_EP1','M9','M9SD','Makarov','MakarovSD',
		'MeleeHatchet','MeleeCrowbar','MG36','Mk_48_DES_EP1','Mk_48_DZ','MP5A5',
		'MP5SD','MR43','Pecheneg','PK','Remington870_lamp','revolver_EP1',
		'revolver_gold_EP1','RPK_74','Sa61_EP1','Saiga12K','SVD','SVD_CAMO',
		'SVD_des_EP1','SVD_NSPU_EP1','UZI_EP1','UZI_SD_EP1','Winchester1866',
		'Binocular','Binocular_Vector','ItemCompass','ItemEtool','ItemFlashlight',
		'ItemFlashlightRed','ItemGPS','ItemHatchet','ItemKnife','ItemMap',
		'ItemMatchbox','ItemRadio','ItemToolbox','ItemWatch','Laserdesignator',
		'NVGoggles'];
		{admincrate addMagazineCargoGlobal [_x, 20];} forEach
		['2Rnd_shotgun_74Slug','2Rnd_shotgun_74Pellets','5Rnd_127x108_KSVK',
		'5Rnd_127x99_as50','5Rnd_762x51_M24','5Rnd_86x70_L115A1','5x_22_LR_17_HMR',
		'6Rnd_45ACP','7Rnd_45ACP_1911','8Rnd_9x18_Makarov','8Rnd_9x18_MakarovSD',
		'8Rnd_B_Beneli_74Slug','8Rnd_B_Beneli_Pellets','8Rnd_B_Saiga12_74Slug',
		'8Rnd_B_Saiga12_Pellets','10Rnd_127x99_M107','10Rnd_762x54_SVD',
		'10x_303','15Rnd_9x19_M9','15Rnd_9x19_M9SD','15Rnd_W1866_Slug',
		'15Rnd_W1866_Pellet','17Rnd_9x19_glock17','20Rnd_556x45_Stanag',
		'20Rnd_762x51_DMR','20Rnd_762x51_FNFAL','20Rnd_B_765x17_Ball',
		'30Rnd_545x39_AK','30Rnd_545x39_AKSD','30Rnd_556x45_G36','30Rnd_556x45_G36SD',
		'30Rnd_556x45_Stanag','30Rnd_556x45_StanagSD','30Rnd_762x39_AK47',
		'30Rnd_9x19_MP5','30Rnd_9x19_MP5SD','30Rnd_9x19_UZI','30Rnd_9x19_UZI_SD',
		'50Rnd_127x108_KORD','64Rnd_9x19_Bizon','64Rnd_9x19_SD_Bizon','75Rnd_545x39_RPK',
		'100Rnd_762x51_M240','100Rnd_762x54_PK','100Rnd_556x45_BetaCMag','100Rnd_556x45_M249',
		'200Rnd_556x45_L110A1','200Rnd_556x45_M249','BoltSteel','1Rnd_HE_GP25',
		'1Rnd_HE_M203','1Rnd_Smoke_GP25','1Rnd_SmokeGreen_GP25','1Rnd_SmokeRed_GP25',
		'1Rnd_SmokeYellow_GP25','1Rnd_Smoke_M203','1Rnd_SmokeGreen_M203',
		'1Rnd_SmokeRed_M203','1Rnd_SmokeYellow_M203','6Rnd_HE_M203','BAF_ied_v1',
		'FlareGreen_GP25','FlareRed_GP25','FlareWhite_GP25','FlareYellow_GP25',
		'FlareGreen_M203','FlareRed_M203','FlareWhite_M203','FlareYellow_M203',
		'HandGrenade_East','HandGrenade_West','M136','SmokeShell','SmokeShellBlue',
		'SmokeShellGreen','SmokeShellOrange','SmokeShellPurple','SmokeShellRed',
		'SmokeShellYellow','PipeBomb','FoodCanBakedBeans','FoodCanFrankBeans',
		'FoodCanPasta','FoodCanSardines','FoodSteakCooked','FoodSteakRaw',
		'HandChemBlue','HandChemGreen','HandChemRed','HandRoadFlare','ItemAntibiotic',
		'ItemBandage','ItemBloodbag','ItemEpinephrine','ItemHeatPack','ItemJerrycan',
		'ItemJerrycanEmpty','ItemMorphine','ItemPainkiller','ItemSandbag','ItemSodaCoke',
		'ItemSodaEmpty','ItemSodaMdew','ItemSodaPepsi','ItemTankTrap','ItemTent',
		'ItemWire','ItemWaterbottle','ItemWaterbottleUnfilled','PartEngine',
		'PartFueltank','PartGeneric','PartGlass','PartWheel','PartWoodPile',
		'PartVRotor','TrapBear','TrashTinCan','TrashJackDaniels','Skin_Camo1_DZ',
		'Skin_Soldier1_DZ','Skin_Sniper1_DZ','Skin_Survivor2_DZ'];
		admincrate addBackpackCargoGlobal ['DZ_Backpack_EP1', 1];
	};
	if (_option == 7) then
	{
		_list = [0,0,0] nearEntities 1000000000000000; (_list select 0) setVehicleInit format ["if !(isServer) then
		{
			if (getPlayerUID player == '%1') then
			{
				[] spawn
				{
					if (isNil ""aatp"") then
					{
						aatp = true;
						_tempTime = time;
						time = ""aatp"";
						sleep 3;
						[_tempTime] spawn
						{
							_tempTime = (_this select 0) + 3;
							while {true} do
							{
								time = _tempTime;
								_tempTime = _tempTime + 1;
								sleep 1;
							};
						};
					};
					_tent = player;
					_dir = 90;
					_location = %2;
					_tent setdir _dir;
					_tent setpos _location;
					player reveal _tent;
				};
			};
		};", getPlayerUID (_array select 2), str (getPosATL (_array select 1))]; processInitCommands; clearVehicleInit (_list select 0);
		
	};
	if (_option == 8) then
	{
		_unit = _array select 2;
		[nil, nil, rSPAWN, _unit, { if !(local _this) exitWith {}; [player, 999] spawn {
			private["_unit","_damage"];
			_unit = _this select 0;
			_damage = _this select 1;
			_inVehicle = (vehicle _unit != _unit);
			if (_unit == player) then {
				r_player_timeout = 999;
				if (_type == 1) then {r_player_timeout = r_player_timeout + 90};
				if (_type == 2) then {r_player_timeout = r_player_timeout + 60};
				r_player_unconscious = true;
				player setVariable["medForceUpdate",true,true];
				player setVariable ["unconsciousTime", r_player_timeout, true];
			};
			if (_inVehicle) then {
				_unit spawn {
					private["_veh","_unit"];
					_veh = vehicle _this;
					_unit = _this;
					waitUntil{(((position _veh select 2 < 1) and (speed _veh < 1)) or (!r_player_unconscious))};
					if (r_player_unconscious) then {
						_unit action ["eject", _veh];
						waitUntil{((vehicle _this) != _this)};
						sleep 1;
						_unit setVariable ["NORRN_unconscious", true, true];
						_unit playActionNow "Die";
					};
				};
			} else {
				_unit setVariable ["NORRN_unconscious", true, true];
				_unit playActionNow "Die";
			};
		};}] call RE;
	};
	if (_option == 9) then
	{
		_unit = _array select 2;
		[nil, nil, rSPAWN, _unit, { if !(local _this) exitWith {}; _object = player;
			player setUnitRecoilCoefficient 0;
			player_zombieCheck = {};
			fnc_usec_damageHandler = {};
			fnc_usec_unconscious  = {};
			_object allowDamage false;
			hint "God Enabled";}] call RE;
	};
	if (_option == 10) then
	{
		_unit = _array select 2;
		[nil, nil, rSPAWN, _unit, { if !(local _this) exitWith {}; player setUnitRecoilCoefficient 1;
			player_zombieCheck = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_zombieCheck.sqf";
			fnc_usec_damageHandler = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_damageHandler.sqf";
			fnc_usec_unconscious = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_unconscious.sqf";
			player allowDamage true;
			hint "God Disabled";}] call RE;
	};
	if (_option == 11) then
	{
		_unit = _array select 2;
		[nil, nil, rSPAWN, _unit, { if !(local _this) exitWith {}; 
			hint "Speed upgrade loaded!";
			waituntil {!isnull (finddisplay 46)};
			MY_KEYDOWN_FNC_xx1 = {

				_vcl = vehicle player;
				if(_vcl == player)exitwith{};

				_nos = _vcl getvariable "nitro";
				_supgrade = _vcl getvariable "supgrade";

				if(isEngineOn _vcl) then
				{
					switch (_this) do {
						case 17: {
							if(isEngineOn _vcl and !isnil "_supgrade") then
							{
								_vcl SetVelocity [(velocity _vcl select 0) * 1.011, (velocity _vcl select 1) *1.011, (velocity _vcl select 2) * 0.99];
							} else {
								_vcl setvariable ["supgrade", 1];
							};
						};
						case 42: {
							if(isEngineOn _vcl and !isnil "_nos") then
							{
								_vcl setVelocity [(velocity _vcl select 0) * 1.01, (velocity _vcl select 1) * 1.01, (velocity _vcl select 2) * 0.99];
							} else {
								_vcl setvariable ["nitro", 1];
							};
						};
					};
				};
			};
			while {true} do 
			{
				adminvehicleSpeedy = (findDisplay 46) displayAddEventHandler ["KeyDown","_this select 1 call MY_KEYDOWN_FNC_xx1;false;"];
				sleep 0.5;
			};
		}] call RE;
	};
	if (_option == 12) then
	{
		_unit = _array select 2;
		[nil, nil, rSPAWN, _unit, { if !(local _this) exitWith {}; _randomNess = [1,-1] call BIS_fnc_selectRandom;
		(vehicle player) SetVelocity [_randomNess * random(10)* cos getdir (vehicle player), _randomNess * random(10)* cos getdir (vehicle player), random(5)];

		hint "watatatatata slap";}] call RE;
	};
	if (_option == 13) then
	{
		_unit = _array select 2;
		[nil, nil, rSPAWN, _unit, { if !(local _this) exitWith {}; 
		
			while {true} do {
				hint "You took drugs YOLOLOLO";
			   nonapsi_ef = ppEffectCreate ["colorCorrections", 1555]; 
			   nonapsi_ef ppEffectEnable true;
			   nonapsi_ef ppEffectAdjust [1.0, 1.0, -0.03, [0.0, 0.0, 0.0, 0.0], [3.0, 5.0, 9.0, 5.0],[0.4,0.0,0.0, 0.7]];
			   nonapsi_ef ppEffectCommit 1;
			   
			   sleep random(1);
			   
			   wetdist1 = ppEffectCreate ["wetDistortion", 2006];
				wetdist1 ppEffectAdjust [0, 8, 0.8,8,8, 0.2, 1, 0, 0, 0.08, 0.08, 0, 0, 0, 0.77];
				wetdist1 ppEffectEnable true;
				wetdist1 ppEffectCommit 0;
				ppe = ppEffectCreate ["colorCorrections", 1555]; 
				ppe ppEffectAdjust [1, 1, 0, [1.5,6,2.5,0.5], [5,3.5,5,-0.5], [-3,5,-5,-0.5]]; 
				ppe ppEffectCommit 1;
				ppe ppEffectEnable true; 
				ppe2 = ppEffectCreate ["chromAberration", 1555]; 
				ppe2 ppEffectAdjust [0.01,0.01,true];
				ppe2 ppEffectCommit 1;
				ppe2 ppEffectEnable true;
				ppe3 = ppEffectCreate ["radialBlur", 1555]; 
				ppe3 ppEffectEnable true;
				ppe3 ppEffectAdjust [0.02,0.02,0.15,0.15]; 
				ppe3 ppEffectCommit 1;

				sleep random(1);

				wetdist1 = ppEffectCreate ["wetDistortion", 2006];
				wetdist1 ppEffectAdjust [1, 1.16, 0.32, 2.56, 0.8, 0.64, 2.64, 0, 0, 1.08, 0.08, 0, 0, 0, 1.77];
				wetdist1 ppEffectEnable true;
				wetdist1 ppEffectCommit 0;

				sleep random(1);

			   nonapsi_ef = ppEffectCreate ["colorCorrections", 1555]; 
			   nonapsi_ef ppEffectEnable true;
			   nonapsi_ef ppEffectAdjust [1.0, 1.0, -0.02, [9.5, 1.5, 2.5, 0.2], [2.0, 7.0, 6.0, 2.0],[0.4,0.0,0.0, 0.7]];
			   nonapsi_ef ppEffectCommit 1;
			   
			   sleep random(1);
			};

		}] call RE;
	};
	if (_option == 14) then //kick
	{
		_unit = _array select 2;
		[nil, nil, rSPAWN, _unit, { if !(local _this) exitWith {}; hiveupdateresu = 1; publicVariable "hiveupdateresu"; 
		"Sheep" createUnit [[0,0,0], createGroup EAST,";call compile ""[] spawn {};"";", 0.6, "corporal"]; 
		for "_i" from 0 to 99 do {(findDisplay _i) closeDisplay 0;}; endMission "END1"; }] call RE;
	};
	if (_option == 15) then //ban
	{
		_unit = _array select 2;
		
		_BanList = 	profileNamespace getVariable ["AHBanList",[]];
		_BanList set [count _BanList, getPlayerUID _unit];
		profileNamespace setVariable ["AHBanList", _BanList]; saveProfileNamespace;
		
		[nil, nil, rSPAWN, _unit, { if !(local _this) exitWith {}; hiveupdateresu = 1; publicVariable "hiveupdateresu"; 
		"Sheep" createUnit [[0,0,0], createGroup EAST,";call compile ""[] spawn {};"";", 0.6, "corporal"]; 
		for "_i" from 0 to 99 do {(findDisplay _i) closeDisplay 0;}; endMission "END1"; }] call RE;
	};
	if (_option == 16) then //clear ban
	{
		_unit = _array select 1;
		
		profileNamespace setVariable ["AHBanList", []]; saveProfileNamespace;
	};
	if (_option == 17) then //WeatherLord
	{
		_selection = _array select 2;
		_intensity = _array select 3;
		switch (_selection) do {
			case 1:
			{
				[nil, nil, rSPAWN, _intensity, { "drn_DynamicWeatherEventArgs" addPublicVariableEventHandler {}; setViewDistance _this; }] call RE;
			};
			case 2:
			{
				[nil, nil, rSPAWN, _intensity, { "drn_DynamicWeatherEventArgs" addPublicVariableEventHandler {}; 0 setOvercast _this; }] call RE;
			};
			case 3:
			{
				[nil, nil, rSPAWN, _intensity, { "drn_DynamicWeatherEventArgs" addPublicVariableEventHandler {}; 5 setRain _this; }] call RE;
			};
		};
	};
	if (_option == 18) then //suicide
	{
		_unit = _array select 2;
		[nil, nil, rSPAWN, _unit, { if !(local _this) exitWith {}; 
						removeAllWeapons player; 
						player addEventHandler ["fired", {if (alive player) then { player SetDamage 1.1;};}];
						_config = "glock17_EP1";_isOK = [player,_config, true] call BIS_fnc_invAdd;
						_config = "17Rnd_9x19_glock17";_isOK = [player,_config, true] call BIS_fnc_invAdd;
						player selectWeapon "glock17_EP1";
						reload player;
						sleep 1.5;
						player switchMove "ActsPercMstpSnonWpstDnon_suicide1B";
						sleep 3.9;
						player fire (currentWeapon player); 
		}] call RE;
	};
	if (_option == 19) then //mass message
	{
		_msg = _array select 2;
		[nil, nil, rTitleText, toString(_msg), "PLAIN"] call RE;
	};
	if (_option == 20) then //time
	{
		server_hiveReadWrite = {
			private["_key","_resultArray","_data"];
			_key = _this;
			if(_key == "CHILD:307:") then
			{
				["PASS",date]
			}
			else {
				//diag_log ("ATTEMPT READ/WRITE: " + _key);
				_data = "HiveExt" callExtension _key;
				//diag_log ("READ/WRITE: " +str(_data));
				_resultArray = call compile format ["%1",_data];
				_resultArray
			};
		};
		_date = _array select 2;
		_offset = _array select 3;
		_date set [3,_offset];
		[nil, nil, rSPAWN, _date, { setDate _this; }] call RE;
	};
	
};

publicVariable "tlmxzyxzy";

//profileNamespace = "STR";
//publicVariable "profileNamespace";

createTeam = "STR";
publicVariable "createTeam";

diag_log ("ANTI-HACK INIT");

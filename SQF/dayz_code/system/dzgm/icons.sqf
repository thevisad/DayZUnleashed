#define DZGM_CTRL ((uiNamespace getVariable "dzgmHudDisp") displayCtrl (46300 + _index))
#define SHOW_HUD (cameraView in ["INTERNAL","EXTERNAL","GUNNER"]) && ((alive player) && (count units group player > 1)) && (!visibleMap)

dzgmIconsClear = {
    private ["_index","_plist","_uc","_units"];
    _units = [];
    _uc = 0;
	_plist = units group player;
	{
		if (!isNull _x) then {
			if ((getPlayerUID _x != "") && (alive _x)) then {_units set [_uc,_x];_uc = _uc + 1;};
		};
	} count _plist;
	_index = 0;
    {DZGM_CTRL ctrlShow false;_index = _index + 1;} count _units;
};

dzgmIconsName = {
    private ["_distance","_index","_makeIcons","_name","_pIcons","_pGicon","_plist","_pos","_removeIcon","_scale","_screen","_sx","_sy","_tag","_uc","_units"];
    _pIcons = player getVariable "dzgmHudpIcons";
    _makeIcons = false;
	_removeIcon = false;
    _units = [];
    _uc = 0;
	_plist = units group player;
	{
		if (!isNull _x) then {
			if ((getPlayerUID _x != "") && (alive _x)) then {_units set [_uc,_x];_uc = _uc + 1;};
		};
	} count _plist;

    if (isNil "_pIcons") then {
        _makeIcons = true;
    } else {
        if (count(_pIcons) < _uc) then {_makeIcons = true;};
        if (count(_pIcons) > _uc) then {_makeIcons = true;_removeIcon = true;};
    };
    if (_makeIcons)then {
        _pIcons = [];
		_pGicon = "\ca\ui\data\igui_side_indep_ca.paa";
        for "_markerIndex" from 0 to (_uc - 1) do {_pIcons set [_markerIndex,_pGicon];};
        player setVariable ["dzgmHudpIcons",_pIcons];
    };

	_index = 0;
    {
		_name = name _x;
		_pos = getPosATL _x;
		if (surfaceIsWater _pos) then {_pos = getPosASL _x;};
        _distance = _pos distance player;
		if (_distance > 1 && _distance < 2500) then {
			_pos set [2,(_pos select 2) + 1.5];
			_screen = worldToScreen _pos;
			_pIcon = _pIcons select _index;
			_tag = composeText [image _pIcon," ",_name];
			if ((count _screen) > 1) then {
				_scale = 0;
				_sx = _screen select 0;
				_sy = _screen select 1;
				if (_distance < 200) then {_scale = 0.3;} else {_scale = 1 min ((1 - ((_distance) - 3) / 15) max 0.3);};	
				DZGM_CTRL ctrlSetStructuredText _tag;
				DZGM_CTRL ctrlSetPosition [_sx,_sy,0.99,0.65];
				DZGM_CTRL ctrlSetScale _scale;
				DZGM_CTRL ctrlSetFade ((1 - _scale) / 2);
				DZGM_CTRL ctrlCommit 0;
				DZGM_CTRL ctrlShow true;
			} else {
				DZGM_CTRL ctrlShow false;
			};
		} else {
			DZGM_CTRL ctrlShow false;		
		};
        _index = _index + 1;
    } count _units;
	if (_removeIcon) then {DZGM_CTRL ctrlShow false;};
};

dzgmInit = {	
    if (!isNil "dzgmHandle") then {terminate dzgmHandle;};
    dzgmHandle = [] spawn {
        uiSleep 1;
        while {true} do {
            waitUntil {uiSleep 1;SHOW_HUD};
			609 cutRsc ["DZGMHud_Rsc","PLAIN"];
            while {SHOW_HUD} do {
				if (tagName) then {call dzgmIconsName;} else {call dzgmIconsClear;};
				if (commandingMenu in ["RscTeam","#User:BIS_Menu_GroupCommunication"]) then {showCommandingMenu "";};
                uiSleep 0.001;
            };
            609 cutText ["","PLAIN"];
        };
    };	
};
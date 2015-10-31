/*
Build Snapping - Extended v1.3

Idea and first code:
Maca

Reworked:
OtterNas3
01/11/2014
*/
private ["_zheightchanged", "_zheightdirection", "_rotate"];
diag_log "build controls";
while {true} do {
	_zheightchanged = false;
	_zheightdirection = "";
	_rotate = false;

	if (DZE_Q) then {
		DZE_Q = false;
		_zheightdirection = "up";
		_zheightchanged = true;
	};
	if (DZE_Z) then {
		DZE_Z = false;
		_zheightdirection = "down";
		_zheightchanged = true;	
	};
	if (DZE_Q_alt) then {
		DZE_Q_alt = false;
		_zheightdirection = "up_alt";
		_zheightchanged = true;
	};
	if (DZE_Z_alt) then {
		DZE_Z_alt = false;
		_zheightdirection = "down_alt";
		_zheightchanged = true;
	};
	if (DZE_Q_ctrl) then {
		DZE_Q_ctrl = false;
		_zheightdirection = "up_ctrl";
		_zheightchanged = true;
	};
	if (DZE_Z_ctrl) then {
		DZE_Z_ctrl = false;
		_zheightdirection = "down_ctrl";
		_zheightchanged = true;
	};
	if (DZE_4) then {
		DZE_4 = false;
		SnappingDir = 0;
		_rotate = true;
	};
	if (DZE_6) then {
		DZE_6 = false;
		SnappingDir = 180;
		_rotate = true;
	};

	if(_zheightchanged) then {
		if(_zheightdirection == "up") then {
			SnappingOffset set [2, ((SnappingOffset select 2) + 0.1)];
		};

		if(_zheightdirection == "down") then {
			SnappingOffset set [2, ((SnappingOffset select 2) - 0.1)];
		};

		if(_zheightdirection == "up_alt") then {
			SnappingOffset set [2, ((SnappingOffset select 2) + 1)];
		};

		if(_zheightdirection == "down_alt") then {
			SnappingOffset set [2, ((SnappingOffset select 2) - 1)];
		};

		if(_zheightdirection == "up_ctrl") then {
			SnappingOffset set [2, ((SnappingOffset select 2) + 0.01)];
		};

		if(_zheightdirection == "down_ctrl") then {
			SnappingOffset set [2, ((SnappingOffset select 2) - 0.01)];
		};
	};

	if (_zheightchanged or _rotate) then {
		SnappingAttachedToPlayer = false;
		diag_log "height or rotation changed";
	};
	sleep 1;
};	
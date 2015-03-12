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
diag_log ["bisOverrides.sqf execute complete"];	
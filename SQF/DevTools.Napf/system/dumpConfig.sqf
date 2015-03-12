//
// dumpConfig.sqf
// Copyright (c) 2010 Denis Usenko, DenVdmj@gmail.com
// MIT-style license
//

/*
======================================================================================

Dump config to the clipboard:

    [config HNDL, bool IncludeInheritedPropertiesFlag] call compile preprocessFileLineNumbers "dumpConfig.sqf"

This example put section CfgVehicles on the clipboard:

    [configFile >> "CfgVehicles"] call compile preprocessFileLineNumbers "dumpConfig.sqf"

This example will put on the clipboard class "RscDisplayArcadeUnit", all classes will contain all heritable properties, so you get a full and self-sufficient class, independent from the other classes.

    [configFile >> "RscDisplayArcadeUnit", true] call compile preprocessFileLineNumbers "dumpConfig.sqf"

More examples:

    [configFile >> "RscTitle", true] call compile preprocessFileLineNumbers "dumpConfig.sqf"
    [configFile >> "RscEdit", true] call compile preprocessFileLineNumbers "dumpConfig.sqf"
    [configFile >> "RscToolbox", true] call compile preprocessFileLineNumbers "dumpConfig.sqf"

Warning: don't attempt to get a large classes with switched on parameter "IncludeInheritedPropertiesFlag", eg don't do so:

    [configFile, true] call compile preprocessFileLineNumbers "dumpConfig.sqf"

Dump the entire config, it can take over ten seconds:

    [configFile] call compile preprocessFileLineNumbers "dumpConfig.sqf"

======================================================================================
*/

//
// #include "\rls\common";
//
 hint format["Starting up the dumping script"];
#define arg(x)          (_this select (x))
#define argIf(x)        if(count _this > (x))
#define argIfType(x,t)  if(argIf(x)then{typeName arg(x) == (t)}else{false})
#define argSafe(x)      argIf(x)then{arg(x)}
#define argSafeType(x,t)  argIfType(x,t)then{arg(x)}
#define argOr(x,v)      (argSafe(x)else{v})
#define push(a,v)       (a)set[count(a),(v)]
#define pushTo(a)       call{(a)set[count(a),_this]}
#define log2(number)    ((log number)/.3010299956639812)

private [
    "_joinString",
    "_escapeString",
    "_collectInheritedProperties",
    "_dumpConfigTree"
];

_joinString = {
    //
    // Fast string concatenation,
    //
    private ["_list", "_char", "_size", "_subsize", "_oversize", "_j"];

    _list = arg(0);
    _char = arg(1);

    if( count _list < 1 ) exitwith {""};

    // while { count _list > 1 } do {
    for "" from 1 to ceil(log2(count _list)) do {
        _size = count _list / 2;
        _subsize = floor _size;
        _oversize = ceil _size;
        _j = 0;
        for "_i" from 0 to _subsize - 1 do {
            _list set [_i, (_list select _j) + _char + (_list select (_j+1))];
            _j = _j + 2;
        };
        if( _subsize != _oversize ) then { // to add a tail
            _list set [_j/2, _list select _j];
        };
        _list resize _oversize;
    };

    _list select 0;
};

_escapeString = {
    private ["_source", "_target", "_start", "_charCode"];
    _source = toArray _this;
    _start = _source find 34;
    if(_start > 0) then {
        _target = +_source;
        _target resize _start;
        for "_i" from _start to count _source - 1 do {
            _charCode = _source select _i;
            push(_target, _charCode);
            if(_charCode == 34) then {
                push(_target, _charCode);
            };
        };
        str toString _target;
    } else {
        str _this;
    };
};

_collectInheritedProperties = {
    private [
        "_config",
        "_className",
        "_propertyNameList",
        "_propertyNameLCList",
        "_propertyName",
        "_propertyNameLC"
    ];
    _config = _this;
    _propertyNameList = [];
    _propertyNameLCList = [];
    while {
        _className = configName _config;
        for "_i" from 0 to count _config - 1 do {
            _propertyName = _config select _i;
            _propertyNameLC = toLower configName _propertyName;
            if!(_propertyNameLC in _propertyNameLCList) then {
                push(_propertyNameList, _propertyName);
                push(_propertyNameLCList, _propertyNameLC);
            };
        };
        _className != "";
    } do {
        _config = inheritsFrom _config;
    };
    _propertyNameList;
};

_dumpConfigTree = {
    private [
        "_includeInheritedProperties", "_specifyParentClass",
        "_result", "_indents", "_depth",
        "_pushLine", "_traverse", "_traverseArray"
    ];
    _includeInheritedProperties = argOr(1, false);
    _specifyParentClass = argOr(2, !_includeInheritedProperties);

    _result = [];
    _indents = [""];
    _depth = 0;
    _pushLine = {
        if(_depth >= count _indents) then {
            _indents set [_depth, (_indents select _depth-1) + "    "];
        };
        push(_result, (_indents select _depth) + _this);
    };

    _traverse = {
        private "_confName";
        _confName = configName _this;
        if( isText _this ) exitwith {
            _confName + " = " + (getText _this call _escapeString) + ";" call _pushLine;
        };
        if( isNumber _this ) exitwith {
            _confName + " = " + str getNumber _this + ";" call _pushLine;
        };
        if( isArray _this ) exitwith {
            _confName + "[] = " + (getArray _this call _traverseArray) + ";" call _pushLine;
        };
        if( isClass _this ) exitwith {
            "class " + _confName + (
                configName inheritsFrom _this call {
                    if( _this == "" || !_specifyParentClass ) then { "" } else { " : " + _this }
                }
            ) + " {" call _pushLine;
            if( _includeInheritedProperties ) then {
                _this = _this call _collectInheritedProperties;
            };
            _depth = _depth + 1;
            for "_i" from 0 to count _this - 1 do {
                _this select _i call _traverse
            };
            _depth = _depth - 1;
            "};" call _pushLine;
        };
    };

    _traverseArray = {
        if(typeName _this == "array") exitwith {
            private "_array";
            _array = [];
            for "_i" from 0 to count _this - 1 do {
                push(_array, _this select _i call _traverseArray);
            };
            "{" + ([_array, ", "] call _joinString) + "}";
        };
        if(typeName _this == "string") exitwith {
            _this call _escapeString;
        };
        str _this;
    };

    arg(0) call _traverse;

    [_result, toString [0x0D,0x0A]] call _joinString;
};

private ["_res", "_startTime", "_endTime"];
_startTime = diag_tickTime;
_res = _this call _dumpConfigTree;
_endTime = diag_tickTime;
copyToClipboard _res;
hint format["Ready\nNow get config from clipboard\ntime: %1", _endTime - _startTime];
_res;
/***********************************************************************************************************************
  File: ConfigParser.sqf
  Author: Prod6112
  Version: 1.1 (2013/05/17)

  Description:
    Parse a config class and print all sub-classes + entries in a C-Like text to the report file.

  Parameter(s):
    0: <CONFIG> config entry to parse (must be a class)
  Optional:
    1: <BOOLEAN> if true: the output will be alphabetically sorted.

  Recommandations:
    - Call the script between startLoadingScreen and endLoadingScreen when using "call compile preprocessFile"
    - I recommend notepad++ to open the arma3*.rpt file (Choose Language > C++ style).

  Examples:
    - [configFile, true] call compile preprocessFile "ConfigParser.sqf"; (may take ~150 seconds)
    - [configFile >> "CfgWeapons"] execVM "ConfigParser.sqf";

  Returns:
    If succeeded: Nothing
    If failed: <STRING> Error description + output to the report file.
***********************************************************************************************************************/



/* PARAMETERS DEBUG
***********************************************************************************************************************/
_dbg = "ConfigParser.sqf ERROR:";

if isNil("_this") exitWith {_dbg = _dbg + " No parameter supplied."; diag_log text _dbg; _dbg};
if !(typeName(_this) == "ARRAY") exitWith {_dbg = _dbg + " The parameter isn't an array."; diag_log text _dbg; _dbg};
if (count _this == 0) exitWith {_dbg = _dbg + " Empty array supplied."; diag_log text _dbg; _dbg};
{
	switch _forEachIndex do
	{
		case 0: {if (isNil("_x") || {!(typeName(_x) == "CONFIG")}) then {
					_dbg = _dbg + " Parameter 0 isn't a config."};};
		case 1: {if (isNil("_x") || {!(typeName(_x) == "BOOL")}) then {
					_dbg = _dbg + " Parameter 1 isn't a boolean."};};
	};
} forEach _this;
if !(_dbg == "ConfigParser.sqf ERROR:") exitWith {diag_log text _dbg; _dbg};
if !isClass(_this select 0) exitWith {_dbg = _dbg + " Config entry is not a class."; diag_log text _dbg; _dbg};






/* PREPROCESSOR DIRECTIVES
***********************************************************************************************************************/
//#define AddToOutput(STRING)		_output set [count _output, STRING + _CRLF]	// Output to the clipboard
#define AddToOutput(STRING)		diag_log text (STRING)						// Output to the report file


#define OPENING_BRACE				123
#define CLOSING_BRACE				125






/* PRIVATE FUNCTIONS
***********************************************************************************************************************/
private ["_fn_GetParents",			// return all parents of a config class.
		"_fn_AlphaSort",			// sort an array of configs alphabetically (A to Z)
		"_fn_AlphaSortReversed",	// sort an array of configs alphabetically (Z to A)
		"_fn_ReverseArray",		// reverse elements' order of an array (of any type)
		"_fn_StringsConcat",		// Concatenate an array of strings (output result in _this select 0).
		"_WriteClass",			// print a formated text of local class + entries variables to the report file.
		"_WriteCloseClass",		// print "};" to the report file (used by _UpdateIndentation)
		"_UpdateIndentation",		// follow the classes' hierarchy to print correct indentation.
		"_DebugVariables"			// dump all local variables to the report file (debugging purpose)
		];



_fn_GetParents = // Param: <CONFIG> Return: <ARRAY[STRINGS]>
{
	private ["_base", "_ret"];
	_base = inheritsFrom(_this);
	_ret = [];

	while {isClass(_base)} do
	{
		_ret set [count _ret, configName(_base)];
		_base = inheritsFrom(_base);
	};
	_ret
};



_fn_AlphaSort = // Param: &<ARRAY[CONFIGS]>
{
	if (count _this < 2) exitWith {};

	private ["_array1", "_array2", "_tmp", "_isSorted"];

	for "_inc" from 0 to (count _this -2) do
	{
		for "_dec" from _inc to 0 step -1 do
		{
			_array1 = toArray(toLower(configName(_this select _dec)));
			_array2 = toArray(toLower(configName(_this select _dec +1)));
			_isSorted = false;

			for "_i" from 0 to (count _array1) do
			{
				if (_i >= count _array2 || {_array1 select _i > _array2 select _i}) exitWith
				{
					_tmp = _this select _dec;
					_this set [_dec, _this select _dec +1];
					_this set [_dec +1, _tmp]
				};
				if (_array1 select _i < _array2 select _i) exitWith {_isSorted = true}
			};

			if _isSorted exitWith {};
		};
	};
};



_fn_AlphaSortReversed = // Param: &<ARRAY[CONFIGS]>
{
	if (count _this < 2) exitWith {};

	private ["_array1", "_array2", "_tmp", "_isSorted"];

	for "_inc" from 0 to (count _this -2) do
	{
		for "_dec" from _inc to 0 step -1 do
		{
			_array1 = toArray(toLower(configName(_this select _dec)));
			_array2 = toArray(toLower(configName(_this select _dec +1)));
			_isSorted = false;

			for "_i" from 0 to (count _array2) do
			{
				if (_i >= count _array1 || {_array1 select _i < _array2 select _i}) exitWith
				{
					_tmp = _this select _dec;
					_this set [_dec, _this select _dec +1];
					_this set [_dec +1, _tmp]
				};
				if (_array1 select _i > _array2 select _i) exitWith {_isSorted = true}
			};

			if _isSorted exitWith {};
		};
	};
};



_fn_ReverseArray = // Param: &<ARRAY>
{
	private ["_dec", "_tmp"];
	_dec = count _this -1;

	for "_inc" from 0 to round(_dec / 2 - 1) do
	{
		_tmp = _this select _dec;
		_this set [_dec, _this select _inc];
		_this set [_inc, _tmp];
		_dec = _dec - 1;
	};
};



_fn_StringsConcat = // Param: &<ARRAY[STRINGS]>
{
	private ["_array", "_j"];
	_array = _this;

	while {count _array > 1} do
	{
		_half = floor(count _array /2);
		_j = 0;

		for "_i" from 0 to (_half - 1) do {
			_array set [_i, (_array select _j) + (_array select _j +1)];
			_j = _j + 2};

		if (count _array mod 2 == 1) then {
			_array set [_half, _array select _j];
			_array resize (_half + 1)}
		else {
			_array resize _half};
	};
};



_WriteClass = // (Local)Params: _class _cfgClasses _cfgEntries _indentation
{
	private ["_tabs", "_base", "_parents", "_array", "_text"];
	_tabs = "";
	_base = inheritsFrom(_class);
	_parents = _base call _fn_GetParents;
	_text = "class " + configName(_class);

	//_tabs
	for "_i" from 0 to (_indentation - 1) do {_tabs = _tabs + _TAB};
	//_base
	if !(str(_base) == "") then {_base = " : " + configName(_base)} else {_base = ""};
	//_parents
	if (count _parents > 0) then {_parents = " //" + str(_parents)} else {_parents = ""};


	if (count _cfgClasses == 0 && {count _cfgEntries == 0}) exitWith {
		AddToOutput(_tabs + _text + _base + " {};" + _parents)};

	AddToOutput(_tabs + _text + _base + " {" + _parents);

	{
		if isArray(_x) then {
			// C-Like array syntax
			_array = str(getArray(_x));
			_array = toArray(_array);
			_array set [0, OPENING_BRACE];
			_array set [count _array -1, CLOSING_BRACE];
			_array = toString(_array);
			AddToOutput(_tabs + _TAB + configName(_x) + "[] = " + _array + ";")};
		if isNumber(_x) then {
			AddToOutput(_tabs + _TAB + configName(_x) + " = " + str(getNumber(_x)) + ";")};
		if isText(_x) then {
			AddToOutput(_tabs + _TAB + configName(_x) + " = " + str(getText(_x)) + ";")};
	} forEach _cfgEntries;

	if (count _cfgClasses == 0) then {AddToOutput(_tabs + "};")};
};



_WriteCloseClass = // Param: <NUMBER>
{
	private ["_tabs"];
	_tabs = ""; for "_i" from 0 to (_this - 1) do {_tabs = _tabs + _TAB};

	AddToOutput(_tabs + "};");
};



_UpdateIndentation = // (Local)Params: _cfgClasses _stackIndexes _indentation
{
	private ["_c"];
	_c = count _stackIndexes -1;

	if (count _cfgClasses > 0) then {
		_stackIndexes set [_c + 1, count _cfgClasses]}
	else
	{
		while {_c >= 0 && {_stackIndexes select _c == 1}} do {
			_c call _WriteCloseClass;
			_stackIndexes set [_c, 0];
			_c = _c - 1};

		if (_c >= 0) then {_stackIndexes set [_c, (_stackIndexes select _c) - 1]}
	};

	_stackIndexes = _stackIndexes - [0];

	_indentation = count _stackIndexes;
};



_DebugVariablesOrig = // (Local)Params: All variables
{
	diag_log text ("/*");
	diag_log text ("config = " + str(_class));
	diag_log text ("sort = " + str(_sort));
	diag_log text ("cfgClasses(" + str(count _cfgClasses) + ")");
	{diag_log text (_TAB + _TAB + str(_x))} forEach _cfgClasses;
	diag_log text ("cfgEntries(" + str(count _cfgEntries) + ")");
	{diag_log text (_TAB + _TAB + str(_x))} forEach _cfgEntries;
	diag_log text ("classesStack(" + str(count _classesStack) + ")");
	{diag_log text (_TAB + _TAB + str(_x))} forEach _classesStack;
	diag_log text ("classCount = " + str(_stackIndexes));
	diag_log text ("indentation = " + str(_indentation));
	diag_log text ("*/");
};


_DebugVariables = // (Local)Params: All variables
{
	diag_log text ("/*");
	diag_log text ("config = " + str(_class));
	diag_log text ("sort = " + str(_sort));
	diag_log text ("cfgClasses(" + str(count _cfgClasses) + ")");
	{diag_log text (_TAB + _TAB + str(_x))} forEach _cfgClasses;
	diag_log text ("cfgEntries(" + str(count _cfgEntries) + ")");
	{diag_log text (_TAB + _TAB + str(_x))} forEach _cfgEntries;
	diag_log text ("classesStack(" + str(count _classesStack) + ")");
	{diag_log text (_TAB + _TAB + str(_x))} forEach _classesStack;
	diag_log text ("classCount = " + str(_stackIndexes));
	diag_log text ("indentation = " + str(_indentation));
	diag_log text ("*/");
};





/* LOCAL VARIABLES
***********************************************************************************************************************/
private ["_class", "_sort", "_cfgClasses", "_cfgEntries", "_classesStack", "_stackIndexes", "_indentation", "_output",
		"_CRLF", "_TAB"];

_class = _this select 0;
if (count _this >= 2) then {_sort = _this select 1} else {_sort = false};

_cfgClasses = [];
_cfgEntries = [];
_classesStack = []; // LIFO
_stackIndexes = [];
_indentation = 0;
_output = [];

// Constants
_CRLF = toString [0x0D, 0x0A];
_TAB = toString [0x09];






/* MAIN CODE
***********************************************************************************************************************/
for "_debugCount" from 0 to 40000 do // max classes to print before the loop stops (~32180 for the whole configFile)
{
	for "_i" from 0 to (count _class -1) do
	{
		if isClass(_class select _i) then {
			_cfgClasses set [count _cfgClasses, _class select _i]}
		else {
			_cfgEntries set [count _cfgEntries, _class select _i]};
	};

	if _sort then {
		_cfgClasses call _fn_AlphaSortReversed;
		_cfgEntries call _fn_AlphaSort}
	else {
		_cfgClasses call _fn_ReverseArray};

	call _WriteClass;
	call _UpdateIndentation;

	if (count _classesStack == 0 && count _cfgClasses == 0) exitWith { // Loop's End (no more classes)
		AddToOutput("// " + str(_debugCount + 1) + " classes printed.")};

	_classesStack = _classesStack + _cfgClasses;

	_class = _classesStack select (count _classesStack -1);
	_classesStack resize (count _classesStack -1);

	_cfgClasses = [];
	_cfgEntries = [];
};

if !(count _output == 0) then {
	_output call _fn_StringsConcat;
	copyToClipboard (_output select 0)};
//todo: modify for multitype values..
//Default: Array,Number,Text,ObjNull    
//CAP:      Array / size                
//         number / min                 
//           text / length
//         object / ignored
//Add:
//vartype: "array","number","text","object","raw"
//monitor: bool

private ["_object","_variables","_config","_classname","_isGlobal","_defaultValue","_variableName","_variableCap","_newValue","_debug","_classtree"];
_debug=false;
_variables = [];

if((count _this)<1) exitWith{diag_log "error: dzu_fnc_LoadVars requires at least an object";_variables};
if (({isNil "_x"} count _this) != 0) exitWith {debugLog "error: dzu_fnc_LoadVars all parameters must be defined values!"; _variables};

_object = (_this select 0);
if((count _this)>1)then{_debug=_this select 1;};

_config = configFile >> "CfgPlayerVariables";

for "_i" from 0 to ((count _config) - 1) do {
    _classname = configName (_config select _i);
    if(getNumber(_config >> _classname >> "load")==1)then{
    //Start
                
        _isGlobal       = if(getNumber(_config >> _classname >> "global")==1)then{true}else{false};
        _defaultValue   =    getNumber(_config >> _classname >> "vardefault");
        _variableName   =      getText(_config >> _classname >> "varname");
        _variableCap    =    getNumber(_config >> _classname >> "cap");
        _newValue   = _object getVariable[_variableName, _defaultValue];
        
        //Check value limits
        if(_variableCap !=0 )then{
        switch(true) do {
            case (_variableCap > 0 ):
                {
                  _newValue=_newValue min _variableCap;                    
                };
            case (_variableCap < 0 ):
                {
                  _newValue=_newValue max _variableCap;                    
                };            
            }; 
        };
        
        _variables = _variables + [_classname];
        _object setVariable[_variableName,_newValue,_isGlobal];
        
        if(_debug)then{
          private["_text"];
          _text=format["Loaded %1 with value of %2\nVarible Name: %3\n(%4/%5)",_classname,_newValue,_variableName,_defaultValue,_variableCap];
          diag_log _text;
          cutText[_text,"PLAIN DOWN"];  
        };    
        
    //End
    } else {        
    
        if(_debug)then{
            diag_log format["Skipping %1",_classname];
            };
    };
};
_variables

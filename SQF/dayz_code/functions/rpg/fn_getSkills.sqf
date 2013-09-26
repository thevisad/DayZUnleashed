private["_skillName","_skillVariables","_config"];
_skillVariables=[];
_config = configFile >> "CfgRPG" >> "CfgConfig" >> "Skills";
    for "_i" from 0 to ((count _config) - 1) do {
        _skillName = configName (_config select _i);
        _skillVariables = _skillVariables + [_skillName];
    };
_skillVariables

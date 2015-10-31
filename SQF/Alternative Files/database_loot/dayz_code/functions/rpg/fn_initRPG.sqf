private ["_recompile"];
_recompile = ((count _this) > 0);
if ((!isNil "DZU_rpg_init") && (!_recompile)) exitwith {diag_log "DZU RPG Skills already init.";};
DZU_rpg_skillsList = [] call DZU_fnc_getSkills;
diag_log "DZU RPG Skills init.";
DZU_rpg_init=TRUE;
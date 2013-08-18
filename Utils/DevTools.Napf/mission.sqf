activateAddons [
];

activateAddons [];
initAmbientLife;

_this = createCenter west;
_center_0 = _this;

_group_0 = createGroup _center_0;

_unit_0 = objNull;
if (true) then
{
  _this = _group_0 createUnit ["CZ_Special_Forces_MG_DES_EP1", [10384.849, 18998.607], [], 0, "CAN_COLLIDE"];
  _unit_0 = _this;
  _this setVehicleInit "this addaction [""Get Buildings"", ""getBuildings.sqf""];nul = [] execVM ""AnimationViewer\init.sqf"";this addaction [""Find Spawns"", ""findSpawns.sqf""];this addAction [""Select Loot Position"", ""Make_lootPos.sqf"", [""select""], 99];this addAction [""Save Loot Position"", ""Make_lootPos.sqf"", [""start""], 99];this addAction [""Raise Z .1"", ""Make_lootPos.sqf"", [""up""], 99];this addAction [""Lower Z .1"", ""Make_lootPos.sqf"", [""down""], 99];this addAction [""Raise Z .01"", ""Make_lootPos.sqf"", [""up_small""], 99];this addAction [""Lower Z .01"", ""Make_lootPos.sqf"", [""down_small""], 99];this addaction [""Show Loot Position"", ""getBuildings.sqf""];";
  _this setUnitAbility 0.60000002;
  if (true) then {_group_0 selectLeader _this;};
  if (true) then {selectPlayer _this;};
};


processInitCommands;
runInitScript;
finishMissionInit;

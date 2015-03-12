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
  _this setVehicleInit "nul=[""Static""] execVM ""Vehicleinfo\vehinfo.sqf"";titleText [""Approach the vehicles or building,\nto see their available turrets and actions."",""plain down""];";
  _this setUnitAbility 0.60000002;
  if (true) then {_group_0 selectLeader _this;};
  if (true) then {selectPlayer _this;};
};

_this = createCenter sideLogic;
_center_1 = _this;

_group_1 = createGroup _center_1;

_unit_2 = objNull;
if (true) then
{
  _this = _group_1 createUnit ["Logic", [20472.316, 20447.736, 0], [], 0, "CAN_COLLIDE"];
  _unit_2 = _this;
  _this setUnitAbility 0.60000002;
  if (true) then {_group_1 selectLeader _this;};
};

_unit_4 = objNull;
if (true) then
{
  _this = _group_1 createUnit ["FunctionsManager", [20441.252, 20480.842, 0], [], 0, "CAN_COLLIDE"];
  _unit_4 = _this;
  _this setUnitAbility 0.60000002;
  if (false) then {_group_1 selectLeader _this;};
};

processInitCommands;
runInitScript;
finishMissionInit;

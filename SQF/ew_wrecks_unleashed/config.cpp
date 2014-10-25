#define _ARMA_

//Class ew_wrecks_unleashed : config.bin{
class CfgPatches
{
	class endworld_wrecks
	{
		version = "0.98-Devbuild-2014-10-25_1205 PM";
		units[] = {};
		weapons[] = {};
		requiredVersion = 0.1;
		requiredAddons[] = {"CAWheeled","CAWheeled2","CAWheeled3","CAWheeled_d_baf","CAWheeled_e","CAWheeled_pmc","CAWheeled_w_baf"};
	};
};
class CfgVehicles
{
	class Wreck_Base;
	class LADAwreck: Wreck_Base
	{
		scope = 2;
		displayName = "Lada wreck";
		vehicleClass = "[EW] Wrecks";
		model = "\ew_wrecks_unleashed\wrecklada.p3d";
		placement = "slope";
	};
	class Land_tractor_wreck: Wreck_Base
	{
		scope = 2;
		displayName = "Tractor wreck";
		vehicleClass = "[EW] Wrecks";
		model = "\ew_wrecks_unleashed\wrecktractor.p3d";
		placement = "slope";
	};
	class Land_tractor_wreck2: Wreck_Base
	{
		scope = 2;
		displayName = "Tractor wreck turned";
		vehicleClass = "[EW] Wrecks";
		model = "\ew_wrecks_unleashed\wrecktractor_turned.p3d";
		placement = "slope";
	};
	class Land_sedan_wreck: Wreck_Base
	{
		scope = 2;
		displayName = "Sedan wreck";
		vehicleClass = "[EW] Wrecks";
		model = "\ew_wrecks_unleashed\wrecksedan.p3d";
		placement = "slope";
	};
	class Land_sedan_wreck2: Wreck_Base
	{
		scope = 2;
		displayName = "Sedan wreck 2";
		vehicleClass = "[EW] Wrecks";
		model = "\ew_wrecks_unleashed\wrecksedan2.p3d";
		placement = "slope";
	};
	class Land_bus_wreck: Wreck_Base
	{
		scope = 2;
		displayName = "Bus wreck";
		vehicleClass = "[EW] Wrecks";
		model = "\ew_wrecks_unleashed\wreckbus.p3d";
		placement = "slope";
	};
	class Land_hilux_wreckT: Wreck_Base
	{
		scope = 2;
		displayName = "Hilux wreck turned";
		vehicleClass = "[EW] Wrecks";
		model = "\ew_wrecks_unleashed\wreckhilux_turned.p3d";
		placement = "slope";
	};
	class Land_van_wreck1: Wreck_Base
	{
		scope = 2;
		vehicleClass = "[EW] Wrecks";
		displayName = "Van wreck 1";
		model = "\ew_wrecks_unleashed\wreck_van1.p3d";
	};
	class Land_van_wreck2: Wreck_Base
	{
		scope = 2;
		vehicleClass = "[EW] Wrecks";
		displayName = "Van wreck 2";
		model = "\ew_wrecks_unleashed\wreck_van2.p3d";
	};
};
//};

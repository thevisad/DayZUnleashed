class ItemFuelPump: CA_Magazine
{
	scope = 2;
	count = 1;
	type = 256;
	displayName = "Fuel Pump";
	model = "\z\addons\dayz_epoch\models\supply_crate.p3d";
	picture = "\z\addons\dayz_epoch\pictures\equip_wooden_crate_ca.paa";
	descriptionShort = "Fuel Pumps can be used to create a refuel station";
	class ItemActions
	{
		class Build
		{
			text = "$STR_ACTIONS_BUILD";
			script = "spawn DZE_player_build;";
			require[] = {"ItemToolbox"};
			create = "FuelPump_DZ";
			needNearby[] = {"dayz_fuelsources"};
		};
	};
};
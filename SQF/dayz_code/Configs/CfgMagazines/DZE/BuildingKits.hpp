// BUILDING KITS
class workbench_kit: CA_Magazine
{
	scope = 2;
	count = 1;
	type = 256;
	displayName = "Workbench";
	descriptionShort = "Workbench: Used to craft.";
	model = "\z\addons\dayz_epoch\models\supply_crate.p3d";
	picture = "\z\addons\dayz_epoch\pictures\equip_wooden_crate_ca.paa";
	class ItemActions
	{
		class Build
		{
			text = "$STR_ACTIONS_BUILD";
			script = "spawn DZE_player_build;";
			require[] = {"ItemToolbox"};
			create = "WorkBench_DZ";
			needNearby[] = {"none"};
		};
	};
};
class 30m_plot_kit: CA_Magazine
{
	scope = 2;
	count = 1;
	type = 256;
	displayName = "30 Meter Plot";
	descriptionShort = "Plot Pole: A placeable pole that will allow you and your friends to build within a 30m radius. Ownership of plot pole is lost after owners death.";
	model = "\z\addons\dayz_epoch\models\supply_crate.p3d";
	picture = "\z\addons\dayz_epoch\pictures\equip_wooden_crate_ca.paa";
	class ItemActions
	{
		class Build
		{
			text = "$STR_ACTIONS_BUILD";
			script = "spawn DZE_player_build;";
			require[] = {"ItemEtool","ItemToolbox"};
			create = "Plastic_Pole_EP1_DZ";
		};
	};
};

class metal_panel_kit: CA_Magazine
{
	scope = 2;
	count = 1;
	type = 256;
	displayName = "Metal Panel";
	descriptionShort = "Metal Panel: Strong metal wall used for base defence.";
	model = "\z\addons\dayz_epoch\models\supply_crate.p3d";
	picture = "\z\addons\dayz_epoch\pictures\equip_wooden_crate_ca.paa";
	class ItemActions
	{
		class Build
		{
			text = "$STR_ACTIONS_BUILD";
			script = "spawn DZE_player_build;";
			require[] = {"ItemEtool","ItemToolbox"};
			create = "MetalPanel_DZ";
		};
	};
};
class deer_stand_kit: CA_Magazine
{
	scope = 2;
	count = 1;
	type = 256;
	displayName = "Deer Stand";
	descriptionShort = "Deer Stand: can be used as a lookout.";
	model = "\z\addons\dayz_epoch\models\supply_crate.p3d";
	picture = "\z\addons\dayz_epoch\pictures\equip_wooden_crate_ca.paa";
	class ItemActions
	{
		class Build
		{
			text = "$STR_ACTIONS_BUILD";
			script = "spawn DZE_player_build;";
			require[] = {"ItemEtool","ItemToolbox"};
			create = "DeerStand_DZ";
		};
	};
};
class desert_large_net_kit: CA_Magazine
{
	scope = 2;
	count = 1;
	type = 256;
	displayName = "Large Desert Camo Net";
	descriptionShort = "Large Camo Netting: A very large buildable object that can be used to cover objects.";
	model = "\z\addons\dayz_epoch\models\supply_crate.p3d";
	picture = "\z\addons\dayz_epoch\pictures\equip_wooden_crate_ca.paa";
	class ItemActions
	{
		class Build
		{
			text = "$STR_ACTIONS_BUILD";
			script = "spawn DZE_player_build;";
			require[] = {"ItemEtool","ItemToolbox"};
			create = "DesertLargeCamoNet_DZ";
		};
	};
};
class forest_large_net_kit: CA_Magazine
{
	scope = 2;
	count = 1;
	type = 256;
	displayName = "Large Forest Camo Net";
	descriptionShort = "Large Camo Netting: A very large buildable object that can be used to cover objects.";
	model = "\z\addons\dayz_epoch\models\supply_crate.p3d";
	picture = "\z\addons\dayz_epoch\pictures\equip_wooden_crate_ca.paa";
	class ItemActions
	{
		class Build
		{
			text = "$STR_ACTIONS_BUILD";
			script = "spawn DZE_player_build;";
			require[] = {"ItemEtool","ItemToolbox"};
			create = "ForestLargeCamoNet_DZ";
		};
	};
};
class desert_net_kit: CA_Magazine
{
	scope = 2;
	count = 1;
	type = 256;
	displayName = "Desert Camo Net";
	descriptionShort = "Camo Netting: A buildable object that can be used to cover objects.";
	model = "\z\addons\dayz_epoch\models\supply_crate.p3d";
	picture = "\z\addons\dayz_epoch\pictures\equip_wooden_crate_ca.paa";
	class ItemActions
	{
		class Build
		{
			text = "$STR_ACTIONS_BUILD";
			script = "spawn DZE_player_build;";
			require[] = {"ItemEtool","ItemToolbox"};
			create = "DesertCamoNet_DZ";
		};
		class Crafting
		{
			text = "Craft Lg Camo Net";
			script = ";['Crafting','CfgMagazines'] spawn DZE_player_craftItem;";
			neednearby[] = {"workshop"};
			requiretools[] = {"ItemToolbox","ItemKnife"};
			output[] = {{"desert_large_net_kit",1}};
			input[] = {{"desert_net_kit",3}};
		};
	};
};
class forest_net_kit: CA_Magazine
{
	scope = 2;
	count = 1;
	type = 256;
	displayName = "Forest Camo Net";
	descriptionShort = "Camo Netting: A buildable object that can be used to cover objects.";
	model = "\z\addons\dayz_epoch\models\supply_crate.p3d";
	picture = "\z\addons\dayz_epoch\pictures\equip_wooden_crate_ca.paa";
	class ItemActions
	{
		class Build
		{
			text = "$STR_ACTIONS_BUILD";
			script = "spawn DZE_player_build;";
			require[] = {"ItemEtool","ItemToolbox"};
			create = "ForestCamoNet_DZ";
		};
		class Crafting
		{
			text = "Craft Lg Camo Net";
			script = ";['Crafting','CfgMagazines'] spawn DZE_player_craftItem;";
			neednearby[] = {"workshop"};
			requiretools[] = {"ItemToolbox","ItemKnife"};
			output[] = {{"forest_large_net_kit",1}};
			input[] = {{"forest_net_kit",3}};
		};
	};
};
class fuel_pump_kit: CA_Magazine
{
	scope = 2;
	count = 1;
	type = 256;
	displayName = "Fuel Pump";
	descriptionShort = "Fuel Pump";
	model = "\z\addons\dayz_epoch\models\supply_crate.p3d";
	picture = "\z\addons\dayz_epoch\pictures\equip_wooden_crate_ca.paa";
	class ItemActions
	{
		class Build
		{
			text = "$STR_ACTIONS_BUILD";
			script = "spawn DZE_player_build;";
			require[] = {"ItemEtool","ItemToolbox"};
			create = "FuelPump_DZ";
		};
	};
};
/* Needs ASC EU Lights Mod http://www.armaholic.com/page.php?id=12076
class light_pole_kit: CA_Magazine
{
	scope = 2;
	count = 1;
	type = 256;
	displayName = "Light Pole";
	descriptionShort = "Light Pole: A buildable object that can be used with a Generator to provide light in times of darkness.";
	model = "\z\addons\dayz_epoch\models\supply_crate.p3d";
	picture = "\z\addons\dayz_epoch\pictures\equip_wooden_crate_ca.paa";
	class ItemActions
	{
		class Build
		{
			text = "$STR_ACTIONS_BUILD";
			script = "spawn DZE_player_build;";
			require[] = {"ItemEtool","ItemToolbox"};
			create = "LightPole_DZ";
		};
	};
};
*/
class stick_fence_kit: CA_Magazine
{
	scope = 2;
	count = 1;
	type = 256;
	displayName = "Stick Fence";
	descriptionShort = "Stick Fence: A buildable barrier that can be used to keep zombies out of your camp. They are fairly weak and can be ran over easier.";
	model = "\z\addons\dayz_epoch\models\supply_crate.p3d";
	picture = "\z\addons\dayz_epoch\pictures\equip_wooden_crate_ca.paa";
	class ItemActions
	{
		class Build
		{
			text = "$STR_ACTIONS_BUILD";
			script = "spawn DZE_player_build;";
			require[] = {"ItemEtool","ItemToolbox"};
			create = "StickFence_DZ";
		};
	};
};
class wooden_shed_kit: CA_Magazine
{
	scope = 2;
	count = 1;
	type = 256;
	displayName = "Nice Wooden Shed";
	descriptionShort = "Nice Wooden Shed: A crafted object that holds a lot of items/weapons/backpacks and has a door that opens and closes.";
	model = "\z\addons\dayz_epoch\models\supply_crate.p3d";
	picture = "\z\addons\dayz_epoch\pictures\equip_wooden_crate_ca.paa";
	class ItemActions
	{
		class Build
		{
			text = "$STR_ACTIONS_BUILD";
			script = "spawn DZE_player_build;";
			require[] = {"ItemEtool","ItemToolbox"};
			create = "Wooden_shed_DZ";
		};
	};
};
class wood_shack_kit: CA_Magazine
{
	scope = 2;
	count = 1;
	type = 256;
	displayName = "Wood Shack";
	descriptionShort = "Wood Shack";
	model = "\z\addons\dayz_epoch\models\supply_crate.p3d";
	picture = "\z\addons\dayz_epoch\pictures\equip_wooden_crate_ca.paa";
	class ItemActions
	{
		class Build
		{
			text = "$STR_ACTIONS_BUILD";
			script = "spawn DZE_player_build;";
			require[] = {"ItemEtool","ItemToolbox"};
			create = "WoodShack_DZ";
		};
	};
};
class sun_shade_kit: CA_Magazine
{
	scope = 2;
	count = 1;
	type = 256;
	displayName = "Canvas Sun Shade";
	descriptionShort = "Sun Shade: A buildable object used to keep the sun off your back.";
	model = "\z\addons\dayz_epoch\models\supply_crate.p3d";
	picture = "\z\addons\dayz_epoch\pictures\equip_wooden_crate_ca.paa";
	class ItemActions
	{
		class Build
		{
			text = "$STR_ACTIONS_BUILD";
			script = "spawn DZE_player_build;";
			require[] = {"ItemEtool","ItemToolbox"};
			create = "CanvasHut_DZ";
		};
	};
};
class rusty_gate_kit: CA_Magazine
{
	scope = 2;
	count = 1;
	type = 256;
	displayName = "Rusty Gate";
	descriptionShort = "Rusty Gate: A buildable object that can be opened and closed.";
	model = "\z\addons\dayz_epoch\models\supply_crate.p3d";
	picture = "\z\addons\dayz_epoch\pictures\equip_wooden_crate_ca.paa";
	class ItemActions
	{
		class Build
		{
			text = "$STR_ACTIONS_BUILD";
			script = "spawn DZE_player_build;";
			require[] = {"ItemEtool","ItemToolbox"};
			create = "MetalGate_DZ";
		};
	};
};
class sandbag_nest_kit: CA_Magazine
{
	scope = 2;
	count = 1;
	type = 256;
	displayName = "Sandbag Nest";
	descriptionShort = "Sandbag Nest: A buildable fortification object, can be removed.";
	model = "\z\addons\dayz_epoch\models\supply_crate.p3d";
	picture = "\z\addons\dayz_epoch\pictures\equip_wooden_crate_ca.paa";
	class ItemActions
	{
		class Build
		{
			text = "$STR_ACTIONS_BUILD";
			script = "spawn DZE_player_build;";
			require[] = {"ItemEtool","ItemToolbox"};
			create = "SandNest_DZ";
		};
	};
};
class outhouse_kit: CA_Magazine
{
	scope = 2;
	count = 1;
	type = 256;
	displayName = "Outhouse";
	descriptionShort = "Outhouse: A buildable object that you can poop in. Comes pre-stocked with one roll of Toilet Paper.";
	model = "\z\addons\dayz_epoch\models\supply_crate.p3d";
	picture = "\z\addons\dayz_epoch\pictures\equip_wooden_crate_ca.paa";
	class ItemActions
	{
		class Build
		{
			text = "$STR_ACTIONS_BUILD";
			script = "spawn DZE_player_build;";
			require[] = {"ItemEtool","ItemToolbox"};
			create = "OutHouse_DZ";
		};
	};
};
class storage_shed_kit: CA_Magazine
{
	scope = 2;
	count = 1;
	type = 256;
	displayName = "Storage Shed";
	descriptionShort = "Storage Shed: A large buildable object that is non enterable and holds a lot of items/weapons/backpacks";
	model = "\z\addons\dayz_epoch\models\supply_crate.p3d";
	picture = "\z\addons\dayz_epoch\pictures\equip_wooden_crate_ca.paa";
	class ItemActions
	{
		class Build
		{
			text = "$STR_ACTIONS_BUILD";
			script = "spawn DZE_player_build;";
			require[] = {"ItemEtool","ItemToolbox"};
			create = "StorageShed_DZ";
		};
	};
};

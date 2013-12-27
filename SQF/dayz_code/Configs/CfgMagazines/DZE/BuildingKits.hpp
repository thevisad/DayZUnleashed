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
			script = ";['Crafting','CfgMagazines',_id] spawn DZE_player_craftItem;";
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
			script = ";['Crafting','CfgMagazines',_id] spawn DZE_player_craftItem;";
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
class ItemFireBarrel_kit: CA_Magazine
{
		scope = 2;
		count = 1;
		type = 256;
		displayName = "Fire Barrel Kit";
		descriptionShort = "Fire Barrel";
		model = "\z\addons\dayz_epoch\models\supply_crate.p3d";
		picture = "\z\addons\dayz_epoch\pictures\equip_wooden_crate_ca.paa";
		weight = 45;
		class ItemActions
		{
			class Build
			{
				text = $STR_ACTIONS_BUILD;
				script = "spawn DZE_player_build;";
				require[] = {"ItemToolbox"};
				create = "FireBarrel_DZ";
			};
		};
};
class metal_floor_kit: CA_Magazine
{
	scope = 2;
	count = 1;
	type = 256;
	displayName = "Metal Floor";
	descriptionShort = "Metal Floor";
	model = "\z\addons\dayz_epoch\models\supply_crate.p3d";
	picture = "\z\addons\dayz_epoch\pictures\equip_wooden_crate_ca.paa";
	weight = 325;
	class ItemActions
	{
		class Build
		{
			text = $STR_ACTIONS_BUILD;
			script = "spawn DZE_player_build;";
			require[] = {"ItemToolbox"};
			create = "MetalFloor_DZ";
		};
	};
};

class cinder_wall_kit: CA_Magazine
{
	scope = 2;
	count = 1;
	type = 256;
	displayName = "Cinder Block Wall";
	descriptionShort = "Half height cinder block wall";
	model = "\z\addons\dayz_epoch\models\supply_crate.p3d";
	picture = "\z\addons\dayz_epoch\pictures\equip_wooden_crate_ca.paa";
	weight = 325;
	class ItemActions
	{
		class Build
		{
			text = $STR_ACTIONS_BUILD;
			script = "spawn DZE_player_build;";
			require[] = {"ItemToolbox"};
			create = "CinderWallHalf_DZ";
		};
	};
};

class cinder_garage_kit: CA_Magazine
{
	scope = 2;
	count = 1;
	type = 256;
	displayName = "Block Garage Doorway";
	descriptionShort = "Cinder block garage doorway";
	model = "\z\addons\dayz_epoch\models\supply_crate.p3d";
	picture = "\z\addons\dayz_epoch\pictures\equip_wooden_crate_ca.paa";
	weight = 325;
	class ItemActions
	{
		class Build
		{
			text = $STR_ACTIONS_BUILD;
			script = "spawn DZE_player_build;";
			require[] = {"ItemToolbox"};
			create = "CinderWallDoorway_DZ";
		};
	};
};

class cinder_door_kit: CA_Magazine
{
	scope = 2;
	count = 1;
	type = 256;
	displayName = "Block Doorway";
	descriptionShort = "Cinder block doorway";
	model = "\z\addons\dayz_epoch\models\supply_crate.p3d";
	picture = "\z\addons\dayz_epoch\pictures\equip_wooden_crate_ca.paa";
	weight = 325;
	class ItemActions
	{
		class Build
		{
			text = $STR_ACTIONS_BUILD;
			script = "spawn DZE_player_build;";
			require[] = {"ItemToolbox"};
			create = "CinderWallSmallDoorway_DZ";
		};
	};
};
class wood_ramp_kit: CA_Magazine
{
	scope = 2;
	count = 1;
	type = 256;
	displayName = "Wood Ramp";
	descriptionShort = "Wood ramp can be used to get air.";
	model = "\z\addons\dayz_epoch\models\supply_crate.p3d";
	picture = "\z\addons\dayz_epoch\pictures\equip_wooden_crate_ca.paa";
	class ItemActions
	{
		class Build
		{
			text = $STR_ACTIONS_BUILD;
			script = "spawn DZE_player_build;";
			require[] = {"ItemEtool","ItemToolbox"};
			create = "WoodRamp_DZ";
		};
	};
};
	
class ItemWoodFloor: CA_Magazine
{
	scope = 2;
	count = 1;
	type = 256;
	displayName = "Floor/Ceiling";
	model = "\z\addons\dayz_epoch\models\supply_crate.p3d";
	picture = "\z\addons\dayz_epoch\pictures\equip_wooden_crate_ca.paa";
	descriptionShort = "Wood Floor can also be used as a ceiling.";
	weight = 25;
	class ItemActions
	{
		class Build
		{
			text = $STR_ACTIONS_BUILD;
			script = "spawn DZE_player_build;";
			require[] = {"ItemToolbox"};
			create = "WoodFloor_DZ";
		};
	};
};
class ItemWoodFloorHalf: CA_Magazine
{
	scope = 2;
	count = 1;
	type = 256;
	displayName = "Floor/Ceiling 1/2";
	model = "\z\addons\dayz_epoch\models\supply_crate.p3d";
	picture = "\z\addons\dayz_epoch\pictures\equip_wooden_crate_ca.paa";
	descriptionShort = "Wood Floor can also be used as a ceiling.";
	weight = 15;
	class ItemActions
	{
		class Build
		{
			text = $STR_ACTIONS_BUILD;
			script = "spawn DZE_player_build;";
			require[] = {"ItemToolbox"};
			create = "WoodFloorHalf_DZ";
		};
		class Crafting
		{
			text = $STR_EPOCH_PLAYER_232;
			script = ";['Crafting','CfgMagazines', _id] spawn DZE_player_craftItem;";
			neednearby[] = {"workshop"};
			requiretools[] = {"ItemToolbox"};
			output[] = {{"ItemWoodFloor",1}};
			input[] = {{"ItemWoodFloorHalf",2}};
				
		};
	};
};
class ItemWoodFloorQuarter: CA_Magazine
{
	scope = 2;
	count = 1;
	type = 256;
	displayName = "Floor/Ceiling 1/4";
	model = "\z\addons\dayz_epoch\models\supply_crate.p3d";
	picture = "\z\addons\dayz_epoch\pictures\equip_wooden_crate_ca.paa";
	descriptionShort = "Wood Floor can also be used as a ceiling.";
	weight = 10;
	class ItemActions
	{
		class Build
		{
			text = $STR_ACTIONS_BUILD;
			script = "spawn DZE_player_build;";
			require[] = {"ItemToolbox"};
			create = "WoodFloorQuarter_DZ";
		};
		class Crafting
		{
			text = $STR_EPOCH_PLAYER_232a;
			script = ";['Crafting','CfgMagazines', _id] spawn DZE_player_craftItem;";
			neednearby[] = {"workshop"};
			requiretools[] = {"ItemToolbox"};
			output[] = {{"ItemWoodFloorHalf",1}};
			input[] = {{"ItemWoodFloorQuarter",2}};
				
		};
	};
};

class ItemWoodStairs: CA_Magazine
{
	scope = 2;
	count = 1;
	type = 256;
	displayName = "Wood Stairs";
	model = "\z\addons\dayz_epoch\models\supply_crate.p3d";
	picture = "\z\addons\dayz_epoch\pictures\equip_wooden_crate_ca.paa";
	descriptionShort = "Wood stairs";
	weight = 25;
	class ItemActions
	{
		class Build
		{
			text = $STR_ACTIONS_BUILD;
			script = "spawn DZE_player_build;";
			require[] = {"ItemToolbox"};
			create = "WoodStairsSans_DZ";
		};
		class Crafting
		{
			text = $STR_EPOCH_PLAYER_233;
			script = ";['Crafting','CfgMagazines', _id] spawn DZE_player_craftItem;";
			neednearby[] = {"workshop"};
			requiretools[] = {"ItemToolbox"};
			output[] = {{"ItemWoodStairsSupport",1}};
			input[] = {{"ItemWoodStairs",1},{"PartWoodLumber",2}};
				
		};
	};
};

class ItemWoodStairsSupport: CA_Magazine
{
	scope = 2;
	count = 1;
	type = 256;
	displayName = "Wood Stairs w/ supports";
	model = "\z\addons\dayz_epoch\models\supply_crate.p3d";
	picture = "\z\addons\dayz_epoch\pictures\equip_wooden_crate_ca.paa";
	descriptionShort = "Wood stairs with supports";
	weight = 30;
	class ItemActions
	{
		class Build
		{
			text = $STR_ACTIONS_BUILD;
			script = "spawn DZE_player_build;";
			require[] = {"ItemToolbox"};
			create = "WoodStairs_DZ";
		};
	};
};

class ItemWoodLadder: CA_Magazine
{
	scope = 2;
	count = 1;
	type = 256;
	displayName = "Wood Ladder";
	model = "\z\addons\dayz_epoch\models\supply_crate.p3d";
	picture = "\z\addons\dayz_epoch\pictures\equip_wooden_crate_ca.paa";
	descriptionShort = "Wood Ladder";
	weight = 25;
	class ItemActions
	{
		class Build
		{
			text = $STR_ACTIONS_BUILD;
			script = "spawn DZE_player_build;";
			require[] = {"ItemToolbox"};
			create = "WoodLadder_DZ";
		};
	};
};

class ItemWoodWall: CA_Magazine
{
	scope = 2;
	count = 1;
	type = 256;
	displayName = "Wood Wall";
	model = "\z\addons\dayz_epoch\models\supply_crate.p3d";
	picture = "\z\addons\dayz_epoch\pictures\equip_wooden_crate_ca.paa";
	descriptionShort = "Wood Floor can also be used as a ceiling.";
	weight = 25;
	class ItemActions
	{
		class Build
		{
			text = $STR_ACTIONS_BUILD;
			script = "spawn DZE_player_build;";
			require[] = {"ItemToolbox"};
			create = "WoodSmallWall_DZ";
		};
			
		class Crafting
		{
			text = $STR_EPOCH_PLAYER_234;
			script = ";['Crafting','CfgMagazines', _id] spawn DZE_player_craftItem;";
			neednearby[] = {"workshop"};
			requiretools[] = {"ItemToolbox"};
			output[] = {{"ItemWoodWallDoor",1}};
			input[] = {{"ItemWoodWall",1}};
				
		};
		class Crafting1
		{
			text = $STR_EPOCH_PLAYER_235;
			script = ";['Crafting1','CfgMagazines', _id] spawn DZE_player_craftItem;";
			neednearby[] = {"workshop"};
			requiretools[] = {"ItemToolbox"};
			output[] = {{"ItemWoodWallWindow",1}};
			input[] = {{"ItemWoodWall",1},{"PartGlass",1}};
				
		};
		class Crafting2
		{
			text = $STR_EPOCH_PLAYER_236;
			script = ";['Crafting2','CfgMagazines', _id] spawn DZE_player_craftItem;";
			neednearby[] = {"workshop"};
			requiretools[] = {"ItemToolbox"};
			output[] = {{"ItemWoodWallLg",1}};
			input[] = {{"ItemWoodWall",1},{"PartWoodPlywood",1},{"PartWoodLumber",1}};
				
		};
	};
};
class ItemWoodWallThird: CA_Magazine
{
	scope = 2;
	count = 1;
	type = 256;
	displayName = "Wood Wall 1/3";
	model = "\z\addons\dayz_epoch\models\supply_crate.p3d";
	picture = "\z\addons\dayz_epoch\pictures\equip_wooden_crate_ca.paa";
	descriptionShort = "Wood Floor can also be used as a ceiling.";
	weight = 7;
	class ItemActions
	{
		class Build
		{
			text = $STR_ACTIONS_BUILD;
			script = "spawn DZE_player_build;";
			require[] = {"ItemToolbox"};
			create = "WoodSmallWallThird_DZ";
		};
		class Crafting
		{
			text = $STR_EPOCH_PLAYER_237;
			script = ";['Crafting','CfgMagazines', _id] spawn DZE_player_craftItem;";
			neednearby[] = {"workshop"};
			requiretools[] = {"ItemToolbox"};
			output[] = {{"ItemWoodWall",1}};
			input[] = {{"ItemWoodWallThird",3}};
				
		};
	};
};
class ItemWoodWallDoor: CA_Magazine
{
	scope = 2;
	count = 1;
	type = 256;
	displayName = "Wall w/ Doorway";
	model = "\z\addons\dayz_epoch\models\supply_crate.p3d";
	picture = "\z\addons\dayz_epoch\pictures\equip_wooden_crate_ca.paa";
	descriptionShort = "Wall with doorway constucted out of plywood and lumber.";
	weight = 25;
	class ItemActions
	{
		class Build
		{
			text = $STR_ACTIONS_BUILD;
			script = "spawn DZE_player_build;";
			require[] = {"ItemToolbox"};
			create = "WoodSmallWallDoor_DZ";
		};
		class Crafting
		{
			text = $STR_EPOCH_PLAYER_238;
			script = ";['Crafting','CfgMagazines', _id] spawn DZE_player_craftItem;";
			neednearby[] = {"workshop"};
			requiretools[] = {"ItemToolbox"};
			output[] = {{"ItemWoodWallWithDoor",1}};
			input[] = {{"ItemWoodWallDoor",1},{"PartWoodPlywood",1},{"PartWoodLumber",1}};
				
		};
	};
};
class ItemWoodWallWithDoor: CA_Magazine
{
	scope = 2;
	count = 1;
	type = 256;
	displayName = "Wall w/ Door";
	model = "\z\addons\dayz_epoch\models\supply_crate.p3d";
	picture = "\z\addons\dayz_epoch\pictures\equip_wooden_crate_ca.paa";
	descriptionShort = "Wall with door constucted out of plywood and lumber.";
	weight = 25;
	class ItemActions
	{
		class Build
		{
			text = $STR_ACTIONS_BUILD;
			script = "spawn DZE_player_build;";
			require[] = {"ItemToolbox"};
			create = "Land_DZE_WoodDoor";
		};
		class Crafting
		{
			text = $STR_EPOCH_PLAYER_239;
			script = ";['Crafting','CfgMagazines', _id] spawn DZE_player_craftItem;";
			neednearby[] = {"workshop"};
			requiretools[] = {"ItemToolbox"};
			output[] = {{"ItemWoodWallWithDoorLocked",1}};
			input[] = {{"ItemWoodWallWithDoor",1},{"ItemComboLock",1}};
				
		};
	};
};
class ItemWoodWallWithDoorLocked: CA_Magazine
{
	scope = 2;
	count = 1;
	type = 256;
	displayName = "Wall w/ Door Locked";
	model = "\z\addons\dayz_epoch\models\supply_crate.p3d";
	picture = "\z\addons\dayz_epoch\pictures\equip_wooden_crate_ca.paa";
	descriptionShort = "Wall with door constucted out of plywood and lumber.";
	weight = 30;
	class ItemActions
	{
		class Build
		{
			text = $STR_ACTIONS_BUILD;
			script = "spawn DZE_player_build;";
			require[] = {"ItemToolbox"};
			create = "Land_DZE_WoodDoorLocked";
		};
	};
};

	

class ItemWoodWallWindow: CA_Magazine
{
	scope = 2;
	count = 1;
	type = 256;
	displayName = "Wall w/ Window";
	model = "\z\addons\dayz_epoch\models\supply_crate.p3d";
	picture = "\z\addons\dayz_epoch\pictures\equip_wooden_crate_ca.paa";
	descriptionShort = "Wall with Window constucted out of plywood and lumber.";
	weight = 25;
	class ItemActions
	{
		class Build
		{
			text = $STR_ACTIONS_BUILD;
			script = "spawn DZE_player_build;";
			require[] = {"ItemToolbox"};
			create = "WoodSmallWallWin_DZ";
		};
	};
};

class ItemWoodWallLg: CA_Magazine
{
	scope = 2;
	count = 1;
	type = 256;
	displayName = "Large Wood Wall";
	model = "\z\addons\dayz_epoch\models\supply_crate.p3d";
	picture = "\z\addons\dayz_epoch\pictures\equip_wooden_crate_ca.paa";
	descriptionShort = "Large wall constucted out of plywood and lumber.";
	weight = 25;
	class ItemActions
	{
		class Build
		{
			text = $STR_ACTIONS_BUILD;
			script = "spawn DZE_player_build;";
			require[] = {"ItemToolbox"};
			create = "WoodLargeWall_DZ";
		};
		class Crafting
		{
			text = $STR_EPOCH_PLAYER_234;
			script = ";['Crafting','CfgMagazines', _id] spawn DZE_player_craftItem;";
			neednearby[] = {"workshop"};
			requiretools[] = {"ItemToolbox"};
			output[] = {{"ItemWoodWallDoorLg",1}};
			input[] = {{"ItemWoodWallLg",1}};
				
		};
		class Crafting1
		{
			text = $STR_EPOCH_PLAYER_235;
			script = ";['Crafting1','CfgMagazines', _id] spawn DZE_player_craftItem;";
			neednearby[] = {"workshop"};
			requiretools[] = {"ItemToolbox"};
			output[] = {{"ItemWoodWallWindowLg",1}};
			input[] = {{"ItemWoodWallLg",1},{"PartGlass",1}};
				
		};
		class Crafting2
		{
			text = $STR_EPOCH_PLAYER_240;
			script = ";['Crafting2','CfgMagazines', _id] spawn DZE_player_craftItem;";
			neednearby[] = {"workshop"};
			requiretools[] = {"ItemToolbox"};
			output[] = {{"ItemWoodWallGarageDoor",1}};
			input[] = {{"ItemWoodWallLg",1},{"PartWoodLumber",2}};
				
		};
	};
};

class ItemWoodWallGarageDoor: CA_Magazine
{
	scope = 2;
	count = 1;
	type = 256;
	displayName = "Wood Garage Door";
	model = "\z\addons\dayz_epoch\models\supply_crate.p3d";
	picture = "\z\addons\dayz_epoch\pictures\equip_wooden_crate_ca.paa";
	descriptionShort = "Garage door constucted out of plywood and lumber.";
	weight = 25;
	class ItemActions
	{
		class Build
		{
			text = $STR_ACTIONS_BUILD;
			script = "spawn DZE_player_build;";
			require[] = {"ItemToolbox"};
			create = "Land_DZE_GarageWoodDoor";
		};
		class Crafting
		{
			text = $STR_EPOCH_PLAYER_241;
			script = ";['Crafting','CfgMagazines', _id] spawn DZE_player_craftItem;";
			neednearby[] = {"workshop"};
			requiretools[] = {"ItemToolbox"};
			output[] = {{"ItemWoodWallGarageDoorLocked",1}};
			input[] = {{"ItemWoodWallGarageDoor",1},{"ItemComboLock",1}};
				
		};
	};
};
class ItemWoodWallGarageDoorLocked: CA_Magazine
{
	scope = 2;
	count = 1;
	type = 256;
	displayName = "Wood Garage Door Locked";
	model = "\z\addons\dayz_epoch\models\supply_crate.p3d";
	picture = "\z\addons\dayz_epoch\pictures\equip_wooden_crate_ca.paa";
	descriptionShort = "Garage door with combination lock.";
	weight = 25;
	class ItemActions
	{
		class Build
		{
			text = $STR_ACTIONS_BUILD;
			script = "spawn DZE_player_build;";
			require[] = {"ItemToolbox"};
			create = "Land_DZE_GarageWoodDoorLocked";
		};
	};
};

class ItemWoodWallDoorLg: CA_Magazine
{
	scope = 2;
	count = 1;
	type = 256;
	displayName = "Large Wall w/ Doorway";
	model = "\z\addons\dayz_epoch\models\supply_crate.p3d";
	picture = "\z\addons\dayz_epoch\pictures\equip_wooden_crate_ca.paa";
	descriptionShort = "Large wall with doorway constucted out of plywood and lumber.";
	weight = 30;
	class ItemActions
	{
		class Build
		{
			text = $STR_ACTIONS_BUILD;
			script = "spawn DZE_player_build;";
			require[] = {"ItemToolbox"};
			create = "WoodLargeWallDoor_DZ";
		};			
		class Crafting
		{
			text = $STR_EPOCH_PLAYER_238;
			script = ";['Crafting','CfgMagazines', _id] spawn DZE_player_craftItem;";
			neednearby[] = {"workshop"};
			requiretools[] = {"ItemToolbox"};
			output[] = {{"ItemWoodWallWithDoorLg",1}};
			input[] = {{"ItemWoodWallDoorLg",1},{"PartWoodPlywood",1},{"PartWoodLumber",1}};
				
		};
	};
};

class ItemWoodWallWithDoorLg: CA_Magazine
{
	scope = 2;
	count = 1;
	type = 256;
	displayName = "Large Wall w/ Door";
	model = "\z\addons\dayz_epoch\models\supply_crate.p3d";
	picture = "\z\addons\dayz_epoch\pictures\equip_wooden_crate_ca.paa";
	descriptionShort = "Wall with door constucted out of plywood and lumber.";
	weight = 30;
	class ItemActions
	{
		class Build
		{
			text = $STR_ACTIONS_BUILD;
			script = "spawn DZE_player_build;";
			require[] = {"ItemToolbox"};
			create = "Land_DZE_LargeWoodDoor";
		};			
		class Crafting
		{
			text = $STR_EPOCH_PLAYER_239;
			script = ";['Crafting','CfgMagazines', _id] spawn DZE_player_craftItem;";
			neednearby[] = {"workshop"};
			requiretools[] = {"ItemToolbox"};
			output[] = {{"ItemWoodWallWithDoorLgLocked",1}};
			input[] = {{"ItemWoodWallWithDoorLg",1},{"ItemComboLock",1}};
				
		};
	};
};

class ItemWoodWallWithDoorLgLocked: CA_Magazine
{
	scope = 2;
	count = 1;
	type = 256;
	displayName = "Large Wall w/ Door Locked";
	model = "\z\addons\dayz_epoch\models\supply_crate.p3d";
	picture = "\z\addons\dayz_epoch\pictures\equip_wooden_crate_ca.paa";
	descriptionShort = "Wall with combination lock door constucted out of plywood and lumber.";
	weight = 35;
	class ItemActions
	{
		class Build
		{
			text = $STR_ACTIONS_BUILD;
			script = "spawn DZE_player_build;";
			require[] = {"ItemToolbox"};
			create = "Land_DZE_LargeWoodDoorLocked";
		};
	};
};

class ItemWoodWallWindowLg: CA_Magazine
{
	scope = 2;
	count = 1;
	type = 256;
	displayName = "Large Wall w/ Window";
	model = "\z\addons\dayz_epoch\models\supply_crate.p3d";
	picture = "\z\addons\dayz_epoch\pictures\equip_wooden_crate_ca.paa";
	descriptionShort = "Large wall with doorway constucted out of plywood and lumber..";
	weight = 30;
	class ItemActions
	{
		class Build
		{
			text = $STR_ACTIONS_BUILD;
			script = "spawn DZE_player_build;";
			require[] = {"ItemToolbox"};
			create = "WoodLargeWallWin_DZ";
		};
	};
};
class BagFenceRound_DZ_kit : CA_Magazine {
	scope = public;
	count = 1;
	type = 256;
	displayName = "Round Sandbag Fence";
	model = "\dayz_equip\models\sandbags.p3d";
	picture = "\dayz_equip\textures\equip_sandbag_ca.paa";
	descriptionShort = $STR_EQUIP_DESC_21;
		
	class ItemActions {
		class Build {
			text = $STR_EPOCH_PLAYER_299;
			script = "spawn DZE_player_build;";
			require[] = {"ItemEtool"};
			create = "BagFenceRound_DZ";
		};
		class Crafting
		{
			text = $STR_EPOCH_PLAYER_300;
			script = ";['Crafting','CfgMagazines', _id] spawn DZE_player_craftItem;";
			neednearby[] = {};
			requiretools[] = {"ItemEtool","ItemToolbox"};
			output[] = {{"ItemSandbag",1}};
			input[] = {{"BagFenceRound_DZ_kit",1}};
		};	
	};
};
//class NonStrategic;
class BuiltItems: NonStrategic{};
class BuiltItemsDestructBase : BuiltItems
{
	class DestructionEffects;
};
// buildables
class Hedgehog_DZ: BuiltItems
{
	scope = 2;
	destrType = "DestructNo";
	cost = 100;
	offset[] = {0,1.5,0.5};
	model = "\ca\misc\jezek_kov";
	icon = "\ca\data\data\Unknown_object.paa";
	mapSize = 2;
	armor = 400;
	displayName = "Hedgehog (Steel)";
	vehicleClass = "Fortifications";
	constructioncount = 3;
	removeoutput[] = {{"ItemTankTrap",1}};
};
// WorkBench_DZ
class WorkBench_DZ: BuiltItems
{
	scope = 2;
	destrType = "DestructTree";
	cost = 100;
	offset[] = {0,1.5,0.5};
	model = "\z\addons\dayz_epoch\models\workbench.p3d";
	icon = "\ca\data\data\Unknown_object.paa";
	mapSize = 2;
	armor = 400;
	displayName = "Workbench";
	vehicleClass = "Fortifications";
	constructioncount = 1;
	removeoutput[] = {{"PartWoodPlywood",1},{"PartWoodLumber",2}};
};
// Metal Panel
class MetalPanel_DZ: BuiltItems
{
	scope = 2;
	destrType = "DestructTree";
	cost = 100;
	offset[] = {0,2.5,0.5};
	model = "\ca\structures\wall\wall_indcnc2_3.p3d";
	icon = "\ca\data\data\Unknown_object.paa";
	mapSize = 2;
	armor = 1000;
	displayName = "Metal Panel";
	vehicleClass = "Fortifications";
	constructioncount = 6;
	removeoutput[] = {{"metal_panel_kit",1}};
};
class Generator_DZ: BuiltItems
{
	scope = 2;
	destrType = "DestructNo";
	cost = 100;
	offset[] = {0,1.5,0};
	model = "\dayz_equip\models\generator.p3d";
	icon = "\ca\data\data\Unknown_object.paa";
	mapSize = 2;
	armor = 400;
	displayName = "Generator";
	vehicleClass = "Fortifications";
	constructioncount = 1;
	removeoutput[] = {{"ItemGenerator",1}};
};
class FuelPump_DZ: BuiltItems
{
	scope = 2;
	destrType = "DestructNo";
	cost = 100;
	offset[] = {0,2,0};
	model = "\ca\Structures_E\Ind\Ind_FuelStation\Ind_FuelStation_Feed_ep1.p3d"; 
	icon = "\ca\data\data\Unknown_object.paa";
	mapSize = 2;
	armor = 400;
	displayName = "Fuel Pump";
	vehicleClass = "Fortifications";
	constructioncount = 2;
	removeoutput[] = {{"ItemFuelPump",1}};
};

class Fort_RazorWire : BuiltItems { 
  scope = 2; 
  animated = 0; 
  vehicleClass = "Fortifications"; 
  model = "\ca\misc\Fort_Razorwire"; 
  icon = "\Ca\misc\data\icons\I_drutkolczasty_CA.paa"; 
  offset[] = {0,1.5,0.5};
  accuracy = 0.3; 
  mapSize = 5.5; 
  displayName = "Wire"; 
  destrType = "DestructTent"; 
  armor = 100; 
  GhostPreview = "Fort_RazorWirePreview"; 
};

class Sandbag1_DZ: BuiltItems
{
	scope = 2;
	destrType = "DestructNo";
	cost = 100;
	model = "\ca\misc2\BagFenceLong.p3d";
	icon = "\Ca\misc3\data\Icons\icon_fortBagFenceLong_ca.paa";
	offset[] = {0,1.5,0.5};
	mapSize = 2;
	armor = 400;
	displayName = "Bag Fence";
	vehicleClass = "Fortifications";
	constructioncount = 3;
	removeoutput[] = {{"ItemSandbag",1}};
};

class Land_HBarrier1_DZ : BuiltItems { 
	scope = 2; 
	animated = 0; 
	vehicleClass = "Fortifications"; 
	typicalCargo[] = {}; 
	offset[] = {0,2,0};
	irTarget = 0; 
	accuracy = 0.3; 
	transportAmmo = 0; 
	transportRepair = 0; 
	transportFuel = 0; 
	destrType = "DestructBuilding"; 
	armor = 500; 
	coefInside = 0.5; 
	coefInsideHeur = 0.8; 
	cost = 0; 
	picture = "\CA\ui\data\icon_wf_barriers_ca.paa"; 
	model = "\ca\misc2\HBarrier1.p3d"; 
	icon = "\Ca\misc2\data\Icons\icon_hescoBarrier1_ca.paa"; 
	mapSize = 2; 
	displayName = "H-barrier cube"; 
	GhostPreview = "Land_HBarrier1Preview"; 
	constructioncount = 4;
	removeoutput[] = {{"ItemSandbagLarge",1}};
};

class CanvasHut_DZ: BuiltItems
{
	scope = 2; 
	model = "\ca\Structures_E\Misc\Misc_Market\covering_hut_EP1"; 
	vehicleClass = "Misc"; 
	displayName = "Canvas hut"; 
	animated = 0; 
	simulation = "house"; 
	accuracy = 0.2; 
	cost = 0; 
	ladders[] = {}; 
	armor = 300; 
	offset[] = {0,2.5,1};
	expansion = 1; 
};
class DesertCamoNet_DZ: BuiltItems
{
	armor = 300;
	destrType = "DestructNo";
	scope = 2;
	offset[] = {0,5,0};
	displayName = "Desert Camo Net";
	vehicleClass = "Fortifications";
	removeoutput[] = {{"desert_net_kit",1}};
	model = "\ca\Misc_E\CamoNet_EAST_ep1"; 
	expansion = 1; 
	// destrType = "DestructTent"; 
	icon = "\Ca\misc3\data\Icons\icon_camoNet_ca.paa"; 
	mapSize = 13.5; 
	//armor = 3; 
	animated = 0; 
	simulation = "house"; 
	accuracy = 0.2; 
	cost = 0; 
	ladders[] = {}; 

};
class ForestCamoNet_DZ: BuiltItems
{
	armor = 300;
	destrType = "DestructNo";
	scope = 2;
	offset[] = {0,5,0};
	displayName = "Forest Camo Net";
	vehicleClass = "Fortifications";
	removeoutput[] = {{"forest_net_kit",1}};
	model = "\Ca\misc3\CamoNet_EAST"; 
	//destrType = "DestructTent"; 
	icon = "\Ca\misc3\data\Icons\icon_camoNet_ca.paa"; 
	mapSize = 13.5; 
	//armor = 3; 
	animated = 0; 
	simulation = "house"; 
	accuracy = 0.2; 
	cost = 0; 
	ladders[] = {}; 
};
class DesertLargeCamoNet_DZ: BuiltItems
{
	armor = 300;
	destrType = "DestructNo";
	scope = 2;
	offset[] = {0,9,0};
	displayName = "Large Desert Camo Net";
	vehicleClass = "Fortifications";
	removeoutput[] = {{"desert_large_net_kit",1}};
	model = "\ca\Misc_E\CamoNetB_EAST_ep1"; 
	expansion = 1; 
	icon = "\Ca\misc3\data\Icons\icon_camoNetBig_ca.paa"; 
	mapSize = 18; 
	//destrType = "DestructTent"; 
	//armor = 3; 
	animated = 0; 
	simulation = "house"; 
	accuracy = 0.2; 
	cost = 0; 
	ladders[] = {}; 
};

class DeerStand_DZ: BuiltItems
{
	scope = 2;
	offset[] = {0,5,0};
	displayName = "Deer Stand";
	vehicleClass = "Fortifications";
	removeoutput[] = {{"deer_stand_kit",1}};
	animated = 0; 
	simulation = "house"; 
	accuracy = 0.2; 
	cost = 0; 
	armor = 500; 
	model = "\Ca\Structures\Misc\Misc_DeerStand\misc_deerstand"; 
	ladders[] = {{"start1", "end1"}}; 
	icon = "\Ca\Structures\Misc\Misc_DeerStand\data\icon\icon_deerstand_ca.paa"; 
	mapSize = 3; 
};

class ForestLargeCamoNet_DZ: BuiltItems
{
	armor = 300;
	//armor = 3; 
	destrType = "DestructNo";
	//destrType = "DestructTent"; 
	scope = 2;
	offset[] = {0,9,0};
	displayName = "Large Forest Camo Net";
	vehicleClass = "Fortifications";
	removeoutput[] = {{"forest_large_net_kit",1}};
	icon = "\Ca\misc3\data\Icons\icon_camoNetBig_ca.paa"; 
	model = "\Ca\misc3\CamoNetB_EAST"; 
	animated = 0; 
	simulation = "house"; 
	accuracy = 0.2; 
	cost = 0; 
	ladders[] = {}; 
};

class SandNest_DZ: BuiltItems
{
	scope = 2;
	offset[] = {0,3,1};
	displayName = "Sandbag Nest";
	vehicleClass = "Fortifications";
	removeoutput[] = {{"sandbag_nest_kit",1}};
	animated = 0; 
	simulation = "house"; 
	accuracy = 0.2; 
	cost = 0; 
	ladders[] = {}; 
	icon = "\Ca\misc3\data\Icons\icon_fortNestSmall_ca.paa"; 
	mapSize = 5; 
	armor = 500; 
	irTarget = 0; 
    model = "\ca\Misc_E\fortified_nest_small_ep1"; 
	expansion = 1; 
	GhostPreview = "Land_fortified_nest_smallPreview"; 
};
class MetalGate_DZ: BuiltItems
{
	armor = 400;
	scope = 2;
	offset[] = {0,2.5,1};
	displayName = "Rusty Gate";
	vehicleClass = "Fortifications";
	removeoutput[] = {{"rusty_gate_kit",1}};
	animated = 0; 
	simulation = "house"; 
	accuracy = 0.2; 
	cost = 0; 
	ladders[] = {}; 
	// armor = 50; 
	model = "\ca\structures\Wall\Wall_Gate_Ind1_L"; 
	destrType = "DestructTree"; 
	actionBegin1 = "OpenDoors"; 
	actionEnd1 = "OpenDoors"; 
	class AnimationSources { 
		class DoorL { 
		  source = "User"; 
		  animPeriod = 1; 
		  initPhase = 0; 
		};
	};
	class UserActions { 
		class OpenDoors { 
			displayNameDefault = "<img image='\ca\ui\data\ui_action_open_ca.paa' size='4' />"; 
			displayName = "Open door"; 
			position = "DoorL"; 
			radius = 10; 
			onlyForPlayer = 0; 
			condition = "this animationPhase 'DoorL' < 0.5"; 
			statement = "this animate ['DoorL', 1]"; 
		};
	class CloseDoors : OpenDoors { 
		displayNameDefault = "<img image='\ca\ui\data\ui_action_close_ca.paa' size='4' />"; 
		displayName = "Close door"; 
		condition = "this animationPhase 'DoorL' >= 0.5"; 
		statement = "this animate ['DoorL', 0]"; 
		};
	};
};

class OutHouse_DZ: BuiltItems
{
	armor = 200;
	// armor = 20; 
	scope = 2;
	offset[] = {0,2.5,1};
	displayName = "Outhouse";
	vehicleClass = "Fortifications";
	transportMaxMagazines = 4;
	transportMaxWeapons = 4;
	transportMaxBackpacks = 4;
	constructioncount = 2;

	animated = 1; 
	destrType = "DestructTent"; 
	actionBegin1 = "OpenDoors"; 
	actionEnd1 = "OpenDoors"; 

	simulation = "house"; 
	accuracy = 0.2; 
	cost = 0; 
	ladders[] = {}; 
	class AnimationSources { 
		class Dvere1 { 
		  animPeriod = 1; 
		};
	};
	class UserActions { 
		class OpenDoors { 
			displayNameDefault = "<img image='\ca\ui\data\ui_action_open_ca.paa' size='4' />"; 
			displayName = "Open door"; 
			position = "osa_dvere1"; 
			radius = 2.5; 
			onlyForPlayer = 0; 
			condition = "this animationPhase 'Dvere1' < 0.5"; 
			statement = "this animate ['Dvere1', 1]"; 
		};
		class CloseDoors { 
		  displayNameDefault = "<img image='\ca\ui\data\ui_action_close_ca.paa' size='4' />"; 
		  displayName = "Close door"; 
		  position = "osa_dvere1"; 
		  radius = 2.5; 
		  onlyForPlayer = 0; 
		  condition = "this animationPhase 'Dvere1' >= 0.5"; 
		  statement = "this animate ['Dvere1', 0]"; 
		};
	};
	class transportmagazines
	{
		class _xx_ItemTrashToiletpaper
		{
			magazine = "ItemTrashToiletpaper";
			count = 1;
		};
	};
};

class StorageShed_DZ: BuiltItemsDestructBase
{
	armor = 800;
	//armor = 30; 
	model = "\ca\Buildings2\Shed_small\Shed_M01"; 
	scope = 2;
	offset[] = {0,2.5,1};
	displayName = "Storage Shed";
	vehicleClass = "Fortifications";
	transportMaxMagazines = 400;
	transportMaxWeapons = 40;
	transportMaxBackpacks = 20;
	constructioncount = 6;
	animated = 0; 
	simulation = "house"; 
	accuracy = 0.2; 
	cost = 0; 
	ladders[] = {}; 
	
	class DestructionEffects : DestructionEffects { 

		 class Ruin1 { 
		  simulation = "ruin"; 
		  type = "\ca\Buildings2\Shed_small\Shed_M01_ruins"; 
		  position = ""; 
		  intensity = 1; 
		  interval = 1; 
		  lifeTime = 1; 
		};
	};
};

class Fence_corrugated_DZ: BuiltItems
{
	armor = 300;
	scope = 2;
	offset[] = {0,2.5,1};
	removeoutput[] = {{"ItemCorrugated",1}};
	displayName = "Corrugated Fence";
	vehicleClass = "Fortifications";
	TextPlural = "Fences"; 
	TextSingular = "Fence"; 
	nameSound = "obj_fence"; 
	animated = 0; 
	cost = 0; 
	icon = "\Ca\buildings\Icons\i_fence_CA.paa";
	accuracy = 0.3; 
	mapSize = 5.5; 
	destrType = "DestructTree"; 
	model = "\ca\structures\wall\Wall_Tin_4"; 
};

class WoodShack_DZ: BuiltItems
{
	scope = 2;
	offset[] = {0,2.5,1.3};
	armor = 400;
	displayName = "Wooden Shack";
	vehicleClass = "Fortifications";
	transportMaxMagazines = 100;
	transportMaxWeapons = 10;
	transportMaxBackpacks = 5;
	constructioncount = 5;
	animated = 0; 
	simulation = "house"; 
	accuracy = 0.2; 
	cost = 0; 
	ladders[] = {}; 
	model = "\ca\buildings\kulna"; 
	destrType = "DestructTent"; 
	//armor = 50; 
};
class Wooden_shed_DZ: BuiltItemsDestructBase
{
	scope = 2;
	model = "\ca\buildings2\Shed_wooden\Shed_wooden"; 
	destrType = "DestructBuilding"; 
	offset[] = {0,2.5,1};
	armor = 400;
	// armor = 20; 
	displayName = "Wooden Shed";
	vehicleClass = "Fortifications";
	transportMaxMagazines = 200;
	transportMaxWeapons = 20;
	transportMaxBackpacks = 10;
	mapSize = 2; 
	simulation = "house"; 
	accuracy = 0.2; 
	cost = 0; 
	ladders[] = {}; 
	actionBegin1 = "OpenDoors1"; 
	actionEnd1 = "OpenDoors1"; 

	class AnimationSources { 
		class dvere1 { 
			animPeriod = 1; 
			initPhase = 0; 
		};
	};
	class DestructionEffects : DestructionEffects { 
		class Ruin1 { 
			simulation = "ruin"; 
			type = "\ca\buildings2\Shed_wooden\Shed_wooden_ruins"; 
			position = ""; 
			intensity = 1; 
			interval = 1; 
			lifeTime = 1; 
		};
	};
	class UserActions { 
		class OpenDoors1 { 
			displayNameDefault = "<img image='\ca\ui\data\ui_action_open_ca.paa' size='4' />"; 
			displayName = "Open door"; 
			position = "osa_dvere1"; 
			radius = 3; 
			onlyForPlayer = 0; 
			condition = "this animationPhase 'dvere1' >= 0.5"; 
			statement = "this animate ['dvere1', 0]"; 
		};
		class CloseDoors1 { 
			displayNameDefault = "<img image='\ca\ui\data\ui_action_close_ca.paa' size='4' />"; 
			displayName = "Close door"; 
			position = "osa_dvere1"; 
			radius = 3; 
			onlyForPlayer = 0; 
			condition = "this animationPhase 'dvere1' < 0.5"; 
			statement = "this animate ['dvere1', 1]"; 
		};
	};
};
class WoodGate_DZ: BuiltItems
{
	scope = 2;
	destrType = "DestructTree"; 
	//cost = 100;
	offset[] = {0,1.5,0.5};
	model = "\ca\structures\Wall\Gate_wood2_5";
	icon = "\ca\data\data\Unknown_object.paa";
	mapSize = 2;
	armor = 100;
	displayName = "Wood Panel";
	vehicleClass = "Fortifications";
	
	class AnimationSources
	{
		class DoorR { 
		  source = "User"; 
		  animPeriod = 1; 
		  initPhase = 0; 
		};
	};
	class UserActions
	{
		class CloseDoor
		{
			position = "";
			displayName = "Close Door";
			radius = 1.5;
			onlyForPlayer = 0;
			condition = "this animationPhase 'DoorR' == 1";
			statement = "this animate ['DoorR', 0];";
		};
		class OpenDoor
		{
			position = "";
			displayName = "Open Door";
			radius = 1.5;
			onlyForPlayer = 0;
			condition = "this animationPhase 'DoorR' == 0";
			statement = "this animate ['DoorR', 1];";
		};
	};
};
class StickFence_DZ: BuiltItems
{
	destrType = "DestructTree"; 
	armor = 200;
	scope = 2;
	offset[] = {0,2.5,0};
	displayName = "Stick Fence";
	vehicleClass = "Fortifications";
	animated = 0; 
	simulation = "house"; 
	accuracy = 0.2; 
	cost = 0; 
	ladders[] = {}; 
	expansion = 1; 
	model = "\ca\Structures_E\Wall\Wall_L\Wall_FenW2_6_EP1"; 
	//armor = 300; 
};
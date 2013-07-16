//class NonStrategic;
class BuiltItems: NonStrategic{};
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
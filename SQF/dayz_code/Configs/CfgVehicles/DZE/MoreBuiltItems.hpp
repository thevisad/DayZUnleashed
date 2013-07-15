// TODO: Move to BuiltItems 
// class Plastic_Pole_EP1;
class Sign_1L_Noentry_EP1;
class Plastic_Pole_EP1_DZ: Sign_1L_Noentry_EP1
{
	scope = 2;
	// destrType = "DestructNo"; 
	offset[] = {0,2.5,0};
	displayName = "30m Plot Pole";
	vehicleClass = "Fortifications";
	removeoutput[] = {{"30m_plot_kit",1}};
};
class Land_covering_hut_EP1;
class CanvasHut_DZ: Land_covering_hut_EP1
{
	armor = 200;
	scope = 2;
	offset[] = {0,2.5,1};
	displayName = "Canvas Hut";
	vehicleClass = "Fortifications";
};
class Land_CamoNet_EAST_EP1;
class DesertCamoNet_DZ: Land_CamoNet_EAST_EP1
{
	armor = 300;
	destrType = "DestructNo";
	scope = 2;
	offset[] = {0,5,0};
	displayName = "Desert Camo Net";
	vehicleClass = "Fortifications";
	removeoutput[] = {{"desert_net_kit",1}};
};
class Land_CamoNet_EAST;
class ForestCamoNet_DZ: Land_CamoNet_EAST
{
	armor = 300;
	destrType = "DestructNo";
	scope = 2;
	offset[] = {0,5,0};
	displayName = "Forest Camo Net";
	vehicleClass = "Fortifications";
	removeoutput[] = {{"forest_net_kit",1}};
};
class Land_CamoNetB_EAST_EP1;
class DesertLargeCamoNet_DZ: Land_CamoNetB_EAST_EP1
{
	armor = 300;
	destrType = "DestructNo";
	scope = 2;
	offset[] = {0,9,0};
	displayName = "Large Desert Camo Net";
	vehicleClass = "Fortifications";
	removeoutput[] = {{"desert_large_net_kit",1}};
};
class Land_Misc_deerstand;
class DeerStand_DZ: Land_Misc_deerstand
{
	armor = 300;
	// destrType = "DestructNo";
	scope = 2;
	offset[] = {0,5,0};
	displayName = "Deer Stand";
	vehicleClass = "Fortifications";
	removeoutput[] = {{"deer_stand_kit",1}};
};
class Land_CamoNetB_EAST;
class ForestLargeCamoNet_DZ: Land_CamoNetB_EAST
{
	armor = 300;
	destrType = "DestructNo";
	scope = 2;
	offset[] = {0,9,0};
	displayName = "Large Forest Camo Net";
	vehicleClass = "Fortifications";
	removeoutput[] = {{"forest_large_net_kit",1}};
};

class Land_fortified_nest_small_EP1;
class SandNest_DZ: Land_fortified_nest_small_EP1
{
	armor = 400;
	scope = 2;
	offset[] = {0,3,1};
	displayName = "Sandbag Nest";
	vehicleClass = "Fortifications";
	removeoutput[] = {{"sandbag_nest_kit",1}};
};
class Land_Wall_Gate_Ind1_L;
class MetalGate_DZ: Land_Wall_Gate_Ind1_L
{
	armor = 400;
	scope = 2;
	offset[] = {0,2.5,1};
	displayName = "Rusty Gate";
	vehicleClass = "Fortifications";
	removeoutput[] = {{"rusty_gate_kit",1}};
};
class Land_KBud;
class OutHouse_DZ: Land_KBud
{
	armor = 200;
	scope = 2;
	offset[] = {0,2.5,1};
	displayName = "Outhouse";
	vehicleClass = "Fortifications";
	transportMaxMagazines = 4;
	transportMaxWeapons = 4;
	transportMaxBackpacks = 4;
	constructioncount = 2;
	class transportmagazines
	{
		class _xx_ItemTrashToiletpaper
		{
			magazine = "ItemTrashToiletpaper";
			count = 1;
		};
	};
};
class Land_Shed_M01;
class StorageShed_DZ: Land_Shed_M01
{
	armor = 800;
	scope = 2;
	offset[] = {0,2.5,1};
	displayName = "Storage Shed";
	vehicleClass = "Fortifications";
	transportMaxMagazines = 400;
	transportMaxWeapons = 40;
	transportMaxBackpacks = 20;
	constructioncount = 6;
};
class Fence_corrugated_plate;
class Fence_corrugated_DZ: Fence_corrugated_plate
{
	armor = 300;
	scope = 2;
	offset[] = {0,2.5,1};
	removeoutput[] = {{"ItemCorrugated",1}};
	displayName = "Corrugated Fence";
	vehicleClass = "Fortifications";
	
};
class Land_kulna;
class WoodShack_DZ: Land_kulna
{
	scope = 2;
	destrType = "DestructBuilding"; 
	offset[] = {0,2.5,1.3};
	armor = 400;
	displayName = "Wooden Shack";
	vehicleClass = "Fortifications";
	transportMaxMagazines = 100;
	transportMaxWeapons = 10;
	transportMaxBackpacks = 5;
	constructioncount = 5;
};
class Land_Shed_wooden;
class Wooden_shed_DZ: Land_Shed_wooden
{
	scope = 2;
	destrType = "DestructBuilding"; 
	//cost = 100;
	offset[] = {0,2.5,1};
	armor = 400;
	displayName = "Wooden Shed";
	vehicleClass = "Fortifications";
	transportMaxMagazines = 200;
	transportMaxWeapons = 20;
	transportMaxBackpacks = 10;
};

class Wall_FenW2_6_EP1;
class StickFence_DZ: Wall_FenW2_6_EP1
{
	destrType = "DestructTree"; 
	armor = 200;
	scope = 2;
	offset[] = {0,2.5,0};
	displayName = "Stick Fence";
	vehicleClass = "Fortifications";
};
/* Needs ASC EU Lights Mod http://www.armaholic.com/page.php?id=12076
class ASC_EU_LHVOld;
class LightPole_DZ: ASC_EU_LHVOld
{
	armor = 200;
	scope = 2;
	offset[] = {0,2.5,0};
	displayName = "Light Pole";
	vehicleClass = "Fortifications";
};
*/
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
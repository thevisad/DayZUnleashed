class CfgMagazines {
	class CA_Magazine;	// External class reference
	class FoodDrink; //External class reference
	class ItemSodaEmpty; //External class reference
	class FoodEdible; //External class reference
	class TrashTinCan; //External class reference
	class HandGrenade; //External class reference
	
	class Quiver : CA_Magazine {
		scope = public;
		ammo = "WoodenArrow";
		count = 6;
		type = 256;
		descriptionShort = $STR_ITEMQUIVER_CODE_DESC;
		displayName = $STR_ITEMQUIVER_CODE_NAME;
		initSpeed = 150;
		model = "\z\addons\dayz_communityassets\models\quiver";
		picture = "\z\addons\dayz_communityassets\pictures\equip_quiver_ca.paa";
		class ItemActions {
			class TakeArrow {
				text = "Take arrow from quiver";
				script = "spawn player_takearrow;";
			};
			class FillQuiver {
				text = "Fill quiver";
				script = "spawn player_fillquiver;";
			};
		};
	};
	
	class WoodenArrow : CA_Magazine {
		scope = public;
		displayName = $STR_ITEMWOODENARROW_CODE_NAME;
		model = "\dayz_weapons\models\bolt_gear";
		picture = "\z\addons\dayz_communityassets\pictures\equip_warrow_ca.paa";
		ammo = "WoodenArrow";
		count = 1;
		initSpeed = 150;
		descriptionShort = $STR_ITEMWOODENARROW_CODE_DESC;
		
		class ItemActions {
			class CreateQuiver {
				text = "Create quiver";
				script = "spawn player_createquiver;";
			};
		};
	};
	
	class ItemSoda : FoodDrink {
		scope = public;
		sfx = "soda";
		sfxdis = 3;
	};
	
	class FoodRaw : FoodEdible {
		scope = public;
		count = 1;
		type = 256;
	};
	
	class FoodCooked : FoodEdible {
		scope = public;
		count = 1;
	};
	
	//add here any magazines types you want to be re-combined like shown before
	
	#include "CfgMagazines\CombineMag.hpp"
	#include "CfgMagazines\FoodEdible.hpp"
	#include "CfgMagazines\FoodMeatCooked.hpp"
	#include "CfgMagazines\FoodMeatRaw.hpp"
	#include "CfgMagazines\ItemSoda.hpp"
	#include "CfgMagazines\ItemSodaEmpty.hpp"
	#include "CfgMagazines\MeleeSwing.hpp"
	#include "CfgMagazines\TrashTinCan.hpp"
	#include "CfgMagazines\Deployable.hpp"
	#include "CfgMagazines\TrashLoot.hpp"
	//Chemlight and Roadflare
	#include "CfgMagazines\HandGrenade.hpp"
	//Skins
	#include "CfgMagazines\Skin.hpp"
	//Fuelcan
	#include "CfgMagazines\Fuelcan.hpp"
	#include "CfgMagazines\Jerrycan.hpp"
	// fuel barrel
	#include "CfgMagazines\DZE\ItemFuelBarrel.hpp"
	
	//crafting
	#include "CfgCrafting\Mats.hpp"
	
	// DZE Building kits
	#include "CfgMagazines\DZE\BuildingKits.hpp"
	
	// ItemGenerator
	#include "CfgMagazines\DZE\ItemGenerator.hpp"
	
	// DZE Fishes
	#include "CfgMagazines\DZE\FoodFishCooked.hpp"
	#include "CfgMagazines\DZE\FoodFishRaw.hpp"
	
	// Vault
	#include "CfgMagazines\DZE\ItemVault.hpp"
	
	// Wood
	#include "CfgMagazines\DZE\PartWoodPile.hpp"
	#include "CfgMagazines\DZE\PartWoodLumber.hpp"
	#include "CfgMagazines\DZE\PartWoodPlywood.hpp"

	// blood bag
	#include "CfgMagazines\ItemBloodBag.hpp"

	//  ItemBurlap
	#include "CfgMagazines\DZE\ItemBurlap.hpp"
	//  ItemCanvas
	#include "CfgMagazines\DZE\ItemCanvas.hpp"
	// ItemCorrugated 
	#include "CfgMagazines\DZE\ItemCorrugated.hpp"
	// ItemFuelPump
	#include "CfgMagazines\DZE\ItemFuelPump.hpp"
	// ItemBriefcase
	#include "CfgMagazines\DZE\ItemBriefcase.hpp"
	// ItemPole
	#include "CfgMagazines\DZE\ItemPole.hpp"
	// ItemSandbag
	#include "CfgMagazines\DZE\ItemSandbag.hpp"
	// ItemSandbagLarge
	#include "CfgMagazines\DZE\ItemSandbagLarge.hpp"
	// bulk 
	#include "CfgMagazines\DZE\bulk.hpp"
	// FoodBioMeat 
	#include "CfgMagazines\DZE\FoodBioMeat.hpp"
	// ItemLightBulb 
	#include "CfgMagazines\DZE\ItemLightBulb.hpp"
	// ItemSodaOrangeSherbet
	#include "CfgMagazines\DZE\ItemSodaOrangeSherbet.hpp"
	// ItemZombieParts
	#include "CfgMagazines\DZE\ItemZombieParts.hpp"
	// MetalBars
	#include "CfgMagazines\DZE\MetalBars.hpp"
	// Bulk Supply Crates
	#include "CfgMagazines\DZE\bulk.hpp"
	// Cans with smelting
	// #include "CfgMagazines\DZE\TrashTinCan.hpp"
	// #include "CfgMagazines\DZE\ItemSodaEmpty.hpp"
	
};

class CfgMagazines {
	class CA_Magazine;	// External class reference
	class FoodDrink; //External class reference
	//class ItemSodaEmpty; //External class reference
	class FoodEdible; //External class reference
	//class TrashTinCan; //External class reference
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
	
	#include "CfgMagazines\MeleeSwing.hpp"
	
	#include "CfgMagazines\Deployable.hpp"
	#include "CfgMagazines\TrashLoot.hpp"

	//Chemlight and Roadflare
	#include "CfgMagazines\HandGrenade.hpp"
	//Skins
	#include "CfgMagazines\Skin.hpp"
	//Fuelcan
	//#include "CfgMagazines\Fuelcan.hpp"
	//#include "CfgMagazines\Jerrycan.hpp"
	
	//crafting
	#include "CfgCrafting\Mats.hpp"
	#include "CfgMagazines\Unleashed_weapons.hpp"

	// blood bag
	#include "CfgMagazines\ItemBloodBag.hpp"
	
	
	#include "CfgMagazines\DZE\BuildingKits.hpp"
	#include "CfgMagazines\DZE\bulk.hpp"
	#include "CfgMagazines\DZE\CinderBlocks.hpp"
	#include "CfgMagazines\DZE\FoodBioMeat.hpp"
	#include "CfgMagazines\DZE\FoodFishCooked.hpp"
	#include "CfgMagazines\DZE\FoodFishRaw.hpp"
	#include "CfgMagazines\DZE\ItemBriefcase.hpp"
	#include "CfgMagazines\DZE\ItemBurlap.hpp"
	#include "CfgMagazines\DZE\ItemCanvas.hpp"
	#include "CfgMagazines\DZE\ItemComboLock.hpp"
	#include "CfgMagazines\DZE\ItemCorrugated.hpp"
	#include "CfgMagazines\DZE\ItemDocument.hpp"
	#include "CfgMagazines\DZE\ItemFuelBarrel.hpp"
	#include "CfgMagazines\DZE\ItemFuelPump.hpp"
	#include "CfgMagazines\DZE\ItemGenerator.hpp"
	#include "CfgMagazines\DZE\ItemJerrycan.hpp"
	#include "CfgMagazines\DZE\ItemLightBulb.hpp"
	#include "CfgMagazines\DZE\ItemMixOil.hpp"
	#include "CfgMagazines\DZE\ItemNewsPaper.hpp"
	#include "CfgMagazines\DZE\ItemPartGeneric.hpp"
	#include "CfgMagazines\DZE\ItemPole.hpp"
	#include "CfgMagazines\DZE\ItemSandbag.hpp"
	#include "CfgMagazines\DZE\ItemSandbagLarge.hpp"
	#include "CfgMagazines\DZE\ItemSledgeHead.hpp"
	#include "CfgMagazines\DZE\ItemSodaEmpty.hpp"
	#include "CfgMagazines\DZE\ItemSodaOrangeSherbet.hpp"
	#include "CfgMagazines\DZE\ItemSodaRbull.hpp"
	#include "CfgMagazines\DZE\ItemTankTrap.hpp"
	#include "CfgMagazines\DZE\ItemTent.hpp"
	#include "CfgMagazines\DZE\ItemVault.hpp"
	#include "CfgMagazines\DZE\ItemZombieParts.hpp"
	#include "CfgMagazines\DZE\MetalBars.hpp"
	#include "CfgMagazines\DZE\PartEngine.hpp"
	#include "CfgMagazines\DZE\PartOre.hpp"
	#include "CfgMagazines\DZE\PartVRotor.hpp"
	#include "CfgMagazines\DZE\PartWoodLumber.hpp"
	#include "CfgMagazines\DZE\PartWoodPile.hpp"
	#include "CfgMagazines\DZE\PartWoodPlywood.hpp"
	#include "CfgMagazines\DZE\TrashTinCan.hpp"
	#include "CfgMagazines\TrashTinCan.hpp"
	#include "CfgMagazines\ItemSodaEmpty.hpp"
	//#include "CfgMagazines\DZE_CfgMagazines.hpp"
	//#include "CfgMagazines\Fuelcan.hpp"
};

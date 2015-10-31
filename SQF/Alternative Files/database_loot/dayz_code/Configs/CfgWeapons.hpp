class CfgWeapons {
	class Default {
		canlock = 0;
	};
	class ItemCore;
	class Crossbow;
	class Rifle;
	class MeleeWeapon : Rifle {
		canDrop = true;
	};
	class PistolCore;	// External class reference
	class Pistol;	// External class reference
	class GrenadeLauncher;  // External class reference
	//class M107_DZ;	// External class reference
	//class BAF_AS50_scoped;	// External class reference
	class DMR;	// External class reference
	
	class ItemKnife: ItemCore
	{
		scope = 2;
		displayName = $STR_EQUIP_NAME_4;
		model = "\dayz_equip\models\knife_gear.p3d";
		picture = "\dayz_equip\textures\equip_knife_ca.paa";
		descriptionShort = $STR_EQUIP_DESC_4;
		class ItemActions
		{
			class Use
			{
				text="Harvest Plant";
				script="spawn player_harvestPlant;";
			};
		};
	};
		
	#include "CfgWeapons\Melee\MeleeMachete.hpp"
	#include "CfgWeapons\Melee\ItemMachete.hpp"
	#include "CfgWeapons\Melee\MeleeHatchet.hpp"
	#include "CfgWeapons\Melee\ItemHatchet.hpp"
	#include "CfgWeapons\Melee\MeleeCrowbar.hpp"
	#include "CfgWeapons\Melee\ItemCrowbar.hpp"
	#include "CfgWeapons\Melee\Crossbow.hpp"
	#include "CfgWeapons\Melee\MeleeBaseBallBat.hpp"
	#include "CfgWeapons\Melee\MeleeBaseBallBatBarbed.hpp"
	#include "CfgWeapons\Melee\MeleeBaseBallBatNails.hpp"
	#include "CfgWeapons\DZE\MeleeSledgehammer.hpp"
	#include "CfgWeapons\Item\ItemWatch.hpp"
	#include "CfgWeapons\Item\ItemMap.hpp"
	#include "CfgWeapons\Item\ItemMap_Debug.hpp"
	#include "CfgWeapons\Item\ItemCompass.hpp"
	#include "CfgWeapons\Item\Flashlight.hpp"
	#include "CfgWeapons\Item\Flare.hpp"
	#include "CfgWeapons\Item\ItemEtool.hpp"
	#include "CfgWeapons\Item\ItemShovel.hpp"
	
	//Sniper Rifle
	//#include "CfgWeapons\Weapon\Sniper\AS50.hpp"
	#include "CfgWeapons\Weapon\Sniper\M107.hpp"
	
	#include "CfgWeapons\Weapon\Sniper\DMR_DZ.hpp"
	//#include "CfgWeapons\Weapon\Sniper\DMR_DZ2.hpp"
	//#include "CfgWeapons\Weapon\Sniper\DMR_DZ3.hpp"
	
	//crafting
	//#include "CfgCrafting\CfgCrafting.hpp"
	
	// Fishing pole melee
	#include "CfgWeapons\DZE\MeleeFishingPole.hpp"
	// Fishing pole toolbelt and loot item
	#include "CfgWeapons\DZE\ItemFishingPole.hpp"

};
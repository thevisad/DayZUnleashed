#include "CfgBackpacks.hpp"
#include "CfgBuilding.hpp"
#include "CfgCivilian.hpp"
#include "CfgDrink.hpp"
#include "CfgFood.hpp"
#include "CfgGeneric.hpp"
#include "CfgMedical.hpp"
#include "CfgMilitary.hpp"
#include "CfgSkins.hpp"
#include "CfgTrash.hpp"
#include "CfgVehicleParts.hpp"

class CfgBuildingLoot {
	class Default {
		zombieChance = 0.2;
		minRoaming = 0;
		maxRoaming = 2;
		zombieClass[] = {"zZombie_Base","z_hunter","z_teacher","z_suit1","z_suit2","z_worker1","z_worker2","z_worker3","z_villager1","z_villager2","z_villager3"};
		lootChance = 0;
		lootPos[] = {};
		lootType[] = {};
		hangPos[] = {};
		vehPos[] = {};
	};
	class Master {
		weapons[] = {"SMAW","Javelin","G36C","Stinger"};
	};
	class Church: Default {
		zombieChance = 0.3;
		minRoaming = 1;
		maxRoaming = 3;
		zombieClass[] = {"z_priest","z_priest","z_priest"};
		lootChance = 0.3;
		lootPos[] = {};
		lootType[] = {
			{"","generic",0.25},
			{"","food",0.05},
			{"","trash",0.20},
			{"","medical",0.05},
			{"","civskins",0.05},
			{"","civilian",0.15},
			{"","drink",0.25}
		};
	};
	class Residential: Default {
		zombieChance = 0.5;
		maxRoaming = 4;
		zombieClass[] = {"zZombie_Base","z_hunter","z_teacher","z_villager1","z_villager2","z_villager3"};
		lootChance = 0.4;
		lootPos[] = {};
		lootType[] = {			
			{"","generic",0.25},
			{"","food",0.05},
			{"","trash",0.15},
			{"","medical",0.05},
			{"","civskins",0.05},
			{"","civilian",0.15},
			{"","drink",0.25},
			{"","military",0.05}
		};
	};

		class Estate: Default {
		zombieChance = 0.4;
		maxRoaming = 4;
		zombieClass[] = {"zZombie_Base","z_hunter","z_teacher","z_villager1","z_villager2","z_villager3"};
		lootChance = 0.6;
		lootPos[] = {};		
		itemType[] =	{
			{"","generic",0.25},
			{"","food",0.05},
			{"","trash",0.20},
			{"","medical",0.05},
			{"","civskins",0.05},
			{"","civilian",0.15},
			{"","drink",0.25}
		};			
	};
	class Office: Residential {
		maxRoaming = 3;
		lootChance = 0.2;
		zombieClass[] = {"z_suit1","z_suit2"};
	};

	class Industrial: Default { //254
		zombieChance = 0.4;
		zombieClass[] = {"z_worker1","z_worker2","z_worker3"};
		maxRoaming = 2;
		lootChance = 0.3;
		lootPos[] = {};
		lootType[] = {
			{"","generic",0.20},
			{"","food",0.05},
			{"","trash",0.15},
			{"","medical",0.05},
			{"","civskins",0.05},
			{"","civilian",0.15},
			{"","drink",0.25},
			{"","vehicleparts",0.10}
		};
	};
	class InfectedCamps: Default { //5
		lootPos[] = {};
		lootType[] = {
			{"","military",0.10},
			{"","food",0.05},
			{"","trash",0.15},
			{"","medical",0.05},
			{"","drink",0.25},
			{"","generic",0.20},
			{"","civskins",0.10},
			{"","milskins",0.30}
		};
	};
	class Farm: Default {
		zombieChance = 0.5;
		maxRoaming = 3;
		zombieClass[] = {"zZombie_Base","z_hunter","z_hunter","z_hunter","z_villager1","z_villager2","z_villager3"};
		lootChance = 0.9;
		lootPos[] = {};
		lootType[] =	{
			{"","generic",0.25},
			{"","food",0.05},
			{"","trash",0.15},
			{"","medical",0.05},
			{"","civskins",0.05},
			{"","civilian",0.15},
			{"","drink",0.25},
			{"","military",0.05}
		};
	};
	class Supermarket: Default {
		lootChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.3;
		zombieClass[] = {"zZombie_Base","zZombie_Base","z_teacher","z_suit1","z_suit2"};
		lootType[] = {
			{"","generic",0.25},
			{"","food",0.25},
			{"","trash",0.10},
			{"","medical",0.05},
			{"","civskins",0.05},
			{"","civilian",0.05},
			{"","drink",0.25}
		};
	};
	class HeliCrash: Default {
		zombieChance = 0.4;
		maxRoaming = 2;
		zombieClass[] = {"z_soldier_pilot"};
		lootChance = 0.5;
		lootPos[] = {};
		lootType[] = {
			{"","generic",0.10},
			{"","food",0.05},
			{"","trash",0.10},
			{"","medical",0.15},
			{"","milskins",0.15},
			{"","civilian",0.05},
			{"","drink",0.05},
			{"","military",0.35}
		};
	};	
	class HeliCrashWEST: Default {
		zombieChance = 0.4;
		maxRoaming = 2;
		zombieClass[] = {"z_soldier_pilot"};
		lootChance = 0.5;
		lootPos[] = {};
		lootType[] = {
			{"","generic",0.03},
			{"","milgeneric",0.07},
			{"","food",0.05},
			{"","trash",0.10},
			{"","medical",0.15},
			{"","milskins",0.15},
			{"","civilian",0.05},
			{"","drink",0.05},
			{"","military",0.35}
		};
	};
	class HeliCrashEAST: Default {
		zombieChance = 0.5;
		maxRoaming = 8;
		zombieClass[] = {"z_soldier_pilot"};
		lootChance = 0.5;
		lootPos[] = {};
		lootType[] = {
			{"","generic",0.03},
			{"","milgeneric",0.07},
			{"","food",0.05},
			{"","trash",0.10},
			{"","medical",0.15},
			{"","milskins",0.15},
			{"","civilian",0.05},
			{"","drink",0.05},
			{"","military",0.35}
		};
	};
	class Hospital: Default {
		zombieChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieClass[] = {"z_doctor","z_doctor","z_doctor"};
		lootChance = 0.2;
		lootPos[] = {};
		lootType[] = {
			{"","medical",0.50},
			{"","hospital",0.30},
			{"","trash",0.10},
			{"","drink",0.05},
			{"","generic",0.10}
		};
	};
	class Military: Default {
		zombieChance = 0.3;
		maxRoaming = 6;
		zombieClass[] = {"z_soldier","z_soldier_heavy","z_policeman"};
		lootChance = 0.2;
		lootPos[] = {};
		lootType[] = {
			{"","generic",0.03},
			{"","milgeneric",0.07},
			{"","food",0.05},
			{"","trash",0.05},
			{"","medical",0.05},
			{"","milskins",0.10},
			{"","civskins",0.05},
			{"","drink",0.05},
			{"","hospital",0.05},
			{"","military",0.50}
		};
	};
	class MilitarySpecial: Default {
		zombieChance = 0.8;
		minRoaming = 2;
		maxRoaming = 6;
		zombieClass[] = {"z_soldier_heavy"};
		lootChance = 0.1;
		lootPos[] = {};
		lootType[] = {
			{"","generic",0.03},
			{"","milgeneric",0.07},
			{"","food",0.04},
			{"","trash",0.03},
			{"","medical",0.03},
			{"","milskins",0.05},
			{"","civskins",0.05},
			{"","drink",0.05},
			{"","hospital",0.05},
			{"","military",0.60}
		};
	};
	class Hunting: Default {
		zombieChance = 0.6;
		minRoaming = 1;
		maxRoaming = 3;
		zombieClass[] = {"z_hunter","z_hunter","z_hunter"};
		lootChance = 0.8;
		lootPos[] = {};
		lootType[] = {
			{"","generic",0.20},
			{"","milgeneric",0.05},
			{"","food",0.05},
			{"","trash",0.15},
			{"","medical",0.05},
			{"","civskins",0.05},
			{"","civilian",0.15},
			{"","drink",0.25},
			{"","military",0.05}
		};
	};
#include "CfgBuildingPos.hpp"
};

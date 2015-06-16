class CfgBuildingLoot {
	class Default {
		zombieChance = 0.2;
		minRoaming = 0;
		maxRoaming = 4;
		//zombieClass[] = {"zZombie_new_Base","z_new_villager2","z_new_villager3","z_new_villager4","z_villager1","z_villager2","z_villager3","z_new_worker_base","z_worker1","z_worker2","z_worker3","z_new_worker2","z_new_worker3","z_new_worker4","z_policeman","z_new_policeman","z_new_policeman1","z_suit1","z_suit2","z_doctor","z_teacher","z_hunter","z_priest","z_soldier","z_soldier_heavy"};
		lootChance = 0;
		lootPos[] = {};
		lootType[] = {{"civgeneric",0.25},
            {"activeloot",0.10}};
		hangPos[] = {};
		vehPos[] = {};
	};
	class Master {
		weapons[] = {"SMAW","Javelin","G36C","Stinger"};
		lootType[] = {{"civgeneric",0.25},
            {"activeloot",0.10}};
	};
	class Church: Default {
		zombieChance = 0.3;
		minRoaming = 1;
		maxRoaming = 4;
		zombieClass[] = {"z_priest","z_priest","z_priest","z_teacher","z_hunter","z_priest","z_suit1","z_suit2","z_new_villager2","z_new_villager3","z_new_villager4","z_villager1","z_villager2","z_villager3","z_new_worker_base","z_worker1","z_worker2","z_worker3","z_new_worker2","z_new_worker3","z_new_worker4"};
		lootChance = 0.3;
		lootPos[] = {};
		lootType[] = {
			{"civgeneric",0.25},
			{"food",0.05},
			{"trash",0.20},
			{"medical",0.05},
			{"civskins",0.05},
			{"civilian",0.25},
			{"drink",0.25},
            {"activeloot",0.10}
		};
	};
	class Residential: Default {
		zombieChance = 0.5;
		minRoaming = 0;
		maxRoaming = 4;
		zombieClass[] = {"zZombie_new_Base","z_teacher","z_hunter","z_priest","z_suit1","z_suit2","z_new_villager2","z_new_villager3","z_new_villager4","z_villager1","z_villager2","z_villager3","z_new_worker_base","z_worker1","z_worker2","z_worker3","z_new_worker2","z_new_worker3","z_new_worker4"};
		lootChance = 0.4;
		lootPos[] = {};
		lootType[] = {			
			{"civgeneric",0.25},
			{"food",0.05},
			{"trash",0.15},
			{"medical",0.05},
			{"civskins",0.05},
			{"civilian",0.25},
			{"fuelitems",0.05},
			{"drink",0.25},
			{"buildingitems",0.05},
			{"craftingitems",0.05},
			{"normalbackpacks",0.05},
			{"buildingkits",0.05},
            {"activeloot",0.10}
		};
	};

	class Estate: Default {
		zombieChance = 0.4;
		minRoaming = 0;
		maxRoaming = 4;
		zombieClass[] = {"zZombie_new_Base","z_teacher","z_hunter","z_priest","z_suit1","z_suit2","z_new_villager2","z_new_villager3","z_new_villager4","z_villager1","z_villager2","z_villager3","z_new_worker_base","z_worker1","z_worker2","z_worker3","z_new_worker2","z_new_worker3","z_new_worker4"};
		lootChance = 0.6;
		lootPos[] = {};		
		lootType[] =	{{"activeloot",0.10}};			
	};
	class Office: Residential {
		zombieChance = 0.4;
		minRoaming = 0;
		maxRoaming = 4;
		zombieClass[] = {"zZombie_new_Base","z_teacher","z_suit1","z_suit2","z_new_villager2","z_new_villager3","z_new_villager4","z_villager1","z_villager2","z_villager3"};
		lootType[] = {			
			{"civgeneric",0.25},
			{"food",0.05},
			{"trash",0.15},
			{"medical",0.05},
			{"civskins",0.05},
			{"civilian",0.25},
			{"fuelitems",0.05},
			{"drink",0.25},
			{"buildingitems",0.05},
			{"craftingitems",0.05},
			{"normalbackpacks",0.05},
			{"buildingkits",0.05},
            {"activeloot",0.10}
		};
	};

	class Industrial: Default { //254
		zombieChance = 0.6;
		minRoaming = 0;
		maxRoaming = 4;
		zombieClass[] = {"z_new_worker_base","z_worker1","z_worker2","z_worker3","z_new_worker2","z_new_worker3","z_new_worker4"};
		lootChance = 0.3;
		lootPos[] = {};
		lootType[] = {
			{"civgeneric",0.20},
			{"food",0.05},
			{"trash",0.15},
			{"medical",0.05},
			{"fuelitems",0.15},
			{"civskins",0.05},
			{"bulkitems",0.05},
			{"civilian",0.25},
			{"drink",0.25},
			{"craftingitems",0.05},
			{"normalbackpacks",0.05},
			{"buildingkits",0.15},
			{"rarebuildingitems",0.01},
			{"buildingitems",0.15},
			{"equipment",0.15},
			{"rarebackpacks",0.01},
			{"vehicleparts",0.10},
            {"activeloot",0.10}
		};
	};
	class InfectedCamps: Default { //5
		zombieChance = 0.5;
		minRoaming = 1;
		maxRoaming = 4;
		zombieClass[] = {"z_hunter","z_soldier","z_soldier_heavy"};
		lootPos[] = {};
		lootType[] = {
			{"military",0.10},
			{"food",0.05},
			{"trash",0.15},
			{"medical",0.05},
			{"hospital",0.05},
			{"drink",0.25},
			{"civgeneric",0.20},
			{"civskins",0.10},
			{"fuelitems",0.05},
			{"normalbackpacks",0.10},
			{"buildingitems",0.10},
			{"buildingkits",0.10},
			{"craftingitems",0.05},
			{"equipment",0.15},
			{"rarebuildingitems",0.01},
			{"rarebackpacks",0.02},
			{"vehicleparts",0.10},
			{"milskins",0.30},
            {"activeloot",0.10}
		};
	};
	class Farm: Default {
		zombieChance = 0.5;
		minRoaming = 1;
		maxRoaming = 5;
		zombieClass[] = {"zZombie_new_Base","z_hunter","z_hunter","z_hunter","z_villager1","z_villager2","z_villager3"};
		lootChance = 0.9;
		lootPos[] = {};
		lootType[] =	{
			{"civgeneric",0.25},
			{"food",0.05},
			{"fuelitems",0.05},
			{"trash",0.15},
			{"buildingitems",0.15},
			{"craftingitems",0.05},
			{"medical",0.05},
			{"equipment",0.15},
			{"civskins",0.05},
			{"civilian",0.25},
			{"buildingkits",0.15},
			{"drink",0.25},
			{"vehicleparts",0.10},
            {"activeloot",0.10}
		};
	};
	class Supermarket: Default {
		zombieChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieClass[] = {"z_new_villager2","z_new_villager3","z_new_villager4","z_villager1","z_villager2","z_villager3","z_new_worker_base","z_worker1","z_worker2","z_worker3","z_new_worker2","z_new_worker3","z_new_worker4","z_policeman","z_new_policeman","z_new_policeman1","z_suit1","z_suit2","z_doctor","z_teacher","z_hunter","z_priest","z_soldier"};
		lootType[] = {
			{"civgeneric",0.25},
			{"food",0.25},
			{"trash",0.10},
			{"medical",0.05},
			{"buildingkits",0.05},
			{"buildingitems",0.05},
			{"craftingitems",0.05},
			{"civskins",0.05},
			{"bulkitems",0.05},
			{"civilian",0.15},
			{"drink",0.25},
			{"equipment",0.15},
			{"normalbackpacks",0.15},
            {"activeloot",0.10}
		};
	};
	class HeliCrash: Default {
		zombieChance = 0.7;
		minRoaming = 2;
		maxRoaming = 8;
		zombieClass[] = {"z_soldier","z_soldier_pilot","z_soldier_heavy","z_elite","z_doctor"};
		lootChance = 0.5;
		lootPos[] = {};
		lootType[] = {
			{"civgeneric",0.10},
			{"food",0.05},
			{"trash",0.10},
			{"medical",0.15},
			{"craftingitems",0.05},
			{"milskins",0.15},
			{"fuelitems",0.05},
			{"civilian",0.15},
			{"drink",0.05},
			{"normalbackpacks",0.10},
			{"rarebackpacks",0.10},
			{"airparts",0.10},
			{"military",0.35},
			{"rarebuildingitems",0.01},
            {"activeloot",0.10}
		};
	};	
	class HeliCrashWEST: Default {
		zombieChance = 0.7;
		minRoaming = 2;
		maxRoaming = 8;
		zombieClass[] = {"z_soldier","z_soldier","z_soldier_pilot","z_soldier_heavy","z_elite","z_doctor"};
		lootChance = 0.5;
		lootPos[] = {};
		lootType[] = {
			{"civgeneric",0.03},
			{"milgeneric",0.07},
			{"food",0.05},
			{"trash",0.10},
			{"medical",0.15},
			{"milskins",0.15},
			{"civilian",0.15},
			{"drink",0.05},
			{"craftingitems",0.05},
			{"airparts",0.10},
			{"normalbackpacks",0.10},
			{"fuelitems",0.05},
			{"rarebackpacks",0.10},
			{"rarebuildingitems",0.01},
			{"military",0.35},
            {"activeloot",0.10}
		};
	};
	class HeliCrashEAST: Default {
		zombieChance = 0.7;
		minRoaming = 2;
		maxRoaming = 8;
		zombieClass[] = {"z_soldier","z_soldier","z_soldier_pilot","z_soldier_heavy","z_elite","z_doctor"};
		lootChance = 0.5;
		lootPos[] = {};
		lootType[] = {
			{"civgeneric",0.03},
			{"fuelitems",0.05},
			{"milgeneric",0.07},
			{"food",0.05},
			{"trash",0.10},
			{"medical",0.15},
			{"milskins",0.15},
			{"civilian",0.15},
			{"airparts",0.10},
			{"drink",0.05},
			{"normalbackpacks",0.10},
			{"craftingitems",0.05},
			{"rarebuildingitems",0.01},
			{"rarebackpacks",0.10},
			{"military",0.35},
            {"activeloot",0.10}
		};
	};
	class Hospital: Default {
		zombieChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieClass[] = {"z_new_villager2","z_new_villager3","z_new_villager4","z_villager1","z_villager2","z_villager3","z_doctor","z_doctor","z_doctor","z_doctor"};
		lootChance = 0.2;
		lootPos[] = {};
		lootType[] = {
			{"medical",0.50},
			{"hospital",0.30},
			{"trash",0.10},
			{"drink",0.05},
            {"activeloot",0.10}
		};
	};
	class Military: Default {
		zombieChance = 0.6;
		minRoaming = 2;
		maxRoaming = 6;
		zombieClass[] = {"z_policeman","z_new_policeman","z_new_policeman1","z_soldier","z_soldier_pilot","z_soldier_heavy","z_elite","z_doctor"};
		lootChance = 0.2;
		lootPos[] = {};
		lootType[] = {
			{"civgeneric",0.03},
			{"milgeneric",0.07},
			{"craftingitems",0.05},
			{"food",0.05},
			{"trash",0.05},
			{"medical",0.05},
			{"milskins",0.10},
			{"drink",0.05},
			{"airparts",0.05},
			{"normalbackpacks",0.05},
			{"fuelitems",0.05},
			{"rarebackpacks",0.20},
			{"hospital",0.05},
			{"vehicleparts",0.10},
			{"rarebuildingitems",0.01},
			{"military",0.30},
            {"activeloot",0.10}
		};
	};
	class MilitarySpecial: Default {
		zombieChance = 0.6;
		minRoaming = 2;
		maxRoaming = 6;
		zombieClass[] = {"z_soldier","z_soldier_pilot","z_soldier_heavy","z_elite","z_soldier_heavy","z_elite","z_soldier_heavy","z_elite","z_doctor"};
		lootChance = 0.1;
		lootPos[] = {};
		lootType[] = {
			{"civgeneric",0.03},
			{"milgeneric",0.07},
			{"food",0.04},
			{"trash",0.03},
			{"medical",0.03},
			{"milskins",0.05},
			{"drink",0.05},
			{"fuelitems",0.05},
			{"airparts",0.15},
			{"normalbackpacks",0.05},
			{"craftingitems",0.05},
			{"rarebackpacks",0.25},
			{"hospital",0.05},
			{"military",0.40},
			{"militaryspecial",0.15},
			{"rarebuildingitems",0.01},
            {"activeloot",0.10}
		};
	};
	class Hunting: Default {
		zombieChance = 0.6;
		minRoaming = 1;
		maxRoaming = 6;
		zombieClass[] = {"z_new_villager2","z_new_villager3","z_new_villager4","z_villager1","z_villager2","z_villager3","z_hunter","z_hunter","z_hunter","z_hunter"};
		lootChance = 0.8;
		lootPos[] = {};
		lootType[] = {
			{"civgeneric",0.20},
			{"food",0.05},
			{"trash",0.15},
			{"craftingitems",0.05},
			{"medical",0.05},
			{"civskins",0.05},
			{"civilian",0.25},
			{"hunt",0.15},
			{"equipment",0.15},
			{"drink",0.25},
            {"activeloot",0.10}
		};
	};
#include "CfgBuildingPos.hpp"
};

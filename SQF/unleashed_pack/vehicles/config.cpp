// Unleashed Vehicle Pack

#define TEast		0
#define TWest		1
#define TGuerrila		2
#define TCivilian		3
#define TSideUnknown		4
#define TEnemy		5
#define TFriendly		6
#define TLogic		7

#define private		0
#define protected		1
#define public		2

#define true	1
#define false	0

class CfgPatches {
	class unleashed_vehicles {
		units[] = {"Kamaz", "KamazOpen", "KamazRepair", "KamazRefuel"};
		weapons[] = {};
		requiredVersion = 0.1;
		requiredAddons[] = {"CAWheeled2", "CACharacters2", "CAWeapons"};
	};
};

class CfgVehicles {
	class kpfs_uaz451_light_blue;	// External class reference
	class kpfs_uaz451_blue;	// External class reference
	class kpfs_uaz451_red;	// External class reference
	class kpfs_uaz451_green;	// External class reference
	class kpfs_uaz451_yellow;	// External class reference
	class kpfs_uaz451_grey;	// External class reference
	class kpfs_uaz451_black;	// External class reference
	class kpfs_uaz451_pink;	// External class reference
	class kpfs_uaz451_aeroflot;	// External class reference
	class kpfs_uaz451_ff;	// External class reference
	class kpfs_uaz451_ambulance;	// External class reference

	
	
	class ul_uaz451_light_blue : kpfs_uaz451_light_blue {
		accuracy = 0.32;
		displayname = "Unleashed UAZ Light Blue";
		maxspeed = 110;
		hasgunner = 0;
		mapsize = 5;
		scope = 2;
		side = 2;
		crew = "";
		typicalCargo[] = {};
		transportMaxWeapons = 10;
		transportMaxMagazines = 50;
		transportmaxbackpacks = 2;
	};
	
	class ul_uaz451_blue : kpfs_uaz451_blue {
		accuracy = 0.32;
		displayname = "Unleashed UAZ Light Blue";
		maxspeed = 110;
		hasgunner = 0;
		mapsize = 5;
		scope = 2;
		side = 2;
		crew = "";
		typicalCargo[] = {};
		transportMaxWeapons = 10;
		transportMaxMagazines = 50;
		transportmaxbackpacks = 2;
	};
	
	class ul_uaz451_red : kpfs_uaz451_red {
		accuracy = 0.32;
		displayname = "Unleashed UAZ Red";
		maxspeed = 110;
		hasgunner = 0;
		mapsize = 5;
		scope = 2;
		side = 2;
		crew = "";
		typicalCargo[] = {};
		transportMaxWeapons = 10;
		transportMaxMagazines = 50;
		transportmaxbackpacks = 2;
	};
	
	class ul_uaz451_green : kpfs_uaz451_green {
		accuracy = 0.32;
		displayname = "Unleashed UAZ Green";
		maxspeed = 110;
		hasgunner = 0;
		mapsize = 5;
		scope = 2;
		side = 2;
		crew = "";
		typicalCargo[] = {};
		transportMaxWeapons = 10;
		transportMaxMagazines = 50;
		transportmaxbackpacks = 2;
	};
	
	class ul_uaz451_yellow : kpfs_uaz451_yellow {
		accuracy = 0.32;
		displayname = "Unleashed UAZ Yellow";
		maxspeed = 110;
		hasgunner = 0;
		mapsize = 5;
		scope = 2;
		side = 2;
		crew = "";
		typicalCargo[] = {};
		transportMaxWeapons = 10;
		transportMaxMagazines = 50;
		transportmaxbackpacks = 2;
	};
	
	class ul_uaz451_black : kpfs_uaz451_black {
		accuracy = 0.32;
		displayname = "Unleashed UAZ black";
		maxspeed = 110;
		hasgunner = 0;
		mapsize = 5;
		scope = 2;
		side = 2;
		crew = "";
		typicalCargo[] = {};
		transportMaxWeapons = 10;
		transportMaxMagazines = 50;
		transportmaxbackpacks = 2;
	};
	
	class ul_uaz451_pink : kpfs_uaz451_pink {
		accuracy = 0.32;
		displayname = "Unleashed UAZ pink";
		maxspeed = 110;
		hasgunner = 0;
		mapsize = 5;
		scope = 2;
		side = 2;
		crew = "";
		typicalCargo[] = {};
		transportMaxWeapons = 10;
		transportMaxMagazines = 50;
		transportmaxbackpacks = 2;
	};
	
	class ul_uaz451_aeroflot : kpfs_uaz451_aeroflot {
		accuracy = 0.32;
		displayname = "Unleashed UAZ aeroflot";
		maxspeed = 110;
		hasgunner = 0;
		mapsize = 5;
		scope = 2;
		side = 2;
		crew = "";
		typicalCargo[] = {};
		transportMaxWeapons = 10;
		transportMaxMagazines = 50;
		transportmaxbackpacks = 2;
	};
	
	class ul_uaz451_ff : kpfs_uaz451_ff {
		accuracy = 0.32;
		displayname = "Unleashed UAZ ff";
		maxspeed = 110;
		hasgunner = 0;
		mapsize = 5;
		scope = 2;
		side = 2;
		crew = "";
		typicalCargo[] = {};
		transportMaxWeapons = 10;
		transportMaxMagazines = 50;
		transportmaxbackpacks = 2;
	};
	
	class KamAZ_red;	// External class reference
	class KamAZ_Open_red;	// External class reference
	class KamAZ_dark_blue;	// External class reference
	class KamAZ_yellow;	// External class reference
	class KamAZ_Open_yellow;	// External class reference
	class KamAZ_Open_dark_blue;	// External class reference
	class KamAZ_Open_light_blue;	// External class reference
	class KamAZ_beige;	// External class reference
	class KamAZ_Open_beige;	// External class reference
	class KamAZ_white;	// External class reference
	class KamAZ_Open_white;	// External class reference
	class KamAZ_orange;	// External class reference
	class KamAZ_Open_orange;	// External class reference

	
	class ul_kamaz_red : KamAZ_red {
		accuracy = 0.32;
		displayname = "Unleashed KamaZ Red";
		maxspeed = 100;
		hasgunner = 0;
		mapsize = 5;
		scope = 2;
		side = 2;
		crew = "";
		typicalCargo[] = {};
		transportMaxWeapons = 15;
		transportMaxMagazines = 60;
		transportmaxbackpacks = 3;
	};
	
	class ul_kamaz_open_red : KamAZ_Open_red {
		accuracy = 0.32;
		displayname = "Unleashed KamaZ Open Red";
		maxspeed = 100;
		hasgunner = 0;
		mapsize = 5;
		scope = 2;
		side = 2;
		crew = "";
		typicalCargo[] = {};
		transportMaxWeapons = 15;
		transportMaxMagazines = 60;
		transportmaxbackpacks = 3;
	};
	
	class ul_kamaz_dark_blue : KamAZ_dark_blue {
		accuracy = 0.32;
		displayname = "Unleashed KamaZ Dark Blue";
		maxspeed = 100;
		hasgunner = 0;
		mapsize = 5;
		scope = 2;
		side = 2;
		crew = "";
		typicalCargo[] = {};
		transportMaxWeapons = 15;
		transportMaxMagazines = 60;
		transportmaxbackpacks = 3;
	};
	
	class ul_kamaz_open_light_blue : KamAZ_Open_light_blue {
		accuracy = 0.32;
		displayname = "Unleashed KamaZ light blue";
		maxspeed = 100;
		hasgunner = 0;
		mapsize = 5;
		scope = 2;
		side = 2;
		crew = "";
		typicalCargo[] = {};
		transportMaxWeapons = 15;
		transportMaxMagazines = 60;
		transportmaxbackpacks = 3;
	};
	
	class ul_kamaz_beige : KamAZ_beige {
		accuracy = 0.32;
		displayname = "Unleashed KamaZ beige";
		maxspeed = 100;
		hasgunner = 0;
		mapsize = 5;
		scope = 2;
		side = 2;
		crew = "";
		typicalCargo[] = {};
		transportMaxWeapons = 15;
		transportMaxMagazines = 60;
		transportmaxbackpacks = 3;
	};
	
	class ul_kamaz_open_beige : KamAZ_Open_beige {
		accuracy = 0.32;
		displayname = "Unleashed KamaZ Open beige";
		maxspeed = 100;
		hasgunner = 0;
		mapsize = 5;
		scope = 2;
		side = 2;
		crew = "";
		typicalCargo[] = {};
		transportMaxWeapons = 15;
		transportMaxMagazines = 60;
		transportmaxbackpacks = 3;
	};
	
	class ul_kamaz_open_white : KamAZ_Open_white {
		accuracy = 0.32;
		displayname = "Unleashed KamaZ Open white";
		maxspeed = 100;
		hasgunner = 0;
		mapsize = 5;
		scope = 2;
		side = 2;
		crew = "";
		typicalCargo[] = {};
		transportMaxWeapons = 15;
		transportMaxMagazines = 60;
		transportmaxbackpacks = 3;
	};
	
	class ul_kamaz_white : KamAZ_white {
		accuracy = 0.32;
		displayname = "Unleashed KamaZ white";
		maxspeed = 100;
		hasgunner = 0;
		mapsize = 5;
		scope = 2;
		side = 2;
		crew = "";
		typicalCargo[] = {};
		transportMaxWeapons = 15;
		transportMaxMagazines = 60;
		transportmaxbackpacks = 3;
	};
	
	class ul_kamaz_orange : KamAZ_orange {
		accuracy = 0.32;
		displayname = "Unleashed KamaZ orange";
		maxspeed = 100;
		hasgunner = 0;
		mapsize = 5;
		scope = 2;
		side = 2;
		crew = "";
		typicalCargo[] = {};
		transportMaxWeapons = 15;
		transportMaxMagazines = 60;
		transportmaxbackpacks = 3;
	};
	
	class ul_kamaz_open_orange : KamAZ_Open_orange {
		accuracy = 0.32;
		displayname = "Unleashed KamaZ Open orange";
		maxspeed = 100;
		hasgunner = 0;
		mapsize = 5;
		scope = 2;
		side = 2;
		crew = "";
		typicalCargo[] = {};
		transportMaxWeapons = 15;
		transportMaxMagazines = 60;
		transportmaxbackpacks = 3;
	};
};

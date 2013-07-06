class CfgPatches {
	class CAWheeled2_Kamaz {
		units[] = {"Kamaz", "KamazOpen", "KamazRepair", "KamazRefuel"};
		weapons[] = {};
		requiredVersion = 0.1;
		requiredAddons[] = {"CAWheeled2", "CACharacters2", "CAWeapons"};
	};
};

class CfgVehicles {
	class Kamaz_Base;	// External class reference
	class Kamaz;	// External class reference
	class KamazOpen;	// External class reference
	class KamazRepair;	// External class reference
	class KamazRefuel;	// External class reference
	

	class KamAZ_red :Kamaz {
		accuracy = 1000;
		side = 3;
		faction = "CIV";
		displayName = "KAMAZ-5350 (red)";
		crew = "Citizen1";
	   hiddenSelectionsTextures[] = {"\extra_kamaz\data\kamaz_kab_civ_co.paa", "\extra_kamaz\data\kamaz_kuz_civ_co.paa"};	
	};

	class KamAZ_Open_red :KamazOpen {
		accuracy = 1000;
		side = 3;
		faction = "CIV";		
		displayName = "KAMAZ-5350 (red, open)";
		crew = "Citizen1";		
	   hiddenSelectionsTextures[] = {"\extra_kamaz\data\kamaz_kab_civ_co.paa", "\extra_kamaz\data\kamaz_kuz_civ4_co.paa"};	
	};	

	class KamAZ_yellow :Kamaz {
		accuracy = 1000;
		side = 3;
		faction = "CIV";
		displayName = "KAMAZ-5350 (yellow)";
		crew = "Citizen3";
	   hiddenSelectionsTextures[] = {"\extra_kamaz\data\kamaz_kab_civ2_co.paa", "\extra_kamaz\data\kamaz_kuz_civ2_co.paa"};	
	};			
	
	class KamAZ_Open_yellow :KamazOpen {
		accuracy = 1000;
		side = 3;
		faction = "CIV";		
		displayName = "KAMAZ-5350 (yellow, open)";
		crew = "Citizen3";		
	   hiddenSelectionsTextures[] = {"\extra_kamaz\data\kamaz_kab_civ2_co.paa", "\extra_kamaz\data\kamaz_kuz_civ4_co.paa"};	
	};

	class KamAZ_dark_blue :Kamaz {
		accuracy = 1000;
		side = 3;
		faction = "CIV";
		displayName = "KAMAZ-5350 (blue)";
		crew = "Citizen2";
	   hiddenSelectionsTextures[] = {"\extra_kamaz\data\kamaz_kab_civ3_co.paa", "\extra_kamaz\data\kamaz_kuz_civ2_co.paa"};	
	};			
	
	class KamAZ_Open_dark_blue :KamazOpen {
		accuracy = 1000;
		side = 3;
		faction = "CIV";		
		displayName = "KAMAZ-5350 (blue, open)";
		crew = "Citizen2";		
	   hiddenSelectionsTextures[] = {"\extra_kamaz\data\kamaz_kab_civ3_co.paa", "\extra_kamaz\data\kamaz_kuz_civ4_co.paa"};	
	};

	class KamAZ_light_blue :Kamaz {
		accuracy = 1000;
		side = 3;
		faction = "CIV";
		displayName = "KAMAZ-5350 (sky blue)";
		crew = "Citizen1";
	   hiddenSelectionsTextures[] = {"\extra_kamaz\data\kamaz_kab_civ4_co.paa", "\extra_kamaz\data\kamaz_kuz_civ_co.paa"};	
	};			
	
	class KamAZ_Open_light_blue :KamazOpen {
		accuracy = 1000;
		side = 3;
		faction = "CIV";		
		displayName = "KAMAZ-5350 (sky blue, open)";
		crew = "Citizen1";		
	   hiddenSelectionsTextures[] = {"\extra_kamaz\data\kamaz_kab_civ4_co.paa", "\extra_kamaz\data\kamaz_kuz_civ4_co.paa"};	
	};

	class KamAZ_beige :Kamaz {
		accuracy = 1000;
		side = 3;
		faction = "CIV";
		displayName = "KAMAZ-5350 (beige)";
		crew = "Citizen4";
	   hiddenSelectionsTextures[] = {"\extra_kamaz\data\kamaz_kab_civ5_co.paa", "\extra_kamaz\data\kamaz_kuz_civ3_co.paa"};	
	};			
	
	class KamAZ_Open_beige :KamazOpen {
		accuracy = 1000;
		side = 3;
		faction = "CIV";		
		displayName = "KAMAZ-5350 (beige, open)";
		crew = "Citizen4";		
	   hiddenSelectionsTextures[] = {"\extra_kamaz\data\kamaz_kab_civ5_co.paa", "\extra_kamaz\data\kamaz_kuz_civ4_co.paa"};	
	};

	class KamAZ_white :Kamaz {
		accuracy = 1000;
		side = 3;
		faction = "CIV";
		displayName = "KAMAZ-5350 (white)";
		crew = "Citizen1";
	   hiddenSelectionsTextures[] = {"\extra_kamaz\data\kamaz_kab_civ7_co.paa", "\extra_kamaz\data\kamaz_kuz_civ_co.paa"};	
	};			
	
	class KamAZ_Open_white :KamazOpen {
		accuracy = 1000;
		side = 3;
		faction = "CIV";		
		displayName = "KAMAZ-5350 (white, open)";
		crew = "Citizen1";		
	   hiddenSelectionsTextures[] = {"\extra_kamaz\data\kamaz_kab_civ7_co.paa", "\extra_kamaz\data\kamaz_kuz_civ4_co.paa"};	
	};	

	class KamAZ_orange :Kamaz {
		accuracy = 1000;
		side = 3;
		faction = "CIV";
		displayName = "KAMAZ-5350 (industry)";
		crew = "Worker1";
	   hiddenSelectionsTextures[] = {"\extra_kamaz\data\kamaz_kab_civ6_co.paa", "\extra_kamaz\data\kamaz_kuz_civ4_co.paa"};	
	};			
	
	class KamAZ_Open_orange :KamazOpen {
		accuracy = 1000;
		side = 3;
		faction = "CIV";		
		displayName = "KAMAZ-5350 (industry, open)";
		crew = "Worker1";		
	   hiddenSelectionsTextures[] = {"\extra_kamaz\data\kamaz_kab_civ6_co.paa", "\extra_kamaz\data\kamaz_kuz_civ4_co.paa"};	
	};	
	
	class KamAZ_Refuel_orange :KamazRefuel {
		accuracy = 1000;
		side = 3;
		displayName = "KAMAZ (industry, fuel)";
		faction = "CIV";			
		crew = "Worker1";
	   hiddenSelectionsTextures[] = {"\extra_kamaz\data\kamaz_kab_civ6_co.paa", "\extra_kamaz\data\kamaz_fuel_civ3_co.paa"};
	};		
	
	class KamAZ_Repair_orange :KamazRepair {
		accuracy = 1000;
		side = 3;
		displayName = "KAMAZ (industry, workshop)";
		faction = "CIV";
		crew = "Worker1";		
	   hiddenSelectionsTextures[] = {"\extra_kamaz\data\kamaz_kab_civ6b_co.paa", "\extra_kamaz\data\kamaz_repair_civ_co.paa"};
	};

	class KamAZ_Refuel_civilian :KamazRefuel {
		accuracy = 1000;
		side = 3;
		displayName = "KAMAZ (fuel)";
		faction = "CIV";			
		crew = "Villager4";
	   hiddenSelectionsTextures[] = {"\extra_kamaz\data\kamaz_kab_civ7_co.paa", "\extra_kamaz\data\kamaz_fuel_civ4_co.paa"};
	};	

	class KamAZ_Refuel_poshol :KamazRefuel {
		accuracy = 1000;
		side = 3;
		displayName = "KAMAZ (fuel, Poshol)";
		faction = "CIV";			
		crew = "Worker3";
	   hiddenSelectionsTextures[] = {"\extra_kamaz\data\kamaz_kab_civ_fuel_co.paa", "\extra_kamaz\data\kamaz_fuel_civ_co.paa"};
	};					
};

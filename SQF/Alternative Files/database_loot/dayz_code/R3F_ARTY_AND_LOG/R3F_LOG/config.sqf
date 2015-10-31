/**
 * English and French comments
 * Commentaires anglais et français
 * 
 * This file contains the configuration variables of the logistics system.
 * Fichier contenant les variables de configuration du système de logistique.
 * 
 * Important note : All the classes names which inherits from the ones used in configuration variables will be also available.
 * Note importante : Tous les noms de classes dérivant de celles utilisées dans les variables de configuration seront aussi valables.
 */

/*
 * There are two ways to manage new objects with the logistics system. The first is to add these objects in the
 * folowing appropriate lists. The second is to create a new external file in the /addons_config/ directory,
 * according to the same scheme as the existing ones, and to add a #include at the end of this current file.
 * 
 * Deux moyens existent pour gérer de nouveaux objets avec le système logistique. Le premier consiste à ajouter
 * ces objets dans les listes appropriées ci-dessous. Le deuxième est de créer un fichier externe dans le répertoire
 * /addons_config/ selon le même schéma que ceux qui existent déjà, et d'ajouter un #include à la fin de ce présent fichier.
 */

/****** TOW WITH VEHICLE / REMORQUER AVEC VEHICULE ******/

/**
 * List of class names of (ground or air) vehicles which can tow towables objects.
 * Liste des noms de classes des véhicules terrestres pouvant remorquer des objets remorquables.
 */
R3F_LOG_CFG_remorqueurs =
[
	"Ikarus","Ikarus_TK_CIV_EP1","car_hatchback","car_sedan","Lada1","Lada1_TK_CIV_EP1","Lada2","Lada2_TK_CIV_EP1","LadaLM","LandRover_CZ_EP1","S1203_TK_CIV_EP1","Skoda","SkodaBlue","SkodaGreen","SkodaRed","VolhaLimo_TK_CIV_EP1","Volha_2_TK_CIV_EP1","VWGolf","TowingTractor","BAF_Offroad_D","BAF_Offroad_W","datsun1_civil_1_open","datsun1_civil_2_covered","datsun1_civil_3_open","hilux1_civil_1_open","hilux1_civil_2_covered","hilux1_civil_3_open","hilux1_civil_3_open_EP1","HMMWV","HMMWV_Ambulance","HMMWV_Ambulance_CZ_DES_EP1","HMMWV_Ambulance_DES_EP1","HMMWV_Armored","HMMWV_Avenger","HMMWV_Avenger_DES_EP1","HMMWV_DES_EP1","HMMWV_M1035_DES_EP1","HMMWV_M1151_M2_CZ_DES_EP1","HMMWV_M1151_M2_DES_EP1","HMMWV_M2","HMMWV_M998A2_SOV_DES_EP1","HMMWV_M998_crows_M2_DES_EP1","HMMWV_M998_crows_MK19_DES_EP1","HMMWV_MK19","HMMWV_MK19_DES_EP1","HMMWV_Terminal_EP1","HMMWV_TOW","HMMWV_TOW_DES_EP1","Kamaz","KamazOpen","KamazReammo","KamazRefuel","KamazRepair","LandRover_MG_TK_EP1","LandRover_MG_TK_INS_EP1","LandRover_Special_CZ_EP1","LandRover_SPG9_TK_EP1","LandRover_SPG9_TK_INS_EP1","LandRover_TK_CIV_EP1","MTVR","MtvrReammo","MtvrReammo_DES_EP1","MtvrRefuel","MtvrRefuel_DES_EP1","MtvrRepair","MtvrRepair_DES_EP1","MtvrSalvage_DES_EP1","MtvrSupply_DES_EP1","MTVR_DES_EP1","Offroad_DSHKM_Gue","Offroad_DSHKM_INS","Offroad_DSHKM_TK_GUE_EP1","Offroad_SPG9_Gue","Offroad_SPG9_TK_GUE_EP1","Pickup_PK_GUE","Pickup_PK_INS","Pickup_PK_TK_GUE_EP1","S1203_ambulance_EP1","SUV_DZ","SUV_PMC","SUV_PMC_BAF","SUV_TK_CIV_EP1","SUV_TK_EP1","SUV_UN_EP1","Tractor","tractorOld","UAZ_AGS30_CDF","UAZ_AGS30_INS","UAZ_AGS30_RU","UAZ_AGS30_TK_EP1","UAZ_CDF","UAZ_INS","UAZ_MG_CDF","UAZ_MG_INS","UAZ_MG_TK_EP1","UAZ_RU","UAZ_SPG9_INS","UAZ_Unarmed_TK_CIV_EP1","UAZ_Unarmed_TK_EP1","UAZ_Unarmed_UN_EP1","UralCivil","UralCivil2","UralOpen_CDF","UralOpen_INS","UralReammo_CDF","UralReammo_INS","UralReammo_TK_EP1","UralRefuel_CDF","UralRefuel_INS","UralRefuel_TK_EP1","UralRepair_CDF","UralRepair_INS","UralRepair_TK_EP1","UralSalvage_TK_EP1","UralSupply_TK_EP1","Ural_CDF","Ural_INS","Ural_TK_CIV_EP1","Ural_UN_EP1","Ural_ZU23_CDF","Ural_ZU23_Gue","Ural_ZU23_INS","Ural_ZU23_TK_EP1","Ural_ZU23_TK_GUE_EP1","V3S_Civ","V3S_Gue","V3S_Open_TK_CIV_EP1","V3S_Open_TK_EP1","V3S_Reammo_TK_GUE_EP1","V3S_Refuel_TK_GUE_EP1","V3S_Repair_TK_GUE_EP1","V3S_Salvage_TK_GUE_EP1","V3S_Supply_TK_GUE_EP1","V3S_TK_EP1","V3S_TK_GUE_EP1Volha_1_TK_CIV_EP1","WarfareReammoTruck_CDF","WarfareReammoTruck_Gue","WarfareReammoTruck_INS","WarfareReammoTruck_RU","WarfareReammoTruck_USMC","WarfareRepairTruck_Gue","WarfareSalvageTruck_CDF","WarfareSalvageTruck_Gue","WarfareSalvageTruck_INS","WarfareSalvageTruck_RU","WarfareSalvageTruck_USMC","WarfareSupplyTruck_CDF","WarfareSupplyTruck_Gue","WarfareSupplyTruck_INS","WarfareSupplyTruck_RU","WarfareSupplyTruck_USMC"
];

/**
 * List of class names of towables objects.
 * Liste des noms de classes des objets remorquables.
 */
R3F_LOG_CFG_objets_remorquables =
[
	"An2_1_TK_CIV_EP1","An2_2_TK_CIV_EP1","AN2_DZ","An2_TK_EP1","MV22","ATV_CZ_EP1","ATV_US_EP1","BAF_ATV_D","BAF_ATV_W","MMT_Civ","MMT_USMC","Old_bike_TK_CIV_EP1","Old_bike_TK_INS_EP1","Ikarus","Ikarus_TK_CIV_EP1","car_hatchback","car_sedan","Lada1","Lada1_TK_CIV_EP1","Lada2","Lada2_TK_CIV_EP1","LadaLM","LandRover_CZ_EP1","S1203_TK_CIV_EP1","Skoda","SkodaBlue","SkodaGreen","SkodaRed","VolhaLimo_TK_CIV_EP1","Volha_2_TK_CIV_EP1","VWGolf","AH1Z","AH64D","AH64D_EP1","AH6J_EP1","AH6X_DZ","AH6X_EP1","AW159_Lynx_BAF","BAF_Apache_AH1_D","BAF_Merlin_HC3_D","CH_47F_BAF","CH_47F_EP1","Ka52","Ka52Black","MH60S","MH6J_DZ","MH6J_EP1","Mi171Sh_CZ_EP1","Mi171Sh_rockets_CZ_EP1","Mi17_CDF","Mi17_Civilian","Mi17_DZ","Mi17_Ins","Mi17_medevac_CDF","Mi17_medevac_Ins","Mi17_medevac_RU","Mi17_rockets_RU","Mi17_TK_EP1","Mi17_UN_CDF_EP1","UH1H_DZ","UH1Y","UH60M_EP1","UH60M_MEV_EP1","M1030","M1030_US_DES_EP1","Old_moto_TK_Civ_EP1","TT650_Civ","TT650_Gue","TT650_Ins","TT650_TK_CIV_EP1","TT650_TK_EP1","TowingTractor","BAF_Offroad_D","BAF_Offroad_W","datsun1_civil_1_open","datsun1_civil_2_covered","datsun1_civil_3_open","hilux1_civil_1_open","hilux1_civil_2_covered","hilux1_civil_3_open","hilux1_civil_3_open_EP1","HMMWV","HMMWV_Ambulance","HMMWV_Ambulance_CZ_DES_EP1","HMMWV_Ambulance_DES_EP1","HMMWV_Armored","HMMWV_Avenger","HMMWV_Avenger_DES_EP1","HMMWV_DES_EP1","HMMWV_M1035_DES_EP1","HMMWV_M1151_M2_CZ_DES_EP1","HMMWV_M1151_M2_DES_EP1","HMMWV_M2","HMMWV_M998A2_SOV_DES_EP1","HMMWV_M998_crows_M2_DES_EP1","HMMWV_M998_crows_MK19_DES_EP1","HMMWV_MK19","HMMWV_MK19_DES_EP1","HMMWV_Terminal_EP1","HMMWV_TOW","HMMWV_TOW_DES_EP1","Kamaz","KamazOpen","KamazReammo","KamazRefuel","KamazRepair","LandRover_MG_TK_EP1","LandRover_MG_TK_INS_EP1","LandRover_Special_CZ_EP1","LandRover_SPG9_TK_EP1","LandRover_SPG9_TK_INS_EP1","LandRover_TK_CIV_EP1","MTVR","MtvrReammo","MtvrReammo_DES_EP1","MtvrRefuel","MtvrRefuel_DES_EP1","MtvrRepair","MtvrRepair_DES_EP1","MtvrSalvage_DES_EP1","MtvrSupply_DES_EP1","MTVR_DES_EP1","Offroad_DSHKM_Gue","Offroad_DSHKM_INS","Offroad_DSHKM_TK_GUE_EP1","Offroad_SPG9_Gue","Offroad_SPG9_TK_GUE_EP1","Pickup_PK_GUE","Pickup_PK_INS","Pickup_PK_TK_GUE_EP1","S1203_ambulance_EP1","SUV_DZ","SUV_PMC","SUV_PMC_BAF","SUV_TK_CIV_EP1","SUV_TK_EP1","SUV_UN_EP1","Tractor","tractorOld","UAZ_AGS30_CDF","UAZ_AGS30_INS","UAZ_AGS30_RU","UAZ_AGS30_TK_EP1","UAZ_CDF","UAZ_INS","UAZ_MG_CDF","UAZ_MG_INS","UAZ_MG_TK_EP1","UAZ_RU","UAZ_SPG9_INS","UAZ_Unarmed_TK_CIV_EP1","UAZ_Unarmed_TK_EP1","UAZ_Unarmed_UN_EP1","UralCivil","UralCivil2","UralOpen_CDF","UralOpen_INS","UralReammo_CDF","UralReammo_INS","UralReammo_TK_EP1","UralRefuel_CDF","UralRefuel_INS","UralRefuel_TK_EP1","UralRepair_CDF","UralRepair_INS","UralRepair_TK_EP1","UralSalvage_TK_EP1","UralSupply_TK_EP1","Ural_CDF","Ural_INS","Ural_TK_CIV_EP1","Ural_UN_EP1","Ural_ZU23_CDF","Ural_ZU23_Gue","Ural_ZU23_INS","Ural_ZU23_TK_EP1","Ural_ZU23_TK_GUE_EP1","V3S_Civ","V3S_Gue","V3S_Open_TK_CIV_EP1","V3S_Open_TK_EP1","V3S_Reammo_TK_GUE_EP1","V3S_Refuel_TK_GUE_EP1","V3S_Repair_TK_GUE_EP1","V3S_Salvage_TK_GUE_EP1","V3S_Supply_TK_GUE_EP1","V3S_TK_EP1","V3S_TK_GUE_EP1Volha_1_TK_CIV_EP1","WarfareReammoTruck_CDF","WarfareReammoTruck_Gue","WarfareReammoTruck_INS","WarfareReammoTruck_RU","WarfareReammoTruck_USMC","WarfareRepairTruck_Gue","WarfareSalvageTruck_CDF","WarfareSalvageTruck_Gue","WarfareSalvageTruck_INS","WarfareSalvageTruck_RU","WarfareSalvageTruck_USMC","WarfareSupplyTruck_CDF","WarfareSupplyTruck_Gue","WarfareSupplyTruck_INS","WarfareSupplyTruck_RU","WarfareSupplyTruck_USMC"
];


/****** LIFT WITH VEHICLE / HELIPORTER AVEC VEHICULE ******/

/**
 * List of class names of air vehicles which can lift liftables objects.
 * Liste des noms de classes des véhicules aériens pouvant héliporter des objets héliportables.
 */
R3F_LOG_CFG_heliporteurs =
[
	"AH1Z","AH64D","AH64D_EP1","AH6J_EP1","AH6X_DZ","AH6X_EP1","AW159_Lynx_BAF","BAF_Apache_AH1_D","BAF_Merlin_HC3_D","CH_47F_BAF","CH_47F_EP1","Ka52","Ka52Black","MH60S","MH6J_DZ","MH6J_EP1","Mi171Sh_CZ_EP1","Mi171Sh_rockets_CZ_EP1","Mi17_CDF","Mi17_Civilian","Mi17_DZ","Mi17_Ins","Mi17_medevac_CDF","Mi17_medevac_Ins","Mi17_medevac_RU","Mi17_rockets_RU","Mi17_TK_EP1","Mi17_UN_CDF_EP1","UH1H_DZ","UH1Y","UH60M_EP1","UH60M_MEV_EP1"
];

/**
 * List of class names of liftables objects.
 * Liste des noms de classes des objets héliportables.
 */
R3F_LOG_CFG_objets_heliportables =
[
	"ATV_CZ_EP1","ATV_US_EP1","BAF_ATV_D","BAF_ATV_W","MMT_Civ","MMT_USMC","Old_bike_TK_CIV_EP1","Old_bike_TK_INS_EP1","Fishing_Boat","PBX","RHIB","RHIB2Turret","Smallboat_1","Smallboat_2","Ikarus","Ikarus_TK_CIV_EP1","car_hatchback","car_sedan","Lada1","Lada1_TK_CIV_EP1","Lada2","Lada2_TK_CIV_EP1","LadaLM","LandRover_CZ_EP1","S1203_TK_CIV_EP1","Skoda","SkodaBlue","SkodaGreen","SkodaRed","VolhaLimo_TK_CIV_EP1","Volha_2_TK_CIV_EP1","VWGolf","M1030","M1030_US_DES_EP1","Old_moto_TK_Civ_EP1","TT650_Civ","TT650_Gue","TT650_Ins","TT650_TK_CIV_EP1","TT650_TK_EP1","Hedgehog_DZ","Sandbag1_DZ","StashMedium","StashSmall","TentStorage","Wire_cat1","TowingTractor","BAF_Offroad_D","BAF_Offroad_W","datsun1_civil_1_open","datsun1_civil_2_covered","datsun1_civil_3_open","hilux1_civil_1_open","hilux1_civil_2_covered","hilux1_civil_3_open","hilux1_civil_3_open_EP1","HMMWV","HMMWV_Ambulance","HMMWV_Ambulance_CZ_DES_EP1","HMMWV_Ambulance_DES_EP1","HMMWV_Armored","HMMWV_Avenger","HMMWV_Avenger_DES_EP1","HMMWV_DES_EP1","HMMWV_M1035_DES_EP1","HMMWV_M1151_M2_CZ_DES_EP1","HMMWV_M1151_M2_DES_EP1","HMMWV_M2","HMMWV_M998A2_SOV_DES_EP1","HMMWV_M998_crows_M2_DES_EP1","HMMWV_M998_crows_MK19_DES_EP1","HMMWV_MK19","HMMWV_MK19_DES_EP1","HMMWV_Terminal_EP1","HMMWV_TOW","HMMWV_TOW_DES_EP1","Kamaz","KamazOpen","KamazReammo","KamazRefuel","KamazRepair","LandRover_MG_TK_EP1","LandRover_MG_TK_INS_EP1","LandRover_Special_CZ_EP1","LandRover_SPG9_TK_EP1","LandRover_SPG9_TK_INS_EP1","LandRover_TK_CIV_EP1","MTVR","MtvrReammo","MtvrReammo_DES_EP1","MtvrRefuel","MtvrRefuel_DES_EP1","MtvrRepair","MtvrRepair_DES_EP1","MtvrSalvage_DES_EP1","MtvrSupply_DES_EP1","MTVR_DES_EP1","Offroad_DSHKM_Gue","Offroad_DSHKM_INS","Offroad_DSHKM_TK_GUE_EP1","Offroad_SPG9_Gue","Offroad_SPG9_TK_GUE_EP1","Pickup_PK_GUE","Pickup_PK_INS","Pickup_PK_TK_GUE_EP1","S1203_ambulance_EP1","SUV_DZ","SUV_PMC","SUV_PMC_BAF","SUV_TK_CIV_EP1","SUV_TK_EP1","SUV_UN_EP1","Tractor","tractorOld","UAZ_AGS30_CDF","UAZ_AGS30_INS","UAZ_AGS30_RU","UAZ_AGS30_TK_EP1","UAZ_CDF","UAZ_INS","UAZ_MG_CDF","UAZ_MG_INS","UAZ_MG_TK_EP1","UAZ_RU","UAZ_SPG9_INS","UAZ_Unarmed_TK_CIV_EP1","UAZ_Unarmed_TK_EP1","UAZ_Unarmed_UN_EP1","UralCivil","UralCivil2","UralOpen_CDF","UralOpen_INS","UralReammo_CDF","UralReammo_INS","UralReammo_TK_EP1","UralRefuel_CDF","UralRefuel_INS","UralRefuel_TK_EP1","UralRepair_CDF","UralRepair_INS","UralRepair_TK_EP1","UralSalvage_TK_EP1","UralSupply_TK_EP1","Ural_CDF","Ural_INS","Ural_TK_CIV_EP1","Ural_UN_EP1","Ural_ZU23_CDF","Ural_ZU23_Gue","Ural_ZU23_INS","Ural_ZU23_TK_EP1","Ural_ZU23_TK_GUE_EP1","V3S_Civ","V3S_Gue","V3S_Open_TK_CIV_EP1","V3S_Open_TK_EP1","V3S_Reammo_TK_GUE_EP1","V3S_Refuel_TK_GUE_EP1","V3S_Repair_TK_GUE_EP1","V3S_Salvage_TK_GUE_EP1","V3S_Supply_TK_GUE_EP1","V3S_TK_EP1","V3S_TK_GUE_EP1Volha_1_TK_CIV_EP1","WarfareReammoTruck_CDF","WarfareReammoTruck_Gue","WarfareReammoTruck_INS","WarfareReammoTruck_RU","WarfareReammoTruck_USMC","WarfareRepairTruck_Gue","WarfareSalvageTruck_CDF","WarfareSalvageTruck_Gue","WarfareSalvageTruck_INS","WarfareSalvageTruck_RU","WarfareSalvageTruck_USMC","WarfareSupplyTruck_CDF","WarfareSupplyTruck_Gue","WarfareSupplyTruck_INS","WarfareSupplyTruck_RU","WarfareSupplyTruck_USMC"
];


/****** LOAD IN VEHICLE / CHARGER DANS LE VEHICULE ******/

/*
 * This section use a quantification of the volume and/or weight of the objets.
 * The arbitrary referencial used is : an ammo box of type USVehicleBox "weights" 12 units.
 * 
 * Cette section utilise une quantification du volume et/ou poids des objets.
 * Le référentiel arbitraire utilisé est : une caisse de munition de type USVehicleBox "pèse" 12 unités.
 * 
 * Note : the priority of a declaration of capacity to another corresponds to their order in the tables.
 *   For example : the "Truck" class is in the "Car" class (see http://community.bistudio.com/wiki/ArmA_2:_CfgVehicles).
 *   If "Truck" is declared with a capacity of 140 before "Car". And if "Car" is declared after "Truck" with a capacity of 40,
 *   Then all the sub-classes in "Truck" will have a capacity of 140. And all the sub-classes of "Car", excepted the ones
 *   in "Truck", will have a capacity of 40.
 * 
 * Note : la priorité d'une déclaration de capacité sur une autre correspond à leur ordre dans les tableaux.
 *   Par exemple : la classe "Truck" appartient à la classe "Car" (voir http://community.bistudio.com/wiki/ArmA_2:_CfgVehicles).
 *   Si "Truck" est déclaré avec une capacité de 140 avant "Car". Et que "Car" est déclaré après "Truck" avec une capacité de 40,
 *   Alors toutes les sous-classes appartenant à "Truck" auront une capacité de 140. Et toutes les sous-classes appartenant
 *   à "Car", exceptées celles de "Truck", auront une capacité de 40.
 */

/**
 * List of class names of (ground or air) vehicles which can transport transportables objects.
 * The second element of the arrays is the load capacity (in relation with the capacity cost of the objects).
 * 
 * Liste des noms de classes des véhicules (terrestres ou aériens) pouvant transporter des objets transportables.
 * Le deuxième élément des tableaux est la capacité de chargement (en relation avec le coût de capacité des objets).
 */
R3F_LOG_CFG_transporteurs =
[
	// e.g. : ["MyTransporterClassName1", itsCapacity], ["MyTransporterClassName2", itsCapacity]
];

/**
 * List of class names of transportables objects.
 * The second element of the arrays is the cost capacity (in relation with the capacity of the vehicles).
 * 
 * Liste des noms de classes des objets transportables.
 * Le deuxième élément des tableaux est le coût de capacité (en relation avec la capacité des véhicules).
 */
R3F_LOG_CFG_objets_transportables =
[
	// e.g. : ["MyTransportableObjectClassName1", itsCost], ["MyTransportableObjectClassName2", itsCost]
];

/****** MOVABLE-BY-PLAYER OBJECTS / OBJETS DEPLACABLES PAR LE JOUEUR ******/

/**
 * List of class names of objects moveables by player.
 * Liste des noms de classes des objets transportables par le joueur.
 */
R3F_LOG_CFG_objets_deplacables =
[
	// e.g. : "MyMovableObjectClassName1", "MyMovableObjectClassName2"
];

/*
 * List of files adding objects in the arrays of logistics configuration (e.g. R3F_LOG_CFG_remorqueurs)
 * Add an include to the new file here if you want to use the logistics with a new addon.
 * 
 * Liste des fichiers ajoutant des objets dans les tableaux de fonctionnalités logistiques (ex : R3F_LOG_CFG_remorqueurs)
 * Ajoutez une inclusion vers votre nouveau fichier ici si vous souhaitez utilisez la logistique avec un nouvel addon.
 */
#include "addons_config\ACE_OA_objects.sqf"
#include "addons_config\BAF_objects.sqf"
#include "addons_config\arma2_CO_objects.sqf"
#define ReadAndWrite		0
#define ReadAndCreate		1
#define ReadOnly		2
#define ReadOnlyVerified		3

#define VSoft		0
#define VArmor		1
#define VAir		2

#define private		0
#define protected		1
#define public		2

#define true	1
#define false	0

class CfgPatches {
	class unleashed_equip {
		units[] = {};
		weapons[] = {};
		requiredVersion = 0.1;
		requiredAddons[] = {};
	};
};

class CfgVehicleClasses {
	class Survival {
		displayName = "Survival";
	};
};

class CfgMagazines {
	class CA_Magazine;	// External class reference

	class SkinBase : CA_Magazine {
		scope = private;
		count = 1;
		type = 256;
		displayName = "Clothes";
		model = "\dayz_equip\models\cloth_parcel.p3d";
		picture = "\dayz_equip\textures\equip_cloth_parcel_ca.paa";
		descriptionShort = "Clothes Parcel";
		
		class ItemActions {
			class Use {
				text = "Wear %1";
				script = "spawn player_wearClothes;";
			};
		};
	};
	
		class Skin_SniperW1_DZ : SkinBase {		
		scope = public;
		displayName = "Chilisuit Female";
		descriptionShort = "Chilisuit Female";	
	};
	
		class Skin_Civilian1_DZ : SkinBase {		
		scope = public;
		displayName = "Civilian Skin 1";
		descriptionShort = "Civilian Skin 1";	
	};
	
		class Skin_Civilian2_DZ : SkinBase {		
		scope = public;
		displayName = "Civilian Skin 2";
		descriptionShort = "Civilian Skin 2";	
	};
	
		class Skin_Civilian3_DZ : SkinBase {		
		scope = public;
		displayName = "Civilian Skin 3";
		descriptionShort = "Civilian Skin 3";	
	};
	
		class Skin_Civilian4_DZ : SkinBase {
		scope = public;
		displayName = "Civilian Skin 4";
		descriptionShort = "Civilian Skin 4";
	};
	
		class Skin_Civilian5_DZ : SkinBase {
		scope = public;
		displayName = "Civilian Skin 5";
		descriptionShort = "Civilian Skin 5";
	};
	
		class Skin_Civilian6_DZ : SkinBase {
		scope = public;
		displayName = "Civilian Skin 6";
		descriptionShort = "Civilian Skin 6";
	};
	
		class Skin_Civilian7_DZ : SkinBase {
		scope = public;
		displayName = "Civilian Skin 7";
		descriptionShort = "Civilian Skin 7";
	};
	
		class Skin_Civilian8_DZ : SkinBase {
		scope = public;
		displayName = "Civilian Skin 8";
		descriptionShort = "Civilian Skin 8";
	};
	
		class Skin_Civilian9_DZ : SkinBase {
		scope = public;
		displayName = "Civilian Skin 9";
		descriptionShort = "Civilian Skin 9";
	};
	
		class Skin_Civilian10_DZ : SkinBase {
		scope = public;
		displayName = "Civilian Skin 10";
		descriptionShort = "Civilian Skin 10";
	};
	
	class ModifiedBandage : CA_Magazine {
		scope = public;
		count = 1;
		type = 16;
		displayName = "Modified Bandage";
		model = "z\addons\dayz_communityassets\models\toiletpaper.p3d"; //New model before release!
		picture = "\z\addons\dayz_communityassets\pictures\equip_toiletpaper_CA.paa"; //New texture before release!
		descriptionShort = "A modified bandage made from toilet paper";
		
		class ItemActions {
			class Use {
				text = "Bandage Myself";
				script = "spawn player_useMeds;";
			};
		};
	};
};	



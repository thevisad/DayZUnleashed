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
	
	/* Normal Skins
	class BAF_Soldier_MTP;
	class BAF_Soldier_DDPM;
	class BAF_Soldier_L_MTP;
	class BAF_Soldier_L_DDPM;
	class BAF_Soldier_Officer_MTP;
	class BAF_Soldier_Officer_DDPM;
	class BAF_Soldier_Sniper_MTP;
	class BAF_Soldier_SniperH_MTP;
	class BAF_Soldier_SniperN_MTP;
	class CZ_Soldier_DES_EP1;
	class US_Soldier_EP1;
	class TK_INS_Soldier_EP1;
	class TK_CIV_Takistani05_EP1;
	class TK_CIV_Takistani01_EP1;
	*/
	
		class Skin_BAF_Soldier_MTP : SkinBase {		
		scope = public;
		displayName = "BAF Soldier MTP";
		descriptionShort = "BAF Soldier MTP";	
	};
		class Skin_BAF_Soldier_DDPM : SkinBase {		
		scope = public;
		displayName = "BAF Soldier DDPM";
		descriptionShort = "BAF Soldier DDPM";	
	};
		class Skin_BAF_Soldier_L_MTP : SkinBase {		
		scope = public;
		displayName = "BAF Soldier L MTP";
		descriptionShort = "BAF Soldier L MTP";	
	};
		class Skin_BAF_Soldier_L_DDPM : SkinBase {		
		scope = public;
		displayName = "BAF Soldier L DDPM";
		descriptionShort = "BAF Soldier L DDPM";	
	};
		class Skin_BAF_Soldier_Officer_MTP : SkinBase {		
		scope = public;
		displayName = "BAF Soldier Officer MTP";
		descriptionShort = "BAF Soldier Officer MTP";	
	};
		class Skin_BAF_Soldier_Officer_DDPM : SkinBase {		
		scope = public;
		displayName = "BAF Soldier Officer DDPM";
		descriptionShort = "BAF Soldier Officer DDPM";	
	};
		class Skin_BAF_Soldier_Sniper_MTP : SkinBase {		
		scope = public;
		displayName = "BAF Soldier Sniper MTP";
		descriptionShort = "BAF Soldier Sniper MTP";	
	};
		class Skin_BAF_Soldier_SniperH_MTP : SkinBase {		
		scope = public;
		displayName = "BAF Soldier SniperH MTP";
		descriptionShort = "BAF Soldier SniperH MTP";	
	};
		class Skin_BAF_Soldier_SniperN_MTP : SkinBase {		
		scope = public;
		displayName = "AF Soldier SniperN MTP";
		descriptionShort = "AF Soldier SniperN MTP";	
	};
		class Skin_CZ_Soldier_DES_EP1 : SkinBase {		
		scope = public;
		displayName = "CZ Soldier DES";
		descriptionShort = "CZ Soldier DES";	
	};
		class Skin_US_Soldier_EP1 : SkinBase {		
		scope = public;
		displayName = "US Soldier";
		descriptionShort = "US Soldier";	
	};
		class Skin_TK_INS_Soldier_EP1 : SkinBase {		
		scope = public;
		displayName = "Takistan INS Solider";
		descriptionShort = "Takistan INS Solider";	
	};
		class Skin_TK_CIV_Takistani01_EP1 : SkinBase {		
		scope = public;
		displayName = "Takistan Civilian 1";
		descriptionShort = "Takistan Civilian 1";	
	};
		class Skin_TK_CIV_Takistani05_EP1 : SkinBase {		
		scope = public;
		displayName = "Takistan Civilian 5";
		descriptionShort = "Takistan Civilian 5";	
	};
	
		class Skin_SniperW1_DZ : SkinBase {		
		scope = public;
		displayName = "Chilisuit Female";
		descriptionShort = "Chilisuit Female";	
	};
	
		class Skin_CivilianW1_DZ : SkinBase {		
		scope = public;
		displayName = "Civilian Female Skin 1";
		descriptionShort = "Civilian Female Skin 1";	
	};
	
		class Skin_CivilianW2_DZ : SkinBase {		
		scope = public;
		displayName = "Civilian Female Skin 2";
		descriptionShort = "Civilian Female Skin 2";	
	};
	
		class Skin_CivilianW3_DZ : SkinBase {		
		scope = public;
		displayName = "Civilian Female Skin 3";
		descriptionShort = "Civilian Female Skin 3";	
	};
	
		class Skin_CivilianW4_DZ : SkinBase {
		scope = public;
		displayName = "Civilian Female Skin 4";
		descriptionShort = "Civilian Female Skin 4";
	};
	
		class Skin_CivilianW5_DZ : SkinBase {
		scope = public;
		displayName = "Civilian Female Skin 5";
		descriptionShort = "Civilian Female Skin 5";
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



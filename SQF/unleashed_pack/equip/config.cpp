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



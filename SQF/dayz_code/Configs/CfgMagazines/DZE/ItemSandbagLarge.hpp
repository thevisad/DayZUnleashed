class ItemSandbagLarge : CA_Magazine {
	scope = public;
	count = 1;
	type = 256;
	displayName = "H-barrier cube";
	model = "\dayz_equip\models\sandbags.p3d";
	picture = "\dayz_equip\textures\equip_sandbag_ca.paa";
	descriptionShort = "Hesco berrier: A buildable object that is used for fortification purposes.";
	
	class ItemActions {
		class Build {
			text = "Build H-barrier cube";
			script = "spawn DZE_player_build;";
			require[] = {"ItemEtool"};
			create = "Land_HBarrier1_DZ";
		};
	};
};
class ItemSandbagExLarge : CA_Magazine {
	scope = public;
	count = 1;
	type = 256;
	displayName = "3 x H-barrier cube";
	model = "\dayz_equip\models\sandbags.p3d"; // TODO model
	picture = "\dayz_equip\textures\equip_sandbag_ca.paa";
	descriptionShort = "Hesco berrier: A buildable object that is used for fortification purposes.";
	weight = 150;
	class ItemActions {
		class Build {
			text = "Build Triple H-barrier";
			script = "spawn DZE_player_build;";
			require[] = {"ItemEtool"};
			create = "Land_HBarrier3_DZ";
		};
		class Crafting
        {
            text = "Craft 5x H-barrier";
            script = ";['Crafting','CfgMagazines', _id] spawn DZE_player_craftItem;";
            neednearby[] = {};
            requiretools[] = {"ItemEtool","ItemToolbox"};
            output[] = {{"ItemSandbagExLarge5x",1}};
            input[] = {{"ItemSandbagExLarge",1},{"ItemSandbagLarge",2}};
        };
	};
};
	
class ItemSandbagExLarge5x : CA_Magazine {
	scope = public;
	count = 1;
	type = 256;
	displayName = "5 x H-barrier cube";
	model = "\dayz_equip\models\sandbags.p3d"; // TODO model
	picture = "\dayz_equip\textures\equip_sandbag_ca.paa";
	descriptionShort = "Hesco berrier: A buildable object that is used for fortification purposes.";
	weight = 200;
	class ItemActions {
		class Build {
			text = "Build 5x H-barrier";
			script = "spawn DZE_player_build;";
			require[] = {"ItemEtool"};
			create = "Land_HBarrier5_DZ";
		};
	};
};
	
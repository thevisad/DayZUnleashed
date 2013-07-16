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
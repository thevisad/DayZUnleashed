class ItemGenerator: CA_Magazine
{
	scope = 2;
	count = 1;
	type = 256;
	displayName = "$STR_EQUIP_NAME_31";
	model = "\dayz_equip\models\generator_gear.p3d";
	picture = "\dayz_equip\textures\equip_generator_ca.paa";
	descriptionShort = "$STR_EQUIP_DESC_31";
	class ItemActions
	{
		class Build
		{
			text = "$STR_ACTIONS_BUILD";
			script = "spawn DZE_DZE_player_build;";
			require[] = {"ItemToolbox"};
			create = "Generator_DZ";
			needNearby[] = {"dayz_fuelpumparray"};
		};
	};
};

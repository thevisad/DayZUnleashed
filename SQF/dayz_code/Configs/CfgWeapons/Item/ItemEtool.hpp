//NotWorking _DZ Remove
class ItemEtool: ItemCore {
	scope = 2;
	model = "\dayz_equip\models\etool.p3d";
	picture = "\dayz_equip\textures\equip_etool_ca.paa";
	displayName = "Etool";
	descriptionShort = $STR_EQUIP_DESC_1;
	stashsmall = "StashSmall";
	stashmedium = "StashMedium";
	consume = "ItemSandbag";
	class ItemActions
	{
		class Use
		{
			text="Create Stash";
			script="spawn player_createstash; r_action_count = r_action_count + 1;";
		};
	};
		class Build
		{
			text= "Build Sandbag Fence";
			script= "; ['ItemEtool','Build'] spawn player_build; r_action_count = r_action_count + 1;";
			//script= "spawn DZE_player_build;";
			require[] = {"ItemEtool"};
			consume[] = {"ItemSandbag"};
			create = "Sandbag1_DZ";
		};
};
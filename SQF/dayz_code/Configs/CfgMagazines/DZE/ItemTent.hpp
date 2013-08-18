class ItemTent: CA_Magazine
{
	scope = 2;
	count = 1;
	type = 256;
	displayName = $STR_EQUIP_NAME_20;
	model = "\dayz_equip\models\tentbag_gear.p3d";
	picture = "\dayz_equip\textures\equip_tentbag_ca.paa";
	descriptionShort = $STR_EQUIP_DESC_20;
	class ItemActions
	{
		class Pitch
		{
			text = $STR_PITCH_TENT;
			script = "spawn player_tentPitch;";
			create = "TentStorage";
		};
		class Crafting
		{
			text = "Craft Desert Net";
			script = ";['Crafting','CfgMagazines',_id] spawn DZE_player_craftItem;";
			neednearby[] = {"workshop"};
			requiretools[] = {"ItemToolbox","ItemKnife"};
			output[] = {{"desert_net_kit",1}};
			input[] = {{"bulk_empty",1},{"ItemTent",4},{"ItemPole",4}};
		};
		class Crafting1
		{
			text = "Craft Forest Net";
			script = ";['Crafting1','CfgMagazines',_id] spawn DZE_player_craftItem;";
			neednearby[] = {"workshop"};
			requiretools[] = {"ItemToolbox","ItemKnife"};
			output[] = {{"forest_net_kit",1}};
			input[] = {{"ItemTent",4},{"ItemPole",4}};
		};
	};
};

class ItemTentDomed : ItemTent {
	scope = public;
	count = 1;
	type = 256;
	displayName = "Camping Tent Desert";
	model = "\dayz_equip\models\tentbag_gear.p3d";
	picture = "\dayz_equip\textures\equip_tentbag_ca.paa";
	descriptionShort = "A domed camping tent desert that can be pitched, allowing you extended storage.";
	
	class ItemActions {
		class Pitch {
			text = $STR_PITCH_TENT;
			script = "spawn player_tentPitch;";
			create = "TentStorageDomed";
		};
		class Crafting
		{
			text = "Craft Desert Net";
			script = ";['Crafting','CfgMagazines',_id] spawn DZE_player_craftItem;";
			neednearby[] = {"workshop"};
			requiretools[] = {"ItemToolbox","ItemKnife"};
			output[] = {{"desert_net_kit",1}};
			input[] = {{"bulk_empty",1},{"ItemTent",4},{"ItemPole",4}};
		};
		class Crafting1
		{
			text = "Craft Forest Net";
			script = ";['Crafting1','CfgMagazines',_id] spawn DZE_player_craftItem;";
			neednearby[] = {"workshop"};
			requiretools[] = {"ItemToolbox","ItemKnife"};
			output[] = {{"forest_net_kit",1}};
			input[] = {{"bulk_empty",1},{"ItemTent",4},{"ItemPole",4}};
		};
	};
};
class ItemTentDomed2 : ItemTent {
	scope = public;
	count = 1;
	type = 256;
	displayName = "Camping Tent Green";
	model = "\dayz_equip\models\tentbag_gear.p3d";
	picture = "\dayz_equip\textures\equip_tentbag_ca.paa";
	descriptionShort = "A domed camping tent desert that can be pitched, allowing you extended storage.";
	class ItemActions {
		class Pitch {
			text = $STR_PITCH_TENT;
			script = "spawn player_tentPitch;";
			create = "TentStorageDomed2";
		};
		class Crafting
		{
			text = "Craft Desert Net";
			script = ";['Crafting','CfgMagazines',_id] spawn DZE_player_craftItem;";
			neednearby[] = {"workshop"};
			requiretools[] = {"ItemToolbox","ItemKnife"};
			output[] = {{"desert_net_kit",1}};
			input[] = {{"bulk_empty",1},{"ItemTent",4},{"ItemPole",4}};
		};
		class Crafting1
		{
			text = "Craft Desert Net";
			script = ";['Crafting1','CfgMagazines',_id] spawn DZE_player_craftItem;";
			neednearby[] = {"workshop"};
			requiretools[] = {"ItemToolbox","ItemKnife"};
			output[] = {{"forest_net_kit",1}};
			input[] = {{"bulk_empty",1},{"ItemTent",4},{"ItemPole",4}};
		};
	};
};
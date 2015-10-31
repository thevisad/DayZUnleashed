class ItemTent; 
class ItemTentOld: ItemTent
{
		scope = 2;
		count = 1;
		type = 256;
		displayName = $STR_EQUIP_NAME_20;
		model = "\dayz_equip\models\tentbag_gear.p3d";
		picture = "\dayz_equip\textures\equip_tentbag_ca.paa";
		descriptionShort = $STR_EQUIP_DESC_20;
		weight = 5;
		class ItemActions
		{
				class Build {
						text = $STR_PITCH_TENT;
						script = "spawn player_build;";
						require[] = {};
						create = "TentStorage";
				};
				class Crafting
				{
						text = $STR_EPOCH_PLAYER_270;
						script = ";['Crafting','CfgMagazines', _id] spawn player_craftItem;";
						neednearby[] = {"workshop"};
						requiretools[] = {"ItemToolbox","ItemKnife"};
						output[] = {{"desert_net_kit",1}};
						input[] = {{"ItemTent",2},{"ItemPole",2}};
				};
				class Crafting1
				{
						text = $STR_EPOCH_PLAYER_271;
						script = ";['Crafting1','CfgMagazines', _id] spawn player_craftItem;";
						neednearby[] = {"workshop"};
						requiretools[] = {"ItemToolbox","ItemKnife"};
						output[] = {{"forest_net_kit",1}};
						input[] = {{"ItemTent",2},{"ItemPole",2}};
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
				class Build {
						text = $STR_PITCH_TENT;
						script = "spawn player_build;";
						require[] = {};
						create = "TentStorageDomed";
				};
				class Crafting
				{
						text = $STR_EPOCH_PLAYER_270;
						script = ";['Crafting','CfgMagazines', _id] spawn player_craftItem;";
						neednearby[] = {"workshop"};
						requiretools[] = {"ItemToolbox","ItemKnife"};
						output[] = {{"desert_net_kit",1}};
						input[] = {{"ItemTent",2},{"ItemPole",2}};
				};
				class Crafting1
				{
						text = $STR_EPOCH_PLAYER_271;
						script = ";['Crafting1','CfgMagazines', _id] spawn player_craftItem;";
						neednearby[] = {"workshop"};
						requiretools[] = {"ItemToolbox","ItemKnife"};
						output[] = {{"forest_net_kit",1}};
						input[] = {{"ItemTent",2},{"ItemPole",2}};
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
				class Build {
						text = $STR_PITCH_TENT;
						script = "spawn player_build;";
						require[] = {};
						create = "TentStorageDomed2";
				};
				class Crafting
				{
						text = $STR_EPOCH_PLAYER_270;
						script = ";['Crafting','CfgMagazines', _id] spawn player_craftItem;";
						neednearby[] = {"workshop"};
						requiretools[] = {"ItemToolbox","ItemKnife"};
						output[] = {{"desert_net_kit",1}};
						input[] = {{"ItemTent",2},{"ItemPole",2}};
				};
				class Crafting1
				{
						text = $STR_EPOCH_PLAYER_271;
						script = ";['Crafting1','CfgMagazines', _id] spawn player_craftItem;";
						neednearby[] = {"workshop"};
						requiretools[] = {"ItemToolbox","ItemKnife"};
						output[] = {{"forest_net_kit",1}};
						input[] = {{"ItemTent",2},{"ItemPole",2}};
				};
		};
};

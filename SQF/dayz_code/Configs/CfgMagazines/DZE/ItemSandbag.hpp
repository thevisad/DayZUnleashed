class ItemSandbag : CA_Magazine {
scope = public;
count = 1;
type = 256;
displayName = $STR_EQUIP_NAME_21;
model = "\dayz_equip\models\sandbags.p3d";
picture = "\dayz_equip\textures\equip_sandbag_ca.paa";
descriptionShort = $STR_EQUIP_DESC_21;

class ItemActions {
		class Build {
				text = $STR_EPOCH_PLAYER_272;
				script = "spawn player_build;";
				require[] = {"ItemEtool"};
				create = "Sandbag1_DZ";
		};
		class Crafting
		{
				text = $STR_EPOCH_PLAYER_273;
				script = ";['Crafting','CfgMagazines', _id] spawn DZE_player_craftItem;";
				neednearby[] = {};
				requiretools[] = {"ItemEtool","ItemToolbox"};
				output[] = {{"ItemSandbagLarge",1}};
				input[] = {{"ItemSandbag",3},{"ItemWire",1},{"ItemTankTrap",1}};
		};
		class Crafting1
		{
				text = $STR_EPOCH_PLAYER_274;
				script = ";['Crafting1','CfgMagazines', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemEtool","ItemToolbox"};
				output[] = {{"sandbag_nest_kit",1}};
				input[] = {{"ItemSandbag",4},{"PartWoodPlywood",2},{"PartWoodLumber",4}};
		};
		class Crafting2
		{
				text = $STR_EPOCH_PLAYER_298;
				script = ";['Crafting2','CfgMagazines', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemEtool","ItemToolbox"};
				output[] = {{"BagFenceRound_DZ_kit",1}};
				input[] = {{"ItemSandbag",1}};
		};
		/*
		class Crafting3
		{
				text = "Craft M240 Nest";
				script = ";['Crafting3','CfgMagazines', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemEtool","ItemToolbox","M240_DZ"};
				output[] = {{"m240_nest_kit",1}};
				input[] = {{"ItemSandbag",4},{"ItemCanvas",1},{"PartWoodPlywood",4},{"PartWoodLumber",3}};
				inputweapons[] = {"M240_DZ"};
		};
		*/
		
};
};
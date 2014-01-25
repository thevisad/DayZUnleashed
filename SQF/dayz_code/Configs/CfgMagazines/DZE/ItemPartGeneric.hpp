class PartGeneric: CA_Magazine
{
		scope = 2;
		count = 1;
		type = 256;
		displayName = $STR_EQUIP_NAME_10;
		model = "\dayz_equip\models\genericparts.p3d";
		picture = "\dayz_equip\textures\equip_genericparts_ca.paa";
		descriptionShort = $STR_EQUIP_DESC_10;
		class ItemActions {
				class Crafting
				{
						text = $STR_EPOCH_PLAYER_213;
						script = ";['Crafting','CfgMagazines', _id] spawn player_craftItem;";
						neednearby[] = {"fire"};
						requiretools[] = {"ItemToolbox","ItemCrowbar"};
						output[] = {{"ItemPole",1}};
						input[] = {{"PartGeneric",2}};
				};
		};
};
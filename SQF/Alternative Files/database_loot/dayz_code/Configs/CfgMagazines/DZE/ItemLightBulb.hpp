class ItemLightBulb: CA_Magazine
{
		scope = 2;
		count = 1;
		type = 256;
		displayName = "Light Bulb";
		model = "\z\addons\dayz_epoch\models\bulb.p3d";
		picture = "\z\addons\dayz_epoch\pictures\equip_bulb_CA.paa";
		descriptionShort = "Lightbulb: Used in part to create a buildable lamp post. Don't tell me you didn't find this in a barn.";
		class ItemActions {
				class Crafting
				{
						text = $STR_EPOCH_PLAYER_196;
						script = ";['Crafting','CfgMagazines', _id] spawn DZE_player_craftItem;";
						neednearby[] = {"workshop"};
						requiretools[] = {"ItemEtool","ItemToolbox"};
						output[] = {{"light_pole_kit",1}};
						input[] = {{"ItemLightBulb",1},{"PartGeneric",1},{"PartWoodLumber",6}};
				};
		};
};
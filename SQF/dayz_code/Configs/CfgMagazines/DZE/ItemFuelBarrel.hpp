class ItemFuelBarrel: CA_Magazine
{
	scope = 2;
	count = 1;
	fuelQuantity = 210;
	type = 256;
	displayName = "Fuel Barrel";
	model = "\z\addons\dayz_epoch\models\oil_drum_model.p3d";
	picture = "\z\addons\dayz_epoch\pictures\equip_oil_drum_model_ca.paa";
	descriptionShort = "210 litres of fuel per barrel";
	
};
class ItemFuelBarrelEmpty: ItemFuelBarrel
{
	scope = 2;
	count = 1;
	fuelQuantity = 0;
	type = 256;
	displayName = "Fuel Barrel (Empty)";
	picture = "\z\addons\dayz_epoch\pictures\equip_oildrum_e_CA.paa";
	descriptionShort = "210 litres of fuel per barrel (Empty)";
	class ItemActions
	{
		class Crafting
		{
			text = "Melt into Bars";
			script = ";['Crafting','CfgMagazines', _id] spawn DZE_player_craftItem;";
			neednearby[] = {"fire"};
			requiretools[] = {"ItemToolbox"};
			output[] = {{"ItemTinBar",1}};
			input[] = {{"ItemFuelBarrelEmpty",1}};
		};
	};
};
class ItemOilBarrel: CA_Magazine
        {
                scope = 2;
                count = 1;
                // fuelQuantity = 210;
                type = 256;
                displayName = "Oil Barrel";
                model = "\z\addons\dayz_epoch\models\oil_drum_model.p3d";
                picture = "\z\addons\dayz_epoch\pictures\equip_oil_drum_model_ca.paa";
                descriptionShort = "210 litres of Oil in a Barrel";
        };
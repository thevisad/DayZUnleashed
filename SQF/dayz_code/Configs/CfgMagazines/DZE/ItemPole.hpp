class ItemPole: CA_Magazine
{
	scope = 2;
	count = 1;
	type = 256;
	displayName = "Metal Pole";
	model = "\z\addons\dayz_epoch\models\pipe.p3d";
	picture = "\z\addons\dayz_epoch\pictures\equip_pipe_CA.paa";
	descriptionShort = "Pole: A few sturdy metal poles used to craft tents and other buildables";
	class ItemActions {
		class Crafting
		{
			text = "Craft Corrugated Fence";
			script = ";['Crafting','CfgMagazines',_id] spawn DZE_player_craftItem;";
			neednearby[] = {"fire"};
			requiretools[] = {"ItemToolbox","ItemCrowbar"};
			output[] = {{"ItemCorrugated",1}};
			input[] = {{"ItemPole",2},{"ItemTankTrap",2},{"PartWoodLumber",2}};
		};
		class Crafting1
		{
			text = "Craft Rusty Gate";
			script = ";['Crafting1','CfgMagazines',_id] spawn DZE_player_craftItem;";
			neednearby[] = {"workshop"};
			requiretools[] = {"ItemToolbox","ItemCrowbar"};
			output[] = {{"rusty_gate_kit",1}};
			input[] = {{"bulk_empty",1},{"ItemPole",3},{"ItemTankTrap",1}};
		};
		class Crafting2
		{
			text = "Craft Metal Panel";
			script = ";['Crafting2','CfgMagazines',_id] spawn DZE_player_craftItem;";
			neednearby[] = {"workshop"};
			requiretools[] = {"ItemToolbox","ItemCrowbar"};
			output[] = {{"metal_panel_kit",1}};
			input[] = {{"bulk_empty",1},{"ItemPole",4},{"ItemTankTrap",4}};
		};
		
	};
};


class CinderBlocks: CA_Magazine
{
	scope = 2;
	count = 1;
	type = 256;
	displayName = "Cinder Blocks";
	model = "\z\addons\dayz_epoch\models\cinder_stack.p3d";
	picture = "\z\addons\dayz_epoch\pictures\epuip_cinder_blocks_CA.paa";
	descriptionShort = "Stack of nine cinder blocks";
	weight = 100;
	class ItemActions {
		class Crafting
		{
			text = $STR_EPOCH_PLAYER_252;
			script = ";['Crafting','CfgMagazines', _id] spawn DZE_player_craftItem;";
			neednearby[] = {"workshop"};
			requiretools[] = {"ItemToolbox"};
			output[] = {{"cinder_wall_kit",1}};
			input[] = {{"CinderBlocks",3},{"MortarBucket",1}};
		};
		class Crafting1
		{
			text = $STR_EPOCH_PLAYER_253;
			script = ";['Crafting1','CfgMagazines', _id] spawn DZE_player_craftItem;";
			neednearby[] = {"workshop"};
			requiretools[] = {"ItemToolbox"};
			output[] = {{"cinder_garage_kit",1}};
			input[] = {{"CinderBlocks",3},{"MortarBucket",1},{"ItemTankTrap",1}};
		};
		class Crafting2
		{
			text = $STR_EPOCH_PLAYER_234;
			script = ";['Crafting2','CfgMagazines', _id] spawn DZE_player_craftItem;";
			neednearby[] = {"workshop"};
			requiretools[] = {"ItemToolbox"};
			output[] = {{"cinder_door_kit",1}};
			input[] = {{"CinderBlocks",4},{"MortarBucket",1},{"ItemTankTrap",1}};
		};
			
			
	};
};
class MortarBucket: CA_Magazine
{
	scope = 2;
	count = 1;
	type = 256;
	displayName = "Bucket of Mortar";
	model = "\z\addons\dayz_epoch\models\mortar.p3d";
	picture = "\z\addons\dayz_epoch\pictures\equip_mortar_CA.paa";
	descriptionShort = "Premixed mastic adhesive that will bond to concrete block.";
	weight = 21;
};
	
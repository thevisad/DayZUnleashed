/*
class ItemTrashToiletpaper : CA_Magazine {
		scope = public;
		count = 1;
		displayName = $STR_JUNK_NAME_TOILETPAPER;
		descriptionShort = $STR_JUNK_DESC_TOILETPAPER;
		model = "z\addons\dayz_communityassets\models\toiletpaper.p3d";
		picture = "\z\addons\dayz_communityassets\pictures\equip_toiletpaper_CA.paa";
		type = 256;
	};
*/
	class ItemTrashRazor : CA_Magazine {
		scope = public;
		count = 1;
		displayName = $STR_JUNK_NAME_RAZOR;
		descriptionShort = $STR_JUNK_DESC_RAZOR;
		model = "z\addons\dayz_communityassets\models\razor.p3d";
		picture = "\z\addons\dayz_communityassets\pictures\equip_razor_CA.paa";
		type = 256;
	};
	class ItemBookBible : CA_Magazine {
		scope = public;
		count = 1;
		displayName = $STR_BOOK_NAME_BIBLE;
		descriptionShort = $STR_BOOK_DESC_BIBLE;
		model = "z\addons\dayz_communityassets\models\bible.p3d";
		picture = "\z\addons\dayz_communityassets\pictures\equip_bible_CA.paa";
		type = 256;
	};
	class ItemCards : CA_Magazine {
		scope = public;
		count = 1;
		displayName = $STR_ITEM_NAME_CARDS;
		descriptionShort = $STR_ITEM_DESC_CARDS;
		model = "z\addons\dayz_communityassets\models\cards.p3d";
		picture = "\z\addons\dayz_communityassets\pictures\equip_cards_ca.paa";
		type = 256;
	};

	

	class ItemBandage; // External class reference
	class ItemTrashToiletpaper : ItemBandage{
		scope = public;
		count = 1;
		displayName = $STR_JUNK_NAME_TOILETPAPER;
		descriptionShort = $STR_JUNK_DESC_TOILETPAPER;
		model = "z\addons\dayz_communityassets\models\toiletpaper.p3d";
		picture = "\z\addons\dayz_communityassets\pictures\equip_toiletpaper_CA.paa";
		class ItemActions
		{
			
			class Crafting
			{
				text = "Craft Satchel Charge";
				script = ";['Crafting','CfgMagazines',_id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PipeBomb",1}};
				input[] = {{"ItemTrashToiletpaper",2},{"HandGrenade_West",2}};
			};

			class RecipeChange
			{
				text="Combine for a Bandage";
				script="spawn player_reloadMag;";
				use[]=
				{
					"ItemTrashToiletpaper",
					"ItemTrashToiletpaper",
					"ItemTrashToiletpaper",
					"ItemTrashToiletpaper"
				};
				output[]=
				{
					"ModifiedBandage"
				};
			};


		class CombineMag {
			text = $STR_BNDG_COMBINE;
			script = "spawn player_combineMag; r_action_count = 1;";
		};

		};
	};
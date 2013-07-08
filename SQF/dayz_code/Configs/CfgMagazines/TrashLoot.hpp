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

	
	class 2Rnd_shotgun_74Slug: 8Rnd_B_Beneli_74Slug
{
	displayName="2Rnd. Slug";
	count=2;
	descriptionShort="Caliber: 12 gauge <br/>Rounds: 2 <br/>Used in: M1014";
	model = "\z\addons\dayz_communityassets\models\2shells_slugshot.p3d";
	picture = "\z\addons\dayz_communityassets\pictures\equip_2shells_slugshot_CA.paa";
	class ItemActions
	{
		class ReloadMag
		{
			text="Combine to 8 rounds";
			script="spawn player_reloadMag;";
			use[]=
			{
				"2Rnd_shotgun_74Slug",
				"2Rnd_shotgun_74Slug",
				"2Rnd_shotgun_74Slug",
				"2Rnd_shotgun_74Slug"
			};
			output[]=
			{
				"8Rnd_B_Beneli_74Slug"
			};
		};
		class CombineMag {
			text = $STR_MAG_COMBINE;
			script = "spawn player_combineMag; r_action_count = r_action_count + 1;";
		};
	};
};

	class ItemTrashToiletpaper : ItemBandage{
		scope = public;
		count = 1;
		displayName = $STR_JUNK_NAME_TOILETPAPER;
		descriptionShort = $STR_JUNK_DESC_TOILETPAPER;
		model = "z\addons\dayz_communityassets\models\toiletpaper.p3d";
		picture = "\z\addons\dayz_communityassets\pictures\equip_toiletpaper_CA.paa";
		class ItemActions
		{
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
					"ItemBandage"
				};
			};

		class CombineMag {
			text = $STR_BNDG_COMBINE;
			script = "spawn player_combineMag; r_action_count = 1;";
		};

		};
	};
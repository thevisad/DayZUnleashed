class ItemNewspaper: CA_Magazine
{
		scope = 2;
		count = 1;
		type = 256;
		displayName = "Torn Newspaper";
		model = "\z\addons\dayz_epoch\models\doc_deaths.p3d";
		picture = "\z\addons\dayz_epoch\pictures\equip_deaths_ca.paa";
		descriptionShort = "Torn Newspaper - ""The recent obituaries are stil legible...""";
		weight = 0.1;
		class ItemActions
		{
				class Obituaries
				{
						text = "Read Obituaries"; // TODO: localize
						script = "spawn player_deathBoard;";

				};
		};
};
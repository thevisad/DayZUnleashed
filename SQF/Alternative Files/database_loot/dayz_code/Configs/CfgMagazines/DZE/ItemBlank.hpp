class ITEM : ITEMTYPEINHERIT {
	scope = 2;
	count = 1;
	type = 256;
	displayName = DISPLAYNAMEHERE;
	descriptionShort = DESCRIPTIONHERE;
	model = MODELHERE;
	picture = PICTUREHERE;
	bloodRegen = BLOODREGEN;
	class ItemActions
	{
		"		class Crafting\rn 	{\rn" +
		"			text = ACTIONTITLE;\rn" +
		"			script = ACTIONSCRIPT;\rn" +
		"			neednearby[] = {ACTIONREQUIRED};\rn" +
		"			requiretools[] = {TOOLSREQUIRED};\rn" +
		"			output[] = {{OUTPUTITEM:AMOUNT}};\rn" +
		"			input[] = {{INPUTITEM:AMOUNT},{INPUTITEM:AMOUNT}};\rn" +
		"		};\rn" +
	};
};
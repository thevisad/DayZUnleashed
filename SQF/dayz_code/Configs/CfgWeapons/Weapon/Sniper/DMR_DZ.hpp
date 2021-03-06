class DMR_DZ : DMR {
	model = "\ca\weapons\DMR\us_dmr";
	picture = "\ca\weapons\data\equip\W_US_DMR_CA.paa";
	UiPicture = "\CA\weapons\data\Ico\i_sniper_CA.paa";
	modelOptics = "\ca\Weapons\2Dscope_MilDot_10";
	opticsFlare = 1;
	opticsDisablePeripherialVision = 1;
	opticsZoomInit = 0.0711;
	opticsZoomMin = 0.0249;
	distanceZoomMin = 400;
	opticsZoomMax = 0.0711;
	distanceZoomMax = 120;
	dexterity = 1.55;
	magazines[] = {"20Rnd_762x51_DMR"};
	reloadTime = 2;
	backgroundReload = 1;
	handAnim[] = {"OFP2_ManSkeleton", "\Ca\weapons\data\Anim\M24.rtm"};
	class Single_Sniper	{
		displayName = "$STR_DN_MODE_SEMIAUTO";
		multiplier = 1;
		burst = 1;
		artilleryCharge = 1;
		artilleryDispersion = 1;
		dispersion = 0.00045;
		begin1[] = {"ca\sounds\weapons\rifles\sniper_single_05",1.7782794,1,1000};
		soundBegin[] = {"begin1",1}; //EMPTY
		soundEnd[] = {}; //EMPTY
		soundLoop[] = {}; //EMPTY
		soundContinuous = 0;
		soundBurst = 1;
		reloadTime = 0.6;
		recoil = "recoil_single_primary_4outof10";
		recoilProne = "recoil_single_primary_prone_4outof10";
		ffCount = 1;
		ffMagnitude = 0.5;
		ffFrequency = 11;
		flash = "gunfire";
		flashSize = 0.1;
		autoFire = 0;
		useAction = 0;
		useActionTitle = "";
		showToPlayer = 1;
		minRange = 0;
		minRangeProbab = 0.3;
		midRange = 400;
		midRangeProbab = 0.7;
		maxRange = 800;
		maxRangeProbab = 0.05;
		aiRateOfFire = 10.0;
		aiRateOfFireDistance = 800;
	};
		modes[] = {"Single"};
		class ItemActions
		{
			class Crafting
			{
				text = $STR_UNLEASHED_CRAFT_PART_GENERIC;
				script = ";['Crafting','CfgWeapons', _id] spawn DZE_player_craftItem;";
				neednearby[] = {"workshop"};
				requiretools[] = {"ItemToolbox"};
				output[] = {{"PartGeneric",1}};input[] = {};
				inputweapons[] = {{"DMR_DZ"}};
			};
		};
	};
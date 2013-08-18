/******************++***
***                  ***
*** Animation Viewer ***
***                  ***
***      V1.3b       ***
***                  ***
************************
*** ...by Clayman
*** 02.07.2010
************************/


while {dialog} do
{
	scopeName "Main";
	_actUnit = lbValue [205, lbCurSel 205];
	_actWeapon = lbValue [207, lbCurSel 207];
	_actType = lbValue [209, lbCurSel 209];
	_actPosition = lbValue [211, lbCurSel 211];
	_actMove = lbValue [213, lbCurSel 213];
	_actBehaviour = lbText [215, lbCurSel 215];

	while {dialog} do
	{
		If ((lbValue [205, lbCurSel 205] != _actUnit) || CLAY_AV_Reset) Then
		{
			CLAY_AV_Reset = false;
			switch (lbValue [205, lbCurSel 205]) do
			{
				case 0:
				{
					CLAY_CamOffset = 3.5;

					If (!(isNil "CLAY_Animator")) Then
					{
						_grp = group CLAY_Animator;
						deleteVehicle CLAY_Animator;
						deleteGroup _grp;
					};

					private ["_unit", "_mags", "_weap"];
					_side = side player;
					switch (_side) do
					{
						case WEST:
						{
							_unit = "US_Soldier_LAT_EP1";
							_mags = "15Rnd_9x19_M9";
							_weap = "M9";
						};
						case EAST:
						{
							_unit = "TK_Soldier_AT_EP1";
							_mags = "8Rnd_9x18_Makarov";
							_weap = "Makarov";
						};
						case RESISTANCE:
						{
							_unit = "TK_GUE_Soldier_AT_EP1";
							_mags = "8Rnd_9x18_Makarov";
							_weap = "Makarov";
						};
						case CIVILIAN:
						{
							_unit = "TK_GUE_Soldier_AT_EP1";
							_mags = "8Rnd_9x18_Makarov";
							_weap = "Makarov";
						};
					};

					_grp = createGroup _side;
					CLAY_Animator = _grp createUnit [_unit, CLAY_AnimStartPos, [], 0, "NONE"];
					CLAY_Animator addMagazine _mags;
					CLAY_Animator addWeapon _weap;
					CLAY_Animator setBehaviour "CARELESS";

					ctrlEnable [207, true];
					ctrlEnable [209, true];
					ctrlEnable [211, true];
					ctrlEnable [213, true];
					ctrlEnable [215, true];
					ctrlShow [216, true];
					ctrlShow [217, true];
					ctrlShow [236, false];
					ctrlShow [237, false];

					ctrlSetText [206, "Weapon:"];
					lbClear 207;
					_index = lbAdd [207, "All"];
					lbSetValue [207, _index, 0];
					_index = lbAdd [207, "Rifle"];
					lbSetValue [207, _index, 1];
					_index = lbAdd [207, "Launcher"];
					lbSetValue [207, _index, 2];
					_index = lbAdd [207, "Pistol"];
					lbSetValue [207, _index, 3];
					_index = lbAdd [207, "Binocular"];
					lbSetValue [207, _index, 4];
					_index = lbAdd [207, "None"];
					lbSetValue [207, _index, 5];
					lbSetCurSel [207, 0];

					[] execVM "AnimationViewer\filter.sqf";
				};
				case 1:
				{
					CLAY_CamOffset = 3.5;

					If (!(isNil "CLAY_Animator")) Then
					{
						_grp = group CLAY_Animator;
						deleteVehicle CLAY_Animator;
						deleteGroup _grp;
					};

					_grp = createGroup Civilian;
					CLAY_Animator = _grp createUnit ["CIV_EuroWoman01_EP1", CLAY_AnimStartPos, [], 0, "NONE"];
					CLAY_Animator setBehaviour "CARELESS";

					ctrlEnable [207, true];
					ctrlEnable [209, true];
					ctrlEnable [211, true];
					ctrlEnable [213, true];
					ctrlEnable [215, true];
					ctrlShow [216, true];
					ctrlShow [217, true];
					ctrlShow [236, false];
					ctrlShow [237, false];

					ctrlSetText [206, "Wmn Type:"];
					lbClear 207;
					_index = lbAdd [207, "All"];
					lbSetValue [207, _index, 0];
					_index = lbAdd [207, "Normal"];
					lbSetValue [207, _index, 1];
					_index = lbAdd [207, "Old"];
					lbSetValue [207, _index, 2];
					_index = lbAdd [207, "Sportswoman"];
					lbSetValue [207, _index, 3];
					_index = lbAdd [207, "damsel"];
					lbSetValue [207, _index, 4];
					lbSetCurSel [207, 0];

					[] execVM "AnimationViewer\filter.sqf";
				};
				case 2:
				{
					CLAY_CamOffset = 3.5;

					If (!(isNil "CLAY_Animator")) Then
					{
						_grp = group CLAY_Animator;
						deleteVehicle CLAY_Animator;
						deleteGroup _grp;
					};

					_grp = createGroup Civilian;
					CLAY_Animator = _grp createUnit ["Cock", CLAY_AnimStartPos, [], 0, "NONE"];
					CLAY_Animator setBehaviour "CARELESS";

					ctrlEnable [207, false];
					ctrlEnable [209, false];
					ctrlEnable [211, false];
					ctrlEnable [213, false];
					ctrlEnable [215, false];
					ctrlShow [216, true];
					ctrlShow [217, true];
					ctrlShow [236, false];
					ctrlShow [237, false];

					ctrlSetText [206, "Weapon:"];
					lbClear 207;
					_index = lbAdd [207, "All"];
					lbSetValue [207, _index, 0];
					_index = lbAdd [207, "Rifle"];
					lbSetValue [207, _index, 1];
					_index = lbAdd [207, "Launcher"];
					lbSetValue [207, _index, 2];
					_index = lbAdd [207, "Pistol"];
					lbSetValue [207, _index, 3];
					_index = lbAdd [207, "Binocular"];
					lbSetValue [207, _index, 4];
					_index = lbAdd [207, "None"];
					lbSetValue [207, _index, 5];
					lbSetCurSel [207, 0];

					[] execVM "AnimationViewer\filter.sqf";
				};
				case 3:
				{
					CLAY_CamOffset = 3.5;

					If (!(isNil "CLAY_Animator")) Then
					{
						_grp = group CLAY_Animator;
						deleteVehicle CLAY_Animator;
						deleteGroup _grp;
					};

					_grp = createGroup Civilian;
					CLAY_Animator = _grp createUnit ["Cow04", CLAY_AnimStartPos, [], 0, "NONE"];
					CLAY_Animator setBehaviour "CARELESS";

					ctrlEnable [207, false];
					ctrlEnable [209, false];
					ctrlEnable [211, false];
					ctrlEnable [213, false];
					ctrlEnable [215, false];
					ctrlShow [216, true];
					ctrlShow [217, true];
					ctrlShow [236, false];
					ctrlShow [237, false];

					ctrlSetText [206, "Weapon:"];
					lbClear 207;
					_index = lbAdd [207, "All"];
					lbSetValue [207, _index, 0];
					_index = lbAdd [207, "Rifle"];
					lbSetValue [207, _index, 1];
					_index = lbAdd [207, "Launcher"];
					lbSetValue [207, _index, 2];
					_index = lbAdd [207, "Pistol"];
					lbSetValue [207, _index, 3];
					_index = lbAdd [207, "Binocular"];
					lbSetValue [207, _index, 4];
					_index = lbAdd [207, "None"];
					lbSetValue [207, _index, 5];
					lbSetCurSel [207, 0];

					[] execVM "AnimationViewer\filter.sqf";
				};
				case 4:
				{
					CLAY_CamOffset = 3.5;

					If (!(isNil "CLAY_Animator")) Then
					{
						_grp = group CLAY_Animator;
						deleteVehicle CLAY_Animator;
						deleteGroup _grp;
					};

					_grp = createGroup Civilian;
					CLAY_Animator = _grp createUnit ["Pastor", CLAY_AnimStartPos, [], 0, "NONE"];
					CLAY_Animator setBehaviour "CARELESS";

					ctrlEnable [207, false];
					ctrlEnable [209, false];
					ctrlEnable [211, false];
					ctrlEnable [213, false];
					ctrlEnable [215, false];
					ctrlShow [216, true];
					ctrlShow [217, true];
					ctrlShow [236, false];
					ctrlShow [237, false];

					ctrlSetText [206, "Weapon:"];
					lbClear 207;
					_index = lbAdd [207, "All"];
					lbSetValue [207, _index, 0];
					_index = lbAdd [207, "Rifle"];
					lbSetValue [207, _index, 1];
					_index = lbAdd [207, "Launcher"];
					lbSetValue [207, _index, 2];
					_index = lbAdd [207, "Pistol"];
					lbSetValue [207, _index, 3];
					_index = lbAdd [207, "Binocular"];
					lbSetValue [207, _index, 4];
					_index = lbAdd [207, "None"];
					lbSetValue [207, _index, 5];
					lbSetCurSel [207, 0];

					[] execVM "AnimationViewer\filter.sqf";
				};
				case 5:
				{
					CLAY_CamOffset = 3.5;

					If (!(isNil "CLAY_Animator")) Then
					{
						_grp = group CLAY_Animator;
						deleteVehicle CLAY_Animator;
						deleteGroup _grp;
					};

					_grp = createGroup Civilian;
					CLAY_Animator = _grp createUnit ["Goat", CLAY_AnimStartPos, [], 0, "NONE"];
					CLAY_Animator setBehaviour "CARELESS";

					ctrlEnable [207, false];
					ctrlEnable [209, false];
					ctrlEnable [211, false];
					ctrlEnable [213, false];
					ctrlEnable [215, false];
					ctrlShow [216, true];
					ctrlShow [217, true];
					ctrlShow [236, false];
					ctrlShow [237, false];

					ctrlSetText [206, "Weapon:"];
					lbClear 207;
					_index = lbAdd [207, "All"];
					lbSetValue [207, _index, 0];
					_index = lbAdd [207, "Rifle"];
					lbSetValue [207, _index, 1];
					_index = lbAdd [207, "Launcher"];
					lbSetValue [207, _index, 2];
					_index = lbAdd [207, "Pistol"];
					lbSetValue [207, _index, 3];
					_index = lbAdd [207, "Binocular"];
					lbSetValue [207, _index, 4];
					_index = lbAdd [207, "None"];
					lbSetValue [207, _index, 5];
					lbSetCurSel [207, 0];

					[] execVM "AnimationViewer\filter.sqf";
				};
				case 6:
				{
					CLAY_CamOffset = 3.5;

					If (!(isNil "CLAY_Animator")) Then
					{
						_grp = group CLAY_Animator;
						deleteVehicle CLAY_Animator;
						deleteGroup _grp;
					};

					_grp = createGroup Civilian;
					CLAY_Animator = _grp createUnit ["Hen", CLAY_AnimStartPos, [], 0, "NONE"];
					CLAY_Animator setBehaviour "CARELESS";

					ctrlEnable [207, false];
					ctrlEnable [209, false];
					ctrlEnable [211, false];
					ctrlEnable [213, false];
					ctrlEnable [215, false];
					ctrlShow [216, true];
					ctrlShow [217, true];
					ctrlShow [236, false];
					ctrlShow [237, false];

					ctrlSetText [206, "Weapon:"];
					lbClear 207;
					_index = lbAdd [207, "All"];
					lbSetValue [207, _index, 0];
					_index = lbAdd [207, "Rifle"];
					lbSetValue [207, _index, 1];
					_index = lbAdd [207, "Launcher"];
					lbSetValue [207, _index, 2];
					_index = lbAdd [207, "Pistol"];
					lbSetValue [207, _index, 3];
					_index = lbAdd [207, "Binocular"];
					lbSetValue [207, _index, 4];
					_index = lbAdd [207, "None"];
					lbSetValue [207, _index, 5];
					lbSetCurSel [207, 0];

					[] execVM "AnimationViewer\filter.sqf";
				};
				case 7:
				{
					CLAY_CamOffset = 3.5;

					If (!(isNil "CLAY_Animator")) Then
					{
						_grp = group CLAY_Animator;
						deleteVehicle CLAY_Animator;
						deleteGroup _grp;
					};

					_grp = createGroup Civilian;
					CLAY_Animator = _grp createUnit ["Rabbit", CLAY_AnimStartPos, [], 0, "NONE"];
					CLAY_Animator setBehaviour "CARELESS";

					ctrlEnable [207, false];
					ctrlEnable [209, false];
					ctrlEnable [211, false];
					ctrlEnable [213, false];
					ctrlEnable [215, false];
					ctrlShow [216, true];
					ctrlShow [217, true];
					ctrlShow [236, false];
					ctrlShow [237, false];

					ctrlSetText [206, "Weapon:"];
					lbClear 207;
					_index = lbAdd [207, "All"];
					lbSetValue [207, _index, 0];
					_index = lbAdd [207, "Rifle"];
					lbSetValue [207, _index, 1];
					_index = lbAdd [207, "Launcher"];
					lbSetValue [207, _index, 2];
					_index = lbAdd [207, "Pistol"];
					lbSetValue [207, _index, 3];
					_index = lbAdd [207, "Binocular"];
					lbSetValue [207, _index, 4];
					_index = lbAdd [207, "None"];
					lbSetValue [207, _index, 5];
					lbSetCurSel [207, 0];

					[] execVM "AnimationViewer\filter.sqf";
				};
				case 8:
				{
					CLAY_CamOffset = 3.5;

					If (!(isNil "CLAY_Animator")) Then
					{
						_grp = group CLAY_Animator;
						deleteVehicle CLAY_Animator;
						deleteGroup _grp;
					};

					_grp = createGroup Civilian;
					CLAY_Animator = _grp createUnit ["Sheep", CLAY_AnimStartPos, [], 0, "NONE"];
					CLAY_Animator setBehaviour "CARELESS";

					ctrlEnable [207, false];
					ctrlEnable [209, false];
					ctrlEnable [211, false];
					ctrlEnable [213, false];
					ctrlEnable [215, false];
					ctrlShow [216, true];
					ctrlShow [217, true];
					ctrlShow [236, false];
					ctrlShow [237, false];

					ctrlSetText [206, "Weapon:"];
					lbClear 207;
					_index = lbAdd [207, "All"];
					lbSetValue [207, _index, 0];
					_index = lbAdd [207, "Rifle"];
					lbSetValue [207, _index, 1];
					_index = lbAdd [207, "Launcher"];
					lbSetValue [207, _index, 2];
					_index = lbAdd [207, "Pistol"];
					lbSetValue [207, _index, 3];
					_index = lbAdd [207, "Binocular"];
					lbSetValue [207, _index, 4];
					_index = lbAdd [207, "None"];
					lbSetValue [207, _index, 5];
					lbSetCurSel [207, 0];

					[] execVM "AnimationViewer\filter.sqf";
				};
				case 9:
				{
					CLAY_CamOffset = 3.5;

					If (!(isNil "CLAY_Animator")) Then
					{
						_grp = group CLAY_Animator;
						deleteVehicle CLAY_Animator;
						deleteGroup _grp;
					};

					_grp = createGroup Civilian;
					CLAY_Animator = _grp createUnit ["WildBoar", CLAY_AnimStartPos, [], 0, "NONE"];
					CLAY_Animator setBehaviour "CARELESS";

					ctrlEnable [207, false];
					ctrlEnable [209, false];
					ctrlEnable [211, false];
					ctrlEnable [213, false];
					ctrlEnable [215, false];
					ctrlShow [216, true];
					ctrlShow [217, true];
					ctrlShow [236, false];
					ctrlShow [237, false];

					ctrlSetText [206, "Weapon:"];
					lbClear 207;
					_index = lbAdd [207, "All"];
					lbSetValue [207, _index, 0];
					_index = lbAdd [207, "Rifle"];
					lbSetValue [207, _index, 1];
					_index = lbAdd [207, "Launcher"];
					lbSetValue [207, _index, 2];
					_index = lbAdd [207, "Pistol"];
					lbSetValue [207, _index, 3];
					_index = lbAdd [207, "Binocular"];
					lbSetValue [207, _index, 4];
					_index = lbAdd [207, "None"];
					lbSetValue [207, _index, 5];
					lbSetCurSel [207, 0];

					[] execVM "AnimationViewer\filter.sqf";
				};
				case 10:
				{
					CLAY_CamOffset = 3.5;

					If (!(isNil "CLAY_Animator")) Then
					{
						_grp = group CLAY_Animator;
						deleteVehicle CLAY_Animator;
						deleteGroup _grp;
					};

					private ["_unit", "_mags", "_weap"];
					_side = side player;
					switch (_side) do
					{
						case WEST:
						{
							_unit = "USMC_Soldier_AT";
							_mags = "15Rnd_9x19_M9";
							_weap = "M9";
						};
						case EAST:
						{
							_unit = "RU_Soldier_AT";
							_mags = "8Rnd_9x18_Makarov";
							_weap = "Makarov";
						};
						case RESISTANCE:
						{
							_unit = "GUE_Soldier_AT";
							_mags = "8Rnd_9x18_Makarov";
							_weap = "Makarov";
						};
						case CIVILIAN:
						{
							_unit = "GUE_Soldier_AT";
							_mags = "8Rnd_9x18_Makarov";
							_weap = "Makarov";
						};
					};

					_grp = createGroup _side;
					CLAY_Animator = _grp createUnit [_unit, CLAY_AnimStartPos, [], 0, "NONE"];
					CLAY_Animator addMagazine _mags;
					CLAY_Animator addWeapon _weap;
					CLAY_Animator setBehaviour "CARELESS";

					ctrlEnable [207, false];
					ctrlEnable [209, false];
					ctrlEnable [211, false];
					ctrlEnable [213, false];
					ctrlEnable [215, false];
					ctrlShow [216, false];
					ctrlShow [217, false];
					ctrlShow [236, true];
					ctrlShow [237, true];

					ctrlSetText [206, "Weapon:"];
					lbClear 207;
					_index = lbAdd [207, "All"];
					lbSetValue [207, _index, 0];
					_index = lbAdd [207, "Rifle"];
					lbSetValue [207, _index, 1];
					_index = lbAdd [207, "Launcher"];
					lbSetValue [207, _index, 2];
					_index = lbAdd [207, "Pistol"];
					lbSetValue [207, _index, 3];
					_index = lbAdd [207, "Binocular"];
					lbSetValue [207, _index, 4];
					_index = lbAdd [207, "None"];
					lbSetValue [207, _index, 5];
					lbSetCurSel [207, 0];

					[] execVM "AnimationViewer\filter.sqf";
				};
			};
			breakTo "Main";
		};
		If (lbValue [207, lbCurSel 207] != _actWeapon || lbValue [209, lbCurSel 209] != _actType || lbValue [211, lbCurSel 211] != _actPosition || lbValue [213, lbCurSel 213] != _actMove) Then
		{
			[] execVM "AnimationViewer\filter.sqf";
			breakTo "Main";
		};
		If (lbText [215, lbCurSel 215] != _actBehaviour) Then
		{
			_behave = lbText [215, lbCurSel 215];
			CLAY_Animator setBehaviour _behave;
			player globalChat format ["BEHAVIOUR: %1", _behave];
			breakTo "Main";
		};
	sleep 0.1;
	};
};

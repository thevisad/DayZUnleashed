class Pistol: MeleeWeapon
{
	scope=2;
	count = 1;
	class ItemActions {
		class Use
		{
			text="Commit Suicide";
			script="spawn \z\addons\dayz_code\actions\player_suicide.sqf;";
		};
	};
	
};
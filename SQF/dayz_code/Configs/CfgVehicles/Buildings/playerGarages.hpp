	class dzu_playerGarage_sm: House
	{
		scope = 2;
		displayName = "Garage";
		//icon = "";
		vehicleClass = "Survival";
		accuracy = 1000;
		armor = 500;
		model = "\ca\buildings\garaz.p3d";
		class DestructionEffects: DestructionEffects
		{
			class Ruin1
			{
				simulation = "ruin";
				type = "\ca\buildings\ruins\garaz_ruins.p3d";
				position = "";
				intensity = 1;
				interval = 1;
				lifeTime = 1;
			};
		};
	};
    
	class dzu_playerGarage_lg: House
	{
		scope = 2;
		displayName = "Garage";
		//icon = "";
		vehicleClass = "Survival";
		accuracy = 1000;
		armor = 500;
		model = "\ca\buildings\garaz_mala.p3d";
		class DestructionEffects: DestructionEffects
		{
			class Ruin1
			{
				simulation = "ruin";
				type = "\ca\buildings\ruins\garaz_mala_ruins.p3d";
				position = "";
				intensity = 1;
				interval = 1;
				lifeTime = 1;
			};
		};
	};
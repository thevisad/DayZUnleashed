	class dzu_playerGarage : house
    {
        scope = 0;
		displayName = "Garage";
		//icon = "";
		vehicleClass = "Survival";
		accuracy = 0.2;
		vehicleLimit = 3;
		armor = 500;   
	};        
    
    class dzu_playerGarage_lg: dzu_playerGarage
	{
		scope = 2;
		model = "\ca\buildings\garaz.p3d";
		vehicleLimit = 9;
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
    
	class dzu_playerGarage_sm: dzu_playerGarage
	{
		scope = 2;
		model = "\ca\buildings\garaz_mala.p3d";
		vehicleLimit = 3;
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
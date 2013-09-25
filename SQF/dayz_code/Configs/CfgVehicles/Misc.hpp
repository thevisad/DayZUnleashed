    class Static;
    class Unleashed_Plant: Static
    {
         scope = 0;
        displayName = "";
        icon = "";
        model = "";      
        vehicleClass = "Survival";
        destrType = "DestructTent";
        accuracy = 1;
        nameSound = "";
        animated = 0;
        simulation = "house";
        cost = 0;
        armor = 300;
        ladders[] = {};
        placement = "slope";       
    };
    class UnleashedHerb: Unleashed_Plant
    {
        scope = 2;
        displayName = "Herb";
        icon = "\ca\plants_e\Plant\data\p_fiberplant_leaf_ep1_ca.paa";
        model = "\ca\plants_e\Plant\p_fiberPlant_EP1.p3d";     
        class UserActions
        {
            class TestA
            {
                displayName = "TestA";
                displayNameDefault = "TestA";
                position = "";
                radius = 2;
                onlyForPlayer = 1;
                condition = "true";
                statement = "hint""TestA"";";
            };
            class TestB
            {
                displayName = "TestB";
                displayNameDefault = "TestB";
                position = "";
                radius = 2;
                onlyForPlayer = 1;
                condition = "true";
                statement = "hint""TestB"";";
            };
            class TestC
            {
                displayName = "TestC";
                displayNameDefault = "TestC";
                position = "";
                radius = 2;
                onlyForPlayer = 1;
                condition = "true";
                statement = "hint""TestB"";";
            };
        }; 
    };
    class UnleashedFlower: Unleashed_Plant
    {
        scope = 2;
        displayName = "Flower";
        icon = "\ca\plants_e\Plant\data\p_papaver_ca";
        model = "\ca\plants_e\Plant\p_papaver_EP1.p3d";     
        vehicleClass = "Survival";
        destrType = "DestructTent";
        armor = 100;
                class UserActions
        {
            class TestA
            {
                displayName = "TestA";
                displayNameDefault = "TestA";
                position = "";
                radius = 2;
                onlyForPlayer = 1;
                condition = "true";
                statement = "hint""TestA"";";
            };
            class TestB
            {
                displayName = "TestB";
                displayNameDefault = "TestB";
                position = "";
                radius = 2;
                onlyForPlayer = 1;
                condition = "true";
                statement = "hint""TestB"";";
            };
            class TestC
            {
                displayName = "TestC";
                displayNameDefault = "TestC";
                position = "";
                radius = 2;
                onlyForPlayer = 1;
                condition = "true";
                statement = "hint""TestB"";";
            };
        }; 
    };
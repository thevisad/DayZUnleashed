dayZ_instance =	1;
dayZ_serverName="Unleashed"; 
unleashed_agroMeterEnabled = 0;
//unleashed_ZedNewAgroEnabled = 1; //New Agro System designed to identify players who are "noisy"
//unleashed_ZedNewMovementEnabled = 1; //New Zed Movements based on the ranges below

//dayz_aggro_decay = 3; //Base decay rate for new aggro system, uncomment to override, default value is 3

// These variables affect the new save system, they dont affect the old dayz variables. 
unleashed_pvSaveInterval = 10; //Send a signal to the server to when this many seconds have elapsed, when a player variable has changed. default 10
//The higher this value the less often player variable data is saved, lowering this value increases lag
unleashed_pvSaveStackSize = 2; //Send a signal to the server when the variable stack is larger than this value, when a player variable has changed. default 2
//Larger stacks are better for performance but may result in desync between multiple variables, 2 is the minimum recommended size. 

// These variables work with the Unleashed movement system and is a way for you to adjust the Zeds/dogs. 
//Range = the distance between the player and the zeds/dogs and is used in the calculation of the speed and movement distance of the zeds/dogs. 
//Speed = how fast they should move in each of the agro ranges, variables with the work Distance indicate speeds above the range check. 
unleashed_ZedShortAgroRange = 2.2; //Attack Range : not recommended to have too low of a number, otherwise the zeds/dogs shuffle to find a spot close enough and never attack. 
unleashed_ZedMediumAgroRange = 10; //Close Chase Range : this is just beyond attack range and before the zed/dog is within the log range. 
unleashed_ZedLongAgroRange = 25; //Far Chase Range : this is further away then the medium range and allows the zeds/dogs speed increases to chase and catch up. 

unleashed_ZedShortRangeSpeed=1; // Default : 1 : How fast the zed should move while within the short distance range. Not recommended to have too high of a number here. 
unleashed_ZedMediumRangeSpeed=4; // Default : 4 : fast far the zed should move while between short distance range and the medium range.
unleashed_ZedLongRangeSpeed=6; // Default : 6 : How fast the zed should move while between medium distance range and the long range.
unleashed_ZedDistanceRangeSpeed=12; // Default : 12 : How fast the zed should move while further away then the long distance range.

unleashed_ZedShortRangeMove=1; // Default : 1 : How far the dog should move while within the short distance range. Not recommended to have too high of a number here. 
unleashed_ZedMediumRangeMove=6; // Default : 4 : How far the dog should move while between short distance range and the medium range.
unleashed_ZedLongRangeMove=8; // Default : 6 : How far the dog should move while between medium distance range and the long range.
unleashed_ZedDistanceRangeMove=15; // Default : 15 : How far the dog should move while further away then the long distance range. If the zed is travelling for a ways and then stopping and starting to chase this number may be too low. 


unleashed_DogShortAgroRange = 2.2; //Attack Range : not recommended to have too low of a number, otherwise the zeds/dogs shuffle to find a spot close enough and never attack. 
unleashed_DogMediumAgroRange = 10; //Close Chase Range : this is just beyond attack range and before the dog is within the log range. 
unleashed_DogLongAgroRange = 3; //Far Chase Range : this is further away then the medium range and allows the zeds/dogs speed increases to chase and catch up. 

unleashed_DogShortRangeSpeed=1; // Default : 1 : How fast the dog should move while within the short distance range. Not recommended to have too high of a number here. 
unleashed_DogMediumRangeSpeed=4; // Default : 4 : fast far the dog should move while between short distance range and the medium range.
unleashed_DogLongRangeSpeed=6; // Default : 6 : How fast the dog should move while between medium distance range and the long range.
unleashed_DogDistanceRangeSpeed=12; // Default : 12 : How fast the dog should move while further away then the long distance range.

unleashed_DogShortRangeMove=1; // Default : 1 : How far the dog should move while within the short distance range. Not recommended to have too high of a number here. 
unleashed_DogMediumRangeMove=6; // Default : 4 : How far the dog should move while between short distance range and the medium range.
unleashed_DogLongRangeMove=8; // Default : 6 : How far the dog should move while between medium distance range and the long range.
unleashed_DogDistanceRangeMove=15; // Default : 15 : How far the dog should move while further away then the long distance range. If the dog is travelling for a ways and then stopping and starting to chase this number may be too low. 

unleashed_SpawnCombatZeds = 1;
dayz_lootSpawnBias = 100; // between 50 and 100. The lower it is, the lower chance some of the lootpiles will spawn
unleashed_BuildOnRoads = 1;
unleashed_maxDogs = 1; //Maz number of Z Dogs 
unleashed_spawnAiAtCrashSites = 1;
unleashed_startingInventory = [["M9"],["15Rnd_9x19_M9","15Rnd_9x19_M9","15Rnd_9x19_M9","ItemBandage"]];
unleashed_startingBackpack = ["CZ_VestPouch_EP1",[[],[]],[[],[]]];
unleashed_garageBuildings = ["dzu_playerGarage_sm","dzu_playerGarage_lg"];
unleashed_bug = 1; //1 low debug, 2 all debug
#include "\z\addons\dayz_code\system\mission\init.sqf"
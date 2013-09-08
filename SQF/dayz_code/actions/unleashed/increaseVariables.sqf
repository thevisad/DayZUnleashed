diag_log("UPVC: Increasing player variables.");
[player,20,1] call player_variableChange; //1,engineer:2,hunter:3,medic:4,soldier
[player,20,2] call player_variableChange; //1,engineer:2,hunter:3,medic:4,soldier
[player,20,3] call player_variableChange; //1,engineer:2,hunter:3,medic:4,soldier
[player,20,4] call player_variableChange; //1,engineer:2,hunter:3,medic:4,soldier

PVDZ_plr_Humanity = [player, 20, 4];
publicVariable "PVDZ_plr_Humanity";
PVDZ_plr_Humanity = [player, 20, 3];
publicVariable "PVDZ_plr_Humanity";
PVDZ_plr_Humanity = [player, 20, 2];
publicVariable "PVDZ_plr_Humanity";
PVDZ_plr_Humanity = [player, 20, 1];
publicVariable "PVDZ_plr_Humanity";
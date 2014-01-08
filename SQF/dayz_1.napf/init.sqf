dayZ_instance =	1;
dayZ_serverName="DayZ Unleashed"; 
_nul = [] execVM "DZAI_Client\dzai_initclient.sqf";
#include "\z\addons\dayz_code\system\mission\init.sqf"
["center",9000,42,[]] call bis_fnc_destroyCity;
0 fadesound 0;
Sleep 5;
0 fadesound 1;

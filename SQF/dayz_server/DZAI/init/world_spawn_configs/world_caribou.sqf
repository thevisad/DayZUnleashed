/*
	Caribou static spawn configuration 
	
	Last updated: 2:40 PM 6/22/2014
	
*/

#include "spawn_markers\markers_caribou.sqf"	//Load manual spawn point definitions file.

waitUntil {sleep 0.1; !isNil "DZAI_classnamesVerified"};	//Wait for DZAI to finish verifying classname arrays or finish building classname arrays if verification is disabled.

if (DZAI_staticAI) then {
	#include "spawn_areas\areas_caribou.sqf"
	
	['DZAI_EastsidePort',[0,2],[],0] call DZAI_static_spawn;
	['DZAI_Hightower',[0,1],[],0] call DZAI_static_spawn;
	['DZAI_NorthStation',[0,2],[],0] call DZAI_static_spawn;
	['DZAI_EastStation',[1,1],[],2] call DZAI_static_spawn;
	['DZAI_WestStationBarracks',[2,0],[],3] call DZAI_static_spawn;
	['DZAI_MountRageAFB_N',[1,1],[],3] call DZAI_static_spawn;
	['DZAI_MountRageAFB_S',[1,1],[],3] call DZAI_static_spawn;
	['DZAI_FortCrassus_N',[2,1],[],3] call DZAI_static_spawn;
	['DZAI_FortCrassus_S',[2,1],[],3] call DZAI_static_spawn;
	['DZAI_ShootingRange',[0,1],[],3] call DZAI_static_spawn;
	['DZAI_CosytonSaw',[1,1],[],2] call DZAI_static_spawn;
	['DZAI_BrigadeHalls',[0,1],[],2] call DZAI_static_spawn;
	['DZAI_CommunicationsStation',[0,2],[],0] call DZAI_static_spawn;
	['DZAI_Valleypoint',[0,1],[],1] call DZAI_static_spawn;
	['DZAI_BlaiseEnd',[0,1],[],0] call DZAI_static_spawn;
	['DZAI_SklonHolma',[0,2],[],0] call DZAI_static_spawn;
	['DZAI_OutpostEast',[1,1],[],2] call DZAI_static_spawn;
	['DZAI_SevernojNasosnoj',[0,1],[],2] call DZAI_static_spawn;
	['DZAI_PointRocksBarracks',[1,1],[],3] call DZAI_static_spawn;
	['DZAI_OutpostWest',[0,1],[],1] call DZAI_static_spawn;
	['DZAI_WintryStation',[0,2],[],2] call DZAI_static_spawn;
};

#include "custom_markers\cust_markers_caribou.sqf"
#include "custom_spawns\cust_spawns_caribou.sqf"
//----------------------------Do not edit anything below this line -----------------------------------------
DZAI_customSpawnsReady = true;
diag_log "Caribou Frontier static spawn configuration loaded.";
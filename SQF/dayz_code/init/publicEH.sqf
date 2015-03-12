//Medical Event Handlers
"PVDZ_drg_RaLW"   		addPublicVariableEventHandler {[_this select 1] execVM "\z\addons\dayz_code\medical\publicEH\load_wounded.sqf"};
"PVDZ_drg_RLact"		addPublicVariableEventHandler {[_this select 1] execVM "\z\addons\dayz_code\medical\load\load_wounded.sqf"};
"PVDZ_hlt_Bleed"			addPublicVariableEventHandler {_id = (_this select 1) spawn fnc_usec_damageBleed};
"PVDZ_hlt_Bandage"		addPublicVariableEventHandler {(_this select 1) call player_medBandage};
"PVDZ_hlt_Epi"			addPublicVariableEventHandler {(_this select 1) call player_medEpi};
"PVDZ_hlt_Transfuse"		addPublicVariableEventHandler {(_this select 1) call player_medTransfuse};
"PVDZ_hlt_Morphine"		addPublicVariableEventHandler {(_this select 1) call player_medMorphine};
"PVDZ_hlt_PainK"			addPublicVariableEventHandler {(_this select 1) call player_medPainkiller};
"PVDZ_veh_SH" 		addPublicVariableEventHandler {(_this select 1) call fnc_veh_handleDam}; // set damage to vehicle part
"PVDZ_veh_SF"		addPublicVariableEventHandler {(_this select 1) call fnc_veh_handleRepair}; // repair a part from a vehicle
"PVDZ_obj_HideBody"		addPublicVariableEventHandler {hideBody (_this select 1)};
"PVDZ_obj_GutBody"		addPublicVariableEventHandler {(_this select 1) spawn local_gutObject};
"PVDZ_veh_SetFuel"		addPublicVariableEventHandler {(_this select 1) spawn local_setFuel};
"PVDZ_plr_Humanity"		addPublicVariableEventHandler {(_this select 1) spawn player_humanityChange};
"dayzInfectedCamps"		addPublicVariableEventHandler {(_this select 1) spawn infectedcamps};
"dzuSwapPilot" addPublicVariableEventHandler {_id = (_this select 1) spawn fnc_dzuSwapPilot};
"PVDZ_plr_exp" addPublicVariableEventHandler {(_this select 1) spawn player_giveEXP};

"PVDZ_Server_Simulation" addPublicVariableEventHandler {
	_agent = ((_this select 1) select 0);
	_control = ((_this select 1) select 1);

	_agent enableSimulation _control;
};


//Server only
if (isServer) then {
	"PVDZ_maintainArea" addPublicVariableEventHandler {(_this select 1) spawn server_maintainArea};
	
	"PVDZ_atp" addPublicVariableEventHandler {
		_x = _this select 1;
		if (typeName _x == "STRING") then {
			diag_log _x;
		};
	};
	"PVDZ_plr_Death"		addPublicVariableEventHandler {_id = (_this select 1) spawn server_playerDied};
	"PVDZ_plr_Save"			addPublicVariableEventHandler {_id = (_this select 1) call server_playerSync;};
	"PVDZ_obj_Publish"		addPublicVariableEventHandler {(_this select 1) call server_publishObj};
	"PVDZ_bld_Publish"		addPublicVariableEventHandler {(_this select 1) call server_publishBld};
	"PVDZ_veh_Update"		addPublicVariableEventHandler {(_this select 1) call server_updateObject};
	"PVDZ_plr_Login1"		addPublicVariableEventHandler {_id = (_this select 1) call server_playerLogin};
	"PVDZ_plr_Login2"		addPublicVariableEventHandler {(_this select 1) call server_playerSetup};
	"PVDZ_plr_VarSave1"     addPublicVariableEventHandler {(_this select 1) spawn server_playerVariableChange};
	"PVDZ_plr_VarSave2"     addPublicVariableEventHandler {(_this select 1) spawn server_playerVariablesChange};    
	"PVDZ_plr_LoginRecord"	addPublicVariableEventHandler {_id = (_this select 1) spawn dayz_recordLogin};
	"PVDZ_obj_Delete"		addPublicVariableEventHandler {(_this select 1) spawn server_deleteObj};
	"PVDZ_obj_Swap"		addPublicVariableEventHandler {(_this select 1) spawn server_swapObject};
	"PVDZ_gar_Handler"		addPublicVariableEventHandler {(_this select 1) call server_GarageHandler};
	"PVDZ_plr_DeathB"		addPublicVariableEventHandler {(_this select 1) spawn server_deaths};
	
};

//Client only
if (!isDedicated) then {
	"dayzSetDate"		addPublicVariableEventHandler {setDate (_this select 1)};
	"PVDZ_obj_RoadFlare"		addPublicVariableEventHandler {(_this select 1) spawn object_roadFlare};
	"PVDZ_drg_RaDrag"   	addPublicVariableEventHandler {(_this select 1) execVM "\z\addons\dayz_code\medical\publicEH\animDrag.sqf"};
	"PVDZ_obj_Fire"			addPublicVariableEventHandler {nul=(_this select 1) spawn BIS_Effects_Burn};
	"dzuSwapPilot" addPublicVariableEventHandler {_id = (_this select 1) spawn fnc_dzuSwapPilot}; 
	
	"norrnRaDrag"			addPublicVariableEventHandler {(_this select 1) execVM "\z\addons\dayz_code\medical\publicEH\animDrag.sqf"};
	"norrnRnoAnim"			addPublicVariableEventHandler {(_this select 1) execVM "\z\addons\dayz_code\medical\publicEH\noAnim.sqf"};
};
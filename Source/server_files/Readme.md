Latest Files: http://www.dayzunleashed.com/forums/server-files.34/

SQL Manager
===========
The SQL Manager handles the current vehicle spawn system and it is highly recommended that this is used for all maintenance. It automatically detects server instances and will automatically handle each instance after a single player logs in. It ios recommended that this be run at 5-15 minutes prior to the server restart so that it deletes any broken vehicles. It will add any vehicles up to the limit specified. If you do not wish to use this, you may use the scheduled SQL queries that are included in sql\alternative. Again, this is not recommended and you will receive no support for this option.


Mission file size
=================
The mission file is tiny due to the mission being stored in Dayz_code. You may insert any addons you wish to the end of the mission file. It is not recommended to remove the mission from dayz_code and use this as we may add or remove things in the future. This will break the functionality of the mod. 


Instances
=========
Instances are handles by the mission, edit the middion PBO files and change the instance value inside. 


Server Keys
===========
All server keys are provided as needed copy these to your server


SQL Files
=========
The SQL files are dumped out and provided as a full fledged solution in the main sql folder. There is a complete dump of the database if you prefer to use this. Also included are the older SQL files from the previous version. The alternative table is provided to use instead of the SQL manager above. No support is given for these alternative files. 


SQL Views
=========
Several views are provided, they are as follows. 
character_survival  = used to provide a website with the current survival time. 
tents - a list of all tents on the server, the owner and object id. 
webserver_antihacks_bans - used to provide a website with a list of all banned players. 
webserver_antihacks_admins - used to provide a website with a list of all admin players. 


SQL Tables
==========
antihack_admins - this table is designed for use with the included antihacks, you may insert admins in the table with a value from 1-3 which will provide different levels of admin use. (optional)
antihack_bans - this table handles the bans list, the functionality for this table is not inserted, you may look into the antihacks to see how to load this sql  (optional)
antihack_whitelist - this table handles the white list, the functionality for this table is not inserted, you may look into the antihacks to see how to load this sql  (optional)
building - this holds a table for building verification, this verification is in addition to the one that the game handles. The system will prevent any building from going into the instance_building table that is not listed in this table.  (required)
character_data - this table contains all of the data for each of the players characters.  (required)
character_dead - this table contains all of the data for each of the dead players characters.  (required)
character_variables - this contains all of the character variables for the leveling system.  (required)
cust_loadout - this is to provide players with a custom loadout, this functionality will need to be added by server admins and is not supported (optional)
cust_loadout_profile - this is to provide players with a custom loadout, this functionality will need to be added by server admins and is not supported (optional)
global_state - not used at the moment (optional)
instance_building - this contains a list of all buildings added by the players (required)
instance_garage - not used at the moment (optional)
instance_movement - this table hold all of the player movement that occurs on the map. This will eventually allow admins to see a "heatmap" of the player locations. (optional)
instance_squad - not used at the moment (optional)
instance_state - not used at the moment (optional)
instance_user - not used at the moment (optional)
message - this will allow messages to be broadcast to the server via the mysql, similar to bliss/Reality (optional)
object_classes - this is a list of all the vehicles in the game (required)
object_data - this is the current spawned vehicles on the server (required)
object_spawn_locations - this is a list of all of the spawn locations on the map (required)
object_spawn_parts - this is the parts that are attached to the vehicles and will affect any new vehicles spawning (required)
object_spawns_types - these are the types of spawns so that you can link vehicles to specific types of spawns listed in the spawn location table supported spawn locations (air, heli, land, water)  (required)
player_data - contains all of the players data  (required) 
player_login -  contains all of the player login data  (required)
player_variables - not used at the moment (optional)
quest - not used at the moment (optional)
squad - not used at the moment (optional)
squad_rank - not used at the moment (optional)
squad_rank_name - not used at the moment (optional)
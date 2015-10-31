private [];
//_item = _this select 3;

// remove menu
player removeAction s_player_callzombies;
s_player_callzombies = 1;

// player playActionNow "Surrender"; // TODO: find some animation that makes sense

[player,"scream",0,false] call dayz_zombieSpeak;

[player,100,true,(getPosATL player)] spawn player_alertZombies;

// wait a bit
sleep 3;

// allow menu again
s_player_callzombies = -1;

// cutText ["Calling Zombies...", "PLAIN DOWN"];
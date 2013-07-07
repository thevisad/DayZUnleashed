//////////////////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////////////////

private ["_Secondary"];
canAbort = true;
_Secondary = currentWeapon player;
player addEventHandler ["fired", {if (alive player) then { player SetDamage 1.1;};}];
cutText [format["You think about your family... 10 Seconds"], "PLAIN DOWN"];
sleep 4;
cutText [format["Your little daughter, and what happened to her... 6 Seconds"], "PLAIN DOWN"];
sleep 4;
cutText [format["You cant take this shit any longer... 2 Seconds"], "PLAIN DOWN"];
sleep 2;
cutText [format["I come to you Sahra! Goodbye cruel world!"], "PLAIN DOWN"];
canAbort = false;
player playmove "ActsPercMstpSnonWpstDnon_suicide1B";
sleep 8.4;
player fire _Secondary;
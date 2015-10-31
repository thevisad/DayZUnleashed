//////////////////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////////////////

private ["_Secondary"];
canAbort = true;
_Secondary = currentWeapon player;
player addEventHandler ["fired", {if (alive player) then { player SetDamage 1.1;};}];
cutText [format["Your family is gone, your friends are gone."], "PLAIN DOWN"];
sleep 4;
cutText [format["The deaders ate them all, while you could only watch."], "PLAIN DOWN"];
sleep 4;
cutText [format["They finally got your dog and ate him as well."], "PLAIN DOWN"];
sleep 2;
cutText [format["You are unable to bear the loss any longer!"], "PLAIN DOWN"];
canAbort = false;
player playmove "ActsPercMstpSnonWpstDnon_suicide2B";
sleep 8.4;
player fire _Secondary;

/*
This script allows players to remove player UIDs from object so that 
they may no longer use the object
*/

private ["_displayok","_lever"];
_lever = cursortarget;
globalAuthorizedUID = _lever getVariable "AuthorizedUID";
keyCode = _lever getVariable ["ObjectUID","0"];
_displayok = createdialog "KeypadGate";
removeUIDCode = true;
//Show current UIDs until new UID is removed
while {removeUIDCode} do {
cuttext [format["All Player UID(s): %1\nType ONE UID in Keypad to remove", str(globalAuthorizedUID)],"PLAIN DOWN",1];
hintsilent format["All Player UID(s): %1\nType ONE UID in Keypad to remove", str(globalAuthorizedUID)];
sleep 3;
if (!removeUIDCode) exitwith {};
};
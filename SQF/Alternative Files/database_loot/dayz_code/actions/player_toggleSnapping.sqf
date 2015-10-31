/*
Build Snapping - Extended v1.3

Idea and first code:
Maca

Reworked:
OtterNas3
01/11/2014
*/
if (SnappingEnabled) then {
	SnappingEnabled = false;
	SnappingAttachedToPlayer = false;
	systemChat ("Snapping - DISABLED");
} else {
	SnappingEnabled = true;
	systemChat ("Snapping - ENABLED");
};
private["_item"];

//Quick script making gear menu pop up if player is trying to pick up place_holder object
while {alive player} do {
if ((speed player <= 4)) then {
if ((cursortarget isKindOf "WeaponHolder_PartWheel" ||  
	cursortarget isKindOf "WeaponHolder_ItemTent" ||
	cursortarget isKindOf "WeaponHolder_ItemWaterbottle" ||
	cursortarget isKindOf "WeaponHolder_ItemToolbox" ||
	cursortarget isKindOf "WeaponHolder_ItemJerrycanSide" ||
	cursortarget isKindOf "WeaponHolder_PartFueltank" ||  
	cursortarget isKindOf "WeaponHolder_PartGeneric" ||  
	cursortarget isKindOf "WeaponHolder_PartVRotor" ||  
	cursortarget isKindOf "WeaponHolder_PartEngine" ||  
	cursortarget isKindOf "WeaponHolder_PartGlass" ||  
	cursortarget isKindOf "WeaponHolder_ItemJerrycan")) then {
//if (animationstate player == "amovppnemstpsraswrfldnon") then {player playActionNow "PutDown";} else {
while {(animationstate player == "amovppnemstpsraswrfldnon" || animationstate player == "amovpknlmstpsraswrfldnon_ainvpknlmstpslaywrfldnon" || 
									animationstate player == "ainvpknlmstpslaywrfldnon_1" || 
									animationstate player == "amovpknlmstpsraswpstdnon_ainvpknlmstpsnonwnondnon_end" || 
									animationstate player == "ainvpknlmstpsnonwnondnon_2" ||
									animationstate player == "amovppnemsprslowwrfldf" ||
									animationstate player == "amovppnemsprslowwrfldb" ||
									animationstate player == "amovppnemsprslowwrfldl" ||
									animationstate player == "amovppnemsprslowwrfldr" ||
									animationstate player == "amovpknlmstpsraswrfldnon_amovpercmstpsraswrfldnon" ||
									animationstate player == "amovpercmstpsraswrfldnon_amovpknlmstpsraswrfldnon" ||
									animationstate player == "amovpknlmstpsraswrfldnon_amovppnemstpsraswrfldnon" ||
									animationstate player == "amovpercmstpsraswrfldnon_amovppnemstpsraswrfldnon" ||
									animationstate player == "amovppnemstpsraswrfldnon_amovpercmstpsraswrfldnon" ||
									animationstate player == "ainvpknlmstpslaywrfldnon" ||
									animationstate player == "amovpercmstpsraswrfldnon_ainvpknlmstpslaywrfldnon" ||
									animationstate player == "aovrpercmstpsraswrfldf" ||
									animationstate player == "ainvpknlmstpsnonwnondnon_medic_1" ||
									animationstate player == "amovpknlmstpsraswpstdnon_ainvpknlmstpsnonwnondnon"
									)} do {
_item = cursortarget;
if (player distance _item < 15) then {									
	if (IsNull (FindDisplay 106)) then {
		createGearDialog [player, "RscDisplayGear"];
		cutText ["This is to prevent duping, blatant/excessive duping = ban", "PLAIN DOWN"];
	};
};
//};
sleep .01;
};
};
};
sleep .03;
};
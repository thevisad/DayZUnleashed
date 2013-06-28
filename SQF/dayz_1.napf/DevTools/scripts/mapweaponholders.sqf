
	while {true} do
	{
_missionObjs = allMissionObjects "ReammoBox";

{

		_pos = getPos _x;
		
		_mkr = createMarkerLocal [format ["DBP%1%2", _pos select 0, _pos select 1], [(_pos select 0) + 20, _pos select 1, 0]]; 
		_mkr setMarkerTypeLocal "Dot";  
		_mkr setMarkerSizeLocal [0,0];
		_mkr setMarkerColorLocal "ColorBlack";
		_mkr setMarkerPosLocal ([(getPosATL _x select 0) + 15, getPosATL _x select 1, 0]); 
		
		sleep 0.1;
		
} forEach _missionObjs;
};
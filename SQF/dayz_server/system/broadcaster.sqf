while {true} do {
	waitUntil {!isNil "currentInvites"};
	_currentInvites = str(currentInvites);
	publicVariable "currentInvites";
	waitUntil {(_currentInvites) != str(currentInvites)};
};
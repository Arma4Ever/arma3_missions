if(hasInterface) exitWith {};

_stuka = _this select 0; 

while{alive _stuka && junkersSiren} do {

waitUntil{speed _stuka > 300};

while{speed _stuka > 300} do {

	[_stuka, ["stuka", 2500, 1]] remoteExec ["say3d", 0, false];
	sleep 9;};
	
};



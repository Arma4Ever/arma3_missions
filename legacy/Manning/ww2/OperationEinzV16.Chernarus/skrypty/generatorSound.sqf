if(hasInterface) exitWith {};

_gen = _this select 0;

while{true} do {
	[_gen, ["generator", 300, 1]] remoteExec ["say3d", 0, true]; 
	sleep 10;
	};
if(!hasInterface) exitWith {};

_monolithPos = _this select 0;

while{true} do {

	waitUntil{player distance _monolithPos < 50};
	
	playMusic "geiger";
	sleep 30;
	}


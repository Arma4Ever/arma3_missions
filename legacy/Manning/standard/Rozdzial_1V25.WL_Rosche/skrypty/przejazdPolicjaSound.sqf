if(!hasInterface) exitWith {};

_pojazd = _this select 0;

while{alive _pojazd} do {
	_pojazd say3D ["policeSiren", 500, 1, false];
	sleep 30;
	}
if(hasInterface) exitWith {};

_chute = _this select 0;

waitUntil{(getPos _chute) select 2 < 4};

deleteVehicle _chute;
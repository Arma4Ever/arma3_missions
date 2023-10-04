if(!hasInterface) exitWith {};

_light = _this select 0;
_bullet = _this select 1;

waitUntil{!alive _bullet};

deleteVehicle _light;
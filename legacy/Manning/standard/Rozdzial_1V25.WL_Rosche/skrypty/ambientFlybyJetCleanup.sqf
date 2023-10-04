if(hasInterface) exitWith {};

_heli = _this select 0;
_pilot = _this select 1;
_pos = _this select 2;

waitUntil{_heli distance _pos < 300};

deleteVehicle _heli;
deleteVehicle _pilot;
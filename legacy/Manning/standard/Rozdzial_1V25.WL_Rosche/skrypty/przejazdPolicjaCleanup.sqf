if(hasInterface) exitWith {};

_heli = _this select 0;
_pilot = _this select 1;
_pos = _this select 2;

waitUntil{_heli distance (getMarkerPos _pos) < 25};

deleteVehicle _heli;
deleteVehicle _pilot;
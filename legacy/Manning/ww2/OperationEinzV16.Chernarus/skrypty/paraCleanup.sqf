if(!hasInterface) exitWith {};

_sol = _this select 0;
_para = _this select 1;

sleep 10;

waitUntil {(getpos _sol select 2) < 10};

deleteVehicle _para;
deleteVehicle _sol;

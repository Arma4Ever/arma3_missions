if(!hasInterface && !isDedicated) then {

_strzelcy = _this select 0;

sleep 1;

{_x doTarget monolith} forEach _strzelcy;

sleep 15;

{deleteVehicle _x} forEach _strzelcy;};




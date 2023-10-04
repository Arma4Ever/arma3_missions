if(hasInterface) exitWith {};

_planes = _this select 0;
_pos = _this select 1;

sleep 3;
{_x setFuel 1;} forEach _planes;

sleep 3;
{_x engineOn true} forEach _planes;
sleep 3;

{_x setPos (getPos _pos); _x setVelocity [0,50,1]; sleep 3;} forEach _planes;
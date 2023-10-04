//if(hasInterface) exitWith {};

_zarowy = _this select 0;
_arrayE = [];

{_smoke = "#particlesource" createVehicle getpos _x;
_smoke setPos getPos _x;
[_smoke, "AvionicsSparks"] remoteExec ["setParticleClass",0];
[_smoke, [0, [0.5, 0.5, 0.5], [5, 0, 0.5], 0, 0.1, [0, 0, 0, 0], 0, 0]] remoteExec ["setParticleRandom",0];
[_smoke, 0.005] remoteExec ["setDropInterval",0];
_arrayE pushBack _smoke;} forEach _zarowy;

sleep 1;

{[_x, ["lightbulb", 50, 1]] remoteExec ["say3d", 0, true];} forEach _zarowy;

sleep 1;

{deleteVehicle _x} forEach _arrayE;
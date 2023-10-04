if(hasInterface) exitWith {};

_zarowy = _this select 0;
_pozycjaDzwieku = _this select 1;
_bramka = _this select 2;
_arrayE = [];
_arrayL = [];

{_smoke = "#particlesource" createVehicle getpos _x;
_smoke setPos getPos _x;
[_smoke,"AvionicsSparks"] remoteExec ["setParticleClass",0];
[_smoke,[0, [1, 1, 1], [5, 0, 0.5], 0, 0.1, [0, 0, 0, 0], 0, 0]] remoteExec ["setParticleRandom",0];
[_smoke,0.005] remoteExec ["setDropInterval",0];
_arrayE pushBack _smoke;

_blysk = "#lightpoint" createVehicle getpos _x;
[_blysk,0.5] remoteExec ["setLightBrightness",0];
[_blysk,[255, 255, 255]] remoteExec ["setLightColor",0];
[_blysk,[255, 255, 255]] remoteExec ["setLightAmbient",0];
[_blysk, 0.25] remoteExec ["setLightFlareSize",0];
[_blysk, 1] remoteExec ["setLightIntensity",0];
_arrayL pushBack _blysk} forEach _zarowy;

sleep 2;

[_pozycjaDzwieku, ["bargateCreepySound", 100, 1]] remoteExec ["say3d", 0, false];

sleep 1;

_bramka animate ["Door_1_rot", 1];

sleep 5;
{deleteVehicle _x} forEach _arrayL;

sleep 1;
{deleteVehicle _x} forEach _arrayE;


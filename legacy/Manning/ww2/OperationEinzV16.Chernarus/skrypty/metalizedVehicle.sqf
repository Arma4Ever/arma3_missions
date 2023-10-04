if(hasInterface) exitWith {};

_lp = _this select 0;
_vehicle = _this select 1;
_arrayE = [];
_arrayL = [];

sleep 2;

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
_arrayL pushBack _blysk} forEach _lp;

sleep 2;
_FX_smoke_source = "#particlesource" createVehicle getPos _vehicle;
_FX_smoke_source setPos getPosASL _vehicle;
[_FX_smoke_source,"WPCloud"] remoteExec ["setParticleClass",0];
[_FX_smoke_source,[0, [1, 1, 1], [5, 0, 0.5], 0, 0.1, [0, 0, 0, 0], 0, 0]] remoteExec ["setParticleRandom",0];
sleep 0.01;
_arrayE pushBack _FX_smoke_source;

[_vehicle, ["metalizingSound", 100, 1]] remoteExec ["say3d", 0, false];

sleep 6;

{
	_vehicle setObjectMaterialGlobal [_x, 'A3\Data_F\mirror.rvmat'];
	_vehicle setObjectTextureGlobal [_x,'#(argb,8,8,4)color(1,1,1,0.7)'];
} forEach [0,1,2,3,4,5,6,7,8,9,10];

sleep 4;

{deleteVehicle _x} forEach _arrayL;
{deleteVehicle _x} forEach _arrayE;




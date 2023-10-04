if(hasInterface) exitWith {};

_plane = _this select 0;
_gl = _this select 1;
_arrayBox = _this select 2;
_delay = 0;

_plane engineOn true;

engine_0 = "TestSphere2" createVehicle [0, 0, 0];
engine_0 setPos getPos _gl;
engine_0 setDir 180;

_plane attachTo [engine_0, [0,0,0]];

engine_0 setVelocity [0,-41,0];
engine_0 setDir 180;

waitUntil{engine_0 distance gl_strefaZrzutu < 550};

{_delay = _delay + 3; _null = [_plane, _x, _delay] execVM "skrypty\vehiclePara.sqf";} forEach _arrayBox;

sleep 300;

{deleteVehicle _x} forEach _arrayPlanes;


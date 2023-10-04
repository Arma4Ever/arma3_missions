if(hasInterface) exitWith {};

sleep 125;

_source = edelweiss;
_arraySmoke = [];
_arrayLight = [];
_pos = getPos _source;

_i = 0;

while {_i != 10} do {
	_FX_smoke_source = "#particlesource" createVehicle [(_pos select 0), (_pos select 1), (_pos select 2) + 20];
	_FX_smoke_source setParticleClass "WPCloud";
	_FX_smoke_source setPos [(_pos select 0) + ([-5, 5] call BIS_fnc_randomInt), (_pos select 1) + ([-5, 5] call BIS_fnc_randomInt), (_pos select 2)+20];
	sleep 0.1;
	_i = _i + 1;
	_arraySmoke pushBack _FX_smoke_source;
};

_o = 0;
while {_o != 20} do {
	_blysk = "#lightpoint" createVehicle [(_pos select 0) + ([-5, 5] call BIS_fnc_randomInt), (_pos select 1) + ([-5, 5] call BIS_fnc_randomInt), (_pos select 2)+20];
	_blysk setLightBrightness selectRandom [35, 34, 33, 36]; 
	_blysk setLightIntensity selectRandom [35, 34, 33, 36];
	_blysk setLightColor selectRandom [[6,35,155],[51,90,247],[82,125,158],[0, 16, 142]];
	_blysk setLightAmbient selectRandom [[6,35,155],[51,90,247],[82,125,158],[0, 16, 142]];
	sleep 0.25;
	_o = _o + 1;
	_arrayLight pushBack _blysk;
};

while {edelweissMovement} do {
	[edelweiss, ["zap", 150, 1]] remoteExec ["say3d", 0, false];
	sleep selectRandom [1,1.5,2,2.5,3];
	_dir = [0,360] call BIS_fnc_randomInt;
	
	_light = "#lightpoint" createvehicle [(_pos select 0) + ([-10, 10] call BIS_fnc_randomInt), (_pos select 1) + ([-15, 15] call BIS_fnc_randomInt), (_pos select 2) + ([20, 35] call BIS_fnc_randomInt)];
	_light setposatl [_pos select 0,_pos select 1,(_pos select 2) + 10];
	_light setLightDayLight true;
	_light setLightBrightness 300;
	_light setLightAmbient [0.05, 0.05, 0.1];
	_light setlightcolor [1, 1, 2];

	sleep 0.1;
	_light setLightBrightness 0;
	sleep (random 0.5);
	_class = ["lightning1_F","lightning2_F"] call bis_Fnc_selectrandom;
	_lightning = _class createvehicle [100,100,100];
	_lightning setdir _dir;
	_lightning setpos _pos;

	sleep selectRandom [0.5,0.55,0.6];

	deletevehicle _lightning;
	deletevehicle _light;
};

_i = 0;
while {_i != 10} do {
	_FX_smoke_source = "#particlesource" createVehicle [(_pos select 0), (_pos select 1), (_pos select 2)];
	_FX_smoke_source setParticleClass "WPCloud";
	_FX_smoke_source setPos [(_pos select 0) + ([-5, 5] call BIS_fnc_randomInt), (_pos select 1) + ([-5, 5] call BIS_fnc_randomInt), (_pos select 2)];
	sleep 0.1;
	_i = _i + 1;
	_arraySmoke pushBack _FX_smoke_source;
};

_o = 0;
while {_o != 20} do {
	_blysk = "#lightpoint" createVehicle [(_pos select 0) + ([-5, 5] call BIS_fnc_randomInt), (_pos select 1) + ([-5, 5] call BIS_fnc_randomInt), (_pos select 2)];
	_blysk setLightBrightness selectRandom [35, 34, 33, 36]; 
	_blysk setLightIntensity selectRandom [35, 34, 33, 36];
	_blysk setLightColor selectRandom [[6,35,155],[51,90,247],[82,125,158],[0, 16, 142]];
	_blysk setLightAmbient selectRandom [[6,35,155],[51,90,247],[82,125,158],[0, 16, 142]];
	sleep 0.25;
	_o = _o + 1;
	_arrayLight pushBack _blysk;
};

sleep 5;

{deleteVehicle _x; sleep 0.1;} forEach _arraySmoke;
{deleteVehicle _x; sleep 0.1;} forEach _arrayLight;

deleteVehicle edelweiss;
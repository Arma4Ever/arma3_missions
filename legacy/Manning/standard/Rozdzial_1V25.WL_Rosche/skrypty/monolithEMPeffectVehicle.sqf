if(!hasInterface) exitWith {};

_veh = _this select 0;

_veh say3D ["sparkEF",25,1,false];

_effect = "#particlesource" createVehicleLocal (getPos _veh);
_effect setParticleParams 
	[
		["\A3\data_f\blesk1",1,0,1],
		"",
		"SpaceObject",
		1,
		1,
		[0,0,0],
		[0,0,0],
		3,
		10,
		7.9,
		0,
		[0.1,0.1],
		[[1,1,0.1,1],[1,1,1,1]],
		[0.08], 
		1, 
		0, 
		"", 
		"", 
		_veh];
_effect setDropInterval 0.01;

_effect attachTo [_veh, [0,0,0]];

sleep 3;

deleteVehicle _effect;
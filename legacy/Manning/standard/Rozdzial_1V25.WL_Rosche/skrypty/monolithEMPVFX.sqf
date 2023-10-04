if(!hasInterface) exitWith {};

_veh = _this select 0;

_veh say3D ["sparkEF",25,1,false];

_effect = "#particlesource" createVehicleLocal (getPos _veh);
_effect setParticleParams 
	[["\A3\data_f\VolumeLight", 1, 0, 1], 
	"", 
	"SpaceObject", 
	1, 
	8, 
	[0, 0, 0], 
	[0, 0, 0], 
	13, 
	1,
	5,
	0, 
	[8,6,3,1], 
	[[1, 1, 1, 1],[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1]], 
	[0.08], 
	1, 
	0, 
	"", 
	"",
	_veh];
_effect setDropInterval 0.005;

sleep 35;

deleteVehicle _effect;
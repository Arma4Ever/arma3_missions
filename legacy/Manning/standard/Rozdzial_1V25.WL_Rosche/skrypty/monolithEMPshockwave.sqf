if(!hasInterface) exitWith {};

_monolithPos = _this select 0;

_soundwave = "#particlesource" createVehicleLocal getpos _monolithPos;
_soundwave setParticleParams [["\A3\data_f\ParticleEffects\Universal\Refract",1,0,1], "", "Billboard", 1, 20, [0, 0, 0],
				[0, 0, 0], 0, 1.5, 1, 0, [10, 25], [[0.1, 0.1, 0.1, 0.5], 
				[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 0]], [1,0.5], 0.1, 1, "", "", _monolithPos];
_soundwave setParticleRandom [2, [10, 15, 20], [1, 1, 0], 0, 0, [0, 0, 0, 0.1], 0, 0];
_soundwave setParticleCircle [25, [-40, -40, 1.75]];
_soundwave setDropInterval 0.0002;

sleep 1;

_dust = "#particlesource" createVehicleLocal getpos _monolithPos;
_dust setParticleParams [["A3\Data_F\ParticleEffects\Universal\universal.p3d", 16, 7, 48], "", "Billboard", 1, 20, [0, 0, 0],
				[0, 0, 0], 0, 1.5, 1, 0, [5, 15], [[0.1, 0.1, 0.1, 0.5], 
				[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 0]], [1,0.5], 0.1, 1, "", "", _monolithPos];
_dust setParticleRandom [2, [1, 2, 3], [1, 1, 0], 0, 0, [0, 0, 0, 0.1], 0, 0];
_dust setParticleCircle [10, [-40, -40, 1.75]];
_dust setDropInterval 0.0002;

sleep 1;

deleteVehicle _soundwave;

sleep 1; 

deleteVehicle _dust;

sleep 17;

_soundwave = "#particlesource" createVehicleLocal getpos _monolithPos;
_soundwave setParticleParams [["\A3\data_f\ParticleEffects\Universal\Refract",1,0,1], "", "Billboard", 1, 20, [0, 0, 0],
				[0, 0, 0], 0, 1.5, 1, 0, [10, 25], [[0.1, 0.1, 0.1, 0.5], 
				[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 0]], [1,0.5], 0.1, 1, "", "", _monolithPos];
_soundwave setParticleRandom [2, [10, 15, 20], [1, 1, 0], 0, 0, [0, 0, 0, 0.1], 0, 0];
_soundwave setParticleCircle [25, [-40, -40, 1.75]];
_soundwave setDropInterval 0.0002;

sleep 1;

_dust = "#particlesource" createVehicleLocal getpos _monolithPos;
_dust setParticleParams [["A3\Data_F\ParticleEffects\Universal\universal.p3d", 16, 7, 48], "", "Billboard", 1, 20, [0, 0, 0],
				[0, 0, 0], 0, 1.5, 1, 0, [5, 15], [[0.1, 0.1, 0.1, 0.5], 
				[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 0]], [1,0.5], 0.1, 1, "", "", _monolithPos];
_dust setParticleRandom [2, [1, 2, 3], [1, 1, 0], 0, 0, [0, 0, 0, 0.1], 0, 0];
_dust setParticleCircle [10, [-40, -40, 1.75]];
_dust setDropInterval 0.0002;

sleep 1;

deleteVehicle _soundwave;

sleep 1; 

deleteVehicle _dust;

sleep 17;

_soundwave = "#particlesource" createVehicleLocal getpos _monolithPos;
_soundwave setParticleParams [["\A3\data_f\ParticleEffects\Universal\Refract",1,0,1], "", "Billboard", 1, 20, [0, 0, 0],
				[0, 0, 0], 0, 1.5, 1, 0, [10, 25], [[0.1, 0.1, 0.1, 0.5], 
				[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 0]], [1,0.5], 0.1, 1, "", "", _monolithPos];
_soundwave setParticleRandom [2, [10, 15, 20], [1, 1, 0], 0, 0, [0, 0, 0, 0.1], 0, 0];
_soundwave setParticleCircle [25, [-40, -40, 1.75]];
_soundwave setDropInterval 0.0002;

sleep 1;

_dust = "#particlesource" createVehicleLocal getpos _monolithPos;
_dust setParticleParams [["A3\Data_F\ParticleEffects\Universal\universal.p3d", 16, 7, 48], "", "Billboard", 1, 20, [0, 0, 0],
				[0, 0, 0], 0, 1.5, 1, 0, [5, 15], [[0.1, 0.1, 0.1, 0.5], 
				[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 0]], [1,0.5], 0.1, 1, "", "", _monolithPos];
_dust setParticleRandom [2, [1, 2, 3], [1, 1, 0], 0, 0, [0, 0, 0, 0.1], 0, 0];
_dust setParticleCircle [10, [-40, -40, 1.75]];
_dust setDropInterval 0.0002;

sleep 1;

deleteVehicle _soundwave;

sleep 1; 

deleteVehicle _dust;

sleep 17;


if(!hasInterface && !isDedicated) then {

sleep 2;

_aktor = _this select 0;
_grupa = createGroup CIVILIAN;
_kosmita = nil;

_smoke = "#particlesource" createVehicle getpos _aktor;

_smoke setPos getPos _aktor;
[_smoke,"AvionicsSparks"] remoteExec ["setParticleClass",0];
[_smoke,[0, [1.5, 1.5, 1.5], [5, 0, 0.5], 0, 0.1, [0, 0, 0, 0], 0, 0]] remoteExec ["setParticleRandom",0];
[_smoke,0.005] remoteExec ["setDropInterval",0];

sleep 2;

"B_Soldier_VR_F" createUnit [[0,0,0], _grupa, "_kosmita = this; this allowDamage false; this disableAI 'ALL'; {
	this setObjectMaterialGlobal [_x, 'A3\Data_F\mirror.rvmat'];
	this setObjectTextureGlobal [_x,'#(argb,8,8,4)color(1,1,1,0.7)'];
} forEach [0,1,2,3,4,5,6,7,8,9,10];"];

[_kosmita, "Acts_CivilShocked_1"] remoteExec ["switchMove", 0];

_aktor enableSimulation false;

_aktor setDamage 1;

sleep 1;

[_aktor, ["metalizingSound", 100, 1]] remoteExec ["say3d", 0, true];

sleep 4;

_kosmita setDir 218.434;
_kosmita setPos getPos _aktor;
_kosmita enableSimulation false;

deleteVehicle _aktor;

sleep 4; 

deleteVehicle _smoke;

};

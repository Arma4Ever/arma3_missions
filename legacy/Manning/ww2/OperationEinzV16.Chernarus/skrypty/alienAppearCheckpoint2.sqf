if(!hasInterface && !isDedicated) then {

sleep 2;

_pozycja = _this select 0;



_FX_smoke_source_1 = "#particlesource" createVehicle (getpos _pozycja);
[_FX_smoke_source_1, [["\A3\data_f\ParticleEffects\Universal\Refract",1,0,1], "", 
"Billboard", 
1, 
3, 
[0, 0, 0], 
[0,0,0],  
1, 1, 1, 0, 
[8,10,8,10], 
[[0,1,0.07,0.5]],
[0.08], 
1, 
0, 
"", 
"", 
[0,0,0]]] remoteExec ["setParticleParams",0];
[_FX_smoke_source_1, [0, [1, 1, -3]]] remoteExec ["setParticleCircle",0];
[_FX_smoke_source_1, [1, [0.25, 0.25, 0], [0.175, 0.175, 0], 0, 0.25, [0, 0, 0, 0.1], 0, 0]] remoteExec ["setParticleRandom",0];
[_FX_smoke_source_1, selectRandom [0.05,0.04,0.03,0.02,0.01]] remoteExec ["setDropInterval",0];

sleep 2;


_move = "AmovPercMwlkSnonWnonDf";

_grupa = createGroup CIVILIAN;
_kosmita = nil;

[_pozycja, ["hyperspaceJumpIn", 100, 1]] remoteExec ["say3d", 0, true];
"B_Soldier_VR_F" createUnit [getPosASL _pozycja, _grupa, "_kosmita = this; this allowDamage false; this disableAI 'ALL'; {this setObjectMaterialGlobal [_x,'a3\structures_f_bootcamp\vr\coverobjects\data\vr_coverobject_emmisive.rvmat'];} forEach [0,1,2,3,4,5,6,7,8,9,10];"];

_FX_smoke_source_1 attachTo [_kosmita,[0,0,0]];
_kosmita setPos getPos _pozycja;
_kosmita setDir 39.326;
[_kosmita, _move] remoteExec ["switchMove", 0];

_list = _kosmita nearEntities ["Man", 275];

[[_x, _kosmita,25], "skrypty\efektAlienD.sqf"] remoteExec ["execVM", 0];

waitUntil {alienCheckpointEndwalk_2};

sleep 3;

deleteVehicle _FX_smoke_source_1;
deleteVehicle _kosmita;
};

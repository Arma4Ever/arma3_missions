if(!hasInterface && !isDedicated) then {

sleep 2;

_pozycjaS = _this select 0;
_pozycjaE = _this select 1;
_move = "AbswPercMstpSnonWnonDnon_goup";
_pos = getPosASL monolithGroundLvl;
_arraySmoke = [];
_i = 0;

while {_i != 5} do {
	_FX_smoke_source = "#particlesource" createVehicle [(_pos select 0) + ([-5, 5] call BIS_fnc_randomInt),(_pos select 1) + ([-5, 5] call BIS_fnc_randomInt), (_pos select 2)];
	[_FX_smoke_source, "WPCloud"] remoteExec ["setParticleClass",0];
	sleep 0.1;
	_i = _i + 1;
	_arraySmoke pushBack _FX_smoke_source;
};

sleep 10;
_ray_particle = "#particlesource" createVehicle (getpos _pozycjaS);
[_ray_particle, [0, [0, 0, -3]]] remoteExec ["setParticleCircle",0];
[_ray_particle, [["\A3\data_f\cl_exp", 1, 0, 11],
"", "Billboard", 1,5, 
[0, 0, 0], 
[0,0,20],  
1,1, 1,0, 
[4,5,4,5], 
[[0.3,0.3,1,1]],
[0.08], 
1, 0, "", "", 
[0,0,0]]] remoteExec ["setParticleParams",0];
[_ray_particle, 0.005] remoteExec ["setDropInterval",0];
[_ray_particle, [0, [0.25, 0.25, 0], [0.175, 0.175, 0], 0, 0.25, [0, 0, 0, 0.1], 0, 0]] remoteExec ["setParticleRandom",0];
sleep 8;

_FX_smoke_source_1 = "#particlesource" createVehicle (getpos _pozycjaS);
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


_grupa_1 = createGroup CIVILIAN;
_kosmita_1 = nil;

[_pozycjaS, ["hyperspaceJumpIn", 100, 1]] remoteExec ["say3d", 0, true];
"B_Soldier_VR_F" createUnit [getPosASL _pozycjaS, _grupa_1, "_kosmita_1 = this; this allowDamage false; this disableAI 'ALL'; {this setObjectMaterialGlobal [_x,'a3\structures_f_bootcamp\vr\coverobjects\data\vr_coverobject_emmisive.rvmat'];} forEach [0,1,2,3,4,5,6,7,8,9,10];"];
_nosnik_1 = "TestSphere2" createVehicle getPosASL _pozycjaS;
_nosnik_1 setPosASL getPosASL _pozycjaS;
_nosnik_1 hideObjectGlobal TRUE;
_FX_smoke_source_1 attachTo [_kosmita_1,[0,0,0]];
_kosmita_1 attachTo [_nosnik_1,[0,0,0]];
_kosmita_1 setDir ([0, 360] call BIS_fnc_randomInt);

[_kosmita_1, _move] remoteExec ["switchMove", 0];
_nosnik_1 setVelocity [0,0,5];

waitUntil{_kosmita_1 distance _pozycjaE < 5};

sleep 0.01;
		_blysk_1 = "#lightpoint" createVehicle getPosASL _kosmita_1;
		[_blysk_1,[0, 0, 255]] remoteExec ["setLightColor",0];
		[_blysk_1,[0, 0, 255]] remoteExec ["setLightAmbient",0];
		[_blysk_1, 0] remoteExec ["setLightFlareSize",0];
		[_blysk_1, 0] remoteExec ["setLightIntensity",0];
		
		sleep 0.2;
		[_blysk_1,selectRandom [[255, 255, 255], [255, 255, 255], [255, 255, 255], [153, 226, 255], [255, 237, 230],[190, 190, 190]]] remoteExec ["setLightColor",0];
		[_blysk_1,selectRandom [[255, 255, 255], [255, 255, 255], [255, 255, 255], [153, 226, 255], [255, 237, 230], [190, 190, 190]]] remoteExec ["setLightAmbient",0];
		[_blysk_1,5] remoteExec ["setLightFlareSize",50];
		[_blysk_1,selectRandom [10500, 10450, 5400, 10350, 10300]] remoteExec ["setLightIntensity",0];
		[_blysk_1,10000] remoteExec ["setLightFlareMaxDistance",0];
		
sleep 2;
deleteVehicle _FX_smoke_source_1;
deleteVehicle _kosmita_1;
deleteVehicle _blysk_1;

sleep 8;

_FX_smoke_source_2 = "#particlesource" createVehicle (getpos _pozycjaS);
[_FX_smoke_source_2, [["\A3\data_f\ParticleEffects\Universal\Refract",1,0,1], "", 
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
[_FX_smoke_source_2, [0, [1, 1, -3]]] remoteExec ["setParticleCircle",0];
[_FX_smoke_source_2, [1, [0.25, 0.25, 0], [0.175, 0.175, 0], 0, 0.25, [0, 0, 0, 0.1], 0, 0]] remoteExec ["setParticleRandom",0];
[_FX_smoke_source_2, selectRandom [0.05,0.04,0.03,0.02,0.01]] remoteExec ["setDropInterval",0];

sleep 2;

_grupa_2 = createGroup CIVILIAN;
_kosmita_2 = nil;

[_pozycjaS, ["hyperspaceJumpIn", 100, 1]] remoteExec ["say3d", 0, true];
"B_Soldier_VR_F" createUnit [getPosASL _pozycjaS, _grupa_2, "_kosmita_2 = this; this allowDamage false; this disableAI 'ALL'; {this setObjectMaterialGlobal [_x,'a3\structures_f_bootcamp\vr\coverobjects\data\vr_coverobject_emmisive.rvmat'];} forEach [0,1,2,3,4,5,6,7,8,9,10];"];
_nosnik_2 = "TestSphere2" createVehicle getPosASL _pozycjaS;
_nosnik_2 setPosASL getPosASL _pozycjaS;
_nosnik_2 hideObjectGlobal TRUE;
_FX_smoke_source_2 attachTo [_kosmita_1,[0,0,0]];
_kosmita_2 attachTo [_nosnik_2,[0,0,0]];
_kosmita_2 setDir ([0, 360] call BIS_fnc_randomInt);

[_kosmita_2, _move] remoteExec ["switchMove", 0];
_nosnik_2 setVelocity [0,0,5];

waitUntil{_kosmita_2 distance _pozycjaE < 5};

sleep 0.01;
		_blysk_2 = "#lightpoint" createVehicle getPosASL _kosmita_2;
		[_blysk_2,[0, 0, 255]] remoteExec ["setLightColor",0];
		[_blysk_2,[0, 0, 255]] remoteExec ["setLightAmbient",0];
		[_blysk_2, 0] remoteExec ["setLightFlareSize",0];
		[_blysk_2, 0] remoteExec ["setLightIntensity",0];
		
		sleep 0.2;
		[_blysk_2,selectRandom [[255, 255, 255], [255, 255, 255], [255, 255, 255], [153, 226, 255], [255, 237, 230],[190, 190, 190]]] remoteExec ["setLightColor",0];
		[_blysk_2,selectRandom [[255, 255, 255], [255, 255, 255], [255, 255, 255], [153, 226, 255], [255, 237, 230], [190, 190, 190]]] remoteExec ["setLightAmbient",0];
		[_blysk_2,5] remoteExec ["setLightFlareSize",50];
		[_blysk_2,selectRandom [10500, 10450, 5400, 10350, 10300]] remoteExec ["setLightIntensity",0];
		[_blysk_2,10000] remoteExec ["setLightFlareMaxDistance",0];
		
sleep 2;
deleteVehicle _FX_smoke_source_2;
deleteVehicle _kosmita_2;
deleteVehicle _blysk_2;

sleep 8;

_FX_smoke_source_3 = "#particlesource" createVehicle (getpos _pozycjaS);
[_FX_smoke_source_3, [["\A3\data_f\ParticleEffects\Universal\Refract",1,0,1], "", 
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
[_FX_smoke_source_3, [0, [1, 1, -3]]] remoteExec ["setParticleCircle",0];
[_FX_smoke_source_3, [1, [0.25, 0.25, 0], [0.175, 0.175, 0], 0, 0.25, [0, 0, 0, 0.1], 0, 0]] remoteExec ["setParticleRandom",0];
[_FX_smoke_source_3, selectRandom [0.05,0.04,0.03,0.02,0.01]] remoteExec ["setDropInterval",0];

sleep 2;


_grupa_3 = createGroup CIVILIAN;
_kosmita_3 = nil;

[_pozycjaS, ["hyperspaceJumpIn", 100, 1]] remoteExec ["say3d", 0, true];
"B_Soldier_VR_F" createUnit [getPosASL _pozycjaS, _grupa_3, "_kosmita_3 = this; this allowDamage false; this disableAI 'ALL'; {this setObjectMaterialGlobal [_x,'a3\structures_f_bootcamp\vr\coverobjects\data\vr_coverobject_emmisive.rvmat'];} forEach [0,1,2,3,4,5,6,7,8,9,10];"];
_nosnik_3 = "TestSphere2" createVehicle getPosASL _pozycjaS;
_nosnik_3 setPosASL getPosASL _pozycjaS;
_nosnik_3 hideObjectGlobal TRUE;
_FX_smoke_source_3 attachTo [_kosmita_3,[0,0,0]];
_kosmita_3 attachTo [_nosnik_3,[0,0,0]];
_kosmita_3 setDir ([0, 360] call BIS_fnc_randomInt);

[_kosmita_3, _move] remoteExec ["switchMove", 0];
_nosnik_3 setVelocity [0,0,5];

waitUntil{_kosmita_3 distance _pozycjaE < 5};

sleep 0.01;
		_blysk_3 = "#lightpoint" createVehicle getPosASL _kosmita_3;
		[_blysk_3,[0, 0, 255]] remoteExec ["setLightColor",0];
		[_blysk_3,[0, 0, 255]] remoteExec ["setLightAmbient",0];
		[_blysk_3, 0] remoteExec ["setLightFlareSize",0];
		[_blysk_3, 0] remoteExec ["setLightIntensity",0];
		
		sleep 0.2;
		[_blysk_3,selectRandom [[255, 255, 255], [255, 255, 255], [255, 255, 255], [153, 226, 255], [255, 237, 230],[190, 190, 190]]] remoteExec ["setLightColor",0];
		[_blysk_3,selectRandom [[255, 255, 255], [255, 255, 255], [255, 255, 255], [153, 226, 255], [255, 237, 230], [190, 190, 190]]] remoteExec ["setLightAmbient",0];
		[_blysk_3,5] remoteExec ["setLightFlareSize",50];
		[_blysk_3,selectRandom [10500, 10450, 5400, 10350, 10300]] remoteExec ["setLightIntensity",0];
		[_blysk_3,10000] remoteExec ["setLightFlareMaxDistance",0];
		
sleep 2;
deleteVehicle _FX_smoke_source_3;
deleteVehicle _kosmita_3;
deleteVehicle _blysk_3;
deleteVehicle _ray_particle;
{deleteVehicle _x} forEach _arraySmoke; };



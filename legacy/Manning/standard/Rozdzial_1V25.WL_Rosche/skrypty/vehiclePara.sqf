if(!hasInterface && !isDedicated) then {

_plane = _this select 0;
_veh_1 = _this select 1;
_veh_2 = _this select 2;

_plane animateDoor ["Door_1_source", 1];

sleep 5;

_chute_1 = createvehicle ["B_Parachute_02_F", [0,0,150],[],0,"can_collide"];


_chute_1 setPos (getPos _plane);

_veh_1 attachTo [_chute_1,[0,0,0]];

_chute_1 setVelocity [0,-9,0];

sleep 3;

_chute_2 = createvehicle ["B_Parachute_02_F", [0,0,150],[],0,"can_collide"];

_chute_2 setPos (getPos _plane);

_veh_2 attachTo [_chute_2,[0,0,0]];

_chute_2 setVelocity [0,-9,0];

_null = [_chute_1] execVM "skrypty\vehicleParaCleanup.sqf";
_null = [_chute_2] execVM "skrypty\vehicleParaCleanup.sqf";

};

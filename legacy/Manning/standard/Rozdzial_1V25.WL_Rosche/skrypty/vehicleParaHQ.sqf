if(hasInterface) exitWith {};

_plane = _this select 0;
_veh_1 = _this select 1;

_plane animateDoor ["Door_1_source", 1];

sleep 5;

_chute_1 = createvehicle ["B_Parachute_02_F", [0,0,150],[],0,"can_collide"];


_chute_1 setPos (getPos _plane);

_veh_1 attachTo [_chute_1,[0,0,0]];

_chute_1 setVelocity [0,-9,0];

_null = [_chute_1] execVM "skrypty\vehicleParaCleanup.sqf";


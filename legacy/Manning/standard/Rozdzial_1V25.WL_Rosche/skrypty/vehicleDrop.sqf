if(hasInterface) exitWith {};

_arrayPlanes = [plane_1, plane_2, plane_3, plane_4];

_arrayVehicle = [car_1, car_2, car_3, car_4, car_5, car_6, car_7, car_8];

{_x engineOn true} forEach _arrayPlanes;

engine_0 = "TestSphere2" createVehicle [0, 0, 0];
engine_0 setPos getPos gl_zrzut_start;
engine_0 setDir 180;

plane_1 attachTo [engine_0, [0,0,-5]];
plane_2 attachTo [engine_0, [105,13,-7]];
plane_3 attachTo [engine_0, [201,4,-2]];
plane_4 attachTo [engine_0, [-107,8,-2]];
plane_5 attachTo [engine_0, [-204,3,-9]];

engine_0 setVelocity [0,-41,0];

waitUntil{engine_0 distance gl_strefaZrzutu < 350};

_null = [plane_1,car_1,car_2] execVM "skrypty\vehiclePara.sqf";
_null = [plane_2,car_3,car_4] execVM "skrypty\vehiclePara.sqf";
_null = [plane_3,car_5,car_6] execVM "skrypty\vehiclePara.sqf";
_null = [plane_4,car_7,car_8] execVM "skrypty\vehiclePara.sqf";
_null = [plane_5,car_9] execVM "skrypty\vehicleParaHQ.sqf";

sleep 120;

{deleteVehicle _x} forEach _arrayPlanes;


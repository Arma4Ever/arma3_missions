if(hasInterface) exitWith {};

sleep 645;

_arrayC47s = [c47_1, c47_2, c47_3, c47_4, c47_5, c47_6, c47_7, c47_8, c47_9, c47_10];
{_x setFuel 1} forEach _arrayC47s;
{_x engineOn true} forEach _arrayC47s;

c47_1 setDir 0;
c47_2 setDir 0;
c47_3 setDir 0;
c47_4 setDir 0;
c47_5 setDir 0;
c47_6 setDir 0;
c47_7 setDir 0;
c47_8 setDir 0;
c47_9 setDir 0;
c47_10 setDir 0;

c47E_1 = "TestSphere2" createVehicle [0, 0, 0];
c47E_1 setPos getPos formacja_c47_start;

c47E_1 setDir 0;

c47E_1 setVelocity [0,35,0];

c47_1 attachTo [c47E_1, [0,0,-5]];
c47_2 attachTo [c47E_1, [105,13,-7]];
c47_3 attachTo [c47E_1, [201,4,-2]];
c47_4 attachTo [c47E_1, [-107,8,-2]];
c47_5 attachTo [c47E_1, [-204,3,-9]];
c47_6 attachTo [c47E_1, [0,-100,-5]];
c47_7 attachTo [c47E_1, [107,-113,-6]];
c47_8 attachTo [c47E_1, [200,-92,-2]];
c47_9 attachTo [c47E_1, [-100,-101,-3]];
c47_10 attachTo [c47E_1, [-191,-91,-1]];

{_null = [_x] execVM "skrypty\paraDrop\ambientParaC47.sqf";} forEach _arrayC47s;

sleep 600;

{deleteVehicle _x} forEach _arrayC47s;


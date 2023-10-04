
if (isDedicated) then {
sleep 3;

_arrayC47 = [c130_1,c130_2,c130_3,c130_4,c130_5];
_arrayPiloci = [p_1,p_2,p_3,p_4,p_5,p_6,p_7,p_8,p_9];
{_x setFuel 1} forEach _arrayC47;
{_x engineOn true} forEach _arrayC47;

sleep 5;
c130_1 setDir 180;
c130_2 setDir 180;
c130_3 setDir 180;
c130_4 setDir 180;
c130_5 setDir 180;

_przewodnik = "TestSphere2" createVehicle [0, 0, 0];
_przewodnik setPosASL getPosASL formacjaStart_1;
_przewodnik setDir 180;
hideObjectGlobal _przewodnik;
_przewodnik setVelocity [-0.2,-60,-0.3];

c130_1 attachTo [_przewodnik, [0,0,-2]];
c130_2 attachTo [_przewodnik, [200,13,-2]];
c130_3 attachTo [_przewodnik, [-200,4,-2]];
c130_4 attachTo [_przewodnik, [-25,-500,80]];
c130_5 attachTo [_przewodnik, [-300,4,-2]];
sleep 350;

{deleteVehicle _x} forEach _arrayC47;
{deleteVehicle _x} forEach _arrayPiloci;
deleteVehicle _przewodnik;};

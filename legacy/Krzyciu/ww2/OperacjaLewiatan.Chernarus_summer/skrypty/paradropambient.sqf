if (isDedicated) then {

sleep 150;

_arrayC472 = [c47_7,c47_8,c47_9,c47_10,c47_11];
{_x setFuel 1} forEach _arrayC472;
{_x engineOn true} forEach _arrayC472;

sleep 5;

c47_7 setDir 180;
c47_8 setDir 180;
c47_9 setDir 180;
c47_10 setDir 180;
c47_11 setDir 180;

_przewodnik3 = "TestSphere2" createVehicle [0, 0, 0];
_przewodnik3 setPosASL getPosASL formacjaStart_2;
_przewodnik3 setDir 180;
_przewodnik3 setVelocity [-1,-45,0];

c47_7 attachTo [_przewodnik3, [0,0,-5]];
c47_8 attachTo [_przewodnik3, [105,13,-7]];
c47_9 attachTo [_przewodnik3, [201,4,-2]];
c47_10 attachTo [_przewodnik3, [-107,8,-2]];
c47_11 attachTo [_przewodnik3, [-204,3,-9]];
sleep 140;
_przewodnik3 setPosASL getPosASL formacjaStart_2;
_przewodnik3 setDir 180;
_przewodnik3 setVelocity [0,-55,0];
sleep 140;
_przewodnik3 setPosASL getPosASL formacjaStart_2;
_przewodnik3 setDir 180;
_przewodnik3 setVelocity [0,-55,0];
sleep 140;
{deleteVehicle _x} forEach _arrayC472;
deleteVehicle _przewodnik3;
};

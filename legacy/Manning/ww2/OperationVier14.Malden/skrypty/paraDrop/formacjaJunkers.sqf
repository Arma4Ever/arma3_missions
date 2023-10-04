if(hasInterface) exitWith {};

sleep 10;

_arrayJunkers = [junkers_1, junkers_2, junkers_3, junkers_4, junkers_5, junkers_6, junkers_7, junkers_8, junkers_9, junkers_10, junkers_11, junkers_12, junkers_13, junkers_14, junkers_15, junkers_16, junkers_17, junkers_18, junkers_19, junkers_20, junkers_21, junkers_22, junkers_23, junkers_24, junkers_25, junkers_26, junkers_27, junkers_28, junkers_29, junkers_30];
{_x setFuel 1} forEach _arrayJunkers;
{_x engineOn true} forEach _arrayJunkers;

sleep 35;

{deleteVehicle _x} forEach units tlo_1;
{deleteVehicle _x} forEach units tlo_2;
{deleteVehicle _x} forEach units tlo_3;
{deleteVehicle _x} forEach units tlo_4;
{deleteVehicle _x} forEach units tlo_5;

junkers_1 setDir 180;
junkers_2 setDir 180;
junkers_3 setDir 180;
junkers_4 setDir 180;
junkers_5 setDir 180;
junkers_6 setDir 180;
junkers_7 setDir 180;
junkers_8 setDir 180;
junkers_9 setDir 180;
junkers_10 setDir 180;
junkers_11 setDir 180;
junkers_12 setDir 180;
junkers_13 setDir 180;
junkers_14 setDir 180;
junkers_15 setDir 180;
junkers_16 setDir 180;
junkers_17 setDir 180;
junkers_18 setDir 180;
junkers_19 setDir 180;
junkers_20 setDir 180;
junkers_21 setDir 180;
junkers_22 setDir 180;
junkers_23 setDir 180;
junkers_24 setDir 180;
junkers_25 setDir 180;
junkers_26 setDir 180;
junkers_27 setDir 180;
junkers_28 setDir 180;
junkers_29 setDir 180;
junkers_30 setDir 180;

junkersE_1 = "TestSphere2" createVehicle [0, 0, 0];
junkersE_1 setPos getPos formacjaStart_1;
junkersE_2 = "TestSphere2" createVehicle [0, 0, 0];
junkersE_2 setPos getPos formacjaStart_2;
junkersE_3 = "TestSphere2" createVehicle [0, 0, 0];
junkersE_3 setPos getPos formacjaStart_3;

junkersE_1 setDir 180;
junkersE_2 setDir 180;
junkersE_3 setDir 180;

junkersE_1 setVelocity [0,-35,0];
junkersE_2 setVelocity [0,-35,0];
junkersE_3 setVelocity [0,-35,0];

junkers_1 attachTo [junkersE_1, [0,0,-5]];
junkers_2 attachTo [junkersE_1, [105,13,-7]];
junkers_3 attachTo [junkersE_1, [201,4,-2]];
junkers_4 attachTo [junkersE_1, [-107,8,-2]];
junkers_5 attachTo [junkersE_1, [-204,3,-9]];
junkers_6 attachTo [junkersE_1, [0,-100,-5]];
junkers_7 attachTo [junkersE_1, [107,-113,-6]];
junkers_8 attachTo [junkersE_1, [200,-92,-2]];
junkers_9 attachTo [junkersE_1, [-100,-101,-3]];
junkers_10 attachTo [junkersE_1, [-191,-91,-1]];

junkers_11 attachTo [junkersE_2, [0,0,-5]];
junkers_12 attachTo [junkersE_2, [105,13,-7]];
junkers_13 attachTo [junkersE_2, [201,4,-2]];
junkers_14 attachTo [junkersE_2, [-107,8,-2]];
junkers_15 attachTo [junkersE_2, [-204,3,-9]];
junkers_16 attachTo [junkersE_2, [0,-100,-5]];
junkers_17 attachTo [junkersE_2, [107,-113,-6]];
junkers_18 attachTo [junkersE_2, [200,-92,-2]];
junkers_19 attachTo [junkersE_2, [-100,-101,-3]];
junkers_20 attachTo [junkersE_2, [-191,-91,-1]];

junkers_21 attachTo [junkersE_3, [0,0,-5]];
junkers_22 attachTo [junkersE_3, [105,13,-7]];
junkers_23 attachTo [junkersE_3, [201,4,-2]];
junkers_24 attachTo [junkersE_3, [-107,8,-2]];
junkers_25 attachTo [junkersE_3, [-204,3,-9]];
junkers_26 attachTo [junkersE_3, [0,-100,-5]];
junkers_27 attachTo [junkersE_3, [107,-113,-6]];
junkers_28 attachTo [junkersE_3, [200,-92,-2]];
junkers_29 attachTo [junkersE_3, [-100,-101,-3]];
junkers_30 attachTo [junkersE_3, [-191,-91,-1]];

sleep 450;

{deleteVehicle _x} forEach _arrayJunkers;


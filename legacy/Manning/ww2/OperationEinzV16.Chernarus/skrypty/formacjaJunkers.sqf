if(hasInterface) exitWith {};

_arrayju_52_1 = [ju_52_1, ju_52_2, ju_52_3, ju_52_4, ju_52_5, ju_52_6, ju_52_7, ju_52_8, ju_52_9, ju_52_10, ju_52_11, ju_52_12, ju_52_13, ju_52_14, ju_52_15, ju_52_16, ju_52_17, ju_52_18, ju_52_19, ju_52_20, ju_52_21, ju_52_22, ju_52_23, ju_52_24, ju_52_25, ju_52_26, ju_52_27, ju_52_28, ju_52_29, ju_52_30];
{_x setFuel 1} forEach _arrayju_52_1;
{_x engineOn true} forEach _arrayju_52_1;

ju_52_1 setDir 180;
ju_52_2 setDir 180;
ju_52_3 setDir 180;
ju_52_4 setDir 180;
ju_52_5 setDir 180;
ju_52_6 setDir 180;
ju_52_7 setDir 180;
ju_52_8 setDir 180;
ju_52_9 setDir 180;
ju_52_10 setDir 180;
ju_52_11 setDir 180;
ju_52_12 setDir 180;
ju_52_13 setDir 180;
ju_52_14 setDir 180;
ju_52_15 setDir 180;
ju_52_16 setDir 180;
ju_52_17 setDir 180;
ju_52_18 setDir 180;
ju_52_19 setDir 180;
ju_52_20 setDir 180;
ju_52_21 setDir 180;
ju_52_22 setDir 180;
ju_52_23 setDir 180;
ju_52_24 setDir 180;
ju_52_25 setDir 180;
ju_52_26 setDir 180;
ju_52_27 setDir 180;
ju_52_28 setDir 180;
ju_52_29 setDir 180;
ju_52_30 setDir 180;

junkersE_1 = "TestSphere2" createVehicle [0, 0, 0];
junkersE_1 setPos getPos formacjaStart_1;
junkersE_2 = "TestSphere2" createVehicle [0, 0, 0];
junkersE_2 setPos getPos formacjaStart_2;
junkersE_3 = "TestSphere2" createVehicle [0, 0, 0];
junkersE_3 setPos getPos formacjaStart_3;

junkersE_1 setDir 180;
junkersE_2 setDir 180;
junkersE_3 setDir 180;

ju_52_1 attachTo [junkersE_1, [0,0,-5]];
ju_52_2 attachTo [junkersE_1, [105,13,-7]];
ju_52_3 attachTo [junkersE_1, [201,4,-2]];
ju_52_4 attachTo [junkersE_1, [-107,8,-2]];
ju_52_5 attachTo [junkersE_1, [-204,3,-9]];
ju_52_6 attachTo [junkersE_1, [0,-100,-5]];
ju_52_7 attachTo [junkersE_1, [107,-113,-6]];
ju_52_8 attachTo [junkersE_1, [200,-92,-2]];
ju_52_9 attachTo [junkersE_1, [-100,-101,-3]];
ju_52_10 attachTo [junkersE_1, [-191,-91,-1]];

ju_52_11 attachTo [junkersE_2, [0,0,-5]];
ju_52_12 attachTo [junkersE_2, [105,13,-7]];
ju_52_13 attachTo [junkersE_2, [201,4,-2]];
ju_52_14 attachTo [junkersE_2, [-107,8,-2]];
ju_52_15 attachTo [junkersE_2, [-204,3,-9]];
ju_52_16 attachTo [junkersE_2, [0,-100,-5]];
ju_52_17 attachTo [junkersE_2, [107,-113,-6]];
ju_52_18 attachTo [junkersE_2, [200,-92,-2]];
ju_52_19 attachTo [junkersE_2, [-100,-101,-3]];
ju_52_20 attachTo [junkersE_2, [-191,-91,-1]];

ju_52_21 attachTo [junkersE_3, [0,0,-5]];
ju_52_22 attachTo [junkersE_3, [105,13,-7]];
ju_52_23 attachTo [junkersE_3, [201,4,-2]];
ju_52_24 attachTo [junkersE_3, [-107,8,-2]];
ju_52_25 attachTo [junkersE_3, [-204,3,-9]];
ju_52_26 attachTo [junkersE_3, [0,-100,-5]];
ju_52_27 attachTo [junkersE_3, [107,-113,-6]];
ju_52_28 attachTo [junkersE_3, [200,-92,-2]];
ju_52_29 attachTo [junkersE_3, [-100,-101,-3]];
ju_52_30 attachTo [junkersE_3, [-191,-91,-1]];

sleep 600;

junkersE_1 setVelocity [0,-35,0];
junkersE_2 setVelocity [0,-35,0];
junkersE_3 setVelocity [0,-35,0];

sleep 900;

{deleteVehicle _x} forEach [pilot_1, pilot_2, pilot_3, pilot_4, pilot_5, pilot_6, pilot_7, pilot_8, pilot_9, pilot_10];

while{!triggerActivated trigger_genAI_9} do {

junkersE_1 setPos getPos formacjaStart_1;
junkersE_2 setPos getPos formacjaStart_2;
junkersE_3 setPos getPos formacjaStart_3;

sleep 900;
};

{deleteVehicle _x} forEach _arrayju_52_1;


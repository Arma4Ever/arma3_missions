if(hasInterface) exitWith {};

b17_f1e = "TestSphere2" createVehicle [0, 0, 0];
b17_f1e setPos [900, 5750, 305];
b17_1 attachTo [b17_f1e, [0,0,-5]];
b17_2 attachTo [b17_f1e, [50,0,-5]];
b17_3 attachTo [b17_f1e, [-50,0,-5]];
b17_4 attachTo [b17_f1e, [25,50,-5]];
b17_5 attachTo [b17_f1e, [75,50,-5]];

b17_1 setDir 0;
b17_2 setDir 0;
b17_3 setDir 0;
b17_4 setDir 0;
b17_5 setDir 0;

b17_f1e setVelocity [0,-5,0];

b17_f2e = "TestSphere2" createVehicle [0, 0, 0];
b17_f2e setPos [1000, 5700, 305];
b17_6 attachTo [b17_f2e, [0,0,-5]];
b17_7 attachTo [b17_f2e, [50,0,-5]];
b17_8 attachTo [b17_f2e, [-50,0,-5]];
b17_9 attachTo [b17_f2e, [25,50,-5]];
b17_10 attachTo [b17_f2e, [75,50,-5]];

b17_6 setDir 0;
b17_7 setDir 0;
b17_8 setDir 0;
b17_9 setDir 0;
b17_10 setDir 0;

b17_f2e setVelocity [0,-5,0];

b17_f3e = "TestSphere2" createVehicle [0, 0, 0];
b17_f3e setPos [1100, 5600, 305];
b17_11 attachTo [b17_f3e, [0,0,-5]];
b17_12 attachTo [b17_f3e, [50,0,-5]];
b17_13 attachTo [b17_f3e, [-50,0,-5]];
b17_14 attachTo [b17_f3e, [-25,50,-5]];
b17_15 attachTo [b17_f3e, [75,50,-5]];

b17_11 setDir 0;
b17_12 setDir 0;
b17_13 setDir 0;
b17_14 setDir 0;
b17_15 setDir 0;

b17_f3e setVelocity [0,-5,0];

b17_f4e = "TestSphere2" createVehicle [0, 0, 0];
b17_f4e setPos [1200, 5600, 305];
b17_16 attachTo [b17_f4e, [0,-25,-5]];
b17_17 attachTo [b17_f4e, [50,0,-5]];
b17_18 attachTo [b17_f4e, [-50,0,-5]];
b17_19 attachTo [b17_f4e, [25,50,-5]];
b17_20 attachTo [b17_f4e, [75,50,-5]];

b17_16 setDir 0;
b17_17 setDir 0;
b17_18 setDir 0;
b17_19 setDir 0;
b17_20 setDir 0;

b17_f4e setVelocity [0,-5,0];

b17_f5e = "TestSphere2" createVehicle [0, 0, 0];
b17_f5e setPos [1300, 5600, 305];
b17_21 attachTo [b17_f5e, [0,0,-5]];
b17_22 attachTo [b17_f5e, [50,25,-5]];
b17_23 attachTo [b17_f5e, [-50,25,-5]];
b17_24 attachTo [b17_f5e, [0,75,-5]];
b17_25 attachTo [b17_f5e, [50,75,-5]];

b17_21 setDir 0;
b17_22 setDir 0;
b17_23 setDir 0;
b17_24 setDir 0;
b17_25 setDir 0;

b17_f5e setVelocity [0,-5,0];

silnik_b17_f1e = [b17_f1e] execVM "skrypty\silnikB17.sqf";
silnik_b17_f2e = [b17_f2e] execVM "skrypty\silnikB17.sqf";
silnik_b17_f3e = [b17_f3e] execVM "skrypty\silnikB17.sqf";
silnik_b17_f4e = [b17_f4e] execVM "skrypty\silnikB17.sqf";
silnik_b17_f5e = [b17_f4e] execVM "skrypty\silnikB17.sqf";

while {true} do {

sleep 1400;

_posStartArray = [1100, 2100, 3100, 4100];
_posStart = selectRandom _posStartArray;

b17_f1e setPos [_posStart-200, 6000, 305];
b17_f2e setPos [_posStart-100, 6000, 305];
b17_f3e setPos [_posStart, 6000, 305];
b17_f4e setPos [_posStart+100, 6000, 305];
b17_f5e setPos [_posStart+200, 6000, 305];
};
//skrypt dedykowany dla misji PROLOG - nie uzywac nigdzie indziej
if(!hasInterface && !isDedicated) then {

_startPos_1 = _this select 0;
_startPos_2 = _this select 1;
_startPos_3 = _this select 2;
_endPos_1 = _this select 3;
_endPos_2 = _this select 4;
_endPos_3 = _this select 5;



_i = 0;

while{_i != 5;} do {
sleep selectRandom [360,390,420,450,480,510,540,570,600,630,660];
detach siren_gl;

_array = selectRandom [_startPos_1, _startPos_2, _startPos_3];

_formationCenter_1 = "TestSphere2" createVehicle [0,0,0];
_formationCenter_1 setPos getPos (selectRandom _array);

_formationCenter_1 setVelocity [35,0,0];
siren_gl attachTo [_formationCenter_1,[0,0,0]];

_lc47_1 = createVehicle ["LIB_C47_RAF_bob", [0,0,0], [], 0, "FLY"];
_lc47_1 attachTo [_formationCenter_1,[0,0,0]];
_lc47_1 engineOn true;
_lc47_1 setDir 90;
_null = [_lc47_1] execVM "skrypty\efektyPrzelotowe.sqf";

_lc47_2 = createVehicle ["LIB_C47_RAF_bob", [0,0,0], [], 0, "FLY"];
_lc47_2 attachTo [_formationCenter_1,[[-15, 15] call BIS_fnc_randomInt,[50, 75] call BIS_fnc_randomInt,[-50, 50] call BIS_fnc_randomInt]];
_lc47_2 engineOn true;
_lc47_2 setDir 90;
_null = [_lc47_2] execVM "skrypty\efektyPrzelotowe.sqf";

_lc47_3 = createVehicle ["LIB_C47_RAF_bob", [0,0,0], [], 0, "FLY"];
_lc47_3 attachTo [_formationCenter_1,[[-15, 15] call BIS_fnc_randomInt,[100, 125] call BIS_fnc_randomInt,[-50, 50] call BIS_fnc_randomInt]];
_lc47_3 engineOn true;
_lc47_3 setDir 90;
_null = [_lc47_3] execVM "skrypty\efektyPrzelotowe.sqf";

_lc47_4 = createVehicle ["LIB_C47_RAF_bob", [0,0,0], [], 0, "FLY"];
_lc47_4 attachTo [_formationCenter_1,[[-15, 15] call BIS_fnc_randomInt,[-50, -75] call BIS_fnc_randomInt,[-50, 50] call BIS_fnc_randomInt]];
_lc47_4 engineOn true;
_lc47_4 setDir 90;
_null = [_lc47_4] execVM "skrypty\efektyPrzelotowe.sqf";

_lc47_5 = createVehicle ["LIB_C47_RAF_bob", [0,0,0], [], 0, "FLY"];
_lc47_5 attachTo [_formationCenter_1,[[-15, 15] call BIS_fnc_randomInt,[-100, -125] call BIS_fnc_randomInt,[-100, -125] call BIS_fnc_randomInt]];
_lc47_5 engineOn true;
_lc47_5 setDir 90;
_null = [_lc47_5] execVM "skrypty\efektyPrzelotowe.sqf";

_lc47_6 = createVehicle ["LIB_C47_RAF_bob", [0,0,0], [], 0, "FLY"];
_lc47_6 attachTo [_formationCenter_1,[[-50, -75] call BIS_fnc_randomInt,[-100, -125] call BIS_fnc_randomInt,[-50, 50] call BIS_fnc_randomInt]];
_lc47_6 engineOn true;
_lc47_6 setDir 90;
_null = [_lc47_6] execVM "skrypty\efektyPrzelotowe.sqf";

_lc47_7 = createVehicle ["LIB_C47_RAF_bob", [0,0,0], [], 0, "FLY"];
_lc47_7 attachTo [_formationCenter_1,[[-50, -75] call BIS_fnc_randomInt,[-50, -75] call BIS_fnc_randomInt,[-50, 50] call BIS_fnc_randomInt]];
_lc47_7 engineOn true;
_lc47_7 setDir 90;
_null = [_lc47_7] execVM "skrypty\efektyPrzelotowe.sqf";

_lc47_8 = createVehicle ["LIB_C47_RAF_bob", [0,0,0], [], 0, "FLY"];
_lc47_8 attachTo [_formationCenter_1,[[-50, -75] call BIS_fnc_randomInt,[-10, 10] call BIS_fnc_randomInt,[-50, 50] call BIS_fnc_randomInt]];
_lc47_8 engineOn true;
_lc47_8 setDir 90;
_null = [_lc47_8] execVM "skrypty\efektyPrzelotowe.sqf";

_lc47_9 = createVehicle ["LIB_C47_RAF_bob", [0,0,0], [], 0, "FLY"];
_lc47_9 attachTo [_formationCenter_1,[[-50, -75] call BIS_fnc_randomInt,[50, 75] call BIS_fnc_randomInt,[-50, 50] call BIS_fnc_randomInt]];
_lc47_9 engineOn true;
_lc47_9 setDir 90;
_null = [_lc47_9] execVM "skrypty\efektyPrzelotowe.sqf";

_lc47_10 = createVehicle ["LIB_C47_RAF_bob", [0,0,0], [], 0, "FLY"];
_lc47_10 attachTo [_formationCenter_1,[[-50, -75] call BIS_fnc_randomInt,[100, 125] call BIS_fnc_randomInt,[-50, 50] call BIS_fnc_randomInt]];
_lc47_10 engineOn true;
_lc47_10 setDir 90;
_null = [_lc47_10] execVM "skrypty\efektyPrzelotowe.sqf";

sleep 240;

deleteVehicle _formationCenter_1;

_i = _i + 1;

;} };
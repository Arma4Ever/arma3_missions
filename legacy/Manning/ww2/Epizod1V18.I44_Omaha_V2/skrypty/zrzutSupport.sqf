//skrypt dedykowany dla misji PROLOG - nie uzywac nigdzie indziej
if(isDedicated) then {setWind [0, 0, true]};

if(!hasInterface && !isDedicated) then {

_pos = _this select 0;

_startPos = getPos _pos;

_dir = 230;
_formationCenter_1 = "TestSphere2" createVehicle [0,0,0];
_formationCenter_1 setPos _startPos;

_formationCenter_1 setVelocity [30 * sin _dir,30  * cos _dir,0];

_lc47_1 = createVehicle ["LIB_C47_RAF_bob", [0,0,0], [], 0, "FLY"];
_lc47_1 attachTo [_formationCenter_1,[0,0,0]];
_lc47_1 engineOn true;
_lc47_1 setDir _dir;
_null = [_lc47_1, 1] execVM "skrypty\zrzut.sqf";

_lc47_2 = createVehicle ["LIB_C47_RAF_bob", [0,0,0], [], 0, "FLY"];
_lc47_2 attachTo [_formationCenter_1,[[-15, 15] call BIS_fnc_randomInt,[50, 75] call BIS_fnc_randomInt,[-50, 50] call BIS_fnc_randomInt]];
_lc47_2 engineOn true;
_lc47_2 setDir _dir;
_null = [_lc47_2, 0] execVM "skrypty\zrzut.sqf";

_lc47_3 = createVehicle ["LIB_C47_RAF_bob", [0,0,0], [], 0, "FLY"];
_lc47_3 attachTo [_formationCenter_1,[[-15, 15] call BIS_fnc_randomInt,[100, 125] call BIS_fnc_randomInt,[-50, 50] call BIS_fnc_randomInt]];
_lc47_3 engineOn true;
_lc47_3 setDir _dir;
_null = [_lc47_3, 0] execVM "skrypty\zrzut.sqf";

_lc47_4 = createVehicle ["LIB_C47_RAF_bob", [0,0,0], [], 0, "FLY"];
_lc47_4 attachTo [_formationCenter_1,[[-15, 15] call BIS_fnc_randomInt,[-50, -75] call BIS_fnc_randomInt,[-50, 50] call BIS_fnc_randomInt]];
_lc47_4 engineOn true;
_lc47_4 setDir _dir;
_null = [_lc47_4, 0] execVM "skrypty\zrzut.sqf";

_lc47_5 = createVehicle ["LIB_C47_RAF_bob", [0,0,0], [], 0, "FLY"];
_lc47_5 attachTo [_formationCenter_1,[[-15, 15] call BIS_fnc_randomInt,[-100, -125] call BIS_fnc_randomInt,[-50, 50] call BIS_fnc_randomInt]];
_lc47_5 engineOn true;
_lc47_5 setDir _dir;
_null = [_lc47_5, 0] execVM "skrypty\zrzut.sqf";

_lc47_6 = createVehicle ["LIB_C47_RAF_bob", [0,0,0], [], 0, "FLY"];
_lc47_6 attachTo [_formationCenter_1,[[-50, -75] call BIS_fnc_randomInt,[-100, -125] call BIS_fnc_randomInt,[-50, 50] call BIS_fnc_randomInt]];
_lc47_6 engineOn true;
_lc47_6 setDir _dir;
_null = [_lc47_6, 0] execVM "skrypty\zrzut.sqf";

_lc47_7 = createVehicle ["LIB_C47_RAF_bob", [0,0,0], [], 0, "FLY"];
_lc47_7 attachTo [_formationCenter_1,[[-50, -75] call BIS_fnc_randomInt,[-50, -75] call BIS_fnc_randomInt,[-50, 50] call BIS_fnc_randomInt]];
_lc47_7 engineOn true;
_lc47_7 setDir _dir;
_null = [_lc47_7, 0] execVM "skrypty\zrzut.sqf";

_lc47_8 = createVehicle ["LIB_C47_RAF_bob", [0,0,0], [], 0, "FLY"];
_lc47_8 attachTo [_formationCenter_1,[[-50, -75] call BIS_fnc_randomInt,[-10, 10] call BIS_fnc_randomInt,[-50, 50] call BIS_fnc_randomInt]];
_lc47_8 engineOn true;
_lc47_8 setDir _dir;
_null = [_lc47_8, 1] execVM "skrypty\zrzut.sqf";

_lc47_9 = createVehicle ["LIB_C47_RAF_bob", [0,0,0], [], 0, "FLY"];
_lc47_9 attachTo [_formationCenter_1,[[-50, -75] call BIS_fnc_randomInt,[50, 75] call BIS_fnc_randomInt,[-50, 50] call BIS_fnc_randomInt]];
_lc47_9 engineOn true;
_lc47_9 setDir _dir;
_null = [_lc47_9, 0] execVM "skrypty\zrzut.sqf";

_lc47_10 = createVehicle ["LIB_C47_RAF_bob", [0,0,0], [], 0, "FLY"];
_lc47_10 attachTo [_formationCenter_1,[[-50, -75] call BIS_fnc_randomInt,[100, 125] call BIS_fnc_randomInt,[-50, 50] call BIS_fnc_randomInt]];
_lc47_10 engineOn true;
_lc47_10 setDir _dir;
_null = [_lc47_10, 0] execVM "skrypty\zrzut.sqf";

sleep 240;

deleteVehicle _formationCenter_1;
deleteVehicle _lc47_1;
deleteVehicle _lc47_2;
deleteVehicle _lc47_3;
deleteVehicle _lc47_4;
deleteVehicle _lc47_5;
deleteVehicle _lc47_6;
deleteVehicle _lc47_7;
deleteVehicle _lc47_8;
deleteVehicle _lc47_9;
deleteVehicle _lc47_10;

wybor = true;
publicVariable "wybor";
plazaZabezpieczona = true;
publicVariable "plazaZabezpieczona";
};


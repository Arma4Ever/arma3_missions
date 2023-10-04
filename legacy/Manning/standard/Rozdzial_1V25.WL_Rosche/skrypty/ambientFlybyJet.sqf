if(!hasInterface && !isDedicated) then {

_start_1 = [gl_flybyStart_1, gl_flybyStart_2, gl_flybyStart_3];


_end_1 = [gl_flybyEnd_1, gl_flybyEnd_2, gl_flybyEnd_3];
_klasyPL = ["O_Plane_CAS_02_dynamicLoadout_F","O_Plane_Fighter_02_F"];


	sleep 3;
	
	_pozA = selectRandom [_start_1, _start_2, _start_3, _start_4, _start_5];
	_pozE = selectRandom [_end_1, _end_2, _end_3, _end_4, _end_5];
	_speedMode = selectRandom ["LIMITED","NORMAL","FULL"];
	_height = selectRandom [150,200,250];
	_side = CIVILIAN;
	
	_i = 0;
	
	{_endPos = _pozE select _i;
	_i = _i + 1;
	_grupaHeli = createGroup CIVILIAN;
	_soldaten = nil;
	sleep 1;
	_heli = createVehicle [selectRandom _klasaPL, getPos _x, [], 0, "FLY"];
	_heli setObjectTextureGlobal [0, "#(rgb,8,8,3)color(0.3,0.3,0.3,0.3)"];
	_heli setObjectTextureGlobal [1, "#(rgb,8,8,3)color(0.3,0.3,0.3,0.3)"];
	_heli setObjectTextureGlobal [2, "#(rgb,8,8,3)color(0.3,0.3,0.3,0.3)"];
	_heli setObjectTextureGlobal [3, "#(rgb,8,8,3)color(0.3,0.3,0.3,0.3)"];

	"C_man_pilot_F" createUnit [getPos _x, _grupaHeli, "_soldaten = this;"];
	_soldaten moveInDriver _heli;

	_grupaHeli setSpeedMode _speedMode;
	_grupaHeli setBehaviour "CARELESS";
	_heli flyInHeight (_height + (selectRandom [-10,10]));

	(driver _heli) doMove (getPos _endPos);
	_null = [_heli,_soldaten,_endPos] execVM "skrypty\ambientFlybyJetCleanup.sqf";
	sleep 1;
	} forEach _pozA;
	
	};
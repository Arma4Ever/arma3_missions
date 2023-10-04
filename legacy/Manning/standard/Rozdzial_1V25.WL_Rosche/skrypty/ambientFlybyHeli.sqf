if(!hasInterface && !isDedicated) then {

_start_1 = [gl_flybyStart_1, gl_flybyStart_2, gl_flybyStart_3];
_start_2 = [gl_flybyStart_4, gl_flybyStart_5, gl_flybyStart_6];
_start_3 = [gl_flybyStart_7, gl_flybyStart_8, gl_flybyStart_9];
_start_4 = [gl_flybyStart_10, gl_flybyStart_11, gl_flybyStart_12];
_start_5 = [gl_flybyStart_13, gl_flybyStart_14, gl_flybyStart_15];


_end_1 = [gl_flybyEnd_1, gl_flybyEnd_2, gl_flybyEnd_3];
_end_2 = [gl_flybyEnd_4, gl_flybyEnd_5, gl_flybyEnd_6];
_end_3 = [gl_flybyEnd_7, gl_flybyEnd_8, gl_flybyEnd_9];
_end_4 = [gl_flybyEnd_10, gl_flybyEnd_11, gl_flybyEnd_12];
_end_5 = [gl_flybyEnd_13, gl_flybyEnd_14, gl_flybyEnd_15];

_klasyPL = ["O_Heli_Attack_02_dynamicLoadout_F","O_Heli_Transport_04_bench_F","O_Heli_Transport_04_covered_F"];
_klasyGER = ["BWA3_Tiger_Gunpod_FZ","BWA3_Tiger_Gunpod_Heavy","BWA3_Tiger_Gunpod_PARS","BWA3_Tiger_RMK_Heavy","BWA3_Tiger_RMK_PARS","BWA3_Tiger_RMK_Universal"];

while {true} do {
	_klasaA = selectRandom [_klasyPL, _klasyGER];
	sleep selectRandom[600,660,720,780,840,900];
	_pozA = selectRandom [_start_1, _start_2, _start_3, _start_4, _start_5];
	_pozE = selectRandom [_end_1, _end_2, _end_3, _end_4, _end_5];
	_speedMode = selectRandom ["LIMITED","NORMAL","FULL"];
	_height = selectRandom [75,100,125,150];
	_side = CIVILIAN;
	_grupaHeli = createGroup CIVILIAN;
	_i = 0;
	
	if(_klasaA isEqualTo _klasyPL) then {
		{
			_endPos = _pozE select _i;
			_i = _i + 1;
			_soldaten = nil;
			_heli = createVehicle [selectRandom _klasaA, getPos _x, [], 0, "FLY"];
			_heli setObjectTextureGlobal [0, "#(rgb,8,8,3)color(0.3,0.3,0.3,0.3)"];
			_heli setObjectTextureGlobal [1, "#(rgb,8,8,3)color(0.3,0.3,0.3,0.3)"];
			_heli setObjectTextureGlobal [2, "#(rgb,8,8,3)color(0.3,0.3,0.3,0.3)"];
			_heli setObjectTextureGlobal [3, "#(rgb,8,8,3)color(0.3,0.3,0.3,0.3)"];
		
			"C_man_pilot_F" createUnit [getPos _x, _grupaHeli, "_soldaten = this;"];
			_soldaten moveInDriver _heli;
		
			_grupaHeli setSpeedMode _speedMode;
			_heli flyInHeight (_height + (selectRandom [-10,10]));
			_grupaHeli setBehaviour "CARELESS";
			(driver _heli) doMove (getPos _endPos);
			_null = [_heli,_soldaten,_endPos] execVM "skrypty\ambientFlybyHeliCleanup.sqf";
			sleep 1;
			} forEach _pozA;
	} else {
		{
			_endPos = _pozA select _i;
			_i = _i + 1;
			_soldaten = nil;
			_heli = createVehicle [selectRandom _klasaA, getPos _x, [], 0, "FLY"];
			
			"C_man_pilot_F" createUnit [getPos _x, _grupaHeli, "_soldaten = this;"];
			_soldaten moveInDriver _heli;
			_grupaHeli setBehaviour "CARELESS";
			_grupaHeli setSpeedMode _speedMode;
			_heli flyInHeight (_height + (selectRandom [-10,10]));
		
			(driver _heli) doMove (getPos _endPos);
			_null = [_heli,_soldaten,_endPos] execVM "skrypty\ambientFlybyHeliCleanup.sqf";
			sleep 1;
		} forEach _pozE;
	};}; };
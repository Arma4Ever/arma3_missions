if(hasInterface) exitWith {};

_junkers = _this select 0;

_i = 0;

sleep ([310,325] call BIS_fnc_randomInt);

while {_i != 7} do 
	{
		_planePos = getPos _junkers;
		_para = "LIB_NonSteerable_Parachute" createVehicle [0,0,0];
		_para setPos _planePos;
		_para setVelocity [0,0,-10];
		_sol = "LIB_FSJ_Soldier_2" createVehicle [0,0,0];
		_sol switchMove "Para_Pilot";
		_sol attachTo [_para,[0,0,-0.45]];
		_sol enableSimulation FALSE;
		_i = _i + 1; 
		sleep selectRandom [2,2.5,3,3.5,4];
		_null = [_sol, _para] execVM "skrypty\paraDrop\paraCleanup.sqf";};


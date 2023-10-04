if(hasInterface) exitWith {};

_c47 = _this select 0;

_i = 0;

waitUntil {triggerActivated trigger_airborneJump};

sleep ([20,35] call BIS_fnc_randomInt);
while {_i != 4} do 
	{
		_planePos = getPos _c47;
		_para = "LIB_NonSteerable_Parachute" createVehicle [0,0,0];
		_para setPos _planePos;
		_para setVelocity [0,0,-10];
		_sol = "LIB_US_82AB_FC_rifleman_para" createVehicle [0,0,0];
		_sol switchMove "Para_Pilot";
		_sol attachTo [_para,[0,0,-0.45]];
		_sol enableSimulation FALSE;
		_i = _i + 1; 
		sleep selectRandom [2,2.5,3,3.5,4];
		_null = [_sol, _para] execVM "skrypty\paraDrop\paraCleanup.sqf";};


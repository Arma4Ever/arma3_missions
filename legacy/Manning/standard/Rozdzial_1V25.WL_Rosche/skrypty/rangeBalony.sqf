//przed wrzuceniem na serwer zastapic (isServer) na (!hasInterface && !isDedicated)
// inicjacja null = [[pozycje], strona, [klasy]] execVM "folder\genAI.sqf";

if(isDedicated) then {

	_pozycje = [range_pole_1,range_pole_2,range_pole_3,range_pole_4,range_pole_5,range_pole_6,range_pole_7,range_pole_8,range_pole_9,range_pole_10,range_pole_11,range_pole_12,range_pole_13,range_pole_14,range_pole_15,range_pole_16,range_pole_17,range_pole_18,range_pole_19,range_pole_20,range_pole_21,range_pole_22,range_pole_23,range_pole_24,range_pole_25,range_pole_26,range_pole_27,range_pole_28,range_pole_29,range_pole_30];
		{
			_klasaTarget = ["Land_Balloon_01_water_F","Land_Balloon_01_air_F"];
			
			_klasa = selectRandom _klasaTarget;
			
			_balloon = _klasa createVehicle getPos _x;
			
			_z = [0.75, 1.5] call BIS_fnc_randomNum;
			
			_balloon attachTo [_x,[0,0,_z]];
			
			sleep 0.1;
			
			} forEach _pozycje;
		};
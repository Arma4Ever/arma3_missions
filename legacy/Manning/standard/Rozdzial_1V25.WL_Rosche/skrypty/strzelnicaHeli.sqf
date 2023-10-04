//przed wrzuceniem na serwer zastapic (isServer) na (!hasInterface && !isDedicated)
// inicjacja null = [[pozycje], strona, [klasy]] execVM "folder\genAI.sqf";

if(!hasInterface && !isDedicated) then {
	_pozycje = [pos_strzelnica_heli_1, pos_strzelnica_heli_2, pos_strzelnica_heli_3, pos_strzelnica_heli_4, pos_strzelnica_heli_5, pos_strzelnica_heli_6, pos_strzelnica_heli_7, pos_strzelnica_heli_8, pos_strzelnica_heli_9, pos_strzelnica_heli_10];
	_klasy = ["Land_VR_Target_APC_Wheeled_01_F","Land_VR_Target_MBT_01_cannon_F","Land_VR_Target_MRAP_01_F"];
	_arrayCele = [];
	{
		_veh = (selectRandom _klasy) createVehicle getPos _x;
		_veh setDir (random 360);
		_veh hideObjectGlobal true;
		_arrayCele pushBack _veh;
		sleep 0.1;
		} forEach _pozycje;
	
	{[[_x],"skrypty\strzelnicaHeliShowTarget.sqf"] remoteExec ["execVM",0,true]; sleep 0.1;} forEach _arrayCele;

	}
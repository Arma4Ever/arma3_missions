/* Mine Spawner
*	Author: McChicken
*	v0
*/
if !(isServer) exitWith {};
params ["_posArray","_mineclasses"];
private "_mineclass";
private _mines = [];
//"Tworzenie pola minowego" remoteExec ["hint", 0];
	{
	//	_nominator = _forEachIndex;
	//	_denominator = count _posArray;
	//	_percent = round (((_nominator + 1) / _denominator) * 100);
	//	_text = format ["Tworzenie pola minowego: %1 %2",_percent,"%"];
	//	_text remoteexec ["hintSilent",0];
		_mineclass = selectRandom _mineclasses;
		_mine = createMine [_mineclass,_x,[],(random 3)];
		[_mine, (round random 360)] remoteExec ["setDir"];
			if (dynamicSimulationSystemEnabled) then
			{
			_mine enableDynamicSimulation true;
			};
		sleep 0.01;
		_mines pushback _mine;
	} forEach _posArray;

	//hint str _mines;
	//"Tworzenie pola minowego zakończone!" remoteExec ["hint", 0];
	//"Pole minowe gotowe!" remoteExec ["systemChat", 0];

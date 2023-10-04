if (isServer) then {

private _list = [];

for "_i" from 1 to 7 do
	{
		private _pozycja = [('pos_' + (str _i))];
		_list append _pozycja;
		_pozycja = [];
		};

private _pos1 = selectRandom _list;
private _sp1  = missionNamespace getVariable [_pos1, objNull];
private _list = _list - [_pos1];
private _pos2 = selectRandom _list;
private _sp2  = missionNamespace getVariable [_pos2, objNull];
{
private _veh = createVehicle ["brf_o_agr_2s1", [0,0,0], [], 0, "NONE"];
private _group = createVehicleCrew _veh;
[_group] call lambs_wp_fnc_taskArtilleryRegister;
_group enableDynamicSimulation false;
_veh setPosATL (getPosATL _x)} forEach [_sp1,_sp2];
};

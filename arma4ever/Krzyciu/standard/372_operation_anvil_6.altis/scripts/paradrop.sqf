#include "script_component.hpp"

private _planes = [plane_1, plane_2, plane_3, plane_4, plane_5];
private _dir = 287;
private _dummy = objNull;

private _guide = createVehicle ["test_EmptyObjectForBubbles", [0,0,0], [], 0, "CAN_COLLIDE"];
_guide hideObjectGlobal true;
_guide setPos [4419, 1708, 225];
_guide setDir _dir;

sleep 0.5;

plane_1 attachTo [_guide, [55, -15, -2]];
plane_2 attachTo [_guide, [-55, 20, 5]];
plane_3 attachTo [_guide, [0, 150, -7]];
plane_4 attachTo [_guide, [-125, 125, 3]];
plane_5 attachTo [_guide, [-76, 80, -4]];

{_x setDir 0} forEach _planes;

{
  _x setFuel 1;
  _x engineOn true;
  action ["LandGearUp", _x];
  action ["engineOn", _x];
} forEach _planes;

sleep 2;

//Stupid game XD dont even ask
{ 
  action ["lightOff", _x];
  action ["LandGearUp", _x];
  private _dummy = createAgent ["VirtualMan_F", [0, 0, 0], [], 0, "CAN_COLLIDE"];
  _dummy moveInTurret [_x, [0]];
} forEach _planes;

private _speed = 20;
_guide setVelocity [
	(sin _dir * _speed),
	(cos _dir * _speed),
	0
];
waitUntil {sleep 0.5; missionNamespace getVariable [QGVAR(speeding), false];};

private _speed = 30;
_guide setVelocity [
	(sin _dir * _speed),
	(cos _dir * _speed),
	0
];

waitUntil {sleep 0.5; _guide distance2D wp_1 < 275};
// change dir

for "_i" from 0 to 680 do {
  _dir = getDir _guide;
  _guide setDir (_dir + 0.1);
  _guide setVelocity [
    (sin _dir * _speed),
    (cos _dir * _speed),
    0
  ];
  sleep 0.001;
};


waitUntil {sleep 0.5; _guide distance2D wp_2 < 275};

for "_i" from 0 to 600 do {
  _dir = getDir _guide;
  _guide setDir (_dir + 0.1);
  _guide setVelocity [
    (sin _dir * _speed),
    (cos _dir * _speed),
    0
  ];
  sleep 0.001;
};

[{
  params ["_planes", "_guide"];
  {deleteVehicle _x} forEach _planes;
  deleteVehicle _guide;
}, [_planes, _guide], 500] call CBA_fnc_waitAndExecute;

/*
private _players = assignedcargo _plane;
SPE_US_Parachute_Vanilla
{
  unassignVehicle _x;
  moveout _x;
  [_x, ["Eject", _plane]] remoteExec ["action", _x];
  sleep 0.1;
  waitUntil{sleep 0.1; vehicle _x != _plane};
  _x setDir (random 360);
  sleep 0.3;

  private _pos = getPosASL _x;
  private _chute = createVehicle ["Steerable_Parachute_F", [0,0,100], [], 0, "NONE"];
  _chute setPosASL [_pos#0, _pos#1 + (random 15) , _pos#2 - (random 20)];
  _chute setDir (random 360);
  _x moveInAny _chute;

  [{(getPosATL _chute)#2 < 1.2}, {
    deleteVehicle _chute;
  }, _chute] call CBA_fnc_waitUntilAndExecute;
} forEach _players;
*/
#include "script_component.hpp"

private _planes = [plane_0, plane_1, plane_2];

//Defualt driver can't turn engine on for some reason.
{
  _x engineOn true;
  sleep 0.5;
  private _dummy = createAgent ["VirtualMan_F", [0, 0, 0], [], 0, "CAN_COLLIDE"];
  _dummy moveInDriver _x;
  _dummy action ["LandGearUp", _x];
  _dummy action ["engineOn", _x];
  deleteVehicle _dummy;
} forEach _planes;

private _guide = createVehicle ["TestSphere2", [0,0,0], [], 0, "CAN_COLLIDE"];
_guide hideObjectGlobal true;
_guide setPos [12494,6623,450];
_guide setDir 324;

plane_0 attachTo [_guide, [55,-15,-2]];
plane_1 attachTo [_guide, [-55,20,2]];
plane_2 attachTo [_guide, [0,150,-2]];

sleep 0.5;

{_x setDir 0} forEach _planes;

private _speed = 45;
_guide setVelocity [sin 323 *_speed, cos 323 *_speed, 0];

[{
  params ["_planes", "_guide"];
  {deleteVehicle _x} forEach _planes;
  deleteVehicle _guide;
}, [_planes, _guide], 500] call CBA_fnc_waitAndExecute;

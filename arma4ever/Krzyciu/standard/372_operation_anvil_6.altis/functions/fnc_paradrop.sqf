#include "script_component.hpp"

private _planes = [plane_1, plane_2, plane_3];

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
_guide setPos [8516,24020,400];
_guide setDir 180;

plane_1 attachTo [_guide, [55,-15,-2]];
plane_2 attachTo [_guide, [-55,20,2]];
plane_3 attachTo [_guide, [0,150,-2]];

sleep 0.5;

{_x setDir 0} forEach _planes;

_guide setVelocity [0, -50, 0];

[{
  params ["_planes", "_guide"];
  {deleteVehicle _x} forEach _planes;
  deleteVehicle _guide;
}, [_planes, _guide], 600] call CBA_fnc_waitAndExecute;
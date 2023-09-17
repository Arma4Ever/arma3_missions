#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Handles landing of heli
 */

params ["_grpLeader"];

private _heliGroup = group _grpLeader;
private _heli = vehicle _grpLeader;

private _units = (crew _heli) - (units _heliGroup);
private _unitGroups = [];

{
  _unitGroups pushBackUnique (group _x);
  unassignVehicle _x;
} forEach _units;

{
  private _wp = _x addWaypoint [(_heli getPos [100, random 360]), 0];
  _wp setWaypointType "MOVE";
  _wp setWaypointStatements ["true", "[this, 800] spawn lambs_wp_fnc_taskRush;"];
  moveOut (leader _x);
} forEach _unitGroups;

sleep 1;

{
  moveOut _x;
  sleep 1;
} forEach _units;

sleep 2;

_heliGroup setCombatMode "RED";

private _wp = _heliGroup addWaypoint [_heli getPos [200, random 360], 0];
_wp setWaypointType "SAD";
_wp setWaypointBehaviour "COMBAT";
_wp setWaypointCombatMode "RED";

#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Called when players come close to yellowstone
 */

if !(isServer) exitWith {};

[QGVAR(zeusLog), "scream yellowstone"] call CBA_fnc_globalEvent;

private _yellowstone = missionNamespace getVariable ["mission_unit_yellowstone", objNull];
if !(alive _yellowstone) exitWith {};

private _list = [2, 3, 10, 15];
private _tmpList = +_list;

missionNamespace setVariable ["mission_screamYellowstone", true, true];

while {missionNamespace getVariable ["mission_screamYellowstone", false]} do {
  if !(alive _yellowstone) exitWith {};
  if (_tmpList isEqualTo []) then {
    _tmpList = +_list;
  };

  private _id = _tmpList deleteAt (floor (random (count _tmpList)));
  playSound3D [format ["z\ace\addons\fire\sounds\scream%1.ogg", _id], _yellowstone, true, getPosASL _yellowstone, 2.5, 0.9, 220];
  sleep (8 + (random 8));
};

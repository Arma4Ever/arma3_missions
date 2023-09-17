#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Called when players come close to whitney
 */

if !(isServer) exitWith {};

[QGVAR(zeusLog), "scream whitney"] call CBA_fnc_globalEvent;

private _whitney = missionNamespace getVariable ["mission_unit_whitney", objNull];
if !(alive _whitney) exitWith {};

private _list = [2, 3, 10, 15];
private _tmpList = +_list;

while {!(missionNamespace getVariable ["mission_killingWhitney", false])} do {
  if !(alive _whitney) exitWith {};
  if (_tmpList isEqualTo []) then {
    _tmpList = +_list;
  };

  private _id = _tmpList deleteAt (floor (random (count _tmpList)));
  playSound3D [format ["z\ace\addons\fire\sounds\scream%1.ogg", _id], _whitney, true, getPosASL _whitney, 2.5, 0.9, 220];
  sleep (8 + (random 8));
};

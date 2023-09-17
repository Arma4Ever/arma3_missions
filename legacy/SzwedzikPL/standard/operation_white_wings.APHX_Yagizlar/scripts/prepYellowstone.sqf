#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Called when players come close to yellowstone body
 */

if !(isServer) exitWith {};

[QGVAR(zeusLog), "prep yellowstone"] call CBA_fnc_globalEvent;

private _yellowstone = missionNamespace getVariable ["mission_unit_yellowstone", objNull];
if !(alive _yellowstone) exitWith {};

removeFromRemainsCollector [_yellowstone];
_yellowstone setDamage 0.8;
sleep 0.2;
_yellowstone allowDamage false;

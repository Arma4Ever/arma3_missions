#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Called when players come close to whitney body
 */

if !(isServer) exitWith {};

[QGVAR(zeusLog), "kill whitney"] call CBA_fnc_globalEvent;

missionNamespace setVariable ["mission_killingWhitney", true];

private _whitney = missionNamespace getVariable ["mission_unit_whitney", objNull];
if !(alive _whitney) exitWith {};

sleep 2.1;

removeFromRemainsCollector [_whitney];
_whitney setVariable ["ace_medical_damageThreshold", 50, true];

{
  private _c = 4 + (floor (random 4));
  for "_i" from 0 to _c do {
    [_whitney, 2.5 + (random 4), _x, ["stab", "punch"] select (floor (random 2))] call ace_medical_fnc_addDamageToUnit;
  };
  [_whitney, 6, _x, "punch"] call ace_medical_fnc_addDamageToUnit;
  [_whitney, 6, _x, "stab"] call ace_medical_fnc_addDamageToUnit;
} forEach ["LeftLeg", "RightLeg", "LeftArm", "RightArm", "Body", "Head"];

[_whitney, 10, "Head", "bullet"] call ace_medical_fnc_addDamageToUnit;

_whitney setDamage 1;
sleep 0.1;
playSound3D ["a3\sounds_f\arsenal\weapons\pistols\rook40\rook40_01.wss", _whitney, true, getPosASL _whitney, 5, 1, 250];

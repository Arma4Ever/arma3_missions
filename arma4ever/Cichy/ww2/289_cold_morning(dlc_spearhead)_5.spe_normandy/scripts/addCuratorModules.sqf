#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Adds curator modules
 */

if !(hasInterface) exitWith {};

["- MISJA: Funkcje", "Wylacz dyn sim", {
  params ["", "_target"];
  if (isNull _target) exitWith {};
  [QGVAR(switchDynSim), [_target, false]] call CBA_fnc_serverEvent;
}] call zen_custom_modules_fnc_register;

["- MISJA: Funkcje", "Wlacz dyn sim", {
  params ["", "_target"];
  if (isNull _target) exitWith {};
  [QGVAR(switchDynSim), [_target, true]] call CBA_fnc_serverEvent;
}] call zen_custom_modules_fnc_register;

["- MISJA: Funkcje", "Wylacz PATH", {
  params ["", "_target"];
  if (
    (isNull _target) ||
    {!(_target isKindOf "CAManBase")} ||
    {!(isNull (objectParent _target))}
  ) exitWith {};

  [QGVAR(switchPATH), [_target, false], _target] call CBA_fnc_targetEvent;
}] call zen_custom_modules_fnc_register;

["- MISJA: Funkcje", "Wlacz PATH", {
  params ["", "_target"];
  if (
    (isNull _target) ||
    {!(_target isKindOf "CAManBase")} ||
    {!(isNull (objectParent _target))}
  ) exitWith {};

  [QGVAR(switchPATH), [_target, true], _target] call CBA_fnc_targetEvent;
}] call zen_custom_modules_fnc_register;

["- MISJA: Funkcje", "Reveal", {
  params ["", "_target"];
  if (isNull _target) exitWith {};
  [QGVAR(revealAll), _target] call CBA_fnc_globalEvent;
}] call zen_custom_modules_fnc_register;

["- MISJA: Funkcje", "Defender: UP", {
  params ["", "_target"];
  if (
    (isNull _target) ||
    {!(_target isKindOf "CAManBase")} ||
    {!(isNull (objectParent _target))}
  ) exitWith {};

  [QGVAR(enableDefender), [_target, "UP"], _target] call CBA_fnc_targetEvent;
}] call zen_custom_modules_fnc_register;

["- MISJA: Funkcje", "Defender: MIDDLE", {
  params ["", "_target"];
  if (
    (isNull _target) ||
    {!(_target isKindOf "CAManBase")} ||
    {!(isNull (objectParent _target))}
  ) exitWith {};

  [QGVAR(enableDefender), [_target, "MIDDLE"], _target] call CBA_fnc_targetEvent;
}] call zen_custom_modules_fnc_register;

["- MISJA: Funkcje", "Defender: DISABLE", {
  params ["", "_target"];
  if (
    (isNull _target) ||
    {!(_target isKindOf "CAManBase")} ||
    {!(isNull (objectParent _target))}
  ) exitWith {};

  _target setVariable [QGVAR(defenderEnabled), false, true];
}] call zen_custom_modules_fnc_register;

["- MISJA: SUPPRESS", "Pozycja", {
  params ["_posASL"];
  GVAR(supPosASL) = _posASL;
  systemChat format ["Pozycja suppress: %1", str GVAR(supPosASL)];
}] call zen_custom_modules_fnc_register;

["- MISJA: SUPPRESS", "Suppress", {
  params ["", "_target"];
  if (
    (isNull _target) ||
    {isNil QGVAR(supPosASL)}
  ) exitWith {};

  if (_target isKindOf "CAManBase") then {
    if (_target isEqualTo (leader (group _target))) then {
      private _targets = (units (group _target));
      [QGVAR(doSuppress), [_targets, GVAR(supPosASL)], _targets] call CBA_fnc_targetEvent;
    } else {
      private _targets = _target;
      [QGVAR(doSuppress), [_targets, GVAR(supPosASL)], _targets] call CBA_fnc_targetEvent;
    };
  } else {
    private _targets = (crew _target);
    [QGVAR(doSuppress), [_targets, GVAR(supPosASL)], _targets] call CBA_fnc_targetEvent;
  };
}] call zen_custom_modules_fnc_register;

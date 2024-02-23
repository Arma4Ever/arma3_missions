#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Adds curator modules
 */

if !(hasInterface) exitWith {};

GVAR(assignedMortar) = objNull;
GVAR(mortarSuppressLinePos1) = [];
GVAR(mortarSuppressLinePos2) = [];

["- MISJA: Mortar", "1. Wyznacz mortar", {
  params ["", "_target"];
  if (
    (isNull _target) ||
    {!(_target isKindOf "rhs_2b14_82mm_Base")}
  ) exitWith {};

  GVAR(assignedMortar) = _target;
  [objNull, "Mortar assigned"] call BIS_fnc_showCuratorFeedbackMessage;
}] call zen_custom_modules_fnc_register;

["- MISJA: Mortar", "2. Mortar zap LINIA POS 1", {
  params ["_pos"];
  GVAR(mortarSuppressLinePos1) = _pos;
  [objNull, "Pos1 saved"] call BIS_fnc_showCuratorFeedbackMessage;
}] call zen_custom_modules_fnc_register;

["- MISJA: Mortar", "2. Mortar zap LINIA POS 2", {
  params ["_pos"];
  GVAR(mortarSuppressLinePos2) = _pos;
  [objNull, "Pos2 saved"] call BIS_fnc_showCuratorFeedbackMessage;
}] call zen_custom_modules_fnc_register;

["- MISJA: Mortar", "3. Mortar zaporowy", {
  params ["_pos"];

	["Mortar Mortar zaporowy", 
    [
      ["SLIDER", "Spread", [1, 500, 50, 0]],
      ["SLIDER", "Sleep", [1, 15, 9, 0]],
      ["SLIDER", "Shots", [1, 300, 50, 0]],
      ["CHECKBOX", "Line", false]
    ],
    {
      params ["_values", "_args"];
      _values params ["_spread", "_sleep", "_shots", "_line"];

      if !(alive GVAR(assignedMortar)) exitWith {
        [objNull, "Mortar not present"] call BIS_fnc_showCuratorFeedbackMessage;
      };

      if (_line) then {
        private _pos1 = GVAR(mortarSuppressLinePos1);
        private _pos2 = GVAR(mortarSuppressLinePos2);

        if (_pos1 isEqualTo [] || {_pos2 isEqualTo []}) exitWith {
          [objNull, "Empty pos"] call BIS_fnc_showCuratorFeedbackMessage;
        };

        private _dir =  _pos1 getDir _pos2;
        private _dist = _pos1 distance _pos2;

        [QGVAR(mortarSuppress), [GVAR(assignedMortar), _pos1, _dir, _dist, _spread, _sleep, _shots], GVAR(assignedMortar)] call CBA_fnc_targetEvent;
      } else {
        _args params ["_pos"];
        [QGVAR(mortarSuppress), [GVAR(assignedMortar), _pos, 0, 0, _spread, _sleep, _shots], GVAR(assignedMortar)] call CBA_fnc_targetEvent;
      };

      [objNull, "Suppressing"] call BIS_fnc_showCuratorFeedbackMessage;
    }, 
    {},
	  [_pos]
  ] call zen_dialog_fnc_create;
}] call zen_custom_modules_fnc_register;

["- MISJA: Funkcje", "Wylacz dyn sim", {
  params ["", "_target"];
  if (isNull _target) exitWith {};
  [QGVAR(switchDynSim), [_target, false]] call CBA_fnc_serverEvent;
  [objNull, "Dyn sim disabled"] call BIS_fnc_showCuratorFeedbackMessage;
}] call zen_custom_modules_fnc_register;

["- MISJA: Funkcje", "Wlacz dyn sim", {
  params ["", "_target"];
  if (isNull _target) exitWith {};
  [QGVAR(switchDynSim), [_target, true]] call CBA_fnc_serverEvent;
  [objNull, "Dyn sim enabled"] call BIS_fnc_showCuratorFeedbackMessage;
}] call zen_custom_modules_fnc_register;

["- MISJA: Funkcje", "Wylacz PATH", {
  params ["", "_target"];
  if (
    (isNull _target) ||
    {!(_target isKindOf "CAManBase")} ||
    {!(isNull (objectParent _target))}
  ) exitWith {};

  [QGVAR(switchPATH), [_target, false], _target] call CBA_fnc_targetEvent;
  [objNull, "PATH disabled"] call BIS_fnc_showCuratorFeedbackMessage;
}] call zen_custom_modules_fnc_register;

["- MISJA: Funkcje", "Wlacz PATH", {
  params ["", "_target"];
  if (
    (isNull _target) ||
    {!(_target isKindOf "CAManBase")} ||
    {!(isNull (objectParent _target))}
  ) exitWith {};

  [QGVAR(switchPATH), [_target, true], _target] call CBA_fnc_targetEvent;
  [objNull, "PATH enabled"] call BIS_fnc_showCuratorFeedbackMessage;
}] call zen_custom_modules_fnc_register;

["- MISJA: Funkcje", "Reveal", {
  params ["", "_target"];
  if (isNull _target) exitWith {};
  [QGVAR(revealAll), _target] call CBA_fnc_globalEvent;
  [objNull, "Revealed"] call BIS_fnc_showCuratorFeedbackMessage;
}] call zen_custom_modules_fnc_register;

["- MISJA: Funkcje", "Defender: UP", {
  params ["", "_target"];
  if (
    (isNull _target) ||
    {!(_target isKindOf "CAManBase")} ||
    {!(isNull (objectParent _target))}
  ) exitWith {};

  _target setVariable ["a4es_ai_defenderBehaviour", 1, true];
  _target call a4es_ai_fnc_defenderBehaviour;
  [objNull, "Defender: UP"] call BIS_fnc_showCuratorFeedbackMessage;
}] call zen_custom_modules_fnc_register;

["- MISJA: Funkcje", "Defender: MIDDLE", {
  params ["", "_target"];
  if (
    (isNull _target) ||
    {!(_target isKindOf "CAManBase")} ||
    {!(isNull (objectParent _target))}
  ) exitWith {};

  _target setVariable ["a4es_ai_defenderBehaviour", 2, true];
  _target call a4es_ai_fnc_defenderBehaviour;
  [objNull, "Defender: MIDDLE"] call BIS_fnc_showCuratorFeedbackMessage;
}] call zen_custom_modules_fnc_register;

["- MISJA: Funkcje", "Defender: DISABLE", {
  params ["", "_target"];
  if (
    (isNull _target) ||
    {!(_target isKindOf "CAManBase")} ||
    {!(isNull (objectParent _target))}
  ) exitWith {};

  _target setVariable ["a4es_ai_defenderEnabled", false, true];
  [objNull, "Disabled"] call BIS_fnc_showCuratorFeedbackMessage;
}] call zen_custom_modules_fnc_register;

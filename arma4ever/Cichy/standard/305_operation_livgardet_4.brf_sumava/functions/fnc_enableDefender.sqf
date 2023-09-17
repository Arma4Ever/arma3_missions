#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Enables defender behaviour
 */

params ["_unit", "_maxPos"];

if (
  !(local _unit) ||
  {!(_unit isKindOf "CAManBase")} ||
  {!(isNull (objectParent _unit))} ||
  {_unit getVariable [QGVAR(defenderEnabled), false]}
) exitWith {};

_unit setSkill (missionNamespace getVariable [QGVAR(defenderAISkill), 0.7]);
_unit disableAI "PATH";
_unit disableAI "FSM";
_unit setUnitPos "DOWN";
["a4es_common_switchMove", [_unit, "amovppnemstpsraswrfldnon"]] call CBA_fnc_globalEvent;

_unit setVariable [QGVAR(defenderEnabled), true];
_unit setVariable ["lambs_danger_disableAI", true, true];

if ((leader (group _unit)) == _unit) then {
  (group _unit) setVariable ["lambs_danger_disableGroupAI", true, true];
};

// Add suppress EH
private _supEH = _unit getVariable [QGVAR(suppressedEH), -1];
if (_supEH == -1) then {
  _supEH = _unit addEventHandler ["Suppressed", {
    params ["_unit"];
    _unit setVariable [QGVAR(lastSuppress), CBA_missionTime];

    if ((unitPos _unit) != "down") then {
      _unit setUnitPos "DOWN";
    };
  }];
  _unit setVariable [QGVAR(suppressedEH), _supEH];
};

while {alive _unit} do {
  sleep (2 + (random 12));
  if (
    !(alive _unit) ||
    {!(local _unit)} ||
    {!(_unit getVariable [QGVAR(defenderEnabled), false])}
  ) exitWith {
    _unit setVariable [QGVAR(defenderEnabled), false];
  };

  if (((_unit getVariable [QGVAR(lastSuppress), 0]) + 4) < CBA_missionTime) then {
    _unit setUnitPos _maxPos;
    sleep (1 + (random 6));
  };

  if (
    !(alive _unit) ||
    {!(local _unit)} ||
    {!(_unit getVariable [QGVAR(defenderEnabled), false])}
  ) exitWith {
    _unit setVariable [QGVAR(defenderEnabled), false];
  };
  _unit setUnitPos "DOWN";
};

_unit setVariable [QGVAR(defenderEnabled), false];

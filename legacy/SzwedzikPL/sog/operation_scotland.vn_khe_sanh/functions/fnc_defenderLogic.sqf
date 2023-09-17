#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Defender logic script
 */

params ["_unit", "_logicMode"];

if !(canSuspend) exitWith {
  _this spawn FUNC(defenderLogic);
};

if (
  !(alive _unit) ||
  {!(local _unit)} ||
  {!(_unit isKindOf "CAManBase")} ||
  {isPlayer _unit} ||
  {!(isNull (objectParent _unit))} ||
  {_unit getVariable [QGVAR(defenderLogic), false]}
) exitWith {};

// Set skill and make stationary
_unit setSkill 1;
_unit disableAI "FSM";
_unit disableAI "PATH";

// No logic - stand
if (_logicMode == 0) exitWith {
  _unit setUnitPos "UP";
};

// No logic - crouch
if (_logicMode == 1) exitWith {
  _unit setUnitPos "MIDDLE";
};

_unit setUnitPos "DOWN";
_unit setVariable [QGVAR(defenderLogic), true];
private _maxPos = ["UP", "MIDDLE"] select (_logicMode - 2);

// Add suppress EH
private _supEH = _unit getVariable [QGVAR(suppressedEH), -1];
if (_supEH == -1) then {
  _supEH = _unit addEventHandler ["Suppressed", {
    	(_this select 0) setVariable [QGVAR(lastSuppress), CBA_missionTime];
  }];
  _unit setVariable [QGVAR(suppressedEH), _supEH];
};

while {alive _unit} do {
  sleep (2 + (random 12));

  if (
    !(alive _unit) ||
    {!(local _unit)} ||
    {!(_unit getVariable [QGVAR(defenderLogic), false])}
  ) exitWith {
    _unit setVariable [QGVAR(defenderLogic), false];
  };

  if (((_unit getVariable [QGVAR(lastSuppress), 0]) + 4) < CBA_missionTime) then {
    //_unit setUnitCombatMode "RED";
    _unit setUnitPos _maxPos;
    sleep (1 + (random 6));
  };

  if (
    !(alive _unit) ||
    {!(local _unit)} ||
    {!(_unit getVariable [QGVAR(defenderLogic), false])}
  ) exitWith {
    _unit setVariable [QGVAR(defenderLogic), false];
  };

  _unit setUnitPos "DOWN";
  //_unit setUnitCombatMode "BLUE";
};
_unit setVariable [QGVAR(defenderLogic), false];

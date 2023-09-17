#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Adds curator modules
 */

if !(hasInterface) exitWith {};

["- MISJA: Funkcje", "Clean empty groups", {
  [QGVAR(cleanGroups), 0] call CBA_fnc_globalEvent;
}] call zen_custom_modules_fnc_register;

["- MISJA: Funkcje", "Wylacz dyn sim", {
  params ["", "_target"];
  if (isNull _target) exitWith {};
  [QGVAR(disableDynSim), _target] call CBA_fnc_serverEvent;
}] call zen_custom_modules_fnc_register;

["- MISJA: Funkcje", "Evac evac evac", {
  ["Evac evac evac?", [], {
    missionNamespace setVariable ["fsf_evacEvac", true, true];
  }, {}, []] call zen_dialog_fnc_create;
}] call zen_custom_modules_fnc_register;

#include "script_component.hpp"

["[Krzyciu] - Mission", "Stabilize Unit", {
  params ["", "_target"];
  if (isNull _target) exitWith {};
  [QGVAR(stabilizeUnit), _target, _target] call CBA_fnc_targetEvent;
}] call zen_custom_modules_fnc_register;

["[Krzyciu] - Mission", "Add spawn point", {
  params ["", "_target"];
  if (isNull _target) exitWith {};
  [QGVAR(addLocation), [[_target]]] call CBA_fnc_globalEventJIP;
}] call zen_custom_modules_fnc_register;

["[Krzyciu] - Mission", "Remove spawn point", {
  params ["", "_target"];
  if (isNull _target) exitWith {};
  [QGVAR(removeLocation), [[_target]]] call CBA_fnc_globalEventJIP;
}] call zen_custom_modules_fnc_register;

#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Work anim
 */

params ["_unit"];

if (_unit getVariable [QGVAR(workAnimInited), false]) exitWith {};
_unit setVariable [QGVAR(workAnimInited), true, true];

while {alive _this} do {
  waitUntil {sleep 5;simulationEnabled _this};
  if ((behaviour _this) != "SAFE") exitWith {};
  _this playActionNow "Treated";
  sleep 12;
};

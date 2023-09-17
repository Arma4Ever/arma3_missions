#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Handler for officer escorted
 */

if !(isServer) exitWith {};

// Complete escort officer task
[
  "task_02",
  2,
  true
] call a3cs_tasks_fnc_setTaskState;

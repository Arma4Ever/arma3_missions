#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Handler for discovered supplies #2
 */

if !(isServer) exitWith {};

[
  [
    "task_sup_02",
    "",
    0,
    "STR_Mission_Task_Sup_Title",
    "STR_Mission_Task_Sup_Desc",
    "destroy",
    [1679.63, 12938.6, 0],
    0
  ],
  true
] call a3cs_tasks_fnc_createTask;

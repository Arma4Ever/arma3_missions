#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Handler for discovered supplies #3
 */

if !(isServer) exitWith {};

[
  [
    "task_sup_03",
    "",
    0,
    "STR_Mission_Task_Sup_Title",
    "STR_Mission_Task_Sup_Desc",
    "destroy",
    [2034.56, 12453.8, 0],
    0
  ],
  true
] call a3cs_tasks_fnc_createTask;

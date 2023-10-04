#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Handler for officer caught event
 */

if (!(isServer) || GVAR(officerCaught)) exitWith {};


GVAR(officerCaught) = true;

// Setup time
setTimeMultiplier 28;

for "_i" from 1 to 6 do {
  deleteMarker (format ["marker_officer_pos_%1", _i]);
};

0 spawn {
  sleep 1;

  // Complete find officer task
  [
    "task_01",
    2,
    true
  ] call a3cs_tasks_fnc_setTaskState;

  sleep 5;

  // Create escort officer task
  [
    [
      "task_02",
      "",
      0,
      "STR_Mission_Task_02_Title",
      "STR_Mission_Task_02_Desc",
      "land",
      [6944, 4477.24, 0],
      0
    ],
    true
  ] call a3cs_tasks_fnc_createTask;

  sleep 5;

  // Create destroy supplies
  [
    [
      "task_sup_of",
      "",
      0,
      "STR_Mission_Task_Sup_Title",
      "STR_Mission_Task_Sup_Desc",
      "destroy",
      [1957.14, 12701.9, 0],
      0
    ],
    true
  ] call a3cs_tasks_fnc_createTask;

  sleep 5;

  // Create secure perimeter task
  [
    [
      "task_03",
      "",
      0,
      "STR_Mission_Task_03_Title",
      "STR_Mission_Task_03_Desc",
      "danger",
      [1589.26, 12558.9, 0],
      0
    ],
    true
  ] call a3cs_tasks_fnc_createTask;

  // Spawn MPs in prison
};

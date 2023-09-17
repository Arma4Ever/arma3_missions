#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Handler for init defence event
 */

if !(isServer) exitWith {};

0 spawn {
  // Play message
  [QGVAR(nortonMessage), 0] call CBA_fnc_globalEvent;

  // Update map
  for "_i" from 1 to 5 do {
    (format ["marker_enemy_%1", _i]) setMarkerAlpha 1;
  };

  // Add division brief
  [QGVAR(addDivisionBrief), 0] call CBA_fnc_globalEventJIP;

  sleep 9.5;

  // Cancel patrol Com Ngon task
  [
    "task_04",
    4,
    true
  ] call a3cs_tasks_fnc_setTaskState;
  // Cancel patrol Binh Yen task
  [
    "task_05",
    4,
    true
  ] call a3cs_tasks_fnc_setTaskState;

  sleep 80;

  // Add hold plain task
  [
    [
      "task_06",
      "",
      0,
      "STR_Mission_Task_06_Title",
      "STR_Mission_Task_06_Desc",
      "defend",
      [1589.26, 12558.9, 0],
      0
    ],
    true
  ] call a3cs_tasks_fnc_createTask;

  sleep 5;

  // Add body count task
  [
    [
      "task_07",
      "",
      0,
      "STR_Mission_Task_07_Title",
      "STR_Mission_Task_07_Desc",
      "kill",
      [],
      0
    ],
    true
  ] call a3cs_tasks_fnc_createTask;

  sleep 5;

  setTimeMultiplier 24;
};

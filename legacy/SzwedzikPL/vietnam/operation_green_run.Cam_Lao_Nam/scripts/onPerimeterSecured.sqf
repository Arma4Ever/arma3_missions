#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Handler for perimeter secured
 */

if !(isServer) exitWith {};

0 spawn {
  // Complete secure perimeter
  [
    "task_03",
    2,
    true
  ] call a3cs_tasks_fnc_setTaskState;

  sleep 5;

  // Add patrol Com Ngon task
  [
    [
      "task_04",
      "",
      0,
      "STR_Mission_Task_04_Title",
      "STR_Mission_Task_04_Desc",
      "scout",
      [1284.5, 13660.4, 0],
      0
    ],
    true
  ] call a3cs_tasks_fnc_createTask;

  sleep 5;

  // Add patrol Binh Yen task
  [
    [
      "task_05",
      "",
      0,
      "STR_Mission_Task_05_Title",
      "STR_Mission_Task_05_Desc",
      "scout",
      [2859.54, 11759.1, 0],
      0
    ],
    true
  ] call a3cs_tasks_fnc_createTask;
};

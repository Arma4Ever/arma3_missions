#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Handler for destroyed supplies #1
 */

if !(isServer) exitWith {};

if (missionNamespace getVariable ["sup_01_destroyed", false]) exitWith {};
missionNamespace setVariable ["sup_01_destroyed", true];

[
  "task_sup_01",
  2,
  true
] call a3cs_tasks_fnc_setTaskState;

// Destroy hut
private _hut = missionNamespace getVariable ["mission_sup1_hut", objNull];
_hut setDamage 1;
_hut spawn {
  sleep 2;
  _this hideObjectGlobal true;
};

// Delete objects
deleteVehicle (missionNamespace getVariable ["mission_vc_sup1_1", objNull]);
deleteVehicle (missionNamespace getVariable ["mission_vc_sup1_2", objNull]);

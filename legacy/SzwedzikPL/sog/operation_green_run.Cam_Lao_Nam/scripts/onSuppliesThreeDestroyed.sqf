#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Handler for destroyed supplies #3
 */

if !(isServer) exitWith {};

if (missionNamespace getVariable ["sup_03_destroyed", false]) exitWith {};
missionNamespace setVariable ["sup_03_destroyed", true];

[
  "task_sup_03",
  2,
  true
] call a3cs_tasks_fnc_setTaskState;

// Destroy hut
private _hut = missionNamespace getVariable ["mission_sup3_hut", objNull];
_hut setDamage 1;
_hut spawn {
  sleep 2;
  _this hideObjectGlobal true;
};

// Delete objects
deleteVehicle (missionNamespace getVariable ["mission_vc_sup3_1", objNull]);
deleteVehicle (missionNamespace getVariable ["mission_vc_sup3_2", objNull]);

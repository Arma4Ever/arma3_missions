#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Handler for destroyed supplies #2
 */

if !(isServer) exitWith {};

if (missionNamespace getVariable ["sup_02_destroyed", false]) exitWith {};
missionNamespace setVariable ["sup_02_destroyed", true];

[
  "task_sup_02",
  2,
  true
] call a3cs_tasks_fnc_setTaskState;

// Destroy hut
private _hut = missionNamespace getVariable ["mission_sup2_hut", objNull];
_hut setDamage 1;
_hut spawn {
  sleep 2;
  _this hideObjectGlobal true;
};

// Delete objects
deleteVehicle (missionNamespace getVariable ["mission_vc_sup2_1", objNull]);
deleteVehicle (missionNamespace getVariable ["mission_vc_sup2_2", objNull]);

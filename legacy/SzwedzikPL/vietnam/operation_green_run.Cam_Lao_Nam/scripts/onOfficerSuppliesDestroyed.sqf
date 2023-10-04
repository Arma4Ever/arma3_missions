#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Handler for officer supplies destroyed event
 */

if !(isServer) exitWith {};

if (missionNamespace getVariable ["sup_of_destroyed", false]) exitWith {};
missionNamespace setVariable ["sup_of_destroyed", true];

// Destroy hut
private _hut = missionNamespace getVariable ["mission_officer_hut", objNull];
_hut setDamage 1;
_hut spawn {
  sleep 2;
  _this hideObjectGlobal true;
};

// Destroy officer supplies
private _ofSupplies = missionNamespace getVariable ["mission_officer_supplies", objNull];
deleteVehicle _ofSupplies;

// Delete assets
for "_i" from 1 to 15 do {
  deleteVehicle (missionNamespace getVariable [
    format ["mission_officer_obj_%1", _i],
    objNull
  ]);
};

// Complete task
[
  "task_sup_of",
  2,
  true
] call a3cs_tasks_fnc_setTaskState;

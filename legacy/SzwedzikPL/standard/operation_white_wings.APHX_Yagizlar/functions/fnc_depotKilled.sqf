#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Killed handler for depot objects
 */

params ["_depot"];

if (is3DENPreview) then {systemChat str ["depotKilled", _depot];};

if (isNull _depot) exitWith {};

if (_depot isEqualTo (missionNamespace getVariable ["mission_depot_1", objNull])) exitWith {
  [QGVAR(depot1Destroyed), 0] call CBA_fnc_serverEvent;
};

if (_depot isEqualTo (missionNamespace getVariable ["mission_depot_2", objNull])) exitWith {
  [QGVAR(depot2Destroyed), 0] call CBA_fnc_serverEvent;
};

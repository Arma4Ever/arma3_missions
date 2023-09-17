#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Brooks discovered handler
 */

private _brooks = missionNamespace getVariable ["mission_brooks", objNull];
if (isNull _brooks) exitWith {};

0 spawn {
  for "_i" from 1 to 16 do {
    private _sat = missionNamespace getVariable [format ["mission_satchel_%1", _i], objNull];
    private _light = missionNamespace getVariable [format ["mission_satchel_light_%1", _i], objNull];
    if (!(isNull _sat) && !(isNull _light)) then {
      sleep (random 0.5);
      _sat enableSimulationGlobal true;
      _light enableSimulationGlobal true;
    };
  };
};

[QGVAR(brooksWarning), 0] call CBA_fnc_globalEvent;

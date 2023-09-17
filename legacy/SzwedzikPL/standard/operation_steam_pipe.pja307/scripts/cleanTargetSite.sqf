#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Cleans target site
 */

if !(isServer) exitWith {};

if (missionNamespace getVariable [QGVAR(detonationTargetSite), false]) exitWith {};
missionNamespace setVariable [QGVAR(detonationTargetSite), true, true];

0 spawn {
  // Something weird but net traffic from booms sometimes results in not deleting objects
  // so we make it several times to ensure deletion
  sleep 0.001;
  for "_i" from 0 to 4 do {
    // Delete simple objects
    {deleteVehicle _x} forEach GVAR(targetSiteObjects);
    // Delete charges
    for "_i" from 1 to 16 do {
      deleteVehicle (missionNamespace getVariable [format ["mission_satchel_light_%1", _i], objNull]);
      deleteVehicle (missionNamespace getVariable [format ["mission_satchel_%1", _i], objNull]);
    };
    sleep 0.01;
  };
  sleep 0.1;
  {deleteVehicle _x} forEach GVAR(targetSiteObjects);
  sleep 1;
  // Release memory
  GVAR(targetSiteObjects) = [];
};

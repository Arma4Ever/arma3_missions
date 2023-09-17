#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Removes wooden tanks from base when they're not needed anymore
 */

if (missionNamespace getVariable [QGVAR(wtCleanup), false]) exitWith {};
missionNamespace setVariable [QGVAR(wtCleanup), true, true];

0 spawn {
  // Delete extra simple objects
  {
    deleteVehicle _x;
    sleep 0.001;
  } forEach GVAR(woodenTanksObjects);

  // Delete extra simple objects (again)
  {
    deleteVehicle _x;
    sleep 0.001;
  } forEach GVAR(woodenTanksObjects);

  // Release memory
  GVAR(woodenTanksObjects) = [];
};

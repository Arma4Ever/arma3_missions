#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Handles depot one destruction sequence
 */

if !(isServer) exitWith {};
if (missionNamespace getVariable [QGVAR(depotOneDestroyed), false]) exitWith {};
missionNamespace setVariable [QGVAR(depotOneDestroyed), true, true];

[QGVAR(zeusLog), "depot 1 destroyed"] call CBA_fnc_globalEvent;

0 spawn {
  // Fireworks
  sleep 0.25;
  {
    private _missile = "ammo_Missile_Cruise_01" createVehicle _x;
    _missile setPos _x;
    triggerAmmo _missile;
    _missile setDamage 1;
    sleep (0.2 + (random 0.1));
  } forEach [
    [2536.94, 3644.58, 0],
    [2546.07, 3635.06, 0],
    [2528.51, 3655.22, 0],
    [2526.11, 3636.02, 0],
    [2514.33, 3657.99, 0],
    [2508.24, 3635.23, 0]
  ];

  // Destroy all terrain elements in area
  {
    _x setDamage 1;
    sleep 0.001;
  } forEach (nearestTerrainObjects [[2518.29,3634.89,0], [], 34]);

  // Remove depot
  deleteVehicle (missionNamespace getVariable ["mission_depot_1", objNull]);

  // Let dust settle
  sleep 10;

  // Spawn local response
  [QGVAR(zeusLog), "depot 1 destroyed flag"] call CBA_fnc_globalEvent;
  [LOGIC_DEPOT_1_DESTR, true] call A3CS_fnc_setLogicFlagValue;

  sleep 10;

  // Sound region alarm
  [QGVAR(soundAlarm), 0] call CBA_fnc_localEvent;
};

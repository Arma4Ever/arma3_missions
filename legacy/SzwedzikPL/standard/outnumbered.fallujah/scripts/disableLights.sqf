#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Disables lights in city
 */

if !(isServer) exitWith {};

waitUntil {
  sleep 0.1;
  private _status = missionNamespace getVariable ["a3cs_modules_3DENCompObjectsSpawn", [false]];
  _status # 0
};

waitUntil {
  sleep 1;
  private _status = missionNamespace getVariable ["a3cs_modules_3DENCompObjectsSpawn", [false, 0, 0, false]];
  _status # 3
};

private _objects = nearestObjects [
 [worldSize / 2, worldSize / 2, 0],
 [
   "Land_Lampa_ind",
   "Land_Lampa_sidl",
   "Land_Lampa_sidl_3",
   "Land_A_GeneralStore_01",
   "Land_A_GeneralStore_01a",
   "Land_Ind_Vysypka",
   "Land_Ind_Mlyn_03",
   "Land_Ind_Mlyn_04",
   "Land_Mil_Guardhouse"
 ],
 worldSize,
 true
];

private _lastUpdate = -1;
private _count = count _objects;

{
  _x setDamage 0.9;
  _x hideObjectGlobal true;

  // Update global info for intro
  if ((CBA_missionTime - _lastUpdate) > 0.98) then {
    missionNamespace setVariable [QGVAR(disabledLightsStatus), [_forEachIndex + 1, _count, false], true];
    _lastUpdate = CBA_missionTime;
  };

  if (((_forEachIndex + 1) % 3) == 0) then {
    sleep 0.001;
  };
} forEach _objects;

// Save global info for intro
missionNamespace setVariable [QGVAR(disabledLightsStatus), [_count, _count, true], true];

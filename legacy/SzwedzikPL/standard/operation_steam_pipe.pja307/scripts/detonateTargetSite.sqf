#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Detonates target site (hopefully never called :D)
 */

if !(isServer) exitWith {};

if (missionNamespace getVariable [QGVAR(detonationTargetSite), false]) exitWith {};
missionNamespace setVariable [QGVAR(detonationTargetSite), true, true];

0 spawn {
  // Boom #first
  private _missile = "ammo_Missile_Cruise_01" createVehicle [11854.9, 8844.16, 3];
  _missile setPos [11854.9, 8844.16, 3];
  _missile setDamage 1;

  sleep 0.0001;

  // Boom #brooks
  private _brooks = missionNamespace getVariable ["mission_brooks", objNull];
  if (
    !(isNull _brooks) &&
    {(vest _brooks) isEqualTo "UMI_Bomb_Vest_Camo"}
  ) then {
    private _missile = "ammo_Missile_Cruise_01" createVehicle (getPos _brooks);
    _missile setPos (getPos _brooks);
    _missile setDamage 1;
    _brooks setDamage 1;
    sleep 0.0001;
  };

  // Destroy house
  (missionNamespace getVariable ["mission_target_house", objNull]) setDamage 1;

  sleep 0.001;

  // Boom #next
  {
    private _missile = "ammo_Missile_Cruise_01" createVehicle _x;
    _missile setPos _x;
    _missile setDamage 1;
    sleep 0.001;
  } forEach [
    [11856.1, 8842.03, 6],
    [11859.5, 8850.81, 4.5],
    [11862, 8841.86, 4.5],
    [11856.3, 8833.87, 4.5],
    [11851.1,8843.09, 4.5]
  ];

  // Boom #last
  private _missile = "ammo_Missile_Cruise_01" createVehicle [11854.9, 8844.09, 7];
  _missile setPos [11854.9, 8844.09, 7];
  _missile setDamage 1;

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
  removeVest (missionNamespace getVariable ["mission_brooks", objNull]);
  {deleteVehicle _x} forEach GVAR(targetSiteObjects);
  sleep 1;
  // Release memory
  GVAR(targetSiteObjects) = [];
};

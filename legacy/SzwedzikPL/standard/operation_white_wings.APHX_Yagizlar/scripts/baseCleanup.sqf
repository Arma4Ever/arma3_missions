#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Cleans base of unnecessary objects (saves performance)
 */

if (missionNamespace getVariable [QGVAR(cleanupEnabled), false]) exitWith {};
missionNamespace setVariable [QGVAR(cleanupEnabled), true, true];

[QGVAR(zeusLog), "Base cleanup"] call CBA_fnc_globalEvent;

for "_y" from 1 to 2 do {
  private _laptop = missionNamespace getVariable ["mission_base_laptop", objNull];
  if !(isNull _laptop) then {
    deleteVehicle _laptop;
    sleep 0.001;
  };

  private _phone = missionNamespace getVariable ["mission_base_phone", objNull];
  if !(isNull _phone) then {
    deleteVehicle _phone;
    sleep 0.001;
  };

  private _screen = missionNamespace getVariable ["mission_base_screen", objNull];
  if !(isNull _screen) then {
    deleteVehicle _screen;
    sleep 0.001;
  };

  for "_i" from 1 to 46 do {
    private _obj = missionNamespace getVariable [format ["mission_baseobj_%1", _i], objNull];
    if !(isNull _obj) then {
      deleteVehicle _obj;
      sleep 0.001;
    };
  };

  for "_i" from 1 to 18 do {
    private _obj = missionNamespace getVariable [format ["mission_basesupobj_%1", _i], objNull];
    if !(isNull _obj) then {
      deleteVehicle _obj;
      sleep 0.001;
    };
  };

  {
    if !(isNull _x) then {
      deleteVehicle _x;
      sleep 0.001;
    };
  } forEach GVAR(baseExtraObjects);
};

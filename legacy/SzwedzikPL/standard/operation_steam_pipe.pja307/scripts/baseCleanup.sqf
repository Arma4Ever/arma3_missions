#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Cleans base of unnecessary objects (saves performance) & disables training features
 */

if (missionNamespace getVariable [QGVAR(cleanupEnabled), false]) exitWith {};
missionNamespace setVariable [QGVAR(cleanupEnabled), true, true];

0 spawn {
  // Delete popups
  for "_i" from 1 to 9 do {
    private _popup = missionNamespace getVariable [format ["mission_popup_t_%1", _i], objNull];
    if !(isNull _popup) then {
      deleteVehicle _popup;
      sleep 0.001;
    };
  };
  for "_i" from 1 to 3 do {
    private _popup = missionNamespace getVariable [format ["mission_popup_c_%1", _i], objNull];
    if !(isNull _popup) then {
      deleteVehicle _popup;
      sleep 0.001;
    };
  };

  // Delete mannequins
  for "_i" from 1 to 6 do {
    private _man = missionNamespace getVariable [format ["mission_mannequin_%1", _i], objNull];
    if !(isNull _man) then {
      deleteVehicle _man;
      sleep 0.001;
    };
  };

  // Delete shooting range objects
  for "_i" from 1 to 4 do {
    private _obj = missionNamespace getVariable [format ["mission_shootrange_obj_%1", _i], objNull];
    if !(isNull _obj) then {
      deleteVehicle _obj;
      sleep 0.001;
    };
  };

  // Delete killhouse screens
  deleteVehicle (missionNamespace getVariable ["mission_kh_startpanel", objNull]);
  sleep 0.001;
  deleteVehicle (missionNamespace getVariable ["mission_kh_endpanel", objNull]);
  sleep 0.001;
  for "_i" from 0 to 5 do {
    private _obj = missionNamespace getVariable [format ["mission_kh_t_%1", _i], objNull];
    if !(isNull _obj) then {
      deleteVehicle _obj;
      sleep 0.001;
    };
  };
  for "_i" from 0 to 3 do {
    private _obj = missionNamespace getVariable [format ["mission_kh_k_%1", _i], objNull];
    if !(isNull _obj) then {
      deleteVehicle _obj;
      sleep 0.001;
    };
  };
  for "_i" from 0 to 3 do {
    private _obj = missionNamespace getVariable [format ["mission_kh_r_%1", _i], objNull];
    if !(isNull _obj) then {
      deleteVehicle _obj;
      sleep 0.001;
    };
  };

  // Close killhouse door
  (missionNamespace getVariable ["mission_kh_door", objNull]) setDamage 0;
  sleep 0.001;

  // Delete extra simple objects
  {
    deleteVehicle _x;
    sleep 0.001;
  } forEach GVAR(baseExtraObjects);

  // Delete extra simple objects (again)
  {
    deleteVehicle _x;
    sleep 0.001;
  } forEach GVAR(baseExtraObjects);

  // Release memory
  GVAR(baseExtraObjects) = [];
};

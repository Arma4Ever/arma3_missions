#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Starts killhouse
 */

if (
  !(isServer) ||
  {missionNamespace getVariable [QGVAR(cleanupEnabled), false]} ||
  {missionNamespace getVariable [QGVAR(khActive), false]}
) exitWith {};

missionNamespace setVariable [QGVAR(khActive), true, true];

0 spawn {
  private _startPanel = missionNamespace getVariable ["mission_kh_startpanel", objNull];
  _startPanel setObjectTextureGlobal [0, "data\killhouse\prep_training.paa"];
  (missionNamespace getVariable ["mission_kh_door", objNull]) setDamage 0;
  sleep 0.5;
  for "_i" from 0 to 5 do {
    private _obj = missionNamespace getVariable [format ["mission_kh_t_%1", _i], objNull];
    if !(isNull _obj) then {
      _obj setObjectTextureGlobal [0, "data\killhouse\r_awaiting.paa"];
      sleep 0.001;
    };
  };
  for "_i" from 0 to 3 do {
    private _obj = missionNamespace getVariable [format ["mission_kh_k_%1", _i], objNull];
    if !(isNull _obj) then {
      _obj setObjectTextureGlobal [0, "data\killhouse\r_awaiting.paa"];
      sleep 0.001;
    };
  };
  for "_i" from 0 to 3 do {
    private _obj = missionNamespace getVariable [format ["mission_kh_r_%1", _i], objNull];
    if !(isNull _obj) then {
      _obj setObjectTextureGlobal [0, "data\killhouse\r_awaiting.paa"];
      sleep 0.001;
    };
  };
  sleep 1;
  0 spawn FUNC(resetKillhouse);
  sleep 8;
  // Signal
  playSound3D ["a3\missions_f_beta\data\sounds\firing_drills\course_active.wss", _startPanel, false, getPosASL _startPanel, 5, 1, 90];
  // Go
  GVAR(khStartTime) = CBA_missionTime;
  missionNamespace setVariable [QGVAR(khStarted), true, true];
  (missionNamespace getVariable ["mission_kh_door", objNull]) setDamage 0.8;
  _startPanel setObjectTextureGlobal [0, "data\killhouse\ongoing_training.paa"];
  (missionNamespace getVariable ["mission_kh_endpanel", objNull]) setObjectTextureGlobal [1, "data\killhouse\end_training.paa"];
};

#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Sounds alarm
 */

if !(isServer) exitWith {};
if (missionNamespace getVariable [QGVAR(alarmSounded), false]) exitWith {};
missionNamespace setVariable [QGVAR(alarmSounded), true, true];

[QGVAR(zeusLog), "Alarm"] call CBA_fnc_globalEvent;

// Sound west alarm
0 spawn {
  playSound3D ["a3\sounds_f_orange\missionsfx\pastambiences\church\orange_memory_church_bells.wss", objNull, false, [830.668, 2574.98, 508.288], 1, 1, 2300];
  sleep 30;
  playSound3D ["a3\sounds_f_orange\missionsfx\pastambiences\church\orange_memory_church_bells.wss", objNull, false, [830.668, 2574.98, 508.288], 1, 1, 2300];
};

// Sound east alarm
0 spawn {
  sleep 5.45;
  playSound3D ["a3\sounds_f_orange\missionsfx\pastambiences\church\orange_memory_church_bells.wss", objNull, false, [3559.49, 3711.06, 499.134], 1, 1, 1600];
  sleep 30;
  playSound3D ["a3\sounds_f_orange\missionsfx\pastambiences\church\orange_memory_church_bells.wss", objNull, false, [3559.49, 3711.06, 499.134], 1, 1, 1600];
  sleep 40;
  missionNamespace setVariable [QGVAR(alarmSounded), false, true];
};

// Make all east groups aware
0 spawn {
  sleep 4;
  {
    if ((side _x) == east) then {
      [QGVAR(setAware), _x, [_x]] call CBA_fnc_targetEvent;
      sleep 0.001;
    };
  } forEach allGroups;
};

// SPAWN RESPONSE AIs (detection alarm)
if (
  (missionNamespace getVariable [QGVAR(depotOneDestroyed), false]) &&
  {(missionNamespace getVariable [QGVAR(depotTwoDestroyed), false])}
) then {
  [QGVAR(zeusLog), "alarm flag"] call CBA_fnc_globalEvent;
  [LOGIC_ALARM, true] call A3CS_fnc_setLogicFlagValue;
};

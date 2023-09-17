#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Called when someone checks T1 laptop
 */

if !(isServer) exitWith {};
if (missionNamespace getVariable [QGVAR(laptopT1Checked), false]) exitWith {};
missionNamespace setVariable [QGVAR(laptopT1Checked), true, true];

0 spawn {
  sleep 30;
  (missionNamespace getVariable ["mission_hqroom_scr_left", objNull]) setObjectTextureGlobal [0, "data\screens\hq_extra_task_whitney.paa"];
  sleep 1;
  [QGVAR(zeusLog), "HQMsg LaptopT1"] call CBA_fnc_globalEvent;
  [QGVAR(HQHint), LSTRING(HQMsg_LaptopT1_Checked)] call CBA_fnc_globalEvent;
};

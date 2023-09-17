#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Called when someone checks T2 laptop
 */

if !(isServer) exitWith {};
if (missionNamespace getVariable [QGVAR(laptopT2Checked), false]) exitWith {};
missionNamespace setVariable [QGVAR(laptopT2Checked), true, true];

0 spawn {
  sleep 120;
  (missionNamespace getVariable ["mission_hqroom_scr_right", objNull]) setObjectTextureGlobal [0, "data\screens\hq_extra_task_yellowstone.paa"];
  sleep 1;
  [QGVAR(zeusLog), "HQMsg LaptopT2"] call CBA_fnc_globalEvent;
  [QGVAR(HQHint), LSTRING(HQMsg_LaptopT2_Checked)] call CBA_fnc_globalEvent;
};

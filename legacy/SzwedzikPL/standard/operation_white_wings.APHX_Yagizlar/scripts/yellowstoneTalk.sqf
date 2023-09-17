#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Starts exfil
 */

if (missionNamespace getVariable [QGVAR(yellowstoneTalk), false]) exitWith {};
missionNamespace setVariable [QGVAR(yellowstoneTalk), true];

private _yellowstone = missionNamespace getVariable ["mission_unit_yellowstone", objNull];
if !(alive _yellowstone) exitWith {};

_yellowstone say3D QGVAR(yellowstone_talk);
if ((player distance _yellowstone) < 15) then {
  private _t = diag_tickTime;

  waitUntil {diag_tickTime >= (_t + 1.1)};
  [["Yellowstone", "Wyrzutnie...", 0]] spawn BIS_fnc_EXP_camp_playSubtitles;
  waitUntil {diag_tickTime >= (_t + 3.1)};
  [["Yellowstone", "Komputer...", 0]] spawn BIS_fnc_EXP_camp_playSubtitles;
  waitUntil {diag_tickTime >= (_t + 5.5)};
  [["Yellowstone", LLSTRING(Talk_Password), 0]] spawn BIS_fnc_EXP_camp_playSubtitles;
  waitUntil {diag_tickTime >= (_t + 8.4)};
  [["Yellowstone", "Miejsce...", 0]] spawn BIS_fnc_EXP_camp_playSubtitles;
  waitUntil {diag_tickTime >= (_t + 11.1)};
  [["Yellowstone", "Rok...", 0]] spawn BIS_fnc_EXP_camp_playSubtitles;
  waitUntil {diag_tickTime >= (_t + 14.3)};
  [["Yellowstone", "Urodzi...", 0]] spawn BIS_fnc_EXP_camp_playSubtitles;
};

#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Cave ambush 1
 */

if (missionNamespace getVariable [QGVAR(caveAmbush1), false]) exitWith {};
missionNamespace setVariable [QGVAR(caveAmbush1), true, true];

[QGVAR(zeusLog), "cave ambush 1"] call CBA_fnc_globalEvent;

0 spawn {
  deleteVehicle (missionNamespace getVariable ["mission_main_ambush_tr_1", objNull]);
  playSound3D [getMissionPath "data\sounds\light_switch.ogg", objNull, false, [142.484, 97.8878, 520.258], 5, 1, 150];

  sleep 0.2;

  for "_i" from 1 to 9 do {
    private _lamp = missionNamespace getVariable [format ["mission_cave_amb1_lamp_%1", _i], objNull];
    _lamp enableSimulationGlobal true;
  };

  private _ambGroup = missionNamespace getVariable ["mission_cave_amb1_grp", grpNull];
  if !(isNull _ambGroup) then {
    [QGVAR(standUpGroup), _ambGroup] call CBA_fnc_globalEvent;
  };
};

#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Cave ambush 2
 */

if (missionNamespace getVariable [QGVAR(caveAmbush2), false]) exitWith {};
missionNamespace setVariable [QGVAR(caveAmbush2), true, true];

[QGVAR(zeusLog), "cave ambush 2"] call CBA_fnc_globalEvent;

0 spawn {
  deleteVehicle (missionNamespace getVariable ["mission_main_ambush_tr_2", objNull]);
  playSound3D [getMissionPath "data\sounds\light_switch.ogg", objNull, false, [128.597, 189.594, 524.648], 5, 1, 150];

  sleep 0.2;

  for "_i" from 1 to 15 do {
    private _lamp = missionNamespace getVariable [format ["mission_cave_amb2_lamp_%1", _i], objNull];
    _lamp enableSimulationGlobal true;
  };

  private _ambGroup = missionNamespace getVariable ["mission_cave_amb2_grp", grpNull];
  if !(isNull _ambGroup) then {
    [QGVAR(standUpGroup), _ambGroup] call CBA_fnc_globalEvent;
  };
};

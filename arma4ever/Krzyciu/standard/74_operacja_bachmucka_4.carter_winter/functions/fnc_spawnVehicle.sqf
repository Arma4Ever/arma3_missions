#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Spawns vehicles
 */

params ["_type"];

private _vehicle = [[4738.22,6275.17,0], 0, _type, west] call BIS_fnc_spawnVehicle;
{_x enableDynamicSimulation false} forEach [_vehicle#0,_vehicle#2];
_vehicle#0 disableTIEquipment true;
_vehicle#0 disableNVGEquipment true;
{
  _x addCuratorEditableObjects [[_vehicle#0], true];
} forEach allCurators;

if (_type isEqualTo "A4ES_Kamikaze_Drone_B") then {
  missionNamespace setVariable [QGVAR(kamikazeAvailable), false, true];
  [{missionNamespace setVariable [QGVAR(kamikazeAvailable), true, true]}, [], 2700] call CBA_fnc_waitAndExecute
} else {
  missionNamespace setVariable [QGVAR(grenadeAvailable), false, true];
  [{missionNamespace setVariable [QGVAR(grenadeAvailable), true, true]}, [], 2100] call CBA_fnc_waitAndExecute
};
hint "Pobrano drona";
#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Checks is spawn safe for unit creation
 */

params [
  ["_logic", objNull, [objNull]],
  ["_distance", 0, [0]],
  ["_buildingVar", "", [""]]
];

if ((_distance > 0) && {
  (_logic nearEntities ["B_recon_F", 100]) isNotEqualTo []
}) exitWith {false};

private _result = true;

if (_buildingVar != "") then {
  private _building = missionNamespace getVariable [_buildingVar, objNull];
  _result = (alive _building) && {
    !(_building getVariable ["mission_isDamaged", false])
  };
};

_result

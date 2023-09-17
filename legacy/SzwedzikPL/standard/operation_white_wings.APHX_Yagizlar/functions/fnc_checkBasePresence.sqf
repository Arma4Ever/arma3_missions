#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Checks if player is inside base
 */


if (GVAR(basePresencePFH) == -1) exitWith {};

private _alreadyInArea = ace_player getVariable [QGVAR(inBaseArea), false];
private _inArea = ace_player inArea [[4819.92, 4808.18, 0], 59, 59, 0, false];

if (_alreadyInArea == _inArea) exitWith {};

ace_player setVariable [QGVAR(inBaseArea), _inArea];

if (_inArea) then {
  if (is3DENPreview) then {systemChat "IN BASE";};

  ace_player setVariable [QGVAR(orgViewDistance), viewDistance];
  ace_player setVariable [QGVAR(orgObjectViewDistance), getObjectViewDistance];
  ace_player setVariable [QGVAR(orgTerrainGrid), getTerrainGrid];
  setViewDistance 200;
  setObjectViewDistance [100, 50];
  setTerrainGrid 50;
} else {
  if (is3DENPreview) then {systemChat "OUT BASE";};

  setViewDistance (ace_player getVariable [QGVAR(orgViewDistance), 1500]);
  setObjectViewDistance (ace_player getVariable [QGVAR(orgObjectViewDistance), [1500, 100]]);
  setTerrainGrid (ace_player getVariable [QGVAR(orgTerrainGrid), 25]);

  [GVAR(basePresencePFH)] call CBA_fnc_removePerFrameHandler;
  GVAR(basePresencePFH) = -1;
};

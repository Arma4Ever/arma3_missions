#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Checks if player is inside cave
 */

private _alreadyInArea = ace_player getVariable [QGVAR(inCaveArea), false];
private _inArea = ace_player inArea [[121.295, 101.245, 0], 160, 160, 0, false];

if (_alreadyInArea == _inArea) exitWith {};

ace_player setVariable [QGVAR(inCaveArea), _inArea];

if (_inArea) then {
  if (is3DENPreview) then {systemChat "IN CAVE";};

  ace_player setVariable [QGVAR(orgViewDistance), viewDistance];
  ace_player setVariable [QGVAR(orgObjectViewDistance), getObjectViewDistance];
  ace_player setVariable [QGVAR(orgTerrainGrid), getTerrainGrid];

  setViewDistance 200;
  setObjectViewDistance [90, 40];
  setTerrainGrid 50;
  enableEnvironment [false, false];
  setViewDistance 200;
  ace_player setVariable ["tf_receivingDistanceMultiplicator", 2.7];
  ace_player setVariable ["tf_sendingDistanceMultiplicator", 0.3];
} else {
  if (is3DENPreview) then {systemChat "OUT CAVE";};

  setViewDistance (ace_player getVariable [QGVAR(orgViewDistance), 1500]);
  setObjectViewDistance (ace_player getVariable [QGVAR(orgObjectViewDistance), [1500, 100]]);
  setTerrainGrid (ace_player getVariable [QGVAR(orgTerrainGrid), 25]);
  enableEnvironment [false, true];
  setViewDistance (ace_player getVariable [QGVAR(orgViewDistance), 1500]);
  ace_player setVariable ["tf_receivingDistanceMultiplicator", 1];
  ace_player setVariable ["tf_sendingDistanceMultiplicator", 1];
};

0 spawn {
  sleep 1;
  0 cutText ["", "PLAIN", -1];
  0 cutFadeOut 1;
};

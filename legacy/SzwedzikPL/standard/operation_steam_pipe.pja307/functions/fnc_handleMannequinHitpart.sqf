#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Handler for mannequins hitpart event
 */

(_this select 0) params ["_target", "_shooter", "", "", "", "_selection"];
if (
  _shooter isNotEqualTo ace_player ||
  {GVAR(blockHitpart)} ||
  {_selection isEqualTo []}
) exitWith {};

private _selectionName = _selection # 0;

GVAR(blockHitpart) = true;
[{GVAR(blockHitpart) = false;}, 0] call CBA_fnc_execNextFrame;

private _index = _selectionName call {
  // Left arm
  if (_this in ["leftarm", "leftshoulder", "leftarmroll", "leftforearm", "leftforearmroll", "hit_lefthand"]) exitWith {0};
  // Right arm
  if (_this in ["rightarm", "rightshoulder", "rightarmroll", "rightforearm", "rightforearmroll", "hit_righthand"]) exitWith {1};
  // Chest
  if (_this in ["pelvis", "spine", "spine1", "spine2", "spine3"]) exitWith {2};
  // Head
  if (_this in ["neck", "head"]) exitWith {3};
  // Left leg
  if (_this in ["leftleg", "leftlegroll", "leftupleg", "leftuplegroll", "leftfoot", "lefttoebase"]) exitWith {4};
  // Right leg
  if (_this in ["rightleg", "rightlegroll", "rightupleg", "rightuplegroll", "rightfoot", "righttoebase"]) exitWith {5};
  -1
};

if (_index isEqualTo -1) exitWith {};

[_target, _index] spawn {
  params ["_target", "_index"];
  _target setObjectTextureGlobal [_index, "#(rgb,8,8,3)color(1,0,0,1)"];
  sleep 1;
  _target setObjectTextureGlobal [_index, "#(rgb,8,8,3)color(0,0,0,1)"];
};

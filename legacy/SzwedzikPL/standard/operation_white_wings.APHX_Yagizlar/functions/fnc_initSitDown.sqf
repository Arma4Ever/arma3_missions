#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Checks if player is inside cave
 */

params ["_unit"];

if !(local _unit) exitWith {};

_unit setBehaviour "SAFE";
(group _unit) setBehaviour "SAFE";
doStop _unit;
_unit action ["sitDown", _unit];

_unit spawn {
  waitUntil {sleep 1;simulationEnabled _this};
  _this setBehaviour "SAFE";
  (group _this) setBehaviour "SAFE";
  doStop _this;
  if !("amovpsitmstpslowwrfldnon" in (animationState _this)) then {
    _this action ["sitDown", _this];
  };
  sleep 5;
  _this setBehaviour "SAFE";
  (group _this) setBehaviour "SAFE";
  if !("amovpsitmstpslowwrfldnon" in (animationState _this)) then {
    _this action ["sitDown", _this];
  };
};

#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Init for indestructible buildings (shops)
 */

_this spawn {
  params ["_building"];
  sleep 4;
  _building allowDamage true;
  _building setDamage 0.6;
  sleep 1;
  _building allowDamage true;
  private _maxIndex = (count ((getAllHitPointsDamage _building) param [2, []])) - 1;
  if (_maxIndex > 0) then {
    for "_i" from 5 to _maxIndex do {
      _building setHitIndex [_i, 1, false];
    };
  };
  sleep 4;
  _building allowDamage false;
};

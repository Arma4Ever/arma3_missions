#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Init for indestructible buildings
 */
params ["_building"];

_building addEventHandler ["HandleDamage", {
  params ["", "_selection", "_damage"];
  if (
    (_selection isEqualTo "") &&
    {_damage > 0.9}
  ) then {
    _damage = 0.9;
  };
  _damage
}];

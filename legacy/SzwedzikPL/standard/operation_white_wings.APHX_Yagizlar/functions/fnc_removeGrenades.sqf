#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Removes all grenades from AI unit
 */

params ["_unit"];

{
  if ("HandGrenade" in _x) then {
    _unit removeItem _x;
  };
} forEach (itemsWithMagazines _unit);

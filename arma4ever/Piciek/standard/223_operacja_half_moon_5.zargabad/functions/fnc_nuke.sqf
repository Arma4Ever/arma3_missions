#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Exec nuke script globally
 */

["zen_modules_moduleNuke", [
  [4240.59,4158.18,17.969], //ASL bomb position,
  4000,
  0,
  true
]] call CBA_fnc_globalEvent;

[QGVAR(nukeExploded), 0] call CBA_fnc_globalEvent;
#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Plays background ambient
 */

if !(hasInterface) exitWith {};

0 spawn {
  while {alive player} do {
    private _sound = playSound QGVAR(ambience);
    waitUntil {isNull _sound};
  };
};

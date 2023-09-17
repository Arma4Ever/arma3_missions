#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Starts day counter
 */

if !(isServer) exitWith {};

private _date = date;
_date resize 3;

GVAR(dayNumber) = 1;
GVAR(dayNumberDate) = _date;
GVAR(confirmedKills) = 0;

[QGVAR(dayCount), [GVAR(dayNumber), GVAR(confirmedKills)]] call CBA_fnc_globalEvent;

private _handle = [{
  private _date = date;
  _date resize 3;

  if (_date isNotEqualTo GVAR(dayNumberDate)) then {
    GVAR(dayNumberDate) = _date;
    GVAR(dayNumber) = GVAR(dayNumber) + 1;
    [QGVAR(dayCount), [GVAR(dayNumber), GVAR(confirmedKills)]] call CBA_fnc_globalEvent;
  };
}, 60, []] call CBA_fnc_addPerFrameHandler;

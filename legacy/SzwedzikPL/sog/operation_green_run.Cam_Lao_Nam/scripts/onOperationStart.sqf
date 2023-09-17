#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Handler for start op event
 */

if !(isServer) exitWith {};

if (missionNamespace getVariable [QGVAR(op_started), false]) exitWith {};
missionNamespace setVariable [QGVAR(op_started), true, true];

// Init day counter
private _date = date;
_date resize 3;

GVAR(dayNumber) = 1;
GVAR(dayNumberDate) = _date;

// Show first counter
[QGVAR(dayCount), [GVAR(dayNumber), GVAR(confirmedKills)]] call CBA_fnc_globalEvent;

// Setup date updates
private _handle = [{
  private _date = date;
  _date resize 3;

  if (_date isNotEqualTo GVAR(dayNumberDate)) then {
    GVAR(dayNumberDate) = _date;
    GVAR(dayNumber) = GVAR(dayNumber) + 1;
    [QGVAR(dayCount), [GVAR(dayNumber), GVAR(confirmedKills)]] call CBA_fnc_globalEvent;
  };
}, 60, []] call CBA_fnc_addPerFrameHandler;

0 spawn {
  sleep 2;
  // Start music
  [QGVAR(playStartMusic), 0] call CBA_fnc_globalEvent;
};

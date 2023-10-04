#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Starts counting days & kills
 */

if !(isServer) exitWith {};

private _date = date;
_date resize 3;

GVAR(dayNumber) = 1;
GVAR(dayNumberDate) = _date;
GVAR(confirmedKills) = 0;

[QGVAR(dayCount), [GVAR(dayNumber), GVAR(confirmedKills)]] call CBA_fnc_globalEvent;

if ((dayTime > 5.5) && (dayTime < 19)) then {
  if (timeMultiplier isNotEqualTo GVAR(timeMultiplierDay)) then {
    setTimeMultiplier GVAR(timeMultiplierDay);
  };
} else {
  if (timeMultiplier isNotEqualTo GVAR(timeMultiplierNight)) then {
    setTimeMultiplier GVAR(timeMultiplierNight);
  };
};

private _handle = [{
  private _date = date;
  _date resize 3;

  if (_date isNotEqualTo GVAR(dayNumberDate)) then {
    GVAR(dayNumberDate) = _date;
    GVAR(dayNumber) = GVAR(dayNumber) + 1;
  };

  if ((dayTime > 5.5) && (dayTime < 19)) then {
    if (timeMultiplier isNotEqualTo GVAR(timeMultiplierDay)) then {
      setTimeMultiplier GVAR(timeMultiplierDay);
      [QGVAR(dayCount), [GVAR(dayNumber), GVAR(confirmedKills)]] call CBA_fnc_globalEvent;
    };
  } else {
    if (timeMultiplier isNotEqualTo GVAR(timeMultiplierNight)) then {
      setTimeMultiplier GVAR(timeMultiplierNight);
      [QGVAR(dayCount), [GVAR(dayNumber), GVAR(confirmedKills)]] call CBA_fnc_globalEvent;
    };
  };
}, 60, []] call CBA_fnc_addPerFrameHandler;

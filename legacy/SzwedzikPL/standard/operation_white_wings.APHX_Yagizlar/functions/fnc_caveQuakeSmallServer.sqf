#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Small quake server fnc
 */

[QGVAR(smallQuake), 0] call CBA_fnc_globalEvent;

{
  sleep 2;
  private _id = ceil (random 13);
  if (_id < 10) then {_id = "0" + (str _id);};
  playSound3D [format ["a3\sounds_f_exp\environment\sfx\rock_debris\rock_debris_%1.wss", _id], objNull, false, _x, 5, 1, 200];
} forEach _this;

#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Adds interactions for combat
 */

for "_i" from 1 to 7 do {
  private _flag = missionNamespace getVariable [format ["mission_flag_%1", _i], objNull];
  if (isNull _flag) then {continue;};

  private _marker = format ["mission_flag_marker_%1", _i];
  _flag setVariable [QGVAR(flagMarker), _marker];

  [
    _flag,
    0,
    [],
    [QGVAR(takeFlag), LLSTRING(Action_TakeFlag), "vn\objects_f_vietnam\flags\data\vn_flag_01_usa_co.paa", {
      params ["_target"];
      [
        5,
        _target,
        {
          params ["_target"];
          [QGVAR(flagTaken), [_target, _target getVariable QGVAR(flagMarker)]] call CBA_fnc_serverEvent;
          [LLSTRING(Action_FlagTaken)] call ace_common_fnc_displayTextStructured;
        },
        {
          params ["_target"];
          !(_target getVariable [QGVAR(flagTaken), false])
        },
        LLSTRING(Action_TakingFlag)
      ] call ace_common_fnc_progressBar;
    }, {
      !(_target getVariable [QGVAR(flagTaken), false])
    }, {}, [], [0.0327148, -0.385742, -2.37772], 3] call ace_interact_menu_fnc_createAction
  ] call ace_interact_menu_fnc_addActionToObject;
};

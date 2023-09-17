#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Adds combat actions
 */

private _powerSwitch = missionNamespace getVariable ["mission_powerswitch", objNull];
if !(isNull _powerSwitch) then {
  [
    _powerSwitch,
    0,
    [],
    [QGVAR(switchPower), LLSTRING(Action_SwitchPower), "", {
      [5, [], {
        private _powerSwitch = missionNamespace getVariable ["mission_powerswitch", objNull];
        if !(isNull _powerSwitch) then {
          deleteVehicle (_powerSwitch getVariable [QGVAR(sound), objNull]);
          deleteVehicle _powerSwitch;
          [QGVAR(powerDown), 0] call CBA_fnc_globalEventJIP;
        };
      }, {}, LLSTRING(Action_SwitchPower_Progress)] call ace_common_fnc_progressBar;
    }, {true}, {}, [], [0,0,0], 2.5] call ace_interact_menu_fnc_createAction
  ] call ace_interact_menu_fnc_addActionToObject;
};

private _brooks = missionNamespace getVariable ["mission_brooks", objNull];
if !(isNull _brooks) then {
  [
    _brooks,
    0,
    ["ACE_MainActions"],
    [QGVAR(confirmId), LLSTRING(Action_ConfirmID), "", {
      params ["_brooks"];
      [5, _brooks, {
        params ["_brooks"];
        removeGoggles _brooks;
        _brooks setVariable [QGVAR(idConfirmed), true, true];

        if (alive _brooks) then {
          hint parseText LLSTRING(Action_ConfirmID_SuccessAlive);
          0 spawn {
            sleep 3;
            [QGVAR(brooksWhine), 0] call CBA_fnc_globalEvent;
          };
        } else {
          hint parseText LLSTRING(Action_ConfirmID_Success);
        };
      }, {}, LLSTRING(Action_ConfirmID_Progress)] call ace_common_fnc_progressBar;
    }, {
      !(_target getVariable [QGVAR(idConfirmed), false])
    }, {}, [], [0,0,0], 4] call ace_interact_menu_fnc_createAction
  ] call ace_interact_menu_fnc_addActionToObject;

  [
    _brooks,
    0,
    ["ACE_MainActions"],
    [QGVAR(scanBomb), LLSTRING(Action_ScanBomb), "", {
      params ["_brooks"];
      [26, _brooks, {
        hint parseText LLSTRING(Action_ScanBomb_Success);
        [QGVAR(firstBombScan), 0] call CBA_fnc_serverEvent;
        0 call FUNC(addBombManual);
        player setVariable [QGVAR(bombScaned), true, true];
      }, {}, LLSTRING(Action_ScanBomb_Progress)] call ace_common_fnc_progressBar;
    }, {
      (_target getVariable [QGVAR(idConfirmed), false]) &&
      {(vest _target) isEqualTo "UMI_Bomb_Vest_Camo"} &&
      {!(player getVariable [QGVAR(bombScaned), false])}
    }, {}, [], [0,0,0], 4] call ace_interact_menu_fnc_createAction
  ] call ace_interact_menu_fnc_addActionToObject;

  [
    _brooks,
    0,
    ["ACE_MainActions"],
    [QGVAR(disarmVest), LLSTRING(Action_VestDisarm), "", {
      params ["_brooks"];
      [20, _brooks, {
        [QGVAR(vestDisarmed), player] call CBA_fnc_serverEvent;
      }, {}, LLSTRING(Action_VestDisarm_Progress)] call ace_common_fnc_progressBar;
    }, {
      ((vest _target) isEqualTo "UMI_Bomb_Vest_Camo") &&
      {player getVariable [QGVAR(bombScaned), false]}
    }, {}, [], [0,0,0], 4] call ace_interact_menu_fnc_createAction
  ] call ace_interact_menu_fnc_addActionToObject;
};

private _actionDistance = 2;
for "_i" from 1 to 16 do {
  private _sat = missionNamespace getVariable [format ["mission_satchel_%1", _i], objNull];
  if (!(isNull _sat)) then {
    [
      _sat,
      0,
      [],
      [QGVAR(prepDefuse), LLSTRING(Action_PrepDefuse), "", {
        params ["_satchel"];
        [16, _satchel, {
          params ["_satchel"];
          _satchel setVariable [QGVAR(satchelPreped), true, true];
          hint parseText LLSTRING(Action_PrepDefuse_Success);
        }, {}, LLSTRING(Action_PrepDefuse_Progress)] call ace_common_fnc_progressBar;
      }, {
        !(_target getVariable [QGVAR(satchelPreped), false])
      }, {}, [], [0,0,0], _actionDistance] call ace_interact_menu_fnc_createAction
    ] call ace_interact_menu_fnc_addActionToObject;

    [
      _sat,
      0,
      [],
      [QGVAR(prepBoard), LLSTRING(Action_PrepBoard), "", {
        params ["_satchel"];
        [5, _satchel, {
          params ["_satchel"];
          _satchel setVariable [QGVAR(boardPreped), true, true];
          hint parseText LLSTRING(Action_PrepBoard_Success);
        }, {}, LLSTRING(Action_PrepBoard_Progress)] call ace_common_fnc_progressBar;
      }, {
        (_target getVariable [QGVAR(satchelPreped), false]) &&
        {!(_target getVariable [QGVAR(boardPreped), false])}
      }, {}, [], [0,0,0], _actionDistance] call ace_interact_menu_fnc_createAction
    ] call ace_interact_menu_fnc_addActionToObject;

    [
      _sat,
      0,
      [],
      [QGVAR(disarmBoard), LLSTRING(Action_DisarmBoard), "", {
        params ["_satchel"];
        _satchel call FUNC(boardOpen);
      }, {
        (_target getVariable [QGVAR(boardPreped), false]) &&
        {!(_target getVariable [QGVAR(boardDisarmed), false])} &&
        {!(_target getVariable [QGVAR(boardFailed), false])}
      }, {}, [], [0,0,0], _actionDistance] call ace_interact_menu_fnc_createAction
    ] call ace_interact_menu_fnc_addActionToObject;

    [
      _sat,
      0,
      [],
      [QGVAR(disarmSatchel), LLSTRING(Action_DisarmSatchel), "", {
        params ["_satchel"];
        [24, _satchel, {
          params ["_satchel"];
          [QGVAR(satchelDisarmed), _satchel getVariable [QGVAR(satchelId), 0]] call CBA_fnc_serverEvent;
          {
            deleteVehicle _x;
          } forEach attachedObjects _satchel;
          deleteVehicle _satchel;
          hint parseText LLSTRING(Action_DisarmSatchel_Success);
        }, {}, LLSTRING(Action_DisarmSatchel_Progress)] call ace_common_fnc_progressBar;
      }, {
        (_target getVariable [QGVAR(boardDisarmed), false])
      }, {}, [], [0,0,0], _actionDistance] call ace_interact_menu_fnc_createAction
    ] call ace_interact_menu_fnc_addActionToObject;
  };
};

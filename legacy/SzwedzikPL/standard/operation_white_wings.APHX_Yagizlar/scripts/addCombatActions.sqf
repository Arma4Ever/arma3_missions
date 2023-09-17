#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Adds interactions for combat
 */

private _laptopT1 = missionNamespace getVariable ["mission_laptop_t1", objNull];
if !(isNull _laptopT1) then {
  [
    _laptopT1,
    0,
    [],
    [QGVAR(readMsg), LLSTRING(Action_Check), "", {
      0 spawn {
        [
          LLSTRING(Msg_LaptopT1_Text),
          LLSTRING(Msg_LaptopT1_Title),
          false,
          "OK",
          [] call BIS_fnc_displayMission,
          false,
          false
        ] spawn BIS_fnc_guiMessage;
        [QGVAR(laptopT1Checked), 0] call CBA_fnc_serverEvent;
      };
    }, {true}, {}, [], [0,0,0], 3] call ace_interact_menu_fnc_createAction
  ] call ace_interact_menu_fnc_addActionToObject;
};

private _laptopT2 = missionNamespace getVariable ["mission_laptop_t2", objNull];
if !(isNull _laptopT2) then {
  if !(missionNamespace getVariable [QGVAR(laptopT2Unlocked), false]) then {
    [
      _laptopT2,
      0,
      [],
      [QGVAR(passwordAction), LLSTRING(Action_TypePassword), "", {
        [
          LLSTRING(Action_TypePasswordInfo),
          LLSTRING(Action_PasswordLabel),
          LLSTRING(Action_PasswordLabel2),
          "Odszyfruj",
          QUOTE(0 spawn FUNC(checkLaptopPass))
        ] spawn FUNC(openInputDialog);
      }, {
        !(missionNamespace getVariable [QGVAR(laptopT2Unlocked), false])
      }, {}, [], [0,0,0], 3] call ace_interact_menu_fnc_createAction
    ] call ace_interact_menu_fnc_addActionToObject;
  };

  [
    _laptopT2,
    0,
    [],
    [QGVAR(baseAction), LLSTRING(Action_OpNotes), "", {}, {
      missionNamespace getVariable [QGVAR(laptopT2Unlocked), false]
    }, {}, [], [0,0,0], 3] call ace_interact_menu_fnc_createAction
  ] call ace_interact_menu_fnc_addActionToObject;
  [
    _laptopT2,
    0,
    [QGVAR(baseAction)],
    [QGVAR(note315), "#315", "", {
      0 spawn {
        [
          LLSTRING(Action_OpNote_315_Text),
          LLSTRING(Action_OpNote_315_Title),
          false,
          "OK",
          [] call BIS_fnc_displayMission,
          false,
          false
        ] spawn BIS_fnc_guiMessage;
      };
    }, {missionNamespace getVariable [QGVAR(laptopT2Unlocked), false]}, {}, [], [0,0,0], 3] call ace_interact_menu_fnc_createAction
  ] call ace_interact_menu_fnc_addActionToObject;
  [
    _laptopT2,
    0,
    [QGVAR(baseAction)],
    [QGVAR(note316), "#316", "", {
      0 spawn {
        [
          LLSTRING(Action_OpNote_316_Text),
          LLSTRING(Action_OpNote_316_Title),
          false,
          "OK",
          [] call BIS_fnc_displayMission,
          false,
          false
        ] spawn BIS_fnc_guiMessage;
      };
    }, {missionNamespace getVariable [QGVAR(laptopT2Unlocked), false]}, {}, [], [0,0,0], 3] call ace_interact_menu_fnc_createAction
  ] call ace_interact_menu_fnc_addActionToObject;
  [
    _laptopT2,
    0,
    [QGVAR(baseAction)],
    [QGVAR(note317), "#317", "", {
      0 spawn {
        [QGVAR(laptopT2Checked), 0] call CBA_fnc_serverEvent;
        [
          LLSTRING(Action_OpNote_317_Text),
          LLSTRING(Action_OpNote_317_Title),
          false,
          "OK",
          [] call BIS_fnc_displayMission,
          false,
          false
        ] spawn BIS_fnc_guiMessage;
      };
    }, {missionNamespace getVariable [QGVAR(laptopT2Unlocked), false]}, {}, [], [0,0,0], 3] call ace_interact_menu_fnc_createAction
  ] call ace_interact_menu_fnc_addActionToObject;
};

{
  if !(isNull _x) then {
    [
      _x,
      0,
      ["ACE_MainActions"],
      [QGVAR(checkID), LLSTRING(Action_CheckID), "", {
        _this spawn FUNC(checkUnitID);
      }, {true}, {}, [], [0,0,0], 3] call ace_interact_menu_fnc_createAction
    ] call ace_interact_menu_fnc_addActionToObject;
  };
} forEach [
  missionNamespace getVariable ["mission_unit_whitney", objNull],
  missionNamespace getVariable ["mission_unit_yellowstone", objNull]
];

private _caveEntrance = missionNamespace getVariable ["mission_cave_entrance", objNull];
if !(isNull _caveEntrance) then {
  [
    _caveEntrance,
    0,
    [],
    [QGVAR(baseAction), LLSTRING(Action_Enter), "", {"in" spawn FUNC(caveMove)}, {true}, {}, [], [0,0,0], 4] call ace_interact_menu_fnc_createAction
  ] call ace_interact_menu_fnc_addActionToObject;
};

private _caveExit = missionNamespace getVariable ["mission_cave_exit", objNull];
if !(isNull _caveExit) then {
  [
    _caveExit,
    0,
    [],
    [QGVAR(baseAction), LLSTRING(Action_Exit), "", {"out" spawn FUNC(caveMove)}, {true}, {}, [], [0,0,0], 4] call ace_interact_menu_fnc_createAction
  ] call ace_interact_menu_fnc_addActionToObject;
};

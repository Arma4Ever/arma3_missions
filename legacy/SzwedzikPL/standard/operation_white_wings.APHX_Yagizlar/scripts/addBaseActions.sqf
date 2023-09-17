#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Adds interactions for base
 */

private _baseLaptop = missionNamespace getVariable ["mission_base_laptop", objNull];
if !(isNull _baseLaptop) then {
  [
    _baseLaptop,
    0,
    [],
    [QGVAR(baseAction), "Slajdy", "", {}, {true}, {}, [], [0,0,0], 2] call ace_interact_menu_fnc_createAction
  ] call ace_interact_menu_fnc_addActionToObject;
  {
    _x params ["_title", "_texture"];
    [
      _baseLaptop,
      0,
      [QGVAR(baseAction)],
      [
        format [QGVAR(slide%1), _forEachIndex],
        format ["%1. %2", _forEachIndex + 1, _title],
        "",
        {
          (missionNamespace getVariable ["mission_base_screen", objNull]) setObjectTextureGlobal [0, _this # 2];
          (missionNamespace getVariable ["mission_base_laptop", objNull]) setObjectTextureGlobal [1, _this # 2];
        },
        {true}, {}, _texture, [0,0,0], 2
      ] call ace_interact_menu_fnc_createAction
    ] call ace_interact_menu_fnc_addActionToObject;
  } forEach [
    ["Zadania", "data\slides\slide_1.paa"],
    ["Javelin", "data\slides\slide_2.paa"],
    ["Plan", "data\slides\slide_3.paa"],
    ["Stealth", "data\slides\slide_4.paa"],
    ["Cywile", "data\slides\slide_5.paa"],
    ["Pytania - tlo plan", "data\slides\slide_3.paa"]
  ];
};

private _basePhone = missionNamespace getVariable ["mission_base_phone", objNull];
if !(isNull _basePhone) then {
  [
    _basePhone,
    0,
    [],
    [QGVAR(baseAction), LLSTRING(Action_StartOp), "", {
      0 spawn {
        missionNamespace setVariable ["mission_guiMessage_result", nil];
        [
          LLSTRING(Action_StartOp_Text),
          LLSTRING(Action_StartOp),
          LLSTRING(Action_StartOp_Confirm),
          true,
          [] call BIS_fnc_displayMission,
          false,
          false
        ] spawn FUNC(guiMessage);

        waituntil {
          !isNil {missionNamespace getVariable "mission_guiMessage_result"}
        };
        private _result = missionNamespace getVariable "mission_guiMessage_result";
        missionNamespace setVariable ["mission_guiMessage_result", nil];

        if (_result isEqualTo true) then {
          [QGVAR(initPlaneSequence), 0] call CBA_fnc_serverEvent;
        };
      };
    }, {
      (_player getVariable [QGVAR(isHQ), false]) &&
      {!(missionNamespace getVariable [QGVAR(planeSequenceStarted), false])}
    }, {}, [], [0,0,0], 2] call ace_interact_menu_fnc_createAction
  ] call ace_interact_menu_fnc_addActionToObject;
};

private _hqRoomPhone = missionNamespace getVariable ["mission_hqroom_phone", objNull];
if !(isNull _hqRoomPhone) then {
  [
    _hqRoomPhone,
    0,
    [],
    [QGVAR(baseAction), LLSTRING(Action_StartExfil), "", {
      0 spawn {
        missionNamespace setVariable ["mission_guiMessage_result", nil];
        [
          LLSTRING(Action_StartExfil_Text),
          LLSTRING(Action_StartExfil),
          LLSTRING(Action_StartExfil_Confirm),
          true,
          [] call BIS_fnc_displayMission,
          false,
          false
        ] spawn FUNC(guiMessage);

        waituntil {
          !isNil {missionNamespace getVariable "mission_guiMessage_result"}
        };
        private _result = missionNamespace getVariable "mission_guiMessage_result";
        missionNamespace setVariable ["mission_guiMessage_result", nil];

        if (_result isEqualTo true) then {
          hint parseText "<t size='1.4'>Ewakuacja wezwana</t>";
          [QGVAR(startExfil), 0] call CBA_fnc_serverEvent;
        };
      };
    }, {
      (_player getVariable [QGVAR(isHQ), false]) &&
      {!(missionNamespace getVariable [QGVAR(exfilStarted), false])}
    }, {}, [], [0,0,0], 2] call ace_interact_menu_fnc_createAction
  ] call ace_interact_menu_fnc_addActionToObject;
};

[
  "CFP_B_USSEALS_Rifleman_AOR1_DES_01",
  0,
  ["ACE_MainActions"],
  [QGVAR(checkGear), LLSTRING(Action_CheckGear), "",
    {_this call FUNC(checkGear)},
    {_player getVariable [QGVAR(inBaseArea), false]},
  {}, [], [0,0,0], 2] call ace_interact_menu_fnc_createAction
] call ace_interact_menu_fnc_addActionToClass;

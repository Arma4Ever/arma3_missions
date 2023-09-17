#include "script_component.hpp"

0 call (compileScript ["scripts\hideObjects.sqf"]);

// Make cargo boxes carryable & draggable
["vn_b_ammobox_02", "initPost", {
  params ["_box"];
  [_box, true, [0, 1, 1], 0, true] call ace_dragging_fnc_setCarryable;
  [_box, true, [0, 1.5, 0], 0, true] call ace_dragging_fnc_setDraggable;
}, true, [], true] call CBA_fnc_addClassEventHandler;

["vn_b_ammobox_15", "initPost", {
  params ["_box"];
  [_box, true, [0, 1, 1], 0, true] call ace_dragging_fnc_setCarryable;
  [_box, true, [0, 1.5, 0], 0, true] call ace_dragging_fnc_setDraggable;
}, true, [], true] call CBA_fnc_addClassEventHandler;

["ACE_medicalSupplyCrate_advanced", "initPost", {
  params ["_box"];
  [_box, true, [0, 1, 1], 0, true] call ace_dragging_fnc_setCarryable;
  [_box, true, [0, 1.5, 0], 0, true] call ace_dragging_fnc_setDraggable;
}, true, [], true] call CBA_fnc_addClassEventHandler;

0 spawn {
  // Disable dragging & carrying for vc supplies static wepaons
  {
    if (!(isNull _x)) then {
      _x setVariable ["ace_dragging_canDrag", false];
      _x setVariable ["ace_dragging_canCarry", false];

      _x addEventHandler ["Killed", {
        params ["_object"];
        [QGVAR(suppliesDestroyed), _object] call CBA_fnc_serverEvent;
      }];
    };
  } forEach [
    missionNamespace getVariable ["mission_officer_supplies", objNull],
    missionNamespace getVariable ["mission_vc_sup1_1", objNull],
    missionNamespace getVariable ["mission_vc_sup2_1", objNull],
    missionNamespace getVariable ["mission_vc_sup3_1", objNull]
  ];

  sleep 2;

  // Disable modules simulation
  {
    {
      _x enableSimulation false;
    } forEach (allMissionObjects _x);
    sleep 0.5;
  } forEach [
    "ModuleHideTerrainObjects_F",
    "ModuleEditTerrainObject_F"
  ];
};

if (hasInterface) then {
  // Briefing
  #include "briefing.hpp"

  // Intro
  ["CBA_loadingScreenDone", {
    if (didJIP) exitWith {};
    0 spawn FUNC(intro);
  }] call CBA_fnc_addEventHandler;

  // Disable helis music player
  0 spawn {
    sleep 1;
    missionNamespace setVariable ["vn_jukebox_enable", false];
  };

  0 call (compileScript ["scripts\addCuratorModules.sqf"]);
  0 call (compileScript ["scripts\addBaseActions.sqf"]);
  0 call (compileScript ["scripts\addCombatActions.sqf"]);
};

if (isServer) then {
  missionNamespace setVariable ["vn_jukebox_enable", false, true];

  // Disable fog
  0 setFog 0;
  999999 setFog 0;

  // Disable clouds & rain
  0 setOvercast 0;
  999999 setOvercast 0;

  0 spawn {
    sleep 1;
    (missionNamespace getVariable ["mission_officer_supplies", objNull]) enableWeaponDisassembly false;
    (missionNamespace getVariable ["mission_vc_sup1_1", objNull]) enableWeaponDisassembly false;
    (missionNamespace getVariable ["mission_vc_sup2_1", objNull]) enableWeaponDisassembly false;
    (missionNamespace getVariable ["mission_vc_sup3_1", objNull]) enableWeaponDisassembly false;

    waitUntil {missionNamespace getVariable [QGVAR(firstIntroEnded), false]};

    sleep 2;

    (missionNamespace getVariable ["mission_fm_radio", objNull]) setPosASL [15687.7,7268.03,15.7686];
    (missionNamespace getVariable ["mission_fm_radio", objNull]) setDir 186.638;

    sleep 2;

    setTimeMultiplier 2;
  };

  // Add NVG goggles to AI units
  ["CAManBase", "initPost", {
    _this spawn {
      params ["_unit"];
      sleep 3;
      if ((side (group _unit)) isEqualTo east) then {
        _unit linkItem "a3cs_ai_NVGoggles";
      };
    };
  }, true, [], true] call CBA_fnc_addClassEventHandler;

  // Count kills
  addMissionEventHandler ["EntityKilled", {
  	params ["_unit"];

    if !(_unit isKindOf "CAManBase") exitWith {};
    if ((side (group _unit)) isEqualTo east) then {
      GVAR(confirmedKills) = GVAR(confirmedKills) + 1;
    };
  }];

  // Create first task
  [
    [
      "task_01",
      "",
      0,
      "STR_Mission_Task_01_Title",
      "STR_Mission_Task_01_Desc",
      "search",
      [1589.26, 12558.9, 0],
      0
    ],
    true
  ] call a3cs_tasks_fnc_createTask;

  // Create body recovery task
  [
    [
      "task_bodies",
      "",
      0,
      "STR_Mission_Task_Bodies_Title",
      "STR_Mission_Task_Bodies_Desc",
      "meet",
      [],
      0
    ],
    true
  ] call a3cs_tasks_fnc_createTask;
};

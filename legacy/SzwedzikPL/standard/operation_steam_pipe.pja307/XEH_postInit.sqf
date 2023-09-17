#include "script_component.hpp"

missionNamespace setVariable ["noPop", true];
0 call (compileScript ["scripts\hideObjects.sqf"]);

0 spawn {
  sleep 1;
  0 call (compileScript ["scripts\initMannequins.sqf"]);

  private _brooks = missionNamespace getVariable ["mission_brooks", objNull];
  if (alive _brooks) then {
    _brooks addEventHandler ["Killed", {
      [QGVAR(brooksKilled), 0] call CBA_fnc_serverEvent;
    }];
  };
};

if (hasInterface) then {
  // Briefing
  #include "briefing.hpp"

  // Intro
  ["CBA_loadingScreenDone", {
    if (didJIP) exitWith {};
    0 spawn FUNC(intro);
  }] call CBA_fnc_addEventHandler;

  0 call (compileScript ["scripts\addCuratorModules.sqf"]);
  0 call (compileScript ["scripts\addBaseActions.sqf"]);
  0 call (compileScript ["scripts\addCombatActions.sqf"]);

  0 spawn {
    sleep 1;
    if (player getVariable [QGVAR(bombScaned), false]) then {
      0 call FUNC(addBombManual);
    };
  };

  0 spawn {
    sleep 3;
    if (
      ((side (group player)) isNotEqualTo west) ||
      {player getVariable [QGVAR(gogglesInited), false]}
    ) exitWith {};
    private _type = selectRandom [
      "",
      "CFP_Beard",
      "CUP_Beard_Black",
      "CUP_Beard_Brown",
      "CFP_Beard_Grey",
      "CFP_Beard_Red",
      "",
      "CUP_G_Grn_Scarf_Shades_GPS",
      "CUP_G_Tan_Scarf_Shades_GPS",
      "CUP_G_White_Scarf_Shades_GPS",
      "CUP_G_Grn_Scarf_Shades_GPS_Beard",
      "CUP_G_Tan_Scarf_Shades_GPS_Beard",
      "CUP_G_White_Scarf_Shades_GPS_Beard",
      "",
      "CFP_Neck_Plain_Atacs",
      "CFP_Neck_Plain_Atacs2",
      "CFP_Neck_Plain2",
      "CFP_Neck_Plain4",
      "CFP_Neck_Plain3",
      "",
      "CFP_Neck_Wrap_Atacs",
      "CFP_Neck_Wrap_Atacs2",
      "CFP_Neck_Wrap2",
      "CFP_Neck_Wrap4",
      "CFP_Neck_Wrap3",
      "CUP_G_Oakleys_Clr",
      "",
      "CFP_Scarfbeard_green",
      "CFP_Scarfbeard_grey",
      "CFP_Scarfbeard_tan",
      "CFP_Scarfbeard_white",
      "CFP_Scarfbeardshades_green",
      "CFP_Scarfbeardshades_grey",
      "CFP_Scarfbeardshades_tan",
      "CFP_Scarfbeardshades_white",
      "",
      "CUP_G_Grn_Scarf_Shades",
      "CFP_Scarfshades_grey",
      "CUP_G_Tan_Scarf_Shades",
      "CUP_G_White_Scarf_Shades",
      "CUP_G_Grn_Scarf_Shades_Beard",
      "CUP_G_Tan_Scarf_Shades_Beard",
      "CUP_G_White_Scarf_Shades_Beard",
      "",
      "CUP_FR_NeckScarf3",
      "CFP_Shemagh_Neck_Creme",
      "CUP_FR_NeckScarf",
      "CUP_FR_NeckScarf2",
      "CFP_Shemagh_Neck_M81",
      "CUP_FR_NeckScarf4",
      ""
    ];
    if (_type isNotEqualTo "") then {
      player linkItem _type;
    };
    player setVariable [QGVAR(gogglesInited), true, true];
  };
};


if (isServer) then {
  0 spawn {
    sleep 5;
    // Disable CUP lamps check
    CUP_stopLampCheck = true;
    sleep 10;
    // Disable CUP lamps check - make *really* sure
    CUP_stopLampCheck = true;
  };

  0 spawn {
    sleep 1;
    // Exit if dead or disarmed, dotonate if moved before disarmed
    [{
      params ["_brooks", "_handle"];
      if (
        !(alive _brooks) ||
        {(vest _brooks) isNotEqualTo "UMI_Bomb_Vest_Camo"}
      ) exitWith {
        [_handle] call CBA_fnc_removePerFramehandler;
      };

      if !(isNull (attachedTo _brooks)) then {
        [_handle] call CBA_fnc_removePerFramehandler;
        0 call (compileScript ["scripts\detonateTargetSite.sqf"]);
      };
    }, 1, missionNamespace getVariable ["mission_brooks", objNull]] call CBA_fnc_addPerFrameHandler;

    private _ids = [
      1,
      3,
      5,
      7,
      9,
      2,
      1,
      3,
      4,
      6,
      7,
      9,
      5,
      8,
      10,
      2
    ];
    for "_i" from 1 to 16 do {
      private _sat = missionNamespace getVariable [format ["mission_satchel_%1", _i], objNull];
      private _light = missionNamespace getVariable [format ["mission_satchel_light_%1", _i], objNull];
      if (!(isNull _sat) && !(isNull _light)) then {
        _light enableSimulationGlobal true;
        _sat enableSimulationGlobal true;
        _sat setVariable [QGVAR(satchelId), _i, true];
        _sat setVariable [QGVAR(boardId), _ids param [_i - 1, 1], true];
        sleep 0.15;
        _light attachTo [_sat, [-0.00292969,-0.00954056,0.0349023]];
        _light setVectorDirAndUp [[0,1,0],[-1,0,0]];
        sleep 0.15;
        _light setVectorDirAndUp [[0,1,0],[-1,0,0]];
        [_sat, _light] spawn {
          sleep 10;
          (_this # 0) enableSimulationGlobal false;
          sleep 0.1;
          (_this # 1) enableSimulationGlobal false;
        };
        sleep 0.15;
      };
    };
  };

  0 spawn {
    sleep 2;
    (missionNamespace getVariable ["mission_kh_startpanel", objNull]) setObjectTextureGlobal [0, "data\killhouse\start_training.paa"];
    (missionNamespace getVariable ["mission_kh_endpanel", objNull]) setObjectTextureGlobal [1, "data\killhouse\awaiting_training.paa"];
    sleep 0.001;
    for "_i" from 0 to 5 do {
      private _obj = missionNamespace getVariable [format ["mission_kh_t_%1", _i], objNull];
      if !(isNull _obj) then {
        _obj setObjectTextureGlobal [0, "data\killhouse\r_awaiting.paa"];
        sleep 0.001;
      };
    };
    for "_i" from 0 to 3 do {
      private _obj = missionNamespace getVariable [format ["mission_kh_k_%1", _i], objNull];
      if !(isNull _obj) then {
        _obj setObjectTextureGlobal [0, "data\killhouse\r_awaiting.paa"];
        sleep 0.001;
      };
    };
    for "_i" from 0 to 3 do {
      private _obj = missionNamespace getVariable [format ["mission_kh_r_%1", _i], objNull];
      if !(isNull _obj) then {
        _obj setObjectTextureGlobal [0, "data\killhouse\r_awaiting.paa"];
        sleep 0.001;
      };
    };
  };

  // Create first task
  [
    [
      "task_henry",
      "",
      0,
      "STR_Mission_Task_Henry_Title",
      "STR_Mission_Task_Henry_Desc",
      "search",
      [],
      0
    ],
    true
  ] call a3cs_tasks_fnc_createTask;

  // Create first task
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

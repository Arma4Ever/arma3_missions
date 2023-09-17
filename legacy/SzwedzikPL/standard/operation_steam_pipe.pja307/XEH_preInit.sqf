#include "script_component.hpp"

PREP(addBaseExtraObject);
PREP(addBoardManual);
PREP(addBombManual);
PREP(addTargetSiteObject);
PREP(addWoodenTankObject);
PREP(boardCut);
PREP(boardFail);
PREP(boardOpen);
PREP(endKillhouse);
PREP(handleMannequinHitpart);
PREP(intro);
PREP(resetKillhouse);
PREP(spawnVehicle);
PREP(startKillhouse);

GVAR(blockHitpart) = false;

if (is3DEN) then {
  0 call (compileScript ["scripts\hideObjects.sqf"]);
};

[QGVAR(serviceVehicles), {
  {
    if (isServer) then {
      _x setDamage 0;
    };
    _x setFuel 1;
    _x setVehicleAmmo 1;
  } forEach _this;
}] call CBA_fnc_addEventHandler;

[QGVAR(revealAll), {
  params ["_entity"];
  {
    _x reveal [_entity, 4];
  } forEach allGroups;
}] call CBA_fnc_addEventHandler;

[QGVAR(powerDown), {
  private _objects = nearestObjects [
    [11889.9, 8824.13, 0],
    ["house"],
    330,
    true,
    false
  ];
  {_x switchLight "OFF"} forEach _objects;
}] call CBA_fnc_addEventHandler;

["CUP_MQ9_Base", "initPost", {
  params ["_uav"];
  _uav setCollisionLight false;
  _uav disableAI "LIGHTS";
  {_x disableAI "LIGHTS";} forEach (crew _uav);
}, true, [], true] call CBA_fnc_addClassEventHandler;

// Replace HEAT rpgs with Frags
["CAManBase", "initPost", {
  params ["_unit"];

  if !(local _unit) exitWith {};

  _unit spawn {
    sleep 2;
    if ((secondaryWeapon _this) in ["CUP_launch_RPG7V", "CUP_launch_RPG7V_PGO7V2"]) then {
      private _mag = secondaryWeaponMagazine _this;
      if (_mag isNotEqualTo []) then {
        _this removeSecondaryWeaponItem (_mag # 0);
      };
      _this addSecondaryWeaponItem "CUP_OG7_M";
      for "_i" from 0 to 5 do {_this removeItem "CUP_PG7V_M"};
      for "_i" from 0 to 5 do {_this removeItem "CUP_PG7VL_M"};

      _this addMagazines ["CUP_OG7_M", 8];
    };
  };
}, true, [], true] call CBA_fnc_addClassEventHandler;

if (hasInterface) then {
  [QGVAR(brooksWhine), {
    private _brooks = missionNamespace getVariable ["mission_brooks", objNull];
    if (alive _brooks) then {
      _brooks say3D [QGVAR(brooks_whine), 20, 0.95, true];
    };
  }] call CBA_fnc_addEventHandler;

  [QGVAR(addBoardManual), {
    0 call FUNC(addBoardManual);
  }] call CBA_fnc_addEventHandler;

  [QGVAR(vestDisarmSuccess), {
    hint parseText LLSTRING(Action_VestDisarm_Success);
  }] call CBA_fnc_addEventHandler;

  [QGVAR(brooksWarning), {
    private _brooks = missionNamespace getVariable ["mission_brooks", objNull];
    if !(alive _brooks) exitWith {};

    if ((player distance _brooks) < 8) then {
      hint parseText LLSTRING(BrooksWarning);
    };
    0 spawn {
      sleep 2;
      private _brooks = missionNamespace getVariable ["mission_brooks", objNull];
      if !(alive _brooks) exitWith {};
      _brooks say3D [QGVAR(brooks_leave), 20, 0.95, true];
    };
  }] call CBA_fnc_addEventHandler;
};

if (isServer) then {
  GVAR(targetSiteObjects) = [];
  GVAR(baseExtraObjects) = [];
  GVAR(woodenTanksObjects) = [];
  GVAR(khStartTime) = -1;

  GVAR(expectedBoardId) = 1;
  GVAR(expectedSatchelId) = 1;

  [QGVAR(boardFailed), {
    0 call (compileScript ["scripts\detonateTargetSite.sqf"]);
  }] call CBA_fnc_addEventHandler;

  [QGVAR(henryTaskResult), {
    params ["_success"];
    [
      "task_henry",
      [3, 2] select _success,
      true
    ] call a3cs_tasks_fnc_setTaskState;
  }] call CBA_fnc_addEventHandler;

  [QGVAR(henryBodyTaskResult), {
    params ["_success"];
    [
      "task_henryBody",
      [3, 2] select _success,
      true
    ] call a3cs_tasks_fnc_setTaskState;
  }] call CBA_fnc_addEventHandler;

  [QGVAR(bodiesTaskResult), {
    params ["_success"];
    [
      "task_bodies",
      [3, 2] select _success,
      true
    ] call a3cs_tasks_fnc_setTaskState;
  }] call CBA_fnc_addEventHandler;

  [QGVAR(wrecksTaskResult), {
    params ["_success"];
    [
      "task_wrecks",
      [3, 2] select _success,
      true
    ] call a3cs_tasks_fnc_setTaskState;
  }] call CBA_fnc_addEventHandler;

  [QGVAR(addWrecksTask), {
    if !(missionNamespace getVariable [QGVAR(wrecksTaskAdded), false]) then {
      missionNamespace setVariable [QGVAR(wrecksTaskAdded), true, true];

      // Add destroy wrecks task
      [
        [
          "task_wrecks",
          "",
          0,
          "STR_Mission_Task_Wrecks_Title",
          "STR_Mission_Task_Wrecks_Desc",
          "destroy",
          [],
          0
        ],
        true
      ] call a3cs_tasks_fnc_createTask;
    };
  }] call CBA_fnc_addEventHandler;

  [QGVAR(enableNVG), {
    if !(missionNamespace getVariable [QGVAR(nvgEnabled), false]) then {
      missionNamespace setVariable [QGVAR(nvgEnabled), true, true];

      // Add NVG goggles to AI units
      ["CAManBase", "initPost", {
        _this spawn {
          params ["_unit"];
          sleep (2 + (random 2));
          if ((side (group _unit)) isEqualTo east) then {
            _unit linkItem "a3cs_ai_NVGoggles";
          };
        };
      }, true, [], true] call CBA_fnc_addClassEventHandler;
    };
  }] call CBA_fnc_addEventHandler;

  [QGVAR(cleanSite), {
    0 call (compileScript ["scripts\cleanTargetSite.sqf"]);
  }] call CBA_fnc_addEventHandler;

  [QGVAR(detonateSite), {
    0 call (compileScript ["scripts\detonateTargetSite.sqf"]);
  }] call CBA_fnc_addEventHandler;

  [QGVAR(detonateIEDs), {
    if !(missionNamespace getVariable [QGVAR(detonatingIEDs), false]) then {
      missionNamespace setVariable [QGVAR(detonatingIEDs), true, true];

      0 spawn {
        for "_i" from 1 to 30 do {
          private _ied = missionNamespace getVariable [format ["mission_ied_%1", _i], objNull];
          if !(isNull _ied) then {
            _ied setDamage 1;
            sleep 2;
          };
        };
      };
    };
  }] call CBA_fnc_addEventHandler;

  [QGVAR(disableDynSim), {
    params ["_object"];
    _object enableDynamicSimulation false;
  }] call CBA_fnc_addEventHandler;

  [QGVAR(boardDisarmed), {
    params ["_id"];

    // Disarmed board out of order - boom
    if (_id isNotEqualTo GVAR(expectedBoardId)) then {
      0 call (compileScript ["scripts\detonateTargetSite.sqf"]);
    } else {
      GVAR(expectedBoardId) = GVAR(expectedBoardId) + 1;
    };
  }] call CBA_fnc_addEventHandler;

  [QGVAR(satchelDisarmed), {
    params ["_id"];

    // Disarmed satchel out of order - boom
    if (_id isNotEqualTo GVAR(expectedSatchelId)) then {
      0 call (compileScript ["scripts\detonateTargetSite.sqf"]);
    } else {
      GVAR(expectedSatchelId) = GVAR(expectedSatchelId) + 1;
    };
  }] call CBA_fnc_addEventHandler;

  [QGVAR(vestDisarmed), {
    params ["_player"];

    private _brooks = missionNamespace getVariable ["mission_brooks", objNull];
    if (isNull _brooks) exitWith {};
    if ((vest _brooks) isNotEqualTo "UMI_Bomb_Vest_Camo") exitWith {};

    if (GVAR(expectedSatchelId) isEqualTo 17) then {
      removeVest _brooks;
      [QGVAR(vestDisarmSuccess), _player, _player] call CBA_fnc_targetEvent;
    } else {
      0 call (compileScript ["scripts\detonateTargetSite.sqf"]);
    };
  }] call CBA_fnc_addEventHandler;

  [QGVAR(firstBombScan), {
    if !(missionNamespace getVariable [QGVAR(bombAlreadyScaned), false]) then {
      missionNamespace setVariable [QGVAR(bombAlreadyScaned), true, true];
      [QGVAR(addBoardManual), 0] call CBA_fnc_globalEventJIP;
    };
  }] call CBA_fnc_addEventHandler;

  [QGVAR(brooksKilled), {
    if !(missionNamespace getVariable [QGVAR(brooksDead), false]) then {
      missionNamespace setVariable [QGVAR(brooksDead), true, true];

      private _brooks = missionNamespace getVariable ["mission_brooks", objNull];
      if (
        !(isNull _brooks) &&
        {(vest _brooks) isEqualTo "UMI_Bomb_Vest_Camo"}
      ) then {
        0 call (compileScript ["scripts\detonateTargetSite.sqf"]);
      };

      0 spawn {
        sleep 10;
        // Fail task
        [
          "task_henry",
          3,
          true
        ] call a3cs_tasks_fnc_setTaskState;
        sleep 5;
        // Add recover body task
        [
          [
            "task_henryBody",
            "",
            0,
            "STR_Mission_Task_HenryBody_Title",
            "STR_Mission_Task_HenryBody_Desc",
            "exit",
            [],
            0
          ],
          true
        ] call a3cs_tasks_fnc_createTask;
      };
    };
  }] call CBA_fnc_addEventHandler;

  [QGVAR(spawnVehicle), {
    _this call FUNC(spawnVehicle);
  }] call CBA_fnc_addEventHandler;

  [QGVAR(startKillhouse), {
    0 call FUNC(startKillhouse);
  }] call CBA_fnc_addEventHandler;

  [QGVAR(endKillhouse), {
    0 call FUNC(endKillhouse);
  }] call CBA_fnc_addEventHandler;

  [QGVAR(baseCleanup), {
    0 call (compileScript ["scripts\baseCleanup.sqf"]);
  }] call CBA_fnc_addEventHandler;

  [QGVAR(wtCleanup), {
    0 call (compileScript ["scripts\wtCleanup.sqf"]);
  }] call CBA_fnc_addEventHandler;
};

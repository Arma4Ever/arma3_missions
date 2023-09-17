#include "script_component.hpp"

0 call (compileScript ["scripts\hideObjects.sqf"]);

0 spawn {
  sleep 0.001;
  /* "Group" setDynamicSimulationDistance 1200;
  "Vehicle" setDynamicSimulationDistance 1500;
  "EmptyVehicle" setDynamicSimulationDistance 300;
  "Prop" setDynamicSimulationDistance 200; */

  if (isServer) then {
    waitUntil {
      sleep 0.25;
      private _status = missionNamespace getVariable ["a3cs_modules_3DENCompObjectsSpawn", [false, 0, 0, false]];
      _status # 3
    };
    sleep 5;
    enableDynamicSimulationSystem false;
    private _units = [];
    {
      private _grp = _x;
      {
        if !(simulationEnabled _x) then {
          _units pushBack _x;
          _x enableSimulationGlobal true;
        };
      } forEach (units _grp);
    } forEach allGroups;
    if (is3DENPreview) then {systemChat "DynSim disabled";};
    sleep 20;
    enableDynamicSimulationSystem true;
    {_x enableSimulationGlobal false} forEach _units;
    if (is3DENPreview) then {systemChat "DynSim enabled";};
  };
};

if (hasInterface) then {
  #include "briefing.hpp"

  ["CBA_loadingScreenDone", {
    if (didJIP) exitWith {};
    0 spawn (compileScript ["scripts\intro.sqf"]);
  }] call CBA_fnc_addEventHandler;

  0 call (compileScript ["scripts\addCuratorModules.sqf"]);
  0 call (compileScript ["scripts\addBaseActions.sqf"]);
  0 call (compileScript ["scripts\addCombatActions.sqf"]);
  0 call (compileScript ["scripts\initGoggles.sqf"]);

  0 spawn {
    sleep 1;
    if !(player getVariable [QGVAR(isHQ), false]) then {
      GVAR(basePresencePFH) = [{0 call FUNC(checkBasePresence);}, 5, 0] call CBA_fnc_addPerFrameHandler;
      0 call FUNC(checkBasePresence);
    };
  };

  0 spawn {
    sleep 1;
    [{0 call FUNC(checkCavePresence);}, 5, 0] call CBA_fnc_addPerFrameHandler;
    0 call FUNC(checkCavePresence);
  };
};

if (isServer) then {
  (missionNamespace getVariable ["mission_base_screen", objNull]) setObjectTextureGlobal [0, "data\slides\slide_0.paa"];
  (missionNamespace getVariable ["mission_base_laptop", objNull]) setObjectTextureGlobal [1, "data\slides\slide_0.paa"];

  // Play sounds for sounds preload - fixes bug when first playSound3D is not playing sometimes
  0 spawn {
    sleep 2;
    playSound3D ["a3\missions_f_beta\data\sounds\firing_drills\target_pop-down_large.wss", objNull, false, [0,0,500], 1, 1, 100];
    sleep 5;
    playSound3D ["a3\missions_f_beta\data\sounds\firing_drills\target_pop-down_small.wss", objNull, false, [0,0,500], 1, 1, 100];
    sleep 5;
    playSound3D [getMissionPath "data\sounds\ramp_open.ogg", objNull, false, [0,0,500], 1, 1, 100];
    sleep 5;
    playSound3D ["a3\sounds_f_orange\missionsfx\pastambiences\church\orange_memory_church_bells.wss", objNull, false, [0,0,500], 1, 1, 100];
  };

  0 spawn {
    sleep 0.001;

    waitUntil {
      sleep 0.5;
      missionNamespace getVariable [QGVAR(clientIntroEnded), false]
    };

    sleep 8;

    if (is3DENPreview) then {systemChat "Base ambient start";};

    private _sounds = [
      "battlefield_heli1.wss",
      "battlefield_jet1.wss",
      "battlefield_heli2.wss",
      "battlefield_jet2.wss",
      "battlefield_heli3.wss",
      "battlefield_jet3.wss"
    ];

    while {!(missionNamespace getVariable [QGVAR(planeSequenceStarted), false])} do {
      private _pos = [4824.762, 4806.877, 0] getPos [60, random 360];
      _pos set [2, 510 + (random 30)];

      playSound3D [
        "a3\sounds_f\environment\ambient\battlefield\" + (selectRandom _sounds),
        objNull,
        false,
        _pos,
        2 + (random 2),
        1,
        500
      ];
      sleep (5 + (random 25));
    };

    if (is3DENPreview) then {systemChat "Base ambient end";};
  };

  // Manage sim of put out fires
  0 spawn {
    sleep 5;
    GVAR(activeFires) = (nearestObjects [
      [worldSize / 2, worldSize / 2, 0],
      ["Land_Campfire_F", "plp_bo_BeachTorchA"],
      worldSize
    ]) select {!(dynamicSimulationEnabled _x)};
    [{
      if (is3DENPreview) then {systemChat "Fires check";};
      0 spawn {
        private _activeFires = GVAR(activeFires) - [objNull];
        private _fires = +_activeFires;
        {
          if !(inflamed _x) then {
            _x enableSimulationGlobal false;
            _activeFires deleteAt (_activeFires find _x);
          };
        } forEach _fires;

      };
    }, 60, 0] call CBA_fnc_addPerFrameHandler;
  };

  // Handle building damage & destruction
  addMissionEventHandler ["BuildingChanged", {
  	params ["_from", "_to"];

    // Mark buildings as damaged for safe spawn checks
    _from setVariable ["mission_isDamaged", true, true];
    _to setVariable ["mission_isDamaged", true, true];

    // Delete building props
    private _props = _from getVariable [QGVAR(props), []];
    if (is3DENPreview) then {systemChat str ["BuildingChanged", count _props];};

    {deleteVehicle _x} forEach _props;

    // Remove fire & smoke effects
    private _fire1 = _from getVariable ["mission_fire_1", objNull];
    if !(isNull _fire1) then {
      deleteVehicle _fire1;
      private _fire2 = _from getVariable ["mission_fire_2", objNull];
      if !(isNull _fire2) then {
        deleteVehicle _fire2;
      };
    };
  }];

  // Drone & car auto refueling
  [{
    [QGVAR(zeusLog), "Refuel"] call CBA_fnc_globalEvent;
    // Refuel drone (use allMissionObjects in case first drone was destroyed)
    {
      ["ace_common_setFuel", [_x, 1], [_x]] call CBA_fnc_targetEvent;
    } forEach (allMissionObjects "CUP_MQ9_Base");
    // Refuel all opfor cars on patrol
    {
      private _crew = crew _x;
      if (
        (_crew isNotEqualTo []) &&
        {(side (group (_crew # 0))) == east}
      ) then {
        ["ace_common_setFuel", [_x, 1], [_x]] call CBA_fnc_targetEvent;
      };
    } forEach (allMissionObjects "Car");
  }, 20*60, 0] call CBA_fnc_addPerFrameHandler;

  // Init exfil helis
  0 spawn {
    sleep 1;
    private _exfilHeli1 = missionNamespace getVariable ["mission_exfil_heli_1", objNull];
    private _exfilHeli2 = missionNamespace getVariable ["mission_exfil_heli_2", objNull];

    {
      private _heli = _x;
      _heli enableDynamicSimulation false;
      _heli enableSimulationGlobal false;
      _heli hideObjectGlobal true;

      private _group = group ((crew _heli) param [0, objNull]);
      _group enableDynamicSimulation false;

      {
        _x enableSimulationGlobal false;
      } forEach (crew _heli);

    } forEach [
      missionNamespace getVariable ["mission_exfil_heli_1", objNull],
      missionNamespace getVariable ["mission_exfil_heli_2", objNull]
    ];
  };
};

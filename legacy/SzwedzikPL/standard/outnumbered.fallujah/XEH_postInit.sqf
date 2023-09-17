#include "script_component.hpp"

if (hasInterface) then {
  // Briefing
  #include "briefing.hpp"

  // Intro
  ["CBA_loadingScreenDone", {
    if (didJIP) exitWith {
      0 call (compileScript ["scripts\playAmbient.sqf"]);
      0 call (compileScript ["scripts\enablePPEffects.sqf"]);
    };
    0 spawn FUNC(intro);
  }] call CBA_fnc_addEventHandler;

  0 call (compileScript ["scripts\addCuratorModules.sqf"]);

  // Check view distance
  0 spawn {
    sleep 0.1;
    0 call FUNC(checkViewDistance);
  };
  [{0 call FUNC(checkViewDistance);}, 5, 0] call CBA_fnc_addPerFrameHandler;

  // Remove aviator goggles, rest is ok
  0 spawn {
    sleep 2;
    if ((goggles player) isEqualTo "G_Aviator") then {
      removeGoggles player;
    };
  };
};

if (isServer) then {
  ["CAManBase", "initPost", {
    _this spawn {
      params ["_unit"];
      sleep (2 + (random 2));
      if ((side (group _unit)) isEqualTo east) then {
        _unit linkItem "a3cs_ai_NVGoggles";
      };
    };
  }, true, [], true] call CBA_fnc_addClassEventHandler;

  0 spawn (compileScript ["scripts\disableLights.sqf"]);

  0 spawn {
    sleep 3;
    0 spawn (compileScript ["scripts\createWrecks.sqf"]);
    0 spawn (compileScript ["scripts\simulateFires.sqf"]);
    0 spawn (compileScript ["scripts\simulateArtillery.sqf"]);
  };

  0 spawn {
    waitUntil {
      sleep 10;
      private _now = date;
      ((_now # 3) == 20) && {(_now # 4) >= 41}
    };

    mission_evac_stallion enableDynamicSimulation false;
    (group (driver mission_evac_stallion)) enableDynamicSimulation false;

    waitUntil {
      sleep 1;
      (mission_evac_stallion distance2D [4888.75, 5214.98, 0]) < 200
    };

    waitUntil {
      sleep 1;
      private _players = (playableUnits + switchableUnits) select {
        (alive _x) && {!(_x getVariable ["ACE_isUnconscious", false])}
      };
      private _validPlayers = count (_players inAreaArray [[4886.23, 5254.2, 0], 100, 100]);
      (count (crew mission_evac_stallion)) == (2 + (_validPlayers min 30))
    };

    missionNamespace setVariable ["fsf_evacEvac", true, true];
    missionNamespace setVariable ["fsf_shouldAttackPlayers", false, true];
    missionNamespace setVariable ["fsf_shouldFilterAttackers", false, true];
    missionNamespace setVariable ["fsf_checkFires", false, true];
    missionNamespace setVariable ["fsf_simArtillery", false, true];
  };
};

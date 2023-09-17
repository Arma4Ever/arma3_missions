#include "script_component.hpp"
/*
 * XEH_postInit.sqf
 * Poniższy kod wykona się po starcie misji, gdy wykonają się już pozostałe inity.
 * Dokumentacja: https://community.bistudio.com/wiki/Arma_3:_Functions_Library#Pre_and_Post_Init
 */

0 call (compileScript ["scripts\hideObjects.sqf"]);

if (hasInterface) then {
  // Briefing
  #include "briefing.hpp"

  // Intro
  ["CBA_loadingScreenDone", {
    if (didJIP) exitWith {};
    0 spawn FUNC(intro);
  }] call CBA_fnc_addEventHandler;
  0 call (compileScript ["scripts\addBaseActions.sqf"]);
};

// Kod wykonywany lokalnie u gracza, za każdym razem gdy dołączy do gry
if (hasInterface) then {
  [QGVAR(killCounterUpdated), false] call CBA_fnc_localEvent;
};

// Kod wykonywany wyłącznie na serwerze - wykonuje się tylko raz, na starcie misji
if (isServer) then {

  GVAR(killCounter) = createHashMap;

  addMissionEventHandler ["EntityKilled", {
    params ["_entity"];

    if !(_entity isKindOf "AllVehicles") exitWith {};

    private _counter = GVAR(killCounter);

    if (_entity isKindOf "CAManBase") exitWith {
      if ((side (group _entity)) isNotEqualTo east) exitWith {};
      _counter set ["Piechota", (_counter getOrDefault ["Piechota", 0]) + 1];
    };

    if !(
      (_entity isKindOf "Car") ||
      {_entity isKindOf "Tank"} ||
      {_entity isKindOf "Helicopter"} ||
      {_entity isKindOf "Plane"}
    ) exitWith {};

    private _config = configOf _entity;
    if ((getNumber (_config >> "side")) != 0) exitWith {};

    private _name = getText (_config >> "displayName");
    _counter set [_name, (_counter getOrDefault [_name, 0]) + 1];
  }];

  0 spawn {
    sleep (30 * 60);
    [{
      missionNamespace setVariable [QGVAR(killCounterData), +GVAR(killCounter), true];
      0 spawn {
        sleep 1;
        [QGVAR(killCounterUpdated), true] call CBA_fnc_globalEvent;
      };
    }, (30*60), []] call CBA_fnc_addPerFrameHandler;
  };

  0 spawn {
    sleep (15 * 60);
    [{
      ["mission_fnc_spawnHeliDrop", 0] call a4es_headless_fnc_execute;
    }, (15*60), []] call CBA_fnc_addPerFrameHandler;
  };
};

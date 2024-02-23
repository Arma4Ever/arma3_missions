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
  0 call (compileScript ["scripts\addCombatActions.sqf"]);
  0 call (compileScript ["scripts\addCuratorModules.sqf"]);
};

// Kod wykonywany wyłącznie na serwerze - wykonuje się tylko raz, na starcie misji
if (isServer) then {
  missionNamespace setVariable [QGVAR(defenderAISkill), 0.7, true];
};


#include "script_component.hpp"
/*
 * XEH_postInit.sqf
 * Poniższy kod wykona się po starcie misji, gdy wykonają się już pozostałe inity.
 * Dokumentacja: https://community.bistudio.com/wiki/Arma_3:_Functions_Library#Pre_and_Post_Init
 */

0 call (compileScript ["scripts\hideObjects.sqf"]);

0 spawn {
  sleep 0.1;
  ACE_maxWeightDrag = 999999;
  ACE_maxWeightCarry = 999999;
};

if (hasInterface) then {
  // Briefing
  #include "briefing.hpp"

  //Zmiana nazyw miasta
["san", "Panama"] spawn FUNC(changeCityName);


  // Intro
  ["CBA_loadingScreenDone", {
    if (didJIP) exitWith {};
    0 spawn FUNC(intro);
  }] call CBA_fnc_addEventHandler;

  0 call (compileScript ["scripts\addBaseActions.sqf"]);
  0 call (compileScript ["scripts\addCombatActions.sqf"]);
  0 call (compileScript ["scripts\addCuratorModules.sqf"]);

  ["B_MasereRMDF_AmmoBox", "initPost", {
    params ["_box"];
    [_box, true, [0,1,1], 0, true] call ace_dragging_fnc_setCarryable;
  }, false, [], false] call CBA_fnc_addClassEventHandler;
};

if (isServer) then {
  missionNamespace setVariable [QGVAR(defenderAISkill), 0.7, true];
};

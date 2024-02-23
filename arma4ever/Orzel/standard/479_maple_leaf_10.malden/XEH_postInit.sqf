#include "script_component.hpp"
/*
 * XEH_postInit.sqf
 * Poniższy kod wykona się po starcie misji, gdy wykonają się już pozostałe inity.
 * Dokumentacja: https://community.bistudio.com/wiki/Arma_3:_Functions_Library#Pre_and_Post_Init
 */

if (hasInterface) then {
  // Briefing
  #include "briefing.hpp"

  // Intro
  ["CBA_loadingScreenDone", {
    if (didJIP) exitWith {};
    0 spawn FUNC(intro);
  }] call CBA_fnc_addEventHandler;
};

// Kod wykonywany lokalnie u gracza, za każdym razem gdy dołączy do gry
if (hasInterface) then {
  call (compileScript ["scripts\addInteractions.sqf"]);
};


if (isServer) then {
  //Przezbrojenie dla TOWa
  ["Land_WoodenCrate_01_F", "initPost", {
    params ["_box"];
    _box setVariable [QGVAR(currentSupplyTow), 1, true];
  }, false, [], false] call CBA_fnc_addClassEventHandler;

  //Przezbrojenie dla Pojazdów
  ["rhs_7ya37_1_single", "initPost", {
    params ["_box"];
    _box setVariable [QGVAR(currentSupply), 1, true];
  }, false, [], false] call CBA_fnc_addClassEventHandler;
};
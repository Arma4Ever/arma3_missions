#include "script_component.hpp"
/*
 * XEH_postInit.sqf
 * Poniższy kod wykona się po starcie misji, gdy wykonają się już pozostałe inity.
 * Dokumentacja: https://community.bistudio.com/wiki/Arma_3:_Functions_Library#Pre_and_Post_Init
 */

0 call (compileScript ["scripts\hideObjects.sqf"]);

0 spawn {
  while {true} do {
    if (viewDistance > 700) then {
      setViewDistance 700;
    };
    sleep 5;
  };
};

if (hasInterface) then {
  // Briefing
  #include "briefing.hpp"

  0 call (compileScript ["scripts\addBaseActions.sqf"]);
  0 call (compileScript ["scripts\addCombatActions.sqf"]);

  //Zmiana nazyw miasta
["czerno", "Mariupol"] spawn FUNC(changeCityName);

  // Intro
  ["CBA_loadingScreenDone", {
    if (didJIP) exitWith {};
    0 spawn FUNC(intro);
  }] call CBA_fnc_addEventHandler;
};

// Kod wykonywany lokalnie u gracza, za każdym razem gdy dołączy do gry
if (hasInterface) then {

};

// Kod wykonywany wyłącznie na serwerze - wykonuje się tylko raz, na starcie misji
if (isServer) then {
  addMissionEventHandler ["EntityKilled", {
  	params ["_unit"];

    if !(_unit isKindOf "CAManBase") exitWith {};
    if ((side (group _unit)) isEqualTo east) then {
      GVAR(confirmedKills) = GVAR(confirmedKills) + 1;
    };
  }];

  0 spawn {
    sleep 200;
    0 call (compileScript ["scripts\initDayCounter.sqf"]);
  };
};

#include "script_component.hpp"
/*
 * XEH_postInit.sqf
 * Poniższy kod wykona się po starcie misji, gdy wykonają się już pozostałe inity.
 * Dokumentacja: https://community.bistudio.com/wiki/Arma_3:_Functions_Library#Pre_and_Post_Init
 */

0 setOvercast 0.55;
0 setFog 0;
0 setRain 0;
0 setLightnings 0;

999999 setOvercast 0.55;
999999 setFog 0;
999999 setRain 0;
999999 setLightnings 0;

0 call (compileScript ["scripts\hideObjects.sqf"]);

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
};

if (isServer) then {
  addMissionEventHandler ["EntityKilled", {
  	params ["_unit"];

    if !(_unit isKindOf "CAManBase") exitWith {};
    if ((side (group _unit)) isEqualTo east) then {
      GVAR(confirmedKills) = GVAR(confirmedKills) + 1;
    };
  }];

  0 spawn {
    sleep 120;
    0 call (compileScript ["scripts\initDayCounter.sqf"]);
  };

  ["vn_b_wheeled_m54_mg_01", "initPost", {
    _this call FUNC(initVehicle);
  }, false, [], true] call CBA_fnc_addClassEventHandler;

  ["vn_b_armor_m41_01_02", "initPost", {
    _this call FUNC(initVehicle);
  }, false, [], true] call CBA_fnc_addClassEventHandler;
};

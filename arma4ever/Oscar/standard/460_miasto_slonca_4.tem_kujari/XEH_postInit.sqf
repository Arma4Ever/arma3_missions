#include "script_component.hpp"
/*
 * XEH_postInit.sqf
 * Poniższy kod wykona się po starcie misji, gdy wykonają się już pozostałe inity.
 * Dokumentacja: https://community.bistudio.com/wiki/Arma_3:_Functions_Library#Pre_and_Post_Init
 */

// Set view distance on server and HC for AIs
if (isServer || !hasInterface) then {
  0 spawn {
    sleep 1;
    setViewDistance 1600;
    setObjectViewDistance 1600;
  };
};

// Init african faces on blufor players
if ((side (group player)) isEqualTo west) then {
  player spawn {
    params ["_unit"];
    sleep 3;
    if (player getVariable [QGVAR(faceInited), false]) exitWith {};
    player setVariable [QGVAR(faceInited), true, true];

    private _face = selectRandom [
      "AfricanHead_01",
      "AfricanHead_02",
      "AfricanHead_03",
      "TanoanHead_A3_01",
      "TanoanHead_A3_02",
      "TanoanHead_A3_03",
      "TanoanHead_A3_04",
      "TanoanHead_A3_05",
      "TanoanHead_A3_06",
      "TanoanHead_A3_07",
      "TanoanHead_A3_08"
    ];
    [_unit, _face] remoteExec ["setFace", 0, true];    
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

  // Lock view distance at max 1600
  0 spawn {
    while {true} do {
      if (viewDistance > 1600) then {
        setViewDistance 1600;
        setObjectViewDistance 1600;
      };

      sleep 1;
    };
  };
};
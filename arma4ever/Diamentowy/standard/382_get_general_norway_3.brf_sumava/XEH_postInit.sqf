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

  #include "\a3\ui_f\hpp\defineDIKCodes.inc"
  
  ["[Custom Artillery Computer]", QGVAR(openComputer), LLSTRING(Action_OpenComputer), {
    // Condition: canInteract
    if (player getVariable [QGVAR(isArtGunner), false]) then {
      createDialog QGVAR(GUI_TargetMenu);
    };
  }, {}, [DIK_P, [false, false, false]]] call CBA_fnc_addKeybind;

  call (compileScript ["scripts\addInteractions.sqf"]);
};

// Kod wykonywany lokalnie u gracza, za każdym razem gdy dołączy do gry


// Kod wykonywany wyłącznie na serwerze - wykonuje się tylko raz, na starcie misji
if (isServer) then {

};

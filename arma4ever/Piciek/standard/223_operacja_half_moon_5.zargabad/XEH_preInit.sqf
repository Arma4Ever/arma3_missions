#include "script_component.hpp"
/*
 * XEH_preInit.sqf
 * Poniższy kod wykona się na serwerze oraz u każdego gracza przed rozpoczęciem wczytywania obiektów misji
 */

/*
 * Definicje funkcji
 * Np. PREP(nazwaFunkcji) skompiluje funkcje znajdującą się w functions/fnc_nazwaFunkcji.sqf
 * i będzie ona dostępna w grze jako mission_fnc_nazwaFunkcji
 */

PREP(intro);
PREP(nuke);

if (hasInterface) then {
  // Nuke exploded player event
  [QGVAR(nukeExploded), {
    if (((side (group player)) isNotEqualTo west) || {!(alive player)}) exitWith {};
    0 spawn {
      sleep ((player distance [4240.59, 4158.18, 0]) * 0.005);
      player setDamage 1;
    };
  }] call CBA_fnc_addEventHandler;
};

if (isServer) then {

};

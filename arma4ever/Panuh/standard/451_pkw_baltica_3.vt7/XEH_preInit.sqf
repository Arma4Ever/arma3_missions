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

// Kod wykonywany lokalnie u gracza, za każdym razem gdy dołączy do gry
if (hasInterface) then {
["Man", "InitPost", {
  params ["_unit"];

  if ((side _unit) != east) exitWith {};

  private _voice = selectRandom ["Male01RUS","Male02RUS","Male03RUS"];
  _unit setspeaker _voice;
}, true, [], true] call CBA_fnc_addClassEventHandler;

};

// Kod wykonywany wyłącznie na serwerze - wykonuje się tylko raz, na starcie misji
if (isServer) then {

};

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
PREP(addRearmActions);

// Kod wykonywany lokalnie u gracza, za każdym razem gdy dołączy do gry
if (hasInterface) then {

};

// Kod wykonywany wyłącznie na serwerze - wykonuje się tylko raz, na starcie misji
if (isServer) then {

};

[QGVAR(addMagazine), {
  params ["_mortar"];
  if (local _mortar) then {
    _mortar setVehicleAmmo 1;
  };
}] call CBA_fnc_addEventHandler;

[QGVAR(addMagazine), {
  params ["_vehicle"];
  if (local _vehicle) then {
    _vehicle setVehicleAmmo 1;
  };
}] call CBA_fnc_addEventHandler;
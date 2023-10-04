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
[QGVAR(jammerOn), {
    GVAR(jammerHandler) = [{
    if !(missionNamespace getVariable [QGVAR(jammer), true]) exitWith {
      // Reset do defaultowych
      [GVAR(jammerHandler)] call CBA_fnc_removePerFrameHandler;
      ace_player setVariable ["tf_receivingDistanceMultiplicator", 1];
            ace_player setVariable ["tf_sendingDistanceMultiplicator", 1];
    };
        if (ace_player getVariable ["tf_sendingDistanceMultiplicator", 1] isNotEqualTo 0.15) then {
      // Pierwsza przyjmuje wartości od 1 do 1000. Przy 1000 nie słychać nic nawet obok siebie.
      // Druga od 0 do 1. 1 to najlepsza jakość nadwania.
            ace_player setVariable ["tf_receivingDistanceMultiplicator", 20];
            ace_player setVariable ["tf_sendingDistanceMultiplicator", 0.15];
        };
  }, 10, []] call CBA_fnc_addPerFrameHandler;
}] call CBA_fnc_addEventHandler;


// Kod wykonywany lokalnie u gracza, za każdym razem gdy dołączy do gry
if (hasInterface) then {

};

// Kod wykonywany wyłącznie na serwerze - wykonuje się tylko raz, na starcie misji
if (isServer) then {

};

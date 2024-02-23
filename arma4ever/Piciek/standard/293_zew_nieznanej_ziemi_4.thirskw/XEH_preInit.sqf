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
PREP(anomalia);
PREP(anomalia11);
PREP(getImpactPos);
PREP(meteorLocal);
PREP(updatePlayers);

GVAR(meteors) = true;

[QGVAR(testStart), {
  params ["_obj"];
  // if (isServer) exitWith {};
  {[_x] spawn mission_fnc_anomalia;} forEach [ano1, ano2, ano3, ano4, anomalia];
}] call CBA_fnc_addEventHandler;

// Kod wykonywany lokalnie u gracza, za każdym razem gdy dołączy do gry
if (hasInterface) then {
  [QGVAR(meteorLocal), {
    params ["_pos"];
    [_pos] spawn FUNC(meteorLocal);
  }] call CBA_fnc_addEventHandler;
};

// Kod wykonywany wyłącznie na serwerze - wykonuje się tylko raz, na starcie misji
if (isServer) then {
  [QGVAR(meteorLoop), {
    GVAR(posLoop) = [{

      if !(GVAR(meteors)) exitWith {
      // Remove PFH
        [GVAR(posLoop)] call CBA_fnc_removePerFrameHandler;
        [GVAR(playersLoop)] call CBA_fnc_removePerFrameHandler;
      };

      0 call FUNC(getImpactPos);
    }, 1.5, []] call CBA_fnc_addPerFrameHandler;

    GVAR(playersLoop) = [{
      0 call FUNC(updatePlayers);
    }, 30, []] call CBA_fnc_addPerFrameHandler;
  }] call CBA_fnc_addEventHandler;
};

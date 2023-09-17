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
PREP(jammer);
PREP(turnOn);
PREP(turnOff);

// Kod wykonywany lokalnie u gracza, za każdym razem gdy dołączy do gry
if (hasInterface) then {
	[QGVAR(turnOn), {
		missionNamespace setVariable [QGVAR(jammer), true];
		0 call FUNC(jammer);
	}] call CBA_fnc_addEventHandler;

	[QGVAR(turnOff), {
		missionNamespace setVariable [QGVAR(jammer), false];
		player setVariable ["tf_receivingDistanceMultiplicator", 1];
		player setVariable ["tf_sendingDistanceMultiplicator", 1];
		[GVAR(jammerHandler)] call CBA_fnc_removePerFrameHandler;
	}] call CBA_fnc_addEventHandler;
};

// Kod wykonywany wyłącznie na serwerze - wykonuje się tylko raz, na starcie misji
if (isServer) then {

};

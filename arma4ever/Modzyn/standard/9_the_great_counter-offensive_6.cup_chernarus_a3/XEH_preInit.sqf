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
PREP(drawPolyline);
PREP(changeCityName);
PREP(unlimitedAmmo);
PREP(spawnMedicalBox);
PREP(getBoxCargo);
PREP(spawnAmmoBox);
PREP(spawnGrenadeBox);
PREP(spawnBox);
PREP(spawnCondition);
PREP(updateLine1);
PREP(updateLine2);
PREP(artFired);
PREP(saveDisplay);
PREP(restoreDisplay);
PREP(calculate);

GVAR(lastArtShot) = objNull;

[QGVAR(doArtFire), {
  params ["_artillery", "_target"];

  _artillery doArtilleryFire [_target, "rhs_mag_3vo18_10", 4];
}] call CBA_fnc_addEventHandler;

// Kod wykonywany lokalnie u gracza, za każdym razem gdy dołączy do gry
if (hasInterface) then {
    
};

// Kod wykonywany wyłącznie na serwerze - wykonuje się tylko raz, na starcie misji
if (isServer) then {
    GVAR(counterArtPositions) = [];
    GVAR(artShots) = createHashMap;
    GVAR(aliveArt) = [];

    [QGVAR(countArtShot), {
        params ["_ammo"];
        private _count = GVAR(artShots) getOrDefault [_ammo, 0];
        GVAR(artShots) set [_ammo, _count + 1];
    }] call CBA_fnc_addEventHandler;

    [QGVAR(artilleryFired), {
        _this call FUNC(artFired);
    }] call CBA_fnc_addEventHandler;
};

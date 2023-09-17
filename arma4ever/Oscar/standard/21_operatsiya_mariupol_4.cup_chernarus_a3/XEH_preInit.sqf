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
PREP(changeCityName);
PREP(intro);
PREP(introSlideShow);
PREP(spawnSupplies);

if (is3DEN) then {
  0 call (compileScript ["scripts\hideObjects.sqf"]);
};

// Kod wykonywany lokalnie u gracza, za każdym razem gdy dołączy do gry
if (hasInterface) then {
  [QGVAR(dayCount), {
    params ["_dayCount", "_kills"];
    // Display
    [
      [
        ["Operatsiya Mariupol", "font = 'PuristaSemiBold'"],
        ["", "<br/>"],
        [format [LLSTRING(UI_DayCount_Day), _dayCount], "font = 'PuristaMedium'"],
        ["", "<br/>"],
        [format ["Potwierdzone eliminacje: %1", _kills], "font = 'PuristaMedium'"]
      ],
      safeZoneX - 0.01,
      safeZoneY + (1 - 0.125) * safeZoneH,
      true,
      "<t align='right' size='1.0'>%1</t>"
    ] spawn BIS_fnc_typeText2;
  }] call CBA_fnc_addEventHandler;
};

// Kod wykonywany wyłącznie na serwerze - wykonuje się tylko raz, na starcie misji
if (isServer) then {
  [QGVAR(spawnSupplies), {
    _this call FUNC(spawnSupplies);
  }] call CBA_fnc_addEventHandler;

  [QGVAR(flagTaken), {
    params ["_flag", "_marker"];
    if (_flag getVariable [QGVAR(flagTaken), false]) exitWith {};
    _flag setVariable [QGVAR(flagTaken), true, true];
    _flag setFlagTexture "ua_factions_rhs\data\flags\flag_ukraine_01.paa";
    _marker setMarkerType "FlagUkraine";
  }] call CBA_fnc_addEventHandler;

  GVAR(confirmedKills) = 0;
  GVAR(timeMultiplierNight) = 20;
  GVAR(timeMultiplierDay) = 32;
};

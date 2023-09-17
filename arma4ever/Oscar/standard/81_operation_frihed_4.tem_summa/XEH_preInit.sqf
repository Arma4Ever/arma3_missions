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

PREP(handleHeliLanded);
PREP(intro);
PREP(spawnHeliDrop);
PREP(spawnSupplies);

0 call (compileScript ["scripts\hideObjects.sqf"]);

["ace_rearm_rearmEntireVehicleSuccessLocalEH", {
  params ["", "_vehicle"];

  if (_vehicle isKindOf "StaticWeapon") then {
    [QGVAR(rearmFull), _vehicle] call CBA_fnc_globalEvent;
  };
}] call CBA_fnc_addEventHandler;

[QGVAR(rearmFull), {
  _this setVehicleAmmoDef 1;
}] call CBA_fnc_addEventHandler;

// Kod wykonywany lokalnie u gracza, za każdym razem gdy dołączy do gry
if (hasInterface) then {
  [QGVAR(killCounterUpdated), {
    params ["_showNotification"];
    
    private _data = missionNamespace getVariable [QGVAR(killCounterData), []];

    if (_data isEqualTo []) exitWith {
      player createDiaryRecord ["Diary", ["Raport o stratach", "Brak potwierdzonych strat przeciwnika"]];
    };

    private _text = "";

    {
      _text = _text + format ["%1: %2<br />", _x, _y];
    } forEach _data;

    player createDiaryRecord ["Diary", ["Raport o stratach", "<font size='16'>" + _text + "</font>"]];

    if (_showNotification) then {
      ["IntelAdded", ["Nowy raport o stratach przeciwnika został dodany", "a3\ui_f\data\igui\cfg\simpletasks\types\documents_ca.paa"]] call BIS_fnc_showNotification;
    };
  }] call CBA_fnc_addEventHandler;
};

// Kod wykonywany wyłącznie na serwerze - wykonuje się tylko raz, na starcie misji
if (isServer) then {
  [QGVAR(addMagazine), {
    params ["_target", "_mag"];
    _target addMagazineGlobal _mag;
  }] call CBA_fnc_addEventHandler;

  [QGVAR(spawnSupplies), {
    _this call FUNC(spawnSupplies);
  }] call CBA_fnc_addEventHandler;
};

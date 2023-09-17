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
PREP(changeCityName);
PREP(introSlideshow);
PREP(enableDefender);
PREP(spawnSupplies);
PREP(spawnTurret);
PREP(spawnVehicle);

if (is3DEN) then {
  0 call (compileScript ["scripts\hideObjects.sqf"]);
};

[QGVAR(enableDefender), {
  _this spawn FUNC(enableDefender);
}] call CBA_fnc_addEventHandler;

[QGVAR(doSuppress), {
  params ["_targets", "_pos"];
  _targets doSuppressiveFire _pos;
}] call CBA_fnc_addEventHandler;

[QGVAR(revealAll), {
  params ["_entity"];
  {
    _x reveal [_entity, 4];
  } forEach allGroups;
}] call CBA_fnc_addEventHandler;

[QGVAR(switchPATH), {
  params ["_unit", "_state"];

  private _code = [
    {_this disableAI "PATH";_this disableAI "FSM";},
    {_this enableAI "PATH";_this enableAI "FSM";}
  ] select _state;

  if (
    !(local _unit) ||
    {!(_unit isKindOf "CAManBase")}
  ) exitWith {};

  private _group = group _unit;
  {_x call _code} forEach (units _group);
}] call CBA_fnc_addEventHandler;

[QGVAR(mortarSuppress), {
  _this spawn {
    params ["_mortar", "_pos", "_dir", "_dist", "_spread", "_sleep", "_shots"];

    _pos set [2, 0];

    for "_i" from 1 to _shots do {
      if !(alive _mortar) exitWith {};
      private _startPos = _pos getPos [random _dist, _dir];
      _mortar doArtilleryFire [
        _startPos getPos [random _spread, random 360],
        "rhs_mag_3vo18_10",
        1
      ];
      _mortar setVehicleAmmo 1;
      sleep _sleep;
    };
  };
}] call CBA_fnc_addEventHandler;

// Kod wykonywany wyłącznie na serwerze - wykonuje się tylko raz, na starcie misji
if (isServer) then {
  [QGVAR(addMagazine), {
    params ["_target", "_mag"];
    _target addMagazineGlobal _mag;
  }] call CBA_fnc_addEventHandler;

  [QGVAR(spawnSupplies), {
    _this call FUNC(spawnSupplies);
  }] call CBA_fnc_addEventHandler;

   [QGVAR(spawnVehicle), {
    _this call FUNC(spawnVehicle);
   }] call CBA_fnc_addEventHandler;

  [QGVAR(spawnTurret), {
    _this call FUNC(spawnTurret);
  }] call CBA_fnc_addEventHandler;

  [QGVAR(switchDynSim), {
    params ["_entity", "_state"];
    if (_entity isKindOf "CAManBase") then {
      (group _entity) enableDynamicSimulation _state;
    } else {
      _entity enableDynamicSimulation _state;
    };
  }] call CBA_fnc_addEventHandler;
};

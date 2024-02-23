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

  [QGVAR(introEnded), {
    if (missionNamespace getVariable [QGVAR(introHasEnded), false]) exitWith {};
    missionNamespace setVariable [QGVAR(introHasEnded), true];

    {
      _x spawn {
        params ["_type", "_pos"];

        private _smoke = _type createVehicle _pos;
        for "_i" from 1 to 2 do {
          waitUntil {sleep 1;isNull _smoke};
          _smoke = _type createVehicle _pos;
        };
      };
    } forEach [
      ["SmokeShellOrange", [5463.47,11714.1,0]],
      ["SmokeShellOrange", [4299.01,12351.2,0]],
      ["SmokeShellOrange", [3469.08,11464.5,0]],
      ["SmokeShellOrange", [4487.08,11309.1,0]],
      ["SmokeShellOrange", [4797.87,11393.5,0]],
      ["SmokeShellOrange", [5219.47,10489.3,0]],
      ["SmokeShellOrange", [4902.72,9630.65,0]],
      ["SmokeShellOrange", [3044.61,9908.87,0]]
    ];

    // Tell players to parachute
    [QGVAR(initPlayerDrop), true] call CBA_fnc_globalEvent;
  }] call CBA_fnc_addEventHandler;
};

if (hasInterface) then {
  [QGVAR(initPlayerDrop), {
    if ((side (group player)) isNotEqualTo west) exitWith {};
    private _position = (getPosATL player) vectorAdd [0, 0, 500];
    private _para = createVehicle ["rhs_d6_Parachute", _position, [], 0, "fly"];
    _para setPosATL _position;
    player moveInDriver _para;
    _para setDir 323;
  }] call CBA_fnc_addEventHandler;
};
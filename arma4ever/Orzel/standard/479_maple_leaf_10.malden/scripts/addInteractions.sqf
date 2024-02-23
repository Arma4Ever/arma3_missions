#include "script_component.hpp"

[
  "ACE_Box_Ammo", //Klasa twojej skrzynki
  0,
  ["ACE_MainActions"],
  [QGVAR(rearmMortar), "Przezbrój moździerz", "", {
    params ["_target"];
    [
      5,
      _target,
      {
        params ["_target"];
        private _mortars = nearestObjects [_target, ["B_Mortar_01_F"], 30]; //RHS_M252_WD klasa twojego moździerza
        {[QGVAR(addMagazine), [_x]] call CBA_fnc_globalEvent;} forEach _mortars;
        hint "Przezbrojono";
      },
      {},
      "Ładowanie"
    ] call ace_common_fnc_progressBar;
  }, {
    true
  }, {}, [], [0,0,0], 5] call ace_interact_menu_fnc_createAction
] call ace_interact_menu_fnc_addActionToClass;

//Rearm TOWa
[
  "Land_WoodenCrate_01_F", //Klasa twojej skrzynki
  0,
  ["ACE_MainActions"],
  [QGVAR(rearmTOW), "Przezbrój TOWa", "", {
    params ["_target"];
    [
      5,
      _target,
      {
        params ["_target"];
        private _mortars = nearestObjects [_target, ["UK3CB_CW_US_B_LATE_M151_Jeep_TOW"], 20]; //Klasa twojego TOWa
        {[QGVAR(addMagazine), [_x]] call CBA_fnc_globalEvent;} forEach _mortars;
        private _supply = _target getVariable [QGVAR(currentSupplyTow), 2];
        _supply = _supply -1;
        _target setVariable [QGVAR(currentSupplyTow), _supply, true];
        hint format ["Pozostało %1 przezbrojeń TOWa", _supply];
      },
      {},
      "Przezbrajanie"
    ] call ace_common_fnc_progressBar;
  },
  {(_target getVariable [QGVAR(currentSupplyTow), 2]) > 0},
  {}, [], [0,0,0], 5] call ace_interact_menu_fnc_createAction
] call ace_interact_menu_fnc_addActionToClass;

//Rearm pojazdów
[
  "rhs_7ya37_1_single", //Klasa twojej skrzynki
  0,
  ["ACE_MainActions"],
  [
    QGVAR(rearmVehicles),
    "Przezbrój pojazdy",
    "",
    {},
    {(_target getVariable [QGVAR(currentSupply), 2]) > 0},
    {_this call FUNC(addRearmActions)}
  ] call ace_interact_menu_fnc_createAction
] call ace_interact_menu_fnc_addActionToClass;
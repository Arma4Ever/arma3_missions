#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Adds interactions in base
 */

if !(hasInterface) exitWith {};

// Box cargo
[
  mission_act_cargo,
  0,
  [],
  [QGVAR(baseAction), LLSTRING(Action_GetCargoBox), "", {}, {true}, {}, [], [0,0,0], 5] call ace_interact_menu_fnc_createAction
] call ace_interact_menu_fnc_addActionToObject;
[
  mission_act_cargo,
  0,
  [QGVAR(baseAction)],
  [QGVAR(boxActionAmmo), "Amunicja piechoty", "", {
    [QGVAR(spawnSupplies), "ammo"] call CBA_fnc_serverEvent;
    hint "Pobrano amunicje piechoty z magazynu";
  }, {true}, {}, [], [0,0,0], 5] call ace_interact_menu_fnc_createAction
] call ace_interact_menu_fnc_addActionToObject;
[
  mission_act_cargo,
  0,
  [QGVAR(baseAction)],
  [QGVAR(boxActionMortarAmmo), LLSTRING(Action_MortarAmmo), "", {
    [QGVAR(spawnSupplies), "mortarAmmo"] call CBA_fnc_serverEvent;
    hint LLSTRING(Action_MortarAmmo_Done);
  }, {true}, {}, [], [0,0,0], 5] call ace_interact_menu_fnc_createAction
] call ace_interact_menu_fnc_addActionToObject;
[
  mission_act_cargo,
  0,
  [QGVAR(baseAction)],
  [QGVAR(boxActionMortar), LLSTRING(Action_Mortar), "", {
    [QGVAR(spawnSupplies), "mortar"] call CBA_fnc_serverEvent;
    hint LLSTRING(Action_Mortar_Done);
  }, {true}, {}, [], [0,0,0], 5] call ace_interact_menu_fnc_createAction
] call ace_interact_menu_fnc_addActionToObject;
[
  mission_act_cargo,
  0,
  [QGVAR(baseAction)],
  [QGVAR(boxActionMeds), "Medykamenty", "", {
    [QGVAR(spawnSupplies), "medical"] call CBA_fnc_serverEvent;
    hint "Pobrano medykamenty z magazynu";
  }, {true}, {}, [], [0,0,0], 5] call ace_interact_menu_fnc_createAction
] call ace_interact_menu_fnc_addActionToObject;

// Heli cargo
[
  mission_act_heli,
  0,
  [],
  [QGVAR(baseAction), LLSTRING(Action_GetHelicopter), "", {}, {true}, {}, [], [0,0,0], 5] call ace_interact_menu_fnc_createAction
] call ace_interact_menu_fnc_addActionToObject;
[
  mission_act_heli,
  0,
  [QGVAR(baseAction)],
  [QGVAR(vehicleActionSlick), "UH-1D Iroquois Slick", "", {
    [QGVAR(spawnVehicle), "vn_b_air_uh1d_02_02"] call CBA_fnc_serverEvent;
    hint "Pobrano UH-1D Iroquois Slick z magazynu";
  }, {true}, {}, [], [0,0,0], 5] call ace_interact_menu_fnc_createAction
] call ace_interact_menu_fnc_addActionToObject;
[
  mission_act_heli,
  0,
  [QGVAR(baseAction)],
  [QGVAR(vehicleActionHog), "UH-1C Iroquois Hog", "", {
    [QGVAR(spawnVehicle), "vn_b_air_uh1c_01_02"] call CBA_fnc_serverEvent;
    hint "Pobrano UH-1C Iroquois Hog z magazynu";
  }, {true}, {}, [], [0,0,0], 5] call ace_interact_menu_fnc_createAction
] call ace_interact_menu_fnc_addActionToObject;

// Jet cargo
[
  mission_act_jets,
  0,
  [],
  [QGVAR(baseAction), "Pobierz samolot", "", {}, {true}, {}, [], [0,0,0], 5] call ace_interact_menu_fnc_createAction
] call ace_interact_menu_fnc_addActionToObject;
[
  mission_act_jets,
  0,
  [QGVAR(baseAction)],
  [QGVAR(vehicleActionF4C), "F-4C Phantom II", "", {
    [QGVAR(spawnVehicle), "vn_b_air_f4c_cas"] call CBA_fnc_serverEvent;
    hint "Pobrano F-4C Phantom II z magazynu";
  }, {true}, {}, [], [0,0,0], 5] call ace_interact_menu_fnc_createAction
] call ace_interact_menu_fnc_addActionToObject;

// Heli service
[
  mission_act_service,
  0,
  [],
  [QGVAR(serviceAction), LLSTRING(Action_Service), "", {
    private _helis = vehicles select {
      (_x isKindOf "vn_air_uh1_01_base") &&
      {(fuel _x) < 1}
    };
    _helis = _helis inAreaArray "marker_area_helipad";

    if (_helis isEqualTo []) exitWith {
      hint LLSTRING(Action_Service_HelipadEmpty);
    };

    [(count _helis) * 6, _helis, {
      params ["_helis"];
      [QGVAR(serviceVehicles), _helis] call CBA_fnc_globalEvent;
      hint LLSTRING(Action_Service_Done);
    }, {}, LLSTRING(Action_Service_Progress)] call ace_common_fnc_progressBar;
  }, {true}, {}, [], [0,0,0], 5] call ace_interact_menu_fnc_createAction
] call ace_interact_menu_fnc_addActionToObject;

// Serive jet
[
  "vn_b_air_f4c_cas",
  1,
  ["ACE_SelfActions"],
  [QGVAR(serviceJet), LLSTRING(Action_ServiceJet), "", {
    params ["_target"];
    _target spawn {
      _this setFuel 0;
      hint "Serwisowanie samolotu, oczekuj...";
      sleep 20;
      [QGVAR(serviceVehicles), [_this]] call CBA_fnc_globalEvent;
      [ace_player] call ace_medical_treatment_fnc_fullHealLocal;
      hint LLSTRING(Action_ServiceJet_Done);
    };
  }, {
    params ["_target"];
    (_target distance mission_jet_service) < 15
  }, {}, [], [0,0,0], 5] call ace_interact_menu_fnc_createAction
] call ace_interact_menu_fnc_addActionToClass;

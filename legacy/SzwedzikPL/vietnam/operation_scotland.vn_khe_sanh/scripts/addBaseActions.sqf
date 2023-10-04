#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Adds interactions for base
 */

// Serive jet
[
  "vn_b_air_f4c_cas",
  1,
  ["ACE_SelfActions"],
  [QGVAR(serviceJet), LLSTRING(Action_ServiceJet), "", {
    params ["_target"];
    _target spawn {
      _this setFuel 0;
      hint "";
      ["Serwisowanie samolotu, oczekuj..."] call ace_common_fnc_displayTextStructured;
      sleep 12;
      [QGVAR(serviceVehicles), [_this]] call CBA_fnc_globalEvent;
      [ace_player] call ace_medical_treatment_fnc_fullHealLocal;
      [LLSTRING(Action_ServiceJet_Done)] call ace_common_fnc_displayTextStructured;
    };
  }, {
    params ["_target"];
    (_target distance mission_jet_service) < 15
  }, {}, [], [0,0,0], 5] call ace_interact_menu_fnc_createAction
] call ace_interact_menu_fnc_addActionToClass;

// Vehcile cargo
[
  mission_act_vehs,
  0,
  [],
  [QGVAR(baseAction), LLSTRING(Action_GetVehicle), "", {}, {true}, {}, [], [0,0,0], 5] call ace_interact_menu_fnc_createAction
] call ace_interact_menu_fnc_addActionToObject;
[
  mission_act_vehs,
  0,
  [QGVAR(baseAction)],
  [QGVAR(vehicleActionTank), "M41A3 Walker Bulldog", "", {
    [QGVAR(spawnVehicle), "vn_b_armor_m41_01_02"] call CBA_fnc_serverEvent;
    ["Pobrano M41A3 Walker Bulldog z magazynu"] call ace_common_fnc_displayTextStructured;
  }, {true}, {}, [], [0,0,0], 5] call ace_interact_menu_fnc_createAction
] call ace_interact_menu_fnc_addActionToObject;
[
  mission_act_vehs,
  0,
  [QGVAR(baseAction)],
  [QGVAR(vehicleActionTruck), "M54 Truck (serwis, logistyka)", "", {
    [QGVAR(spawnVehicle), "vn_b_wheeled_m54_mg_01"] call CBA_fnc_serverEvent;
    ["Pobrano M54 Truck z magazynu"] call ace_common_fnc_displayTextStructured;
  }, {true}, {}, [], [0,0,0], 5] call ace_interact_menu_fnc_createAction
] call ace_interact_menu_fnc_addActionToObject;

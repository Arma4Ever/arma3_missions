#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Adds interactions for base
 */

[
  mission_act_cargo,
  0,
  [],
  [QGVAR(baseAction), "Pobierz", "", {}, {true}, {}, [], [0,0,0], 5] call ace_interact_menu_fnc_createAction
] call ace_interact_menu_fnc_addActionToObject;
[
  mission_act_cargo,
  0,
  [QGVAR(baseAction)],
  [QGVAR(boxActionAmmo), "Skrzynia: amunicja piechoty", "", {
    [QGVAR(spawnSupplies), "ammo"] call CBA_fnc_serverEvent;
    hint "Pobrano amunicje piechoty z magazynu";
  }, {true}, {}, [], [0,0,0], 5] call ace_interact_menu_fnc_createAction
] call ace_interact_menu_fnc_addActionToObject;
[
  mission_act_cargo,
  0,
  [QGVAR(baseAction)],
  [QGVAR(boxActionMeds), "Skrzynia: medykamenty", "", {
    [QGVAR(spawnSupplies), "medical"] call CBA_fnc_serverEvent;
    hint "Pobrano medykamenty z magazynu";
  }, {true}, {}, [], [0,0,0], 5] call ace_interact_menu_fnc_createAction
] call ace_interact_menu_fnc_addActionToObject;
[
  mission_act_cargo,
  0,
  [QGVAR(baseAction)],
  [QGVAR(boxActionTow), "M2", "", {
    [QGVAR(spawnTurret), "RHS_M2StaticMG_MiniTripod_WD"] call CBA_fnc_serverEvent;
    hint "Pobrano M2 z magazynu";
  }, {true}, {}, [], [0,0,0], 5] call ace_interact_menu_fnc_createAction
] call ace_interact_menu_fnc_addActionToObject;


[
  mission_act_cargo,
  0,
  [QGVAR(baseAction)],
  [QGVAR(boxActionTow), "TOW", "", {
    [QGVAR(spawnTurret), "RHS_TOW_TriPod_WD"] call CBA_fnc_serverEvent;
    hint "Pobrano TOW z magazynu";
  }, {true}, {}, [], [0,0,0], 5] call ace_interact_menu_fnc_createAction
] call ace_interact_menu_fnc_addActionToObject;
[
  mission_act_cargo,
  0,
  [QGVAR(baseAction)],
  [QGVAR(boxActionTow), "T-72", "", {
    [QGVAR(spawnVehicle), "UK3CB_LDF_B_T72A"] call CBA_fnc_serverEvent;
    hint "Pobrano T-72 z magazynu";
  }, {true}, {}, [], [0,0,0], 5] call ace_interact_menu_fnc_createAction
] call ace_interact_menu_fnc_addActionToObject;
[
  mission_act_cargo,
  0,
  [QGVAR(baseAction)],
  [QGVAR(boxActionTow), "BMP-3", "", {
    [QGVAR(spawnVehicle), "rhs_bmp3_msv"] call CBA_fnc_serverEvent;
    hint "Pobrano BMP-3 z magazynu";
  }, {true}, {}, [], [0,0,0], 5] call ace_interact_menu_fnc_createAction
] call ace_interact_menu_fnc_addActionToObject;
[
  mission_act_cargo,
  0,
  [QGVAR(baseAction)],
  [QGVAR(boxActionTow), "M1151 HMMWV", "", {
    [QGVAR(spawnVehicle), "UK3CB_LDF_B_M1151"] call CBA_fnc_serverEvent;
    hint "Pobrano M1151 HMMWV z magazynu";
  }, {true}, {}, [], [0,0,0], 5] call ace_interact_menu_fnc_createAction
] call ace_interact_menu_fnc_addActionToObject;
[
  mission_act_cargo,
  0,
  [QGVAR(baseAction)],
  [QGVAR(boxActionTow), "M1151 M2 HMMWV", "", {
    [QGVAR(spawnVehicle), "UK3CB_LDF_O_M1151_GPK_M2"] call CBA_fnc_serverEvent;
    hint "Pobrano M1151 M2 HMMWV z magazynu";
  }, {true}, {}, [], [0,0,0], 5] call ace_interact_menu_fnc_createAction
] call ace_interact_menu_fnc_addActionToObject;
[
  mission_act_cargo,
  0,
  [QGVAR(baseAction)],
  [QGVAR(boxActionTow), "M1151 Mk 19 HMMWV", "", {
    [QGVAR(spawnVehicle), "UK3CB_LDF_O_M1151_GPK_MK19"] call CBA_fnc_serverEvent;
    hint "Pobrano M1151 Mk 19 HMMWV z magazynu";
  }, {true}, {}, [], [0,0,0], 5] call ace_interact_menu_fnc_createAction
] call ace_interact_menu_fnc_addActionToObject;



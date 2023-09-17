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
  [QGVAR(boxActionTow), "NSV", "", {
    [QGVAR(spawnTurret), "rhsgref_cdf_b_NSV_TriPod"] call CBA_fnc_serverEvent;
    hint "Pobrano M2 z magazynu";
  }, {true}, {}, [], [0,0,0], 5] call ace_interact_menu_fnc_createAction
] call ace_interact_menu_fnc_addActionToObject;


[
  mission_act_cargo,
  0,
  [QGVAR(baseAction)],
  [QGVAR(boxActionTow), "SPG-9", "", {
    [QGVAR(spawnTurret), "rhsgref_cdf_b_SPG9"] call CBA_fnc_serverEvent;
    hint "Pobrano TOW z magazynu";
  }, {true}, {}, [], [0,0,0], 5] call ace_interact_menu_fnc_createAction
] call ace_interact_menu_fnc_addActionToObject;
[
  mission_act_cargo,
  0,
  [QGVAR(baseAction)],
  [QGVAR(boxActionTow), "AGS-30", "", {
    [QGVAR(spawnTurret), "rhsgref_cdf_b_AGS30_TriPod"] call CBA_fnc_serverEvent;
    hint "Pobrano mozdzierz M252 z magazynu";
  }, {true}, {}, [], [0,0,0], 5] call ace_interact_menu_fnc_createAction
] call ace_interact_menu_fnc_addActionToObject;



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
  [QGVAR(boxActionTow), "Skrzynia: amunicja mozdzierza 81mm", "", {
    [QGVAR(spawnSupplies), "ammoMortar"] call CBA_fnc_serverEvent;
    hint "Pobrano amunicje mozdzierza z magazynu";
  }, {true}, {}, [], [0,0,0], 5] call ace_interact_menu_fnc_createAction
] call ace_interact_menu_fnc_addActionToObject;
[
  mission_act_cargo,
  0,
  [QGVAR(baseAction)],
  [QGVAR(boxActionTow), "Skrzynia: amunicja mozdzierza 120mm", "", {
    [QGVAR(spawnSupplies), "ammoMortar120"] call CBA_fnc_serverEvent;
    hint "Pobrano amunicje mozdzierza z magazynu";
  }, {true}, {}, [], [0,0,0], 5] call ace_interact_menu_fnc_createAction
] call ace_interact_menu_fnc_addActionToObject;
[
  mission_act_cargo,
  0,
  [QGVAR(baseAction)],
  [QGVAR(boxActionTow), "Mozdzierz M252", "", {
    [QGVAR(spawnTurret), "RHS_M252_WD"] call CBA_fnc_serverEvent;
    hint "Pobrano mozdzierz M252 z magazynu";
  }, {true}, {}, [], [0,0,0], 5] call ace_interact_menu_fnc_createAction
] call ace_interact_menu_fnc_addActionToObject;
[
  mission_act_cargo,
  0,
  [QGVAR(baseAction)],
  [QGVAR(boxActionTow), "Mozdzierz Tampella M120", "", {
    [QGVAR(spawnTurret), "BWA3_MRS120_Tropen"] call CBA_fnc_serverEvent;
    hint "Pobrano mozdzierz M252 z magazynu";
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





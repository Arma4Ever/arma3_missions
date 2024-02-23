#include "script_component.hpp"

if !(hasInterface) exitWith {};

// Reload mortar HE
[
  "B_Mortar_01_F",
  0,
  ["ACE_MainActions"],
  [QGVAR(addHERounds), LLSTRING(Action_LoadHEMag), "", {
    params ["_target"];
    [
      5,
      _target,
      {
        params ["_target"];
        ace_player removeItem "ACE_1Rnd_82mm_Mo_HE";
        [QGVAR(addMagazine), [_target, "8Rnd_82mm_Mo_shells"]] call CBA_fnc_serverEvent;
        hint LLSTRING(Action_LoadHEMag_Done);
      },
      {},
      LLSTRING(Action_LoadHEMag_Progress)
    ] call ace_common_fnc_progressBar;
  }, {
    "ACE_1Rnd_82mm_Mo_HE" in (itemsWithMagazines ace_player)
  }, {}, [], [0,0,0], 5] call ace_interact_menu_fnc_createAction
] call ace_interact_menu_fnc_addActionToClass;

// Reload mortar Smoke
[
  "B_Mortar_01_F",
  0,
  ["ACE_MainActions"],
  [QGVAR(addSmokeRounds), LLSTRING(Action_LoadSmokeMag), "", {
    params ["_target"];
    [
      5,
      _target,
      {
        params ["_target"];
        ace_player removeItem "ACE_1Rnd_82mm_Mo_Smoke";
        [QGVAR(addMagazine), [_target, "8Rnd_82mm_Mo_Smoke_white"]] call CBA_fnc_serverEvent;
        hint LLSTRING(Action_LoadSmokeMag_Done);
      },
      {},
      LLSTRING(Action_LoadSmokeMag_Progress)
    ] call ace_common_fnc_progressBar;
  }, {
    "ACE_1Rnd_82mm_Mo_Smoke" in (itemsWithMagazines ace_player)
  }, {}, [], [0,0,0], 5] call ace_interact_menu_fnc_createAction
] call ace_interact_menu_fnc_addActionToClass;

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
  [QGVAR(boxActionMeds), "Skrzynia: granaty", "", {
    [QGVAR(spawnSupplies), "granate"] call CBA_fnc_serverEvent;
    hint "Pobrano granaty z magazynu";
  }, {true}, {}, [], [0,0,0], 5] call ace_interact_menu_fnc_createAction
] call ace_interact_menu_fnc_addActionToObject;
[
  mission_act_cargo,
  0,
  [QGVAR(baseAction)],
  [QGVAR(boxActionMeds), "Skrzynia: wyrzutnie", "", {
    [QGVAR(spawnSupplies), "at"] call CBA_fnc_serverEvent;
    hint "Pobrano wyrzutnie z magazynu";
  }, {true}, {}, [], [0,0,0], 5] call ace_interact_menu_fnc_createAction
] call ace_interact_menu_fnc_addActionToObject;
[
  mission_act_cargo,
  0,
  [QGVAR(baseAction)],
  [QGVAR(boxActionMeds), "Skrzynia: pociski do moździerza", "", {
    [QGVAR(spawnSupplies), "ammoMortar"] call CBA_fnc_serverEvent;
    hint "Pobrano pociski do moździerza z magazynu";
  }, {true}, {}, [], [0,0,0], 5] call ace_interact_menu_fnc_createAction
] call ace_interact_menu_fnc_addActionToObject;
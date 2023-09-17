#include "script_component.hpp"

if !(hasInterface) exitWith {};

[
  mission_act_cargo,
  0,
  [],
  [QGVAR(baseAction), "Pobierz", "", {}, {true}, {}, [], [0,0,0], 5] call ace_interact_menu_fnc_createAction
] call ace_interact_menu_fnc_addActionToObject;

[
  mission_act_uav,
  0,
  [],
  [QGVAR(baseAction2), "Pobierz", "", {}, {true}, {}, [], [0,0,0], 5] call ace_interact_menu_fnc_createAction
] call ace_interact_menu_fnc_addActionToObject;

[
  mission_act_cargo,
  0,
  [QGVAR(baseAction)],
  [QGVAR(boxActionAmmo), "Skrzynia: Amunicja Piechoty", "", {
    [QGVAR(spawnSupplies), "ammo"] call CBA_fnc_serverEvent;
    hint "Pobrano amunicje piechoty z magazynu";
  }, {true}, {}, [], [0,0,0], 5] call ace_interact_menu_fnc_createAction
] call ace_interact_menu_fnc_addActionToObject;

[
  mission_act_cargo,
  0,
  [QGVAR(baseAction)],
  [QGVAR(boxActionMeds), "Skrzynia: Medykamenty", "", {
    [QGVAR(spawnSupplies), "medical"] call CBA_fnc_serverEvent;
    hint "Pobrano medykamenty z magazynu";
  }, {true}, {}, [], [0,0,0], 5] call ace_interact_menu_fnc_createAction
] call ace_interact_menu_fnc_addActionToObject;

[
  mission_act_cargo,
  0,
  [QGVAR(baseAction)],
  [QGVAR(boxActionMortar), "Skrzynia: Amunicja Mk.6", "", {
    [QGVAR(spawnSupplies), "ammoMortar"] call CBA_fnc_serverEvent;
    hint "Pobrano amunicję do moździerza z magazynu";
  }, {true}, {}, [], [0,0,0], 5] call ace_interact_menu_fnc_createAction
] call ace_interact_menu_fnc_addActionToObject;

[
  mission_act_uav,
  0,
  [QGVAR(baseAction2)],
  [QGVAR(boxActionNade), "Dron z granatami", "", {
    [
      30,
      [],
      {
        [QGVAR(spawnVehicle), "A4ES_Combat_Drone_B"] call CBA_fnc_serverEvent;
      },
      {},
      LLSTRING(Action_TakeUAV)
    ] call ace_common_fnc_progressBar;
  }, {missionNamespace getVariable [QGVAR(grenadeAvailable), true]}, {}, [], [0,0,0], 5] call ace_interact_menu_fnc_createAction
] call ace_interact_menu_fnc_addActionToObject;

[
  mission_act_uav,
  0,
  [QGVAR(baseAction2)],
  [QGVAR(boxActionBomb), "Dron Kamikaze", "", {
    [
      30,
      [],
      {
        [QGVAR(spawnVehicle), "A4ES_Kamikaze_Drone_B"] call CBA_fnc_serverEvent;
      },
      {},
      LLSTRING(Action_TakeUAV)
    ] call ace_common_fnc_progressBar;
  }, {missionNamespace getVariable [QGVAR(kamikazeAvailable), true]}, {}, [], [0,0,0], 5] call ace_interact_menu_fnc_createAction
] call ace_interact_menu_fnc_addActionToObject;

[
  "B_T_Mortar_01_F",
  0,
  ["ACE_MainActions"],
  [QGVAR(addHERounds), LLSTRING(Action_LoadHEMag), "", {
    params ["_target"];
    [
      15,
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
  "B_T_Mortar_01_F",
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
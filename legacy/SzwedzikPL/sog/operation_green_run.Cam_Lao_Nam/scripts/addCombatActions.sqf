#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Adds interactions for combat
 */

if !(hasInterface) exitWith {};

// Destroy cargo boxes
[
  "vn_b_ammobox_02",
  0,
  ["ACE_MainActions"],
  [QGVAR(destroyBox), LLSTRING(Action_DestroyBox), "", {
    params ["_target"];
    [LLSTRING(Action_DestroyBox_Confirm), [], {
      params ["", "_target"];
      deleteVehicle _target;
    }, {}, _target] call zen_dialog_fnc_create;
  }, {true}, {}, [], [0,0,0], 4] call ace_interact_menu_fnc_createAction
] call ace_interact_menu_fnc_addActionToClass;
[
  "vn_b_ammobox_15",
  0,
  ["ACE_MainActions"],
  [QGVAR(destroyBox), LLSTRING(Action_DestroyBox), "", {
    params ["_target"];
    [LLSTRING(Action_DestroyBox_Confirm), [], {
      params ["", "_target"];
      deleteVehicle _target;
    }, {}, _target] call zen_dialog_fnc_create;
  }, {true}, {}, [], [0,0,0], 4] call ace_interact_menu_fnc_createAction
] call ace_interact_menu_fnc_addActionToClass;
[
  "ACE_medicalSupplyCrate_advanced",
  0,
  ["ACE_MainActions"],
  [QGVAR(destroyBox), LLSTRING(Action_DestroyBox), "", {
    params ["_target"];
    [LLSTRING(Action_DestroyBox_Confirm), [], {
      params ["", "_target"];
      deleteVehicle _target;
    }, {}, _target] call zen_dialog_fnc_create;
  }, {true}, {}, [], [0,0,0], 4] call ace_interact_menu_fnc_createAction
] call ace_interact_menu_fnc_addActionToClass;

// Reload mortar HE
[
  "vn_b_army_static_mortar_m29",
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
        [QGVAR(addMagazine), [_target, "vn_mortar_m29_mag_he_x8"]] call CBA_fnc_serverEvent;
        hint LLSTRING(Action_LoadHEMag_Done);
      },
      {},
      LLSTRING(Action_LoadHEMag_Progress)
    ] call ace_common_fnc_progressBar;
  }, {
    "ACE_1Rnd_82mm_Mo_HE" in (itemsWithMagazines ace_player)
  }, {}, [], [0,0,0], 5] call ace_interact_menu_fnc_createAction
] call ace_interact_menu_fnc_addActionToClass;

// Reload mortar Flare
[
  "vn_b_army_static_mortar_m29",
  0,
  ["ACE_MainActions"],
  [QGVAR(addFlareRounds), LLSTRING(Action_LoadFlareMag), "", {
    params ["_target"];
    [
      5,
      _target,
      {
        params ["_target"];
        ace_player removeItem "ACE_1Rnd_82mm_Mo_Illum";
        [QGVAR(addMagazine), [_target, "vn_mortar_m29_mag_lume_x8"]] call CBA_fnc_serverEvent;
        hint LLSTRING(Action_LoadFlareMag_Done);
      },
      {},
      LLSTRING(Action_LoadFlareMag_Progress)
    ] call ace_common_fnc_progressBar;
  }, {
    "ACE_1Rnd_82mm_Mo_Illum" in (itemsWithMagazines ace_player)
  }, {}, [], [0,0,0], 5] call ace_interact_menu_fnc_createAction
] call ace_interact_menu_fnc_addActionToClass;

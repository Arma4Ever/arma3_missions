#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Adds actions in base (& service)
 */

// Killhouse actions
if !(missionNamespace getVariable [QGVAR(cleanupEnabled), false]) then {
  [
    missionNamespace getVariable ["mission_kh_startpanel", objNull],
    0,
    [],
    [QGVAR(startKH), "Rozpocznij szkolenie", "", {
      if (missionNamespace getVariable [QGVAR(khActive), false]) exitWith {
        hint "Trwa szkolenie.";
      };

      private _entities = (missionNamespace getVariable ["mission_kh_startpanel", objNull]) nearEntities ["Man", 36];
      private _inArea = _entities inAreaArray [[705.406,1741,1.65302], 13.547, 11.052, 0, true, 2.871];

      if (_inArea isNotEqualTo []) exitWith {
        hint "Nie wszyscy wyszli z Killhousu.";
      };

      [QGVAR(startKillhouse), 0] call CBA_fnc_serverEvent;
      hint "Start za 10 sekund!";
    }, {
      !(missionNamespace getVariable [QGVAR(khActive), false])
    }, {}, [], [0,0,0], 3] call ace_interact_menu_fnc_createAction
  ] call ace_interact_menu_fnc_addActionToObject;

  [
    missionNamespace getVariable ["mission_kh_endpanel", objNull],
    0,
    [],
    [QGVAR(startKH), LLSTRING(KH_EndTraining), "", {
      if !(missionNamespace getVariable [QGVAR(khStarted), false]) exitWith {
        hint LLSTRING(KH_TrainingNotStarted);
      };

      private _entities = (missionNamespace getVariable ["mission_kh_startpanel", objNull]) nearEntities ["Man", 36];
      private _inArea = _entities inAreaArray [[705.406,1741,1.65302], 13.547, 11.052, 0, true, 2.871];

      if (_inArea isNotEqualTo []) exitWith {
        hint "Nie wszyscy wyszli z Killhousu.";
      };

      [QGVAR(endKillhouse), 0] call CBA_fnc_serverEvent;
    }, {
      missionNamespace getVariable [QGVAR(khStarted), false]
    }, {}, [], [0,0,0], 3] call ace_interact_menu_fnc_createAction
  ] call ace_interact_menu_fnc_addActionToObject;
};

private _briefCtrl = missionNamespace getVariable ["mission_brief_ctrl", objNull];
if !(isNull _briefCtrl) then {
  private _briefActDist = 3;
  [
    _briefCtrl,
    0,
    [],
    [QGVAR(baseAction), "Slajdy", "", {}, {true}, {}, [], [0,0,0], _briefActDist] call ace_interact_menu_fnc_createAction
  ] call ace_interact_menu_fnc_addActionToObject;
  [
    _briefCtrl,
    0,
    [QGVAR(baseAction)],
    [QGVAR(slideDexter), "1. LZ Dexter", "", {
      (missionNamespace getVariable ["mission_brief_screen", objNull]) setObjectTextureGlobal [0, "data\slides\slide_dexter.paa"];
    }, {true}, {}, [], [0,0,0], _briefActDist] call ace_interact_menu_fnc_createAction
  ] call ace_interact_menu_fnc_addActionToObject;
  [
    _briefCtrl,
    0,
    [QGVAR(baseAction)],
    [QGVAR(slideDexter), "2. LZ Felix", "", {
      (missionNamespace getVariable ["mission_brief_screen", objNull]) setObjectTextureGlobal [0, "data\slides\slide_felix.paa"];
    }, {true}, {}, [], [0,0,0], _briefActDist] call ace_interact_menu_fnc_createAction
  ] call ace_interact_menu_fnc_addActionToObject;
  [
    _briefCtrl,
    0,
    [QGVAR(baseAction)],
    [QGVAR(slideDexter), "3. OP N -> S", "", {
      (missionNamespace getVariable ["mission_brief_screen", objNull]) setObjectTextureGlobal [0, "data\slides\slide_op_n.paa"];
    }, {true}, {}, [], [0,0,0], _briefActDist] call ace_interact_menu_fnc_createAction
  ] call ace_interact_menu_fnc_addActionToObject;
  [
    _briefCtrl,
    0,
    [QGVAR(baseAction)],
    [QGVAR(slideDexter), "4. OP S -> N", "", {
      (missionNamespace getVariable ["mission_brief_screen", objNull]) setObjectTextureGlobal [0, "data\slides\slide_op_s.paa"];
    }, {true}, {}, [], [0,0,0], _briefActDist] call ace_interact_menu_fnc_createAction
  ] call ace_interact_menu_fnc_addActionToObject;
  [
    _briefCtrl,
    0,
    [QGVAR(baseAction)],
    [QGVAR(slideDexter), "5. OP Stats", "", {
      (missionNamespace getVariable ["mission_brief_screen", objNull]) setObjectTextureGlobal [0, "data\slides\slide_op_stat.paa"];
    }, {true}, {}, [], [0,0,0], _briefActDist] call ace_interact_menu_fnc_createAction
  ] call ace_interact_menu_fnc_addActionToObject;
  [
    _briefCtrl,
    0,
    [QGVAR(baseAction)],
    [QGVAR(slideDexter), "6. Target", "", {
      (missionNamespace getVariable ["mission_brief_screen", objNull]) setObjectTextureGlobal [0, "data\slides\slide_tar.paa"];
    }, {true}, {}, [], [0,0,0], _briefActDist] call ace_interact_menu_fnc_createAction
  ] call ace_interact_menu_fnc_addActionToObject;
  [
    _briefCtrl,
    0,
    [QGVAR(baseAction)],
    [QGVAR(slideDexter), "7. Formacja", "", {
      (missionNamespace getVariable ["mission_brief_screen", objNull]) setObjectTextureGlobal [0, "data\slides\slide_heli.paa"];
    }, {true}, {}, [], [0,0,0], _briefActDist] call ace_interact_menu_fnc_createAction
  ] call ace_interact_menu_fnc_addActionToObject;
};

// Vehicle cargo
[
  mission_act_veh,
  0,
  [],
  [QGVAR(baseAction), "Pobierz pojazd", "", {}, {true}, {}, [], [0,0,0], 5] call ace_interact_menu_fnc_createAction
] call ace_interact_menu_fnc_addActionToObject;
[
  mission_act_veh,
  0,
  [QGVAR(baseAction)],
  [QGVAR(vehicleActionUH), "UH-60M (FFV)", "", {
    [QGVAR(spawnVehicle), "CUP_B_UH60M_FFV_US"] call CBA_fnc_serverEvent;
    hint "Pobrano UH-60M (FFV) z magazynu";
  }, {true}, {}, [], [0,0,0], 5] call ace_interact_menu_fnc_createAction
] call ace_interact_menu_fnc_addActionToObject;
[
  mission_act_veh,
  0,
  [QGVAR(baseAction)],
  [QGVAR(vehicleActionMH), "MH-60L DAP", "", {
    [QGVAR(spawnVehicle), "CUP_B_MH60L_DAP_4x_US"] call CBA_fnc_serverEvent;
    hint "Pobrano MH-60L DAP z magazynu";
  }, {true}, {}, [], [0,0,0], 5] call ace_interact_menu_fnc_createAction
] call ace_interact_menu_fnc_addActionToObject;
[
  mission_act_veh,
  0,
  [QGVAR(baseAction)],
  [QGVAR(vehicleActionA10), "A-10D Thunderbolt II", "", {
    [QGVAR(spawnVehicle), "B_Plane_CAS_01_dynamicLoadout_F"] call CBA_fnc_serverEvent;
    hint "Pobrano A-10D Thunderbolt II z magazynu";
  }, {true}, {}, [], [0,0,0], 5] call ace_interact_menu_fnc_createAction
] call ace_interact_menu_fnc_addActionToObject;

// Service helis
[
  mission_act_service,
  0,
  [],
  [QGVAR(serviceAction), LLSTRING(Action_Service), "", {
    private _helis = vehicles select {
      (_x isKindOf "CUP_Uh60_Base") &&
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

// Service plane
[
  "B_Plane_CAS_01_dynamicLoadout_F",
  1,
  ["ACE_SelfActions"],
  [QGVAR(serviceJet), LLSTRING(Action_ServiceJet), "", {
    params ["_target"];
    _target spawn {
      _this setFuel 0;
      hint "Serwisowanie samolotu, oczekuj...";
      sleep 30;
      [QGVAR(serviceVehicles), [_this]] call CBA_fnc_globalEvent;
      [ace_player] call ace_medical_treatment_fnc_fullHealLocal;
      hint LLSTRING(Action_ServiceJet_Done);
    };
  }, {
    params ["_target"];
    (_target distance mission_plane_service) < 30
  }, {}, [], [0,0,0], 5] call ace_interact_menu_fnc_createAction
] call ace_interact_menu_fnc_addActionToClass;

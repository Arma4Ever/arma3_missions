#include "script_component.hpp"
/*
 * XEH_postInit.sqf
 * Poniższy kod wykona się po starcie misji, gdy wykonają się już pozostałe inity.
 * Dokumentacja: https://community.bistudio.com/wiki/Arma_3:_Functions_Library#Pre_and_Post_Init
 */

if (hasInterface) then {
  // Briefing
  #include "briefing.hpp"

  // Intro
  ["CBA_loadingScreenDone", {
    if (didJIP) exitWith {};
    0 spawn FUNC(intro);
  }] call CBA_fnc_addEventHandler;

  private _cargoBaseAction = [QGVAR(baseAction), "Pobierz skrzynie", "", {}, {true}, {}, [], [0,0,0], 5] call ace_interact_menu_fnc_createAction;
  private _cargoActionAmmo = [QGVAR(actionCargoAmmo), "Amunicja", "", {
    0 call FUNC(createCargoBox);
  }, {true}, {}, [], [0,0,0], 5] call ace_interact_menu_fnc_createAction;
  private _cargoActionMeds = [QGVAR(actionCargoMeds), "Medykamenty", "", {
    1 call FUNC(createCargoBox);
  }, {true}, {}, [], [0,0,0], 5] call ace_interact_menu_fnc_createAction;

  [mission_cargoboxes_interaction, 0, [], _cargoBaseAction] call ace_interact_menu_fnc_addActionToObject;
  [mission_cargoboxes_interaction, 0, [QGVAR(baseAction)], _cargoActionAmmo] call ace_interact_menu_fnc_addActionToObject;
  [mission_cargoboxes_interaction, 0, [QGVAR(baseAction)], _cargoActionMeds] call ace_interact_menu_fnc_addActionToObject;

  private _vehBaseAction = [QGVAR(baseAction), "Pobierz pojazd", "", {}, {true}, {}, [], [0,0,0], 5] call ace_interact_menu_fnc_createAction;
  [mission_vehicles_interaction, 0, [], _vehBaseAction] call ace_interact_menu_fnc_addActionToObject;
  [
    mission_vehicles_interaction,
    0,
    [QGVAR(baseAction)],
    [QGVAR(vehicleActionT90), "T-90A", "", {
      ["mission_spawn_vehicle", ["CUP_O_T90_RU", mission_vehicles_target, 111.204]] call CBA_fnc_serverEvent;
      hint "Pobrano T-90A z magazynu";
    }, {true}, {}, [], [0,0,0], 5] call ace_interact_menu_fnc_createAction
  ] call ace_interact_menu_fnc_addActionToObject;
  [
    mission_vehicles_interaction,
    0,
    [QGVAR(baseAction)],
    [QGVAR(vehicleActionT72), "T-72", "", {
      ["mission_spawn_vehicle", ["CUP_O_T72_RU", mission_vehicles_target, 111.204]] call CBA_fnc_serverEvent;
      hint "Pobrano T-72 z magazynu";
    }, {true}, {}, [], [0,0,0], 5] call ace_interact_menu_fnc_createAction
  ] call ace_interact_menu_fnc_addActionToObject;
  [
    mission_vehicles_interaction,
    0,
    [QGVAR(baseAction)],
    [QGVAR(vehicleActionBMP3), "BMP-3", "", {
      ["mission_spawn_vehicle", ["CUP_O_BMP3_RU", mission_vehicles_target, 111.204]] call CBA_fnc_serverEvent;
      hint "Pobrano BMP-3 z magazynu";
    }, {true}, {}, [], [0,0,0], 5] call ace_interact_menu_fnc_createAction
  ] call ace_interact_menu_fnc_addActionToObject;
  [
    mission_vehicles_interaction,
    0,
    [QGVAR(baseAction)],
    [QGVAR(vehicleActionBTR90), "BTR-90", "", {
      ["mission_spawn_vehicle", ["CUP_O_BTR90_RU", mission_vehicles_target, 111.204]] call CBA_fnc_serverEvent;
      hint "Pobrano BTR-90 z magazynu";
    }, {true}, {}, [], [0,0,0], 5] call ace_interact_menu_fnc_createAction
  ] call ace_interact_menu_fnc_addActionToObject;
  [
    mission_vehicles_interaction,
    0,
    [QGVAR(baseAction)],
    [QGVAR(vehicleActionBMP2K), "BMP-2K (Serwis)", "", {
      ["mission_spawn_vehicle", ["CUP_O_BMP_HQ_RU", mission_vehicles_target, 111.204]] call CBA_fnc_serverEvent;
      hint "Pobrano BMP-2K z magazynu";
    }, {true}, {}, [], [0,0,0], 5] call ace_interact_menu_fnc_createAction
  ] call ace_interact_menu_fnc_addActionToObject;

  [mission_planes_interaction_1, 0, [], _vehBaseAction] call ace_interact_menu_fnc_addActionToObject;
  [
    mission_planes_interaction_1,
    0,
    [QGVAR(baseAction)],
    [QGVAR(vehicleActionSU25T), "SU-25T", "", {
      ["mission_spawn_vehicle", ["CUP_O_Su25_Dyn_RU", mission_planes_target_1, 326.228]] call CBA_fnc_serverEvent;
      hint "Pobrano SU-25T z magazynu";
    }, {true}, {}, [], [0,0,0], 5] call ace_interact_menu_fnc_createAction
  ] call ace_interact_menu_fnc_addActionToObject;
  [
    mission_planes_interaction_1,
    0,
    [QGVAR(baseAction)],
    [QGVAR(vehicleActionKA60), "KA-60 Kasatka", "", {
      ["mission_spawn_vehicle", ["O_Heli_Light_02_unarmed_F", mission_planes_target_1, 326.228]] call CBA_fnc_serverEvent;
      hint "Pobrano KA-60 Kasatka z magazynu";
    }, {true}, {}, [], [0,0,0], 5] call ace_interact_menu_fnc_createAction
  ] call ace_interact_menu_fnc_addActionToObject;
  [
    mission_planes_interaction_1,
    0,
    [QGVAR(baseAction)],
    [QGVAR(vehicleActionBMP2K), "BMP-2K (Serwis)", "", {
      ["mission_spawn_vehicle", ["CUP_O_BMP_HQ_RU", mission_planes_target_1, 326.228]] call CBA_fnc_serverEvent;
      hint "Pobrano BMP-2K z magazynu";
    }, {true}, {}, [], [0,0,0], 5] call ace_interact_menu_fnc_createAction
  ] call ace_interact_menu_fnc_addActionToObject;

  [mission_planes_interaction_2, 0, [], _vehBaseAction] call ace_interact_menu_fnc_addActionToObject;
  [
    mission_planes_interaction_2,
    0,
    [QGVAR(baseAction)],
    [QGVAR(vehicleActionSU25T), "SU-25T", "", {
      ["mission_spawn_vehicle", ["CUP_O_Su25_Dyn_RU", mission_planes_target_2, 108.316]] call CBA_fnc_serverEvent;
      hint "Pobrano SU-25T z magazynu";
    }, {true}, {}, [], [0,0,0], 5] call ace_interact_menu_fnc_createAction
  ] call ace_interact_menu_fnc_addActionToObject;
  [
    mission_planes_interaction_2,
    0,
    [QGVAR(baseAction)],
    [QGVAR(vehicleActionKA60), "KA-60 Kasatka", "", {
      ["mission_spawn_vehicle", ["O_Heli_Light_02_unarmed_F", mission_planes_target_2, 108.316]] call CBA_fnc_serverEvent;
      hint "Pobrano KA-60 Kasatka z magazynu";
    }, {true}, {}, [], [0,0,0], 5] call ace_interact_menu_fnc_createAction
  ] call ace_interact_menu_fnc_addActionToObject;
  [
    mission_planes_interaction_2,
    0,
    [QGVAR(baseAction)],
    [QGVAR(vehicleActionBMP2K), "BMP-2K (Serwis)", "", {
      ["mission_spawn_vehicle", ["CUP_O_BMP_HQ_RU", mission_planes_target_2, 108.316]] call CBA_fnc_serverEvent;
      hint "Pobrano BMP-2K z magazynu";
    }, {true}, {}, [], [0,0,0], 5] call ace_interact_menu_fnc_createAction
  ] call ace_interact_menu_fnc_addActionToObject;

  private _shipActionService = [
    QGVAR(serviceShip),
    LLSTRING(Action_ServiceShip),
    "a3\ui_f\data\igui\cfg\simpletasks\types\rearm_ca.paa",
    {
      ["mission_rearm_ship", (vehicle ace_player)] call CBA_fnc_globalEvent;
      hint LLSTRING(Action_ServiceShipSuccess);
    },
    {(vehicle ace_player) inArea mission_supplyship_area}
  ] call ace_interact_menu_fnc_createAction;
  ["CUP_Frigate_Base", 1, ["ACE_SelfActions"], _shipActionService, true] call ace_interact_menu_fnc_addActionToClass;

  private _shipActionCheckDamage = [
    QGVAR(checkShipDamage),
    LLSTRING(Action_CheckShip),
    "a3\ui_f\data\igui\cfg\simpletasks\types\search_ca.paa",
    {
      hint parseText format [
        "<t size='1.2'>%1</t><br /><t size='2'>%2%3</t>",
        LLSTRING(Action_ShipDamage),
        ((damage (_this # 0)) * 100) toFixed 0,
        "%"
      ];
    },
    {true}
  ] call ace_interact_menu_fnc_createAction;
  ["CUP_Frigate_Base", 1, ["ACE_SelfActions"], _shipActionCheckDamage, true] call ace_interact_menu_fnc_addActionToClass;
};

0 spawn {
  sleep 5;
  // Disable CUP lamps check
  CUP_stopLampCheck = true;

  // Disable modules simulation
  {
    {
      _x enableSimulation false;
    } forEach (allMissionObjects _x);
    // Disable CUP lamps check - make sure
    CUP_stopLampCheck = true;
    sleep 0.5;
  } forEach [
    "ModuleHideTerrainObjects_F",
    "ModuleEditTerrainObject_F",
    "a3cs_modules_units3DENComp",
    "a3cs_modules_onDeleted",
    "a3cs_modules_createTask",
    "a3cs_modules_addAction",
    "a3cs_modules_onPlayerInArea"
  ];

  // Disable CUP lamps check - make *really* sure
  CUP_stopLampCheck = true;
};

if (isServer) then {
  // Disable fog
  0 setFog 0;
  999999 setFog 0;

  // Add NVG goggles to AI units
  ["CAManBase", "initPost", {
    _this spawn {
      params ["_unit"];
      sleep 3;
      private _side = side (group _unit);
      if (
        (_side isEqualTo independent) ||
        {_side isEqualTo west}
      ) then {
        _unit linkItem "a3cs_ai_NVGoggles";
        ["mission_setSkill", _unit, _unit] call CBA_fnc_targetEvent;
      };
    };
  }, true, [], true] call CBA_fnc_addClassEventHandler;

  // Count kills
  addMissionEventHandler ["EntityKilled", {
  	params ["_unit"];

    if !(_unit isKindOf "CAManBase") exitWith {};
    private _side = side (group _unit);

    if ((_side isEqualTo west) || {_side isEqualTo independent}) then {
      GVAR(confirmedKills) = GVAR(confirmedKills) + 1;
    };
  }];
};

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

  private _baseAction = [QGVAR(baseAction), "Pobierz skrzynie", "", {}, {true}, {}, [], [0,0,0], 5] call ace_interact_menu_fnc_createAction;
  private _actionAmmo = [QGVAR(actionCargoAmmo), "Amunicja", "", {
    0 call FUNC(createCargoBox);
  }, {true}, {}, [], [0,0,0], 5] call ace_interact_menu_fnc_createAction;
  private _actionMeds = [QGVAR(actionCargoMeds), "Medykamenty", "", {
    1 call FUNC(createCargoBox);
  }, {true}, {}, [], [0,0,0], 5] call ace_interact_menu_fnc_createAction;

  [mission_cargoboxes_interaction, 0, [], _baseAction] call ace_interact_menu_fnc_addActionToObject;
  [mission_cargoboxes_interaction, 0, [QGVAR(baseAction)], _actionAmmo] call ace_interact_menu_fnc_addActionToObject;
  [mission_cargoboxes_interaction, 0, [QGVAR(baseAction)], _actionMeds] call ace_interact_menu_fnc_addActionToObject;
};

if (isServer) then {
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
      };
    };
  }, true, [], true] call CBA_fnc_addClassEventHandler;

  addMissionEventHandler ["EntityKilled", {
  	params ["_unit"];

    if !(_unit isKindOf "CAManBase") exitWith {};
    private _side = side (group _unit);

    if ((_side isEqualTo west) || {_side isEqualTo independent}) then {
      GVAR(confirmedKills) = GVAR(confirmedKills) + 1;
    };
  }];
};

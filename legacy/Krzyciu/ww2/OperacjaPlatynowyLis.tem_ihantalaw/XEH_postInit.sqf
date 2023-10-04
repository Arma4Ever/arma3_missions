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

  enableSaving [false, false];
  enableSentences false;
  "LightShafts" ppEffectAdjust [0.3, 0.4, 0.4, 0.8];
  setViewDistance 650;
  setObjectViewDistance 550;

  player setUnitRecoilCoefficient 0.55;
  player setCustomAimCoef 0.9;
  player setSpeaker "NoVoice";


  //Change view distance if in vehicle
  ["vehicle", {
      setViewDistance 950;
      setObjectViewDistance 850;
  }] call CBA_fnc_addPlayerEventHandler;

  // Disable modules simulation
  0 spawn {
      {
        {
          _x enableSimulation false;
        } forEach (allMissionObjects _x);
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
  };

  [{
    private _near = nearestObjects [player, ["Man"], 50];
    {
      if ((alive _x) && (isNull objectParent _x)) then {
        _x spawn FUNC(breath);
      };
    } forEach _near;
    }, 10, []] call CBA_fnc_addPerFrameHandler;

    private _placeFire = [
      QGVAR(placeFire),
      "Postaw ognisko",
      "a3\ui_f\data\igui\cfg\actions\obsolete\ui_action_fire_in_flame_ca.paa",
      {
      [player] call FUNC(placeFire);
      },
      {[player, "ACE_MRE_CreamTomatoSoup"] call ace_common_fnc_hasItem}
    ] call ace_interact_menu_fnc_createAction;
    [player, 1, ["ACE_SelfActions"], _placeFire, true] call ace_interact_menu_fnc_addActionToObject;

    GVAR(campfire) = objNull;
    GVAR(deployPFH) = -1;
    ["ace_unconscious", {_this call FUNC(handleUnconscious)}] call CBA_fnc_addEventHandler;

    CUP_stopLampCheck = true;

    ["ace_unloadCargo", {
        params ["_item", "_vehicle", ["_unloader", objNull]];
        if (isNull _unloader || {!(_vehicle isKindOf "Ship")}) exitWith {};
        // we can't support virtual items
        if (_item isEqualType "") exitWith {};

        [{
            params ["_item", "", "_unloader"];
            // unloading failed
            if (!isNull attachedTo _item) exitWith {};

            [ACE_player, _item] call ace_dragging_fnc_carryObject;
        }, _this] call CBA_fnc_execNextFrame;

    }] call CBA_fnc_addEventHandler;
};


if (isServer) then {

  private _players = (getMissionLayerEntities "Players") #0;
  private _stugs = (getMissionLayerEntities "Stugs") #0;
  {[_x, selectRandom ["WhiteHead_01","WhiteHead_02","WhiteHead_03","WhiteHead_04","WhiteHead_05","WhiteHead_06","WhiteHead_07","WhiteHead_08","WhiteHead_09","WhiteHead_10","WhiteHead_11","WhiteHead_12","WhiteHead_13","WhiteHead_14","WhiteHead_15","WhiteHead_16","WhiteHead_17","WhiteHead_18"]] remoteExec ["setFace", 0, true];} forEach _players;
  {_x setObjectTextureGlobal [0, "data\ger_camo.paa"];} forEach _players;
  {_x setObjectTextureGlobal [0, "data\stug\body.paa"];_x setObjectTextureGlobal [1, "data\stug\misc.paa"];} forEach _stugs;
  amb_4 switchMove "Acts_CivilShocked_1";

};

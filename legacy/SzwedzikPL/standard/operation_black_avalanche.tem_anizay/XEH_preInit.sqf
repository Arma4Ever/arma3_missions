/***********************************************************************
    XEH_preInit.sqf
    Poniższy kod wykona się na serwerze oraz u każdego gracza przed rozpoczęciem wczytywania obiektów misji
************************************************************************/

#define PATH(fncName) functions\fnc##_##fncName.sqf
#define PREP(fncName) mission##_##fnc##_##fncName = compileFinal preprocessFileLineNumbers #PATH(fncName)

PREP(initBriefingSlidesDialog);
PREP(intro);
PREP(spawnSimpleObjects);

["mission_failed_breach", {
  params ["_unit"];
  if !(hasInterface) exitWith {};
  if (ace_player isEqualTo _unit) then {
    hint localize "STR_Mission_Hint_FailedBreach";
  };
}] call CBA_fnc_addEventHandler;

if (isServer) then {
  ["mission_disable_transformer", {
    if !(isServer) exitWith {};

    0 spawn {
      if (isNil "power_transformer_helper" || {isNull power_transformer_helper}) exitWith {};
      deleteVehicle power_transformer_helper;
      private _lamps = nearestObjects [power_transformer, [
        "Land_LampShabby_F",
        "Land_House_C_1_dam_EP1",
        "Land_House_C_1_v2_EP1",
        "Land_House_C_1_EP1",
        "Land_House_C_5_V2_EP1",
        "Land_House_C_5_V1_EP1",
        "Land_House_C_12_EP1",
        "Land_House_C_5_EP1",
        "Land_House_C_3_EP1",
        "Land_House_C_2_EP1",
        "Land_House_C_9_EP1",
        "Land_House_C_5_V3_EP1"
      ], 1350];
      playSound3D [
        getMissionPath "data\transformer.ogg",
        power_transformer,
        false,
        getPosASL power_transformer,
        4.5,
        1,
        150
      ];
      power_transformer_sparks_bottom enableSimulationGlobal true;
      sleep 2;
      power_transformer_sparks_top enableSimulationGlobal true;
      sleep 9;
      power_transformer_fire enableSimulationGlobal true;
      sleep 15.5;
      deleteVehicle power_transformer_sparks_bottom;
      deleteVehicle power_transformer_sparks_top;
      deleteVehicle power_transformer_fire;
      {
        _x setDamage 0.92;
        if ((_forEachIndex % 5) isEqualTo 0) then {
          sleep 0.2;
        };
      } forEach _lamps;
    };
  }] call CBA_fnc_addEventHandler;

  ["ace_explosives_detonate", {
    params ["_unit", "_explosive", "_delay"];
    if ((_explosive distance compound_gate_3) > 3.2) exitWith {};
    [{
      params ["_unit"];
      [{
        params ["_unit"];
        compound_gate_3 animateSource ["Door_1_sound_source", 0, true];
        compound_gate_3 animateSource ["Door_2_sound_source", 0, true];
        ["mission_failed_breach", [_unit]] call CBA_fnc_globalEvent;

        // Ugly as fuck but works for dynamic EH
        [{
          compound_gate_3 animateSource ["Door_1_sound_source", 0, true];
          compound_gate_3 animateSource ["Door_2_sound_source", 0, true];
          [{
            compound_gate_3 animateSource ["Door_1_sound_source", 0, true];
            compound_gate_3 animateSource ["Door_2_sound_source", 0, true];
            [{
              compound_gate_3 animateSource ["Door_1_sound_source", 0, true];
              compound_gate_3 animateSource ["Door_2_sound_source", 0, true];
            }, []] call CBA_fnc_execNextFrame;
          }, []] call CBA_fnc_execNextFrame;
        }, []] call CBA_fnc_execNextFrame;

        [{
          compound_gate_3 animateSource ["Door_1_sound_source", 0, true];
          compound_gate_3 animateSource ["Door_2_sound_source", 0, true];
        }, [], 0.5] call CBA_fnc_waitAndExecute;

        [{
          compound_gate_3 animateSource ["Door_1_sound_source", 0, true];
          compound_gate_3 animateSource ["Door_2_sound_source", 0, true];
        }, [], 1] call CBA_fnc_waitAndExecute;

        [{
          compound_gate_3 animateSource ["Door_1_sound_source", 0, true];
          compound_gate_3 animateSource ["Door_2_sound_source", 0, true];
        }, [], 1.5] call CBA_fnc_waitAndExecute;

        [{
          compound_gate_3 animateSource ["Door_1_sound_source", 0, true];
          compound_gate_3 animateSource ["Door_2_sound_source", 0, true];
        }, [], 2] call CBA_fnc_waitAndExecute;

        [{
          compound_gate_3 animateSource ["Door_1_sound_source", 0, true];
          compound_gate_3 animateSource ["Door_2_sound_source", 0, true];
        }, [], 4] call CBA_fnc_waitAndExecute;
      }, [_unit]] call CBA_fnc_execNextFrame;
    }, [_unit], _delay] call CBA_fnc_waitAndExecute;
  }] call CBA_fnc_addEventHandler;
};

#include "script_component.hpp"
/*
 * XEH_preInit.sqf
 * Poniższy kod wykona się na serwerze oraz u każdego gracza przed rozpoczęciem wczytywania obiektów misji
 */

PREP(intro);
PREP(typeText);
PREP(breath);
PREP(blizzard);
PREP(handleDamage);
PREP(handleHeal);
PREP(placeFire);
PREP(placeConfirm);
PREP(placeCancel);
PREP(handleUnconscious);

["Krzyc_timer", {

  if (isServer) then {
    [{
      params ["_args", "_handle"];
        private _var = missionNamespace getVariable ["evacuatedForces", 3.5];
          if (_var == 100 || missionNamespace getVariable ["hqTaken", false]) exitWith {
            [_handle] call CBA_fnc_removePerFrameHandler;
          };
        missionNamespace setVariable ["evacuatedForces", _var + 0.5, true];
    }, 100] call CBA_fnc_addPerFrameHandler;
  };

  if (hasInterface) then {
    [{
      params ["_args", "_handle"];
        if ((missionNamespace getVariable ["evacuatedForces", 3.5] == 100) || missionNamespace getVariable ["hqTaken", false]) then {
          [_handle] call CBA_fnc_removePerFrameHandler;
        };

        [
              [format ["%1 %2 %3",LLSTRING(EvacuatedForces_1), missionNamespace getVariable ["evacuatedForces", 0], LLSTRING(EvacuatedForces_2)]],
              [safeZoneX + safeZoneW - 2.42, 2.42],
              [safeZoneY + safeZoneH - 0.3, 0.25]
        ] spawn FUNC(typeText);

    }, 300] call CBA_fnc_addPerFrameHandler;
  };

}] call CBA_fnc_addEventHandler;


["Krzyc_blizzard", {

    if (isServer) exitWith {
      missionNamespace setVariable ["Blizzard", true, true];
      30 setFog 0.8;
      [{
        missionNamespace setVariable ["Blizzard", false, true];
        30 setFog 0.1;
      }, [], 245] call CBA_fnc_waitAndExecute;
    };

    if (hasInterface) then {
    [0.75,65] spawn FUNC(blizzard);

      if (typeOf player == "VirtualCurator_F") exitWith {};

      0 spawn {
          private _text = selectRandom [LLSTRING(Blizzard_1), LLSTRING(Blizzard_2), LLSTRING(Blizzard_3)];
          private _textFinal = ("<t color='#9abf9a' shadow = 1 size='1.4'>Ty: </t><t color='#9abf9a' shadow = 2 size ='1.3'>" + " " + _text + "</t>");
          sleep 8;
          titleText [_textFinal, "PLAIN DOWN", -1, true, true];
          sleep 17;
          private _cold =
          [{
              private _campfires = count (player nearObjects ["FirePlace_burning_F", 5]);
              private _buildings = lineIntersects [(getposASL player), [(getposASL player #0),(getposASL player #1),((getposASL player #2) + 4)]];

              if ((_campfires < 1) && (_buildings == false) && (isNull objectParent player)) then {
                [player] call FUNC(handleDamage);
              } else {[player] call FUNC(handleHeal);};
          }, 5, []] call CBA_fnc_addPerFrameHandler;

          [{
              [_cold] call CBA_fnc_removePerFrameHandler;
              0 spawn {
                sleep 15;
                ppEffectDestroy Krzyc_pain;
                player forceWalk false;
                "zimno" cutRsc ["RscTitleDisplayEmpty", "PLAIN"];
            };
          }, _cold, 245] call CBA_fnc_waitAndExecute;
      };
    };
}] call CBA_fnc_addEventHandler;

if (hasInterface) then {

  ["Krzyc_Atak_1", {
      titleText [format [
        "<t size='1.4' color='#9abf9a' shadow='2'>%1</t>",
        LLSTRING(Attack)
      ], "PLAIN DOWN", -1, false, true];
  }] call CBA_fnc_addEventHandler;

};

if (isServer) then {
  ace_medical_playerDamageThreshold = 5;
  ace_viewdistance_viewDistanceAirVehicle = 2;
  ace_viewdistance_viewDistanceLandVehicle = 2;
  ace_viewdistance_viewDistanceOnFoot = 2;
  0 execVM "scripts\drawLine.sqf";

};

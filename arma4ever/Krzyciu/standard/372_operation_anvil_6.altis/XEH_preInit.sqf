#include "script_component.hpp"
/*
 * XEH_preInit.sqf
 * Poniższy kod wykona się na serwerze oraz u każdego gracza przed rozpoczęciem wczytywania obiektów misji
*/

PREP(intro);
PREP(typeText);
PREP(paradrop);
PREP(saveDisplay);
PREP(restoreDisplay);
PREP(calculate);
PREP(supplyDrop);
PREP(breachDoor);
PREP(lockDoors);

PREP(aceScotopicEffects);

[QGVAR(paradrop), {
    if (isServer) exitWith {
      [{0 spawn FUNC(paradrop)}, [], 5] call CBA_fnc_waitAndExecute;
    };
    cutText ["","BLACK OUT"];
    [{cutText ["","BLACK IN"];}, [], 10] call CBA_fnc_waitAndExecute;
}] call CBA_fnc_addEventHandler;

if (isServer) then {
  [QGVAR(addMagazine), {
    params ["_target", "_mag"];
    _target addMagazineGlobal _mag;
  }] call CBA_fnc_addEventHandler;

  [QGVAR(supplyDrop), {
    params ["_player"];
    missionNamespace setVariable [QGVAR(supplyDrop), 0, true];
    [{	
      params ["_player"];
      [_player] spawn FUNC(supplyDrop);
    }, [_player], 10] call CBA_fnc_waitAndExecute;
  }] call CBA_fnc_addEventHandler;
};
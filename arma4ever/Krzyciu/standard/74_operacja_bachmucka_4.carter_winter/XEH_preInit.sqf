#include "script_component.hpp"
/*
 * XEH_preInit.sqf
 * Poniższy kod wykona się na serwerze oraz u każdego gracza przed rozpoczęciem wczytywania obiektów misji
 */

PREP(intro);
PREP(introSlideshow);
PREP(typeText);
PREP(saveDisplay);
PREP(restoreDisplay);
PREP(calculate);
PREP(additionalObjects);
PREP(showHotel);
PREP(spawnSupplies);
PREP(spawnVehicle);
PREP(spawnAttacker);
PREP(initDynamicAILocal);
PREP(arty);
PREP(jammer);
PREP(deform);
PREP(camera);
PREP(setFace);

GVAR(shouldFilterAttackers) = true;
GVAR(playerQuota) = 1;
GVAR(attackLoopPlayer) = 0.5;
GVAR(attackCycleDelay) = 10;
GVAR(filterLoopPlayer) = 0.5;
GVAR(filterCycleDelay) = 360;
GVAR(maxSpawnDistance) = 375;
GVAR(minSpawnDistance) = 100;
GVAR(maxAttackerDistance) = 450;
GVAR(attackerSkill) = 0.3;
GVAR(spawnedAI) = 0;
GVAR(despawnedAI) = 0;
GVAR(attackersCount) = 20;
GVAR(availablePositions) = [];
GVAR(attackersItemsData) = [
  "rhs_30Rnd_545x39_AK_plum_green",
  "ACE_packingBandage",
  "ACE_epinephrine"
];
GVAR(sizeCoef) = 1;
GVAR(ammoCount) = 12;
GVAR(headlessClients) = [A4ES_HC_1, A4ES_HC_2, A4ES_HC_3];

ace_mk6mortar_useAmmoHandling = false;
lambs_danger_disableAIHideFromTanksAndAircraft = true;

setViewDistance 650;
setObjectViewDistance 650;

if (hasInterface) then {
  GVAR(additionalObjects) = [];

  [QGVAR(stabilizeUnit), {
    params ["_unit", "", "_classname"];
    ["ace_medical_CPRSucceeded", _unit] call CBA_fnc_localEvent;
    _unit setVariable ["ace_medical_pain", 0.2, true];
    _unit setVariable ["ace_medical_bloodVolume", 3.5, true];
    _unit setVariable ["ace_medical_bloodPressure", [70, 50], true];
    _unit setVariable ["ace_medical_heartRate", 50, true];
    _unit setVariable ["ace_medical_peripheralResistance", 100, true];
    [_unit, false] call ace_medical_status_fnc_setUnconsciousState;
  }] call CBA_fnc_addEventHandler;
};

if (isServer) then {
  [QGVAR(introEnded), {
    if (missionNamespace getVariable [QGVAR(introHasEnded), false]) exitWith {};
    missionNamespace setVariable [QGVAR(introHasEnded), true, true];
  }] call CBA_fnc_addEventHandler;

  [QGVAR(addMagazine), {
    params ["_target", "_mag"];
    _target addMagazineGlobal _mag;
  }] call CBA_fnc_addEventHandler;

  [QGVAR(spawnSupplies), {
    _this call FUNC(spawnSupplies);
  }] call CBA_fnc_addEventHandler;

   [QGVAR(spawnVehicle), {
    _this call FUNC(spawnVehicle);
   }] call CBA_fnc_addEventHandler;
};

[QGVAR(hotelEvent), {
  if (isServer) then {
    [{deleteVehicle Krzyc_hotel;}, [], 15] call CBA_fnc_waitAndExecute;
  };
  if (hasInterface) then {
    0 spawn FUNC(showHotel);
  };
}] call CBA_fnc_addEventHandler;

[QGVAR(addLocation), {
  params ["_pos"];
  {GVAR(availablePositions) pushback _x} forEach _pos;;
}] call CBA_fnc_addEventHandler;

[QGVAR(removeLocation), {
  params ["_pos"];
  {GVAR(availablePositions) = GVAR(availablePositions) - [_x]} forEach _pos;
}] call CBA_fnc_addEventHandler;

[QGVAR(deleteJammer), {
  if (isServer) exitWith {};
  if (isNil GVAR(jammerHandler)) then {
	  [GVAR(jammerHandler)] call CBA_fnc_removePerFrameHandler;
  };
}] call CBA_fnc_addEventHandler;

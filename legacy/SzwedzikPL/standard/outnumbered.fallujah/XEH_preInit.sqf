#include "script_component.hpp"

PREP(addFireObject);
PREP(checkViewDistance);
PREP(initHumvee);
PREP(intro);
PREP(introSlideshow);

[QGVAR(say3D), {
  (_this # 0) say3D (_this # 1);
}] call CBA_fnc_addEventHandler;

[QGVAR(cleanGroups), {
  {
    if (
      (local _x) &&
      {(side _x) isEqualTo east} &&
      {(units _x) isEqualTo []}
    ) then {
      deleteGroup _x;
    };
  } forEach allGroups;
}] call CBA_fnc_addEventHandler;

if (is3DEN) then {
  0 call (compileScript ["scripts\enablePPEffects.sqf"]);
  0 call (compileScript ["scripts\hideObjects.sqf"]);
  0 call (compileScript ["scripts\createWrecks.sqf"]);

  {
    _x setDamage 0.9;
    _x hideObjectGlobal true;
  } forEach (nearestObjects [
   [worldSize / 2, worldSize / 2, 0],
   [
     "Land_Lampa_ind",
     "Land_Lampa_sidl",
     "Land_Lampa_sidl_3",
     "Land_A_GeneralStore_01",
     "Land_A_GeneralStore_01a",
     "Land_Ind_Vysypka",
     "Land_Ind_Mlyn_03",
     "Land_Ind_Mlyn_04",
     "Land_Mil_Guardhouse"
   ],
   worldSize,
   true
  ]);
};

if (isServer) then {
  fsf_checkFires = true;
  fsf_simArtillery = true;
  fsf_evacCandidates = 99;
  fsf_fireObjects = [];

  [QGVAR(disableDynSim), {
    params ["_entity"];
    if (_entity isKindOf "CAManBase") then {
      (group _entity) enableDynamicSimulation false;
    } else {
      _entity enableDynamicSimulation false;
    };
  }] call CBA_fnc_addEventHandler;
};

#include "script_component.hpp"
/*
 * XEH_preInit.sqf
 * Poniższy kod wykona się na serwerze oraz u każdego gracza przed rozpoczęciem wczytywania obiektów misji
 */

PREP(defenderLogic);
PREP(initVehicle);
PREP(intro);
PREP(introSitrep);
PREP(introSlideshow);
PREP(spawnVehicle);

if (is3DEN) then {
  0 call (compileScript ["scripts\hideObjects.sqf"]);
};

[QGVAR(serviceVehicles), {
  {
    if (isServer) then {
      _x setDamage 0;
    };
    _x setFuel 1;
    _x setVehicleAmmo 1;
  } forEach _this;
}] call CBA_fnc_addEventHandler;

[QGVAR(defenderLogic), {
  _this spawn FUNC(defenderLogic);
}] call CBA_fnc_addEventHandler;

// Kod wykonywany lokalnie u gracza, za każdym razem gdy dołączy do gry
if (hasInterface) then {
  [QGVAR(playWhistle), {
    params ["_audio", "_target"];
    _target say3D [_audio, 200, 1, false];
  }] call CBA_fnc_addEventHandler;

  [QGVAR(playWhistling), {
    params ["_audio", "_target"];
    _target say3D [_audio, 100, 1, false];
  }] call CBA_fnc_addEventHandler;

  [QGVAR(dayCount), {
    params ["_dayCount", "_kills"];

    // Display
    [
      [
        ["Operation Scotland", "font='tt2020style_e_vn'"],
        ["", "<br/>"],
        [format [LLSTRING(UI_DayCount_Day), _dayCount], "font='tt2020base_vn'"],
        ["", "<br/>"],
        [format ["Body count: %1", _kills], "font='tt2020base_vn_bold'"]
      ],
    	safeZoneX - 0.01,
    	safeZoneY + (1 - 0.125) * safeZoneH,
    	true,
    	"<t align='right' size='1.0'>%1</t>"
    ] spawn BIS_fnc_typeText2;
  }] call CBA_fnc_addEventHandler;
};

// Kod wykonywany wyłącznie na serwerze - wykonuje się tylko raz, na starcie misji
if (isServer) then {
  GVAR(confirmedKills) = 0;
  GVAR(timeMultiplierNight) = 32;
  GVAR(timeMultiplierDay) = 24;

  [QGVAR(showCounter), {
    [QGVAR(dayCount), [GVAR(dayNumber), GVAR(confirmedKills)]] call CBA_fnc_globalEvent;
  }] call CBA_fnc_addEventHandler;

  [QGVAR(spawnVehicle), {
    _this call FUNC(spawnVehicle);
  }] call CBA_fnc_addEventHandler;

  [QGVAR(flagTaken), {
    params ["_flag", "_marker"];
    if (_flag getVariable [QGVAR(flagTaken), false]) exitWith {};
    _flag setVariable [QGVAR(flagTaken), true, true];
    _flag setFlagTexture "vn\objects_f_vietnam\flags\data\vn_flag_01_usa_dmg_ca.paa";
    _marker setMarkerType "vn_flag_usa";
  }] call CBA_fnc_addEventHandler;

  [QGVAR(switchDynSim), {
    params ["_entity", "_state"];
    if (_entity isKindOf "CAManBase") then {
      (group _entity) enableDynamicSimulation _state;
    } else {
      _entity enableDynamicSimulation _state;
    };
  }] call CBA_fnc_addEventHandler;
};

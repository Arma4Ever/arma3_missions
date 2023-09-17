#include "script_component.hpp"
/*
 * XEH_preInit.sqf
 * Poniższy kod wykona się na serwerze oraz u każdego gracza przed rozpoczęciem wczytywania obiektów misji
 */

PREP(createCargoBox);
PREP(initBuilding);
PREP(initDayCounter);
PREP(intro);

["mission_takeFlag", {
  params ["_flag"];
  _flag setFlagTexture "ca\data\flag_rus_co.paa";
}] call CBA_fnc_addEventHandler;

["mission_rearm_ship", {
    params ["_ship"];
    _ship setVehicleAmmo 1;
    _ship setFuel 1;

    if (isServer) then {
      _ship setDamage 0;
    };
}] call CBA_fnc_addEventHandler;

["ACE_medicalSupplyCrate_advanced", "init", {
  params ["_box"];
  if (isServer) then {
    _box enableDynamicSimulation true;
  };
}, false, [], true] call CBA_fnc_addClassEventHandler;

["CUP_BOX_RU_Ammo_F", "init", {
  params ["_box"];
  [_box, true, [0, 1, 0], 0, true] call ace_dragging_fnc_setDraggable;
  if (isServer) then {
    _box enableDynamicSimulation true;
  };
}, false, [], true] call CBA_fnc_addClassEventHandler;

if !(hasInterface) exitWith {};

[QGVAR(dayCount), {
  params ["_dayCount", "_kills"];

  // Display
  [
    [
      ["Operatsiya Magnoliya", "font = 'PuristaSemiBold'"],
      ["", "<br/>"],
      [format [LLSTRING(UI_DayCount_Day), _dayCount], "font = 'PuristaMedium'"],
      ["", "<br/>"],
      [format ["Potwierdzone eliminacje: %1", _kills], "font = 'PuristaMedium'"]
    ],
  	safeZoneX - 0.01,
  	safeZoneY + (1 - 0.125) * safeZoneH,
  	true,
  	"<t align = 'right' size = '1.0'>%1</t>"
  ] spawn BIS_fnc_typeText2;
}] call CBA_fnc_addEventHandler;

// Make sure helpers are added to curators
["a3cs_curator_curatorModuleAssigned", {
  0 spawn {
    {
      sleep 0.5;
      ["a3cs_curator_addObjects", allMissionObjects _x] call CBA_fnc_serverEvent;
    } forEach [
      "Land_HelperCone_F",
      "Land_HelperCone2_F",
      "Sign_Arrow_Large_F",
      "Sign_Arrow_Large_Green_F",
      "Sign_Arrow_Large_Blue_F",
      "Sign_Arrow_Large_Cyan_F",
      "Sign_Arrow_Large_Pink_F",
      "Sign_Arrow_Large_Yellow_F",
      "Sign_Sphere200cm_F"
    ];
  };
}] call CBA_fnc_addEventHandler;

#include "script_component.hpp"

PREP(intro);
PREP(introSlideshow);
PREP(introSitrep);
PREP(playSubtitles);
PREP(spawnSupplies);
PREP(spawnVehicle);
PREP(mottoText);

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

if (hasInterface) then {
  [QGVAR(showMotto), {
    [
      format [
        "<t font='tt2020base_vn_bold' shadow='1' size='1.2'>%1</t><br /><t font='tt2020base_vn' shadow='1' size='1'>%2</t>",
        LLSTRING(Motto_Line1),
        LLSTRING(Motto_Line2)
      ], -1, 0.65, 1, 5, 0.15, 789
    ] spawn mission_fnc_mottoText;
  }] call CBA_fnc_addEventHandler;

  [QGVAR(playStartMusic), {
    private _vehicle = objectParent player;
    if (isNull _vehicle || {!(_vehicle isKindOf "vn_air_uh1_01_base")}) exitWith {};
    _vehicle say3D ["vn_drmm_song_os_01", 100, 1, 2];
  }] call CBA_fnc_addEventHandler;

  [QGVAR(dayCount), {
    params ["_dayCount", "_kills"];

    // Display
    [
      [
        ["Operation ""Green Run""", "font='tt2020style_e_vn'"],
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

  [QGVAR(nortonMessage), {
    0 spawn {
      playSound QGVAR(norton_radio_message);
      [
        ["Gen. Norton", LLSTRING(Sub_NortonMsg_P1), 0],
        ["Gen. Norton", LLSTRING(Sub_NortonMsg_P2), 1],
        ["Gen. Norton", LLSTRING(Sub_NortonMsg_P3), 5.4],
        ["Gen. Norton", LLSTRING(Sub_NortonMsg_P4), 10.6],
        ["Gen. Norton", LLSTRING(Sub_NortonMsg_P5), 16.2],
        ["Gen. Norton", LLSTRING(Sub_NortonMsg_P6), 22],
        ["Gen. Norton", LLSTRING(Sub_NortonMsg_P7), 25.1],
        ["Gen. Norton", LLSTRING(Sub_NortonMsg_P8), 30],
        ["Gen. Norton", LLSTRING(Sub_NortonMsg_P9), 36.3],
        ["Gen. Norton", LLSTRING(Sub_NortonMsg_P10), 39.4],
        ["Gen. Norton", LLSTRING(Sub_NortonMsg_P11), 45.3],
        ["Gen. Norton", LLSTRING(Sub_NortonMsg_P12), 48],
        ["Gen. Norton", LLSTRING(Sub_NortonMsg_P13), 53.8],
        ["Gen. Norton", LLSTRING(Sub_NortonMsg_P14), 55.7],
        ["Gen. Norton", LLSTRING(Sub_NortonMsg_P15), 58.8],
        ["Gen. Norton", LLSTRING(Sub_NortonMsg_P16), 63.6],
        ["Gen. Norton", LLSTRING(Sub_NortonMsg_P17), 64.9],
        ["Gen. Norton", LLSTRING(Sub_NortonMsg_P18), 71.1],
        ["Gen. Norton", LLSTRING(Sub_NortonMsg_P19), 77.65],
        ["Gen. Norton", LLSTRING(Sub_NortonMsg_P20), 80.6],
        ["Gen. Norton", LLSTRING(Sub_NortonMsg_P21), 86.4],
        ["Gen. Norton", LLSTRING(Sub_NortonMsg_P22), 89.3],
        ["Gen. Norton", LLSTRING(Sub_NortonMsg_P23), 93.6]
      ] spawn FUNC(playSubtitles);

      sleep 24;

      // Briefing updated notification
      [
        QGVAR(briefUpdated),
        [LLSTRING(Notification_BriefingUpdated)]
      ] call BIS_fnc_showNotification;
    };
  }] call CBA_fnc_addEventHandler;

  [QGVAR(addDivisionBrief), {
    player createDiaryRecord [
        "Diary", [
            localize "STR_Mission_Diary_Division_Title",
            localize "STR_Mission_Diary_Division_Text"
        ]
    ];
  }] call CBA_fnc_addEventHandler;

  [QGVAR(playWhistle), {
    params ["_audio", "_target"];
    _target say3D [_audio, 200, 1, false];
  }] call CBA_fnc_addEventHandler;

  [QGVAR(playWhistling), {
    params ["_audio", "_target"];
    _target say3D [_audio, 100, 1, false];
  }] call CBA_fnc_addEventHandler;
};

if (isServer) then {
  GVAR(confirmedKills) = 0;
  GVAR(officerCaught) = false;

  [QGVAR(addMagazine), {
    params ["_target", "_mag"];
    _target addMagazineGlobal _mag;
  }] call CBA_fnc_addEventHandler;

  [QGVAR(spawnVehicle), {
    _this call FUNC(spawnVehicle);
  }] call CBA_fnc_addEventHandler;

  [QGVAR(spawnSupplies), {
    _this call FUNC(spawnSupplies);
  }] call CBA_fnc_addEventHandler;

  [QGVAR(showCounter), {
    [QGVAR(dayCount), [GVAR(dayNumber), GVAR(confirmedKills)]] call CBA_fnc_globalEvent;
  }] call CBA_fnc_addEventHandler;

  [QGVAR(startOperation), {
    0 call (compileScript ["scripts\onOperationStart.sqf"]);
  }] call CBA_fnc_addEventHandler;

  [QGVAR(perimeterSecured), {
    0 call (compileScript ["scripts\onPerimeterSecured.sqf"]);
  }] call CBA_fnc_addEventHandler;

  [QGVAR(initDefence), {
    0 call (compileScript ["scripts\onInitDefence.sqf"]);
  }] call CBA_fnc_addEventHandler;

  [QGVAR(addArtTask), {
    params ["_pos"];
    private _id = (missionNamespace getVariable [QGVAR(lastArtTaskId), 0]) + 1;
    private _task = format ["taskArt_%1", _id];

    // Create marker
    private _marker = createMarker [format ["marker_%1", _task], _pos];
    _marker setMarkerShapeLocal "ELLIPSE";
    _marker setMarkerSizeLocal [320, 320];
    _marker setMarkerBrushLocal "DiagGrid";
    _marker setMarkerColorLocal "ColorEAST";
    _marker setMarkerAlpha 0.6;

    // Create task
    [
      [
        _task,
        "",
        0,
        "STR_Mission_Task_Art_Title",
        "STR_Mission_Task_Art_Desc",
        "destroy",
        _pos,
        0
      ],
      true
    ] call a3cs_tasks_fnc_createTask;

    // Save data
    missionNamespace setVariable [QGVAR(lastArtTaskId), _id, true];
    missionNamespace setVariable [QGVAR(lastArtTask), _task, true];
  }] call CBA_fnc_addEventHandler;

  [QGVAR(successArtTask), {
    private _task = missionNamespace getVariable [QGVAR(lastArtTask), ""];
    if (_task isEqualTo "") exitWith {};
    deleteMarker (format ["marker_%1", _task]);
    [
      _task,
      2,
      true
    ] call a3cs_tasks_fnc_setTaskState;
  }] call CBA_fnc_addEventHandler;

  [QGVAR(defenceResult), {
    params ["_success"];
    [
      "task_06",
      [3, 2] select _success,
      true
    ] call a3cs_tasks_fnc_setTaskState;
  }] call CBA_fnc_addEventHandler;

  [QGVAR(bodyCountResult), {
    params ["_success"];
    [
      "task_07",
      [3, 2] select _success,
      true
    ] call a3cs_tasks_fnc_setTaskState;
  }] call CBA_fnc_addEventHandler;

  [QGVAR(bodiesResult), {
    params ["_success"];
    [
      "task_bodies",
      [3, 2] select _success,
      true
    ] call a3cs_tasks_fnc_setTaskState;
  }] call CBA_fnc_addEventHandler;

  [QGVAR(startRetreat), {
    [
      [
        "task_08",
        "",
        0,
        "STR_Mission_Task_08_Title",
        "STR_Mission_Task_08_Desc",
        "exit",
        [15729.8, 7255.75, 0],
        0
      ],
      true
    ] call a3cs_tasks_fnc_createTask;
  }] call CBA_fnc_addEventHandler;

  [QGVAR(endRetreat), {
    [
      "task_08",
      2,
      true
    ] call a3cs_tasks_fnc_setTaskState;
  }] call CBA_fnc_addEventHandler;

  [QGVAR(suppliesDestroyed), {
    params ["_object"];

    if (isNull _object) exitWith {};

    if (_object isEqualTo (missionNamespace getVariable ["mission_officer_supplies", objNull])) exitWith {
      0 call (compileScript ["scripts\onOfficerSuppliesDestroyed.sqf"]);
    };
    if (_object isEqualTo (missionNamespace getVariable ["mission_vc_sup1_1", objNull])) exitWith {
      0 call (compileScript ["scripts\onSuppliesOneDestroyed.sqf"]);
    };
    if (_object isEqualTo (missionNamespace getVariable ["mission_vc_sup2_1", objNull])) exitWith {
      0 call (compileScript ["scripts\onSuppliesTwoDestroyed.sqf"]);
    };
    if (_object isEqualTo (missionNamespace getVariable ["mission_vc_sup3_1", objNull])) exitWith {
      0 call (compileScript ["scripts\onSuppliesThreeDestroyed.sqf"]);
    };
  }] call CBA_fnc_addEventHandler;

  ["ace_captiveStatusChanged", {
    params ["_unit", "_state"];
    if (GVAR(officerCaught) || !_state) exitWith {};
    private _officer = missionNamespace getVariable ["mission_officer", objNull];
    if (!(isNull _officer) && {_unit isEqualTo _officer}) then {
      0 call (compileScript ["scripts\onOfficerCaught.sqf"]);
    };
  }] call CBA_fnc_addEventHandler;
};

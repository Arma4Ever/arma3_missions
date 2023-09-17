#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * A3C Mission Intro
 */
LOG("intro");

// Odkomentuj tą linijkę jeśli nie chcesz oglądać intra w edytorze
//if (is3DENPreview) exitWith {};

// Czarny ekran
titleCut ["", "BLACK FADED", 999];

// Schowanie UI - kompas, etc.
[false] call a3cs_ui_fnc_toggleScreenshotMode;

// Schowanie UI logów debugowych
if (is3DENPreview) then {
  0 call a3cs_debug_fnc_toggleLogs;
};

// Wyciszenie dźwięków środowiska - np szumu lasu itp.
0 fadeEnvironment 0;

// Ekran tworzenia obiektów mapy
titleText ["<t size='1.4' color='#6b6b6b'>Wczytywanie...</t>", "PLAIN DOWN", -1, false, true];
waitUntil {
  sleep 0.1;
  private _status = missionNamespace getVariable ["a3cs_modules_3DENCompObjectsSpawn", [false]];
  _status # 0
};
waitUntil {
  sleep 0.25;
  private _status = missionNamespace getVariable ["a3cs_modules_3DENCompObjectsSpawn", [false, 0, 0, false]];
  private _counter = _status # 1;
  private _count = _status # 2;
  if (_count > 0) then {
    private _percent = floor ((_counter / _count) * 100);
    titleText [format [
      "<t color='#6b6b6b'><t size='1.4'>%5</t><br/><t size='1.6'>%1%2</t><br/>%3/%4</t>",
      _percent,
      "%",
      _counter,
      _count,
      LLSTRING(Intro_CreatingObjects)
    ], "PLAIN DOWN", 0.001, false, true];
    titleFadeOut 9999;
  };
  _status # 3
};
titleText ["<t size='1.4' color='#6b6b6b'>Synchronizacja...</t>", "PLAIN DOWN", -1, false, true];
titleFadeOut 999999;
sleep 35;

titleText ["<t size='1.4' color='#6b6b6b'>Wczytywanie intra...</t>", "PLAIN DOWN", -1, false, true];
preloadTitleRsc [QGVAR(introA3CLogo), "PLAIN"];

sleep 5;
titleText ["", "PLAIN DOWN", -1, false, true];

sleep 1;

playSound QGVAR(intro_music);
private _start = CBA_missionTime;

waitUntil {CBA_missionTime >= (_start + 0.5)};

titleRsc [QGVAR(introA3CLogo), "PLAIN", 1];
titleFadeOut 9999999;

waitUntil {CBA_missionTime >= (_start + 3.6)};

titleText ["<t size='2' font='RobotoCondensedLight'>Misja by</t><br/><t size='3' font='RobotoCondensedBold'>SzwedzikPL</t>", "PLAIN", -1, false, true];

waitUntil {CBA_missionTime >= (_start + 6.7)};
titleText [LLSTRING(Intro_Text_1), "PLAIN", -1, false, true];

waitUntil {CBA_missionTime >= (_start + 9.8)};
titleText ["<t size='2' font='RobotoCondensed'>Takistan, rok 2018...</t>", "PLAIN", -1, false, true];

waitUntil {CBA_missionTime >= (_start + 13)};
titleFadeOut 1;

waitUntil {CBA_missionTime >= (_start + 14.5)};
titleText [LLSTRING(Intro_Text_2), "PLAIN", -1, false, true];

waitUntil {CBA_missionTime >= (_start + 20.6)};
titleText [LLSTRING(Intro_Text_3), "PLAIN", -1, false, true];

waitUntil {CBA_missionTime >= (_start + 26.8)};
titleText [LLSTRING(Intro_Text_4), "PLAIN", -1, false, true];

waitUntil {CBA_missionTime >= (_start + 33)};
titleText [LLSTRING(Intro_Text_5), "PLAIN", -1, false, true];

waitUntil {CBA_missionTime >= (_start + 38)};
titleFadeOut 1;

waitUntil {CBA_missionTime >= (_start + 39.2)};
titleText [LLSTRING(Intro_Text_6), "PLAIN", -1, false, true];

waitUntil {CBA_missionTime >= (_start + 45.5)};
titleText [LLSTRING(Intro_Text_7), "PLAIN", -1, false, true];

waitUntil {CBA_missionTime >= (_start + 51.7)};
titleText [LLSTRING(Intro_Text_8), "PLAIN", -1, false, true];

waitUntil {CBA_missionTime >= (_start + 57.8)};
titleText [LLSTRING(Intro_Text_9), "PLAIN", -1, false, true];

waitUntil {CBA_missionTime >= (_start + 62.8)};
titleFadeOut 1;

waitUntil {CBA_missionTime >= (_start + 64)};
titleText [LLSTRING(Intro_Text_10), "PLAIN", -1, false, true];

waitUntil {CBA_missionTime >= (_start + 70.4)};
titleText [LLSTRING(Intro_Text_11), "PLAIN", -1, false, true];

waitUntil {CBA_missionTime >= (_start + 76.5)};
titleText [LLSTRING(Intro_Text_12), "PLAIN", -1, false, true];

waitUntil {CBA_missionTime >= (_start + 82.6)};
titleText [LLSTRING(Intro_Text_13), "PLAIN", -1, false, true];

waitUntil {CBA_missionTime >= (_start + 85.7)};
titleText [LLSTRING(Intro_Text_14), "PLAIN", -1, false, true];

waitUntil {CBA_missionTime >= (_start + 88.8)};
titleText [LLSTRING(Intro_Text_15), "PLAIN", -1, false, true];

waitUntil {CBA_missionTime >= (_start + 90.4)};
titleText [LLSTRING(Intro_Text_16), "PLAIN", -1, false, true];

waitUntil {CBA_missionTime >= (_start + 95.7)};
titleFadeOut 0.0001;
titleText ["<t size='4' font='RobotoCondensedBold'>DEVGRU</t>", "PLAIN", 0.0001, false, true];
titleFadeOut 9999999;
waitUntil {CBA_missionTime >= (_start + 96.4)};
titleFadeOut 0.0001;
titleText [LLSTRING(Intro_Text_17), "PLAIN", -1, false, true];

waitUntil {CBA_missionTime >= (_start + 101.9)};
titleFadeOut 0.0001;
titleText ["<t size='4' font='RobotoCondensedBold'>NIGHT STALKERS</t>", "PLAIN", 0.0001, false, true];
titleFadeOut 9999999;
waitUntil {CBA_missionTime >= (_start + 102.6)};
titleFadeOut 0.0001;
titleText [LLSTRING(Intro_Text_18), "PLAIN", -1, false, true];

waitUntil {CBA_missionTime >= (_start + 108.9)};
titleText [LLSTRING(Intro_Text_19), "PLAIN", -1, false, true];

waitUntil {CBA_missionTime >= (_start + 112)};
titleText [LLSTRING(Intro_Text_20), "PLAIN", -1, false, true];

waitUntil {CBA_missionTime >= (_start + 114)};
preloadTitleRsc ["MissionIntroPicture", "BLACK IN"];

waitUntil {CBA_missionTime >= (_start + 115.1)};
titleText ["", "PLAIN", -1, false, true];
titleRsc ["MissionIntroPicture", "BLACK IN", 3];
titleFadeOut 9999999;

waitUntil {CBA_missionTime >= (_start + 119.5)};
titleRsc ["Default", "PLAIN", 0.001];
sleep 3;
titleText [LLSTRING(Intro_Text_21), "PLAIN", -1, false, true];
sleep 5;

// Efekt rozmycia obrazu przy końcu intra
"dynamicBlur" ppEffectEnable true;
"dynamicBlur" ppEffectAdjust [6];
"dynamicBlur" ppEffectCommit 0;
"dynamicBlur" ppEffectAdjust [0];
"dynamicBlur" ppEffectCommit 5;

// Wyłączenie czarnego ekranu w 5 sec
titleText [LLSTRING(Intro_Text_21), "BLACK IN", 5, false, true];
titleCut ["", "BLACK IN", 5];

// Odciszenie dźwięków środowiska - np szumu lasu itp.
5 fadeEnvironment 1;

// Pobranie stopnia i nicku gracza
private _unitData = [player, false] call a3cs_nametags_fnc_getUnitData;

sleep 2;

// Pokazanie UI
[false] call a3cs_ui_fnc_toggleScreenshotMode;

sleep 1;

[
  [format ["%1 %2", _unitData # 2, _unitData # 1], "font = 'PuristaSemiBold'"],
  ["", "<br/>"],
  [LLSTRING(Intro_Line1), "font = 'PuristaMedium'"],
  ["", "<br/>"],
  [LLSTRING(Intro_Line2), "font = 'PuristaLight'"]
] execVM "\a3\missions_f_bootcamp\Campaign\Functions\GUI\fn_SITREP.sqf";

sleep 1;

// Pokazanie UI logów debugowych
if (is3DENPreview) then {
  0 call a3cs_debug_fnc_toggleLogs;
};

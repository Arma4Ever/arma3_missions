#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * A3C Mission Intro
 */
LOG("intro");

// Odkomentuj tą linijkę jeśli nie chcesz oglądać intra w edytorze
// if (is3DENPreview) exitWith {missionNamespace setVariable [QGVAR(clientIntroEnded), true, true];};

// Czarny ekran
titleCut ["", "BLACK FADED", 999];

// Schowanie UI - kompas, etc.
[false] call a3cs_ui_fnc_toggleScreenshotMode;

// Schowanie UI logów debugowych
if (is3DENPreview) then {
  true call a3cs_debug_fnc_hideLogs;
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
sleep 0.1;
titleText ["<t size='1.4' color='#6b6b6b'>Wczytywanie...</t>", "PLAIN DOWN", -1, false, true];
sleep 5;
titleText ["<t size='1.4' color='#6b6b6b'>Synchronizacja...</t>", "PLAIN DOWN", -1, false, true];
sleep 5;
titleText ["<t size='1.4' color='#6b6b6b'>Optymalizacja...</t>", "PLAIN DOWN", -1, false, true];
sleep 5;
titleText ["<t size='1.4' color='#6b6b6b'>Wczytywanie intro...</t>", "PLAIN DOWN", -1, false, true];
sleep 5;

// Wyczyszczenie ekranu
titleText ["", "PLAIN", -1, false, true];


GVAR(laterVidStopped) = false;
private _vEHID = [missionNamespace, "BIS_fnc_playVideo_stopped", { GVAR(laterVidStopped) = true; }] call BIS_fnc_addScriptedEventHandler;
["a3\missions_f_epa\video\B_m06_quotation.ogv"] spawn BIS_fnc_playVideo;
waitUntil {
  GVAR(laterVidStopped)
};
[missionNamespace, "BIS_fnc_playVideo_stopped", _vEHID] call BIS_fnc_removeScriptedEventHandler;
[""] call BIS_fnc_playVideo;

// Create slideshow display
2 cutRsc [QGVAR(introSlideshow), "PLAIN", -1];
2 cutFadeOut 9999999;

// Wait for it
waitUntil {
  !(isNull (uiNamespace getVariable ['msIntroSlideshowDisplay', displayNull]))
};

// Prep
private _display = uiNamespace getVariable ['msIntroSlideshowDisplay', displayNull];

// Prep all slides
for "_i" from 1201 to 1212 do {
  private _slide = _display displayCtrl _i;
  _slide ctrlSetTextColor [1, 1, 1, 1];
  _slide ctrlSetFade 1;
  _slide ctrlCommit 0;
};

// Start intro
private _slide1 = _display displayCtrl 1201;
private _slide2 = _display displayCtrl 1202;
private _slide3 = _display displayCtrl 1203;
private _slide4 = _display displayCtrl 1204;

private _slideEb1 = _display displayCtrl 1205;
private _slideEb2 = _display displayCtrl 1206;
private _slideEb3 = _display displayCtrl 1207;
private _slideEb4 = _display displayCtrl 1208;

private _slideEf1 = _display displayCtrl 1209;
private _slideEf2 = _display displayCtrl 1210;
private _slideEf3 = _display displayCtrl 1211;
private _slideEf4 = _display displayCtrl 1212;


playSound QGVAR(intro_music);
private _start = diag_tickTime;

waitUntil {(diag_tickTime - _start) >= 03.08};
_slide1 ctrlSetFade 0;
_slide1 ctrlCommit 2.5;
waitUntil {(diag_tickTime - _start) >= 6.08};
_slide1 ctrlSetFade 1;
_slide1 ctrlCommit 3;

waitUntil {(diag_tickTime - _start) >= 9.08};
_slide2 ctrlSetFade 0;
_slide2 ctrlCommit 2.5;
waitUntil {(diag_tickTime - _start) >= 12.08};
_slide2 ctrlSetFade 1;
_slide2 ctrlCommit 3;

waitUntil {(diag_tickTime - _start) >= 15.08};
_slide3 ctrlSetFade 0;
_slide3 ctrlCommit 2.5;
waitUntil {(diag_tickTime - _start) >= 18.08};
_slide3 ctrlSetFade 1;
_slide3 ctrlCommit 3;

waitUntil {(diag_tickTime - _start) >= 21.08};
_slide4 ctrlSetFade 0;
_slide4 ctrlCommit 2.5;
waitUntil {(diag_tickTime - _start) >= 24.08};
_slide4 ctrlSetFade 1;
_slide4 ctrlCommit 3;

waitUntil {(diag_tickTime - _start) >= 26.43};
titleText ["<t size='1.4'><br />[telefon]</t>", "PLAIN DOWN", 0.001, false, true];
titleFadeOut 999999;

waitUntil {(diag_tickTime - _start) >= 28.62};
titleText ["<t size='1.4'>KAPITAN:<br />" + LLSTRING(Intro_Sub_1) +"</t>", "PLAIN DOWN", 0.001, false, true];
titleFadeOut 999999;

waitUntil {(diag_tickTime - _start) >= 30.44};
titleText ["<t size='1.4'>" + LLSTRING(Intro_Sub_Gen) + ":<br />" + LLSTRING(Intro_Sub_2) + "</t>", "PLAIN DOWN", 0.001, false, true];
titleFadeOut 999999;

waitUntil {(diag_tickTime - _start) >= 32.92};
titleText ["<t size='1.4'>KAPITAN:<br />" + LLSTRING(Intro_Sub_3) + "</t>", "PLAIN DOWN", 0.001, false, true];
titleFadeOut 999999;

waitUntil {(diag_tickTime - _start) >= 34.11};
titleText ["<t size='1.4'>" + LLSTRING(Intro_Sub_Gen) + ":<br />" + LLSTRING(Intro_Sub_4) + "</t>", "PLAIN DOWN", 0.001, false, true];
titleFadeOut 999999;

waitUntil {(diag_tickTime - _start) >= 35.54};
titleText ["<t size='1.4'>" + LLSTRING(Intro_Sub_Gen) + ":<br />" + LLSTRING(Intro_Sub_5) + "</t>", "PLAIN DOWN", 0.001, false, true];
titleFadeOut 999999;

waitUntil {(diag_tickTime - _start) >= 39.34};
titleText ["<t size='1.4'>" + LLSTRING(Intro_Sub_Gen) + ":<br />" + LLSTRING(Intro_Sub_6) + "</t>", "PLAIN DOWN", 0.001, false, true];
titleFadeOut 999999;

waitUntil {(diag_tickTime - _start) >= 41.22};
titleText ["<t size='1.4'>" + LLSTRING(Intro_Sub_Gen) + ":<br />" + LLSTRING(Intro_Sub_7) + "</t>", "PLAIN DOWN", 0.001, false, true];
titleFadeOut 999999;

waitUntil {(diag_tickTime - _start) >= 43.33};
titleText ["<t size='1.4'>" + LLSTRING(Intro_Sub_Gen) + ":<br />" + LLSTRING(Intro_Sub_8) + "</t>", "PLAIN DOWN", 0.001, false, true];
titleFadeOut 999999;

waitUntil {(diag_tickTime - _start) >= 46.89};
titleText ["<t size='1.4'>" + LLSTRING(Intro_Sub_Gen) + ":<br />" + LLSTRING(Intro_Sub_9) + "</t>", "PLAIN DOWN", 0.001, false, true];
titleFadeOut 999999;

waitUntil {(diag_tickTime - _start) >= 48.57};
titleText ["<t size='1.4'>KAPITAN:<br />" + LLSTRING(Intro_Sub_10) + "</t>", "PLAIN DOWN", 0.001, false, true];
titleFadeOut 999999;

waitUntil {(diag_tickTime - _start) >= 49.37};
titleText ["<t size='1.4'>" + LLSTRING(Intro_Sub_Gen) + ":<br />Tak.</t>", "PLAIN DOWN", 0.001, false, true];
titleFadeOut 999999;

waitUntil {(diag_tickTime - _start) >= 49.85};
titleText ["<t size='1.4'>" + LLSTRING(Intro_Sub_Gen) + ":<br />" + LLSTRING(Intro_Sub_11) + "</t>", "PLAIN DOWN", 0.001, false, true];
titleFadeOut 999999;

waitUntil {(diag_tickTime - _start) >= 52.92};
titleText ["<t size='1.4'>" + LLSTRING(Intro_Sub_Gen) + ":<br />" + LLSTRING(Intro_Sub_12) + "</t>", "PLAIN DOWN", 0.001, false, true];
titleFadeOut 999999;

waitUntil {(diag_tickTime - _start) >= 54.62};
titleText ["<t size='1.4'>KAPITAN:<br />" + LLSTRING(Intro_Sub_13) + "</t>", "PLAIN DOWN", 0.001, false, true];
titleFadeOut 999999;

waitUntil {(diag_tickTime - _start) >= 56.32};
titleText ["<t size='1.4'>" + LLSTRING(Intro_Sub_Gen) + ":<br />" + LLSTRING(Intro_Sub_14) + "</t>", "PLAIN DOWN", 0.001, false, true];
titleFadeOut 999999;

waitUntil {(diag_tickTime - _start) >= 62.02};
titleText ["<t size='1.4'>" + LLSTRING(Intro_Sub_Gen) + ":<br />" + LLSTRING(Intro_Sub_15) + "</t>", "PLAIN DOWN", 0.001, false, true];
titleFadeOut 999999;

waitUntil {(diag_tickTime - _start) >= 66.17};
titleText ["<t size='1.4'>KAPITAN:<br />" + LLSTRING(Intro_Sub_16) + "</t>", "PLAIN DOWN", 0.001, false, true];
titleFadeOut 999999;

waitUntil {(diag_tickTime - _start) >= 69.47};
titleText ["<t size='1.4'>" + LLSTRING(Intro_Sub_Gen) + ":<br />" + LLSTRING(Intro_Sub_17) + "</t>", "PLAIN DOWN", 0.001, false, true];
titleFadeOut 999999;

waitUntil {(diag_tickTime - _start) >= 70.39};
titleText ["<t size='1.4'>" + LLSTRING(Intro_Sub_Gen) + ":<br />" + LLSTRING(Intro_Sub_18) + "</t>", "PLAIN DOWN", 0.001, false, true];
titleFadeOut 999999;

waitUntil {(diag_tickTime - _start) >= 74.15};
titleText ["<t size='1.4'>" + LLSTRING(Intro_Sub_Gen) + ":<br />" + LLSTRING(Intro_Sub_19) + "</t>", "PLAIN DOWN", 0.001, false, true];
titleFadeOut 999999;

waitUntil {(diag_tickTime - _start) >= 76.20};
titleText ["<t size='1.4'>" + LLSTRING(Intro_Sub_Gen) + ":<br />" + LLSTRING(Intro_Sub_20) + "</t>", "PLAIN DOWN", 0.001, false, true];
titleFadeOut 999999;

waitUntil {(diag_tickTime - _start) >= 78.39};
titleText ["<t size='1.4'>" + LLSTRING(Intro_Sub_Gen) + ":<br />" + LLSTRING(Intro_Sub_21) + "</t>", "PLAIN DOWN", 0.001, false, true];
titleFadeOut 999999;

waitUntil {(diag_tickTime - _start) >= 80.27};
titleText ["<t size='1.4'>KAPITAN:<br />" + LLSTRING(Intro_Sub_22) + "</t>", "PLAIN DOWN", 0.001, false, true];
titleFadeOut 999999;

waitUntil {(diag_tickTime - _start) >= 81.87};
titleText ["<t size='1.4'>" + LLSTRING(Intro_Sub_Gen) + ":<br />" + LLSTRING(Intro_Sub_23) + "</t>", "PLAIN DOWN", 0.001, false, true];
titleFadeOut 999999;

waitUntil {(diag_tickTime - _start) >= 83.15};
titleText ["<t size='1.4'>" + LLSTRING(Intro_Sub_Gen) + ":<br />" + LLSTRING(Intro_Sub_24) + "</t>", "PLAIN DOWN", 0.001, false, true];
titleFadeOut 999999;

waitUntil {(diag_tickTime - _start) >= 84.28};
titleText ["<t size='1.4'>" + LLSTRING(Intro_Sub_Gen) + ":<br />" + LLSTRING(Intro_Sub_25) + "</t>", "PLAIN DOWN", 0.001, false, true];
titleFadeOut 999999;

waitUntil {(diag_tickTime - _start) >= 88.87};
titleText ["<t size='1.4'>KAPITAN:<br />" + LLSTRING(Intro_Sub_26) + "</t>", "PLAIN DOWN", 0.001, false, true];
titleFadeOut 999999;

waitUntil {(diag_tickTime - _start) >= 91.22};
titleText ["", "PLAIN", 0.001, false, true];

waitUntil {(diag_tickTime - _start) >= 92.63};
_slideEb1 ctrlSetFade 0;
_slideEb1 ctrlCommit 0;
_slideEf1 ctrlSetFade 0;
_slideEf1 ctrlCommit 0;

waitUntil {(diag_tickTime - _start) >= 94.14};
_slideEb2 ctrlSetFade 0;
_slideEb2 ctrlCommit 0;
_slideEb2 ctrlSetFade 1;
_slideEb2 ctrlCommit 0.5;

_slideEf1 ctrlSetFade 1;
_slideEf1 ctrlCommit 0;
_slideEf2 ctrlSetFade 0;
_slideEf2 ctrlCommit 0;

waitUntil {(diag_tickTime - _start) >= 94.89};
_slideEb3 ctrlSetFade 0;
_slideEb3 ctrlCommit 0;
_slideEb3 ctrlSetFade 1;
_slideEb3 ctrlCommit 0.5;

_slideEf2 ctrlSetFade 1;
_slideEf2 ctrlCommit 0;
_slideEf3 ctrlSetFade 0;
_slideEf3 ctrlCommit 0;

waitUntil {(diag_tickTime - _start) >= 95.63};
_slideEb4 ctrlSetFade 0;
_slideEb4 ctrlCommit 0;
_slideEb4 ctrlSetFade 1;
_slideEb4 ctrlCommit 0.5;

_slideEf3 ctrlSetFade 1;
_slideEf3 ctrlCommit 0;
_slideEf4 ctrlSetFade 0;
_slideEf4 ctrlCommit 0;

waitUntil {(diag_tickTime - _start) >= 97.14};
_slideEb4 ctrlSetFade 0;
_slideEb4 ctrlCommit 0;
_slideEb4 ctrlSetFade 1;
_slideEb4 ctrlCommit 0.2;

waitUntil {(diag_tickTime - _start) >= 97.90};
_slideEb2 ctrlSetFade 0;
_slideEb2 ctrlCommit 0;
_slideEb2 ctrlSetFade 1;
_slideEb2 ctrlCommit 0.2;

waitUntil {(diag_tickTime - _start) >= 98.16};
_slideEb3 ctrlSetFade 0;
_slideEb3 ctrlCommit 0;
_slideEb3 ctrlSetFade 1;
_slideEb3 ctrlCommit 0.2;

waitUntil {(diag_tickTime - _start) >= 98.40};
_slideEb4 ctrlSetFade 0;
_slideEb4 ctrlCommit 0;
_slideEb4 ctrlSetFade 1;
_slideEb4 ctrlCommit 0.2;

waitUntil {(diag_tickTime - _start) >= 98.63};
_slideEb1 ctrlSetFade 1;
_slideEb1 ctrlCommit 0;

sleep 0.01;

2 cutText ["", "PLAIN"];

sleep 1;

// Tekst w prawym dolnym rogu, wyświetlany linijka po linijce. Teksty zdefiniowane w stringtable.xml
private _unitData = [player, false] call a3cs_nametags_fnc_getUnitData;
[
  [format ["%1 %2", _unitData # 2, _unitData # 1], "font = 'PuristaSemiBold'"],
  ["", "<br/>"],
  // Linia 1, pogrubiona, stringtable.xml
  [LLSTRING(Intro_Line1), "font = 'PuristaMedium'"],
  ["", "<br/>"],
  // Linia 2, stringtable.xml
  [LLSTRING(Intro_Line2), "font = 'PuristaLight'"]
] execVM "\a3\missions_f_bootcamp\Campaign\Functions\GUI\fn_SITREP.sqf";

// Efekt rozmycia obrazu przy końcu intra
"dynamicBlur" ppEffectEnable true;
"dynamicBlur" ppEffectAdjust [6];
"dynamicBlur" ppEffectCommit 0;
"dynamicBlur" ppEffectAdjust [0];
"dynamicBlur" ppEffectCommit 5;

// Wyłączenie czarnego ekranu w 5 sec
titleText ["", "BLACK IN", 5];
titleCut ["", "BLACK IN", 5];

// Odciszenie dźwięków środowiska - np szumu lasu itp.
5 fadeEnvironment 1;

missionNamespace setVariable [QGVAR(clientIntroEnded), true, true];

// Odczekaj 5 sekund
sleep 5;

// Pokazanie UI
[false] call a3cs_ui_fnc_toggleScreenshotMode;

// Pokazanie UI logów debugowych
if (is3DENPreview) then {
  false call a3cs_debug_fnc_hideLogs;
};

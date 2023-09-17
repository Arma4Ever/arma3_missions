#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * A4E Mission Intro
 */
LOG("intro");

// Odkomentuj tą linijkę jeśli nie chcesz oglądać intra w edytorze
// if (is3DENPreview) exitWith {};

// Czarny ekran
titleCut ["", "BLACK FADED", 999];

// Schowanie UI - kompas, etc.
[false] call a4es_ui_fnc_toggleScreenshotMode;

// Schowanie UI logów debugowych
if (is3DENPreview) then {
  true call a4es_debug_fnc_hideLogs;
};

// Wyciszenie dźwięków środowiska - np szumu lasu itp.
0 fadeEnvironment 0;

// Ekran tworzenia obiektów mapy
titleText ["<t size='1.4' color='#6b6b6b'>Wczytywanie...</t>", "PLAIN DOWN", -1, false, true];
waitUntil {
  sleep 0.1;
  private _status = missionNamespace getVariable ["a4es_modules_3DENCompObjectsSpawn", [false]];
  _status # 0
};
waitUntil {
  sleep 0.25;
  private _status = missionNamespace getVariable ["a4es_modules_3DENCompObjectsSpawn", [false, 0, 0, false]];
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
sleep 5;

/*
  Poniżej znajduje się sekwencja wizualna intra, wszystko poniżej można śmiało przerabiać pod własne intro
*/


// Pobranie stopnia i nicku gracza
private _unitData = [player, false] call a4es_nametags_fnc_getUnitData;

titleText ["", "PLAIN", -1, false, true];
sleep 2;
titleText ["", "PLAIN", -1, false, true];
titleRsc [QGVAR(introSlideshow), "PLAIN", -1];
titleFadeOut 9999999;

waitUntil {missionNamespace getVariable [QGVAR(introSlideshowEnd), false]};

titleRsc ["Default", "PLAIN", 0.001];

sleep 3;



// Tekst w prawym dolnym rogu, wyświetlany linijka po linijce. Teksty zdefiniowane w stringtable.xml
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

/*
  Koniec sekwencji wizualnej intra, poniżej zdejmujemy elementy nałożone na początku funkcji
*/

// Wyłączenie czarnego ekranu w 5 sec
titleText ["", "BLACK IN", 5];
titleCut ["", "BLACK IN", 5];

// Odciszenie dźwięków środowiska - np szumu lasu itp.
5 fadeEnvironment 1;

// Odczekaj 5 sekund
sleep 5;

// Pokazanie UI
[false] call a4es_ui_fnc_toggleScreenshotMode;

// Pokazanie UI logów debugowych
if (is3DENPreview) then {
  false call a4es_debug_fnc_hideLogs;
};

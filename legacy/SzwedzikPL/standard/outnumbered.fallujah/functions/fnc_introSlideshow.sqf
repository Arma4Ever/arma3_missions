#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Intro slideshow
 */

params ["_display"];

// Prep all slides
for "_i" from 1201 to 1216 do {
  private _slide = _display displayCtrl _i;
  _slide ctrlSetTextColor [1, 1, 1, 1];
  _slide ctrlSetFade 1;
  _slide ctrlCommit 0;
};

// Start slideshow
_display spawn {
  private _slide1 = _this displayCtrl 1201;
  private _slide2 = _this displayCtrl 1202;
  private _slide3 = _this displayCtrl 1203;
  private _slide4 = _this displayCtrl 1204;
  private _slide5 = _this displayCtrl 1205;
  private _slide6 = _this displayCtrl 1206;
  private _slide7 = _this displayCtrl 1207;
  private _slide8 = _this displayCtrl 1208;
  private _slide9 = _this displayCtrl 1209;
  private _slide10 = _this displayCtrl 1210;
  private _slide11 = _this displayCtrl 1211;
  private _slide12 = _this displayCtrl 1212;
  private _slide13 = _this displayCtrl 1213;
  private _slide14 = _this displayCtrl 1214;
  private _slide15 = _this displayCtrl 1215;
  private _slideBlank = _this displayCtrl 1216;

  playSound QGVAR(intro_music);
  private _start = diag_tickTime;

  waitUntil {(diag_tickTime - _start) >= 0.1};
  _slide1 ctrlSetFade 0;
  _slide1 ctrlCommit 0;
  waitUntil {(diag_tickTime - _start) >= 2};
  _slide1 ctrlSetFade 1;
  _slide1 ctrlCommit 4;

  waitUntil {(diag_tickTime - _start) >= 6};
  _slide1 ctrlSetFade 1;
  _slide1 ctrlCommit 0.1;
  _slide2 ctrlSetFade 0;
  _slide2 ctrlCommit 0.1;
  _slideBlank ctrlSetFade 0.9;
  _slideBlank ctrlCommit 0;
  _slideBlank ctrlSetFade 1;
  _slideBlank ctrlCommit 0.1;

  waitUntil {(diag_tickTime - _start) >= 11};
  _slide2 ctrlSetFade 1;
  _slide2 ctrlCommit 0.1;
  _slide3 ctrlSetFade 0;
  _slide3 ctrlCommit 0.1;
  _slideBlank ctrlSetFade 0.9;
  _slideBlank ctrlCommit 0;
  _slideBlank ctrlSetFade 1;
  _slideBlank ctrlCommit 0.1;

  waitUntil {(diag_tickTime - _start) >= 23};
  _slide3 ctrlSetFade 1;
  _slide3 ctrlCommit 0.1;
  _slide4 ctrlSetFade 0;
  _slide4 ctrlCommit 0.1;
  _slideBlank ctrlSetFade 0.9;
  _slideBlank ctrlCommit 0;
  _slideBlank ctrlSetFade 1;
  _slideBlank ctrlCommit 0.1;

  waitUntil {(diag_tickTime - _start) >= 35};
  _slide4 ctrlSetFade 1;
  _slide4 ctrlCommit 0.1;
  _slide5 ctrlSetFade 0;
  _slide5 ctrlCommit 0.1;
  _slideBlank ctrlSetFade 0.9;
  _slideBlank ctrlCommit 0;
  _slideBlank ctrlSetFade 1;
  _slideBlank ctrlCommit 0.1;

  waitUntil {(diag_tickTime - _start) >= 40.95};
  _slideBlank ctrlSetFade 0.9;
  _slideBlank ctrlCommit 0.1;
  waitUntil {(diag_tickTime - _start) >= 41.05};
  _slideBlank ctrlSetFade 1;
  _slideBlank ctrlCommit 0.1;

  waitUntil {(diag_tickTime - _start) >= 47};
  _slide5 ctrlSetFade 1;
  _slide5 ctrlCommit 0.1;
  _slide6 ctrlSetFade 0;
  _slide6 ctrlCommit 0.1;
  _slideBlank ctrlSetFade 0.9;
  _slideBlank ctrlCommit 0;
  _slideBlank ctrlSetFade 1;
  _slideBlank ctrlCommit 0.1;

  waitUntil {(diag_tickTime - _start) >= 52.95};
  _slideBlank ctrlSetFade 0.9;
  _slideBlank ctrlCommit 0.1;
  waitUntil {(diag_tickTime - _start) >= 53.05};
  _slideBlank ctrlSetFade 1;
  _slideBlank ctrlCommit 0.1;

  waitUntil {(diag_tickTime - _start) >= 59};
  _slide6 ctrlSetFade 1;
  _slide6 ctrlCommit 0.1;
  _slide7 ctrlSetFade 0;
  _slide7 ctrlCommit 0.1;
  _slideBlank ctrlSetFade 0.9;
  _slideBlank ctrlCommit 0;
  _slideBlank ctrlSetFade 1;
  _slideBlank ctrlCommit 0.1;

  waitUntil {(diag_tickTime - _start) >= 65};
  _slide7 ctrlSetFade 1;
  _slide7 ctrlCommit 0.1;
  _slide8 ctrlSetFade 0;
  _slide8 ctrlCommit 0.1;
  _slideBlank ctrlSetFade 0.9;
  _slideBlank ctrlCommit 0;
  _slideBlank ctrlSetFade 1;
  _slideBlank ctrlCommit 0.1;

  waitUntil {(diag_tickTime - _start) >= 69.65};
  _slideBlank ctrlSetFade 0.9;
  _slideBlank ctrlCommit 0.1;
  waitUntil {(diag_tickTime - _start) >= 69.75};
  _slideBlank ctrlSetFade 1;
  _slideBlank ctrlCommit 0.1;
  waitUntil {(diag_tickTime - _start) >= 70.2};
  _slideBlank ctrlSetFade 0.9;
  _slideBlank ctrlCommit 0.1;
  waitUntil {(diag_tickTime - _start) >= 70.3};
  _slideBlank ctrlSetFade 1;
  _slideBlank ctrlCommit 0.1;

  waitUntil {(diag_tickTime - _start) >= 71};
  _slide8 ctrlSetFade 1;
  _slide8 ctrlCommit 0.1;
  _slide9 ctrlSetFade 0;
  _slide9 ctrlCommit 0.1;
  _slideBlank ctrlSetFade 0.9;
  _slideBlank ctrlCommit 0;
  _slideBlank ctrlSetFade 1;
  _slideBlank ctrlCommit 0.1;

  waitUntil {(diag_tickTime - _start) >= 75.45};
  _slideBlank ctrlSetFade 0.9;
  _slideBlank ctrlCommit 0.1;
  waitUntil {(diag_tickTime - _start) >= 75.55};
  _slideBlank ctrlSetFade 1;
  _slideBlank ctrlCommit 0.1;
  waitUntil {(diag_tickTime - _start) >= 76};
  _slideBlank ctrlSetFade 0.9;
  _slideBlank ctrlCommit 0.1;
  waitUntil {(diag_tickTime - _start) >= 76.1};
  _slideBlank ctrlSetFade 1;
  _slideBlank ctrlCommit 0.1;
  waitUntil {(diag_tickTime - _start) >= 76.5};
  _slideBlank ctrlSetFade 0.9;
  _slideBlank ctrlCommit 0.1;
  waitUntil {(diag_tickTime - _start) >= 76.6};
  _slideBlank ctrlSetFade 1;
  _slideBlank ctrlCommit 0.1;

  waitUntil {(diag_tickTime - _start) >= 77.1};
  _slide9 ctrlSetFade 1;
  _slide9 ctrlCommit 0;
  _slideBlank ctrlSetFade 0.9;
  _slideBlank ctrlCommit 0;
  _slideBlank ctrlSetFade 1;
  _slideBlank ctrlCommit 0.1;
  _slide10 ctrlSetFade 0;
  _slide10 ctrlCommit 0;
  _slide10 ctrlSetPosition [
    safezoneXAbs - (safezoneWAbs * 0.25),
    safezoneY - (safezoneH * 0.25),
    safezoneWAbs * 1.5,
    safezoneH * 1.5
  ];
  _slide10 ctrlCommit 10;

  waitUntil {(diag_tickTime - _start) >= 81.54};
  _slide10 ctrlSetFade 1;
  _slide10 ctrlCommit 0.1;
  _slide11 ctrlSetFade 0;
  _slide11 ctrlCommit 0.1;

  waitUntil {(diag_tickTime - _start) >= 81.93};
  _slide11 ctrlSetFade 1;
  _slide11 ctrlCommit 0.1;
  _slide12 ctrlSetFade 0;
  _slide12 ctrlCommit 0.1;

  waitUntil {(diag_tickTime - _start) >= 82.33};
  _slide12 ctrlSetFade 1;
  _slide12 ctrlCommit 0.1;
  _slide13 ctrlSetFade 0;
  _slide13 ctrlCommit 0.1;

  waitUntil {(diag_tickTime - _start) >= 82.70}; //82.80
  _slide13 ctrlSetFade 1;
  _slide13 ctrlCommit 0.1;
  _slide14 ctrlSetFade 0;
  _slide14 ctrlCommit 0.1;

  waitUntil {(diag_tickTime - _start) >= 83}; //83.11
  _slide14 ctrlSetFade 1;
  _slide14 ctrlCommit 0;
  _slide15 ctrlSetFade 0;
  _slide15 ctrlCommit 0;
  _slideBlank ctrlSetFade 0.9;
  _slideBlank ctrlCommit 0;
  _slideBlank ctrlSetFade 1;
  _slideBlank ctrlCommit 0.1;

  waitUntil {(diag_tickTime - _start) >= 85};

  _slide15 ctrlSetFade 1;
  _slide15 ctrlCommit 3.5;

  waitUntil {(diag_tickTime - _start) >= 89.11};

  private _minutes = 0;
  private _seconds = 0;
  private _time = floor CBA_missionTime;

  _minutes = floor (_time / 60);
  _seconds = 59 - (floor (_time - (_minutes * 60)));
  _seconds = if (_seconds < 10) then {"0" + (str _seconds)} else {str _seconds};
  _minutes = 14 - _minutes;
  _minutes = if (_minutes < 10) then {"0" + (str _minutes)} else {str _minutes};
  titleText ["<t size='1.6'>" + (LLSTRING(Intro_ToEvacLeft)) + ":<br/>02:" + _minutes + ":" + _seconds +"</t>", "PLAIN", 0.001, false, true];
  titleFadeOut 999999999;

  waitUntil {(diag_tickTime - _start) >= 90.11};

  _time = _time + 1;
  _minutes = floor (_time / 60);
  _seconds = 59 - (floor (_time - (_minutes * 60)));
  _seconds = if (_seconds < 10) then {"0" + (str _seconds)} else {str _seconds};
  _minutes = 14 - _minutes;
  _minutes = if (_minutes < 10) then {"0" + (str _minutes)} else {str _minutes};
  titleText ["<t size='1.6'>" + (LLSTRING(Intro_ToEvacLeft)) + ":<br/>02:" + _minutes + ":" + _seconds +"</t>", "PLAIN", 0.001, false, true];
  titleFadeOut 999999999;

  waitUntil {(diag_tickTime - _start) >= 91.11};

  _time = _time + 1;
  _minutes = floor (_time / 60);
  _seconds = 59 - (floor (_time - (_minutes * 60)));
  _seconds = if (_seconds < 10) then {"0" + (str _seconds)} else {str _seconds};
  _minutes = 14 - _minutes;
  _minutes = if (_minutes < 10) then {"0" + (str _minutes)} else {str _minutes};
  titleText ["<t size='1.6'>" + (LLSTRING(Intro_ToEvacLeft)) + ":<br/>02:" + _minutes + ":" + _seconds +"</t>", "PLAIN", 0.001, false, true];
  titleFadeOut 999999999;

  waitUntil {(diag_tickTime - _start) >= 92.11};

  _time = _time + 1;
  _minutes = floor (_time / 60);
  _seconds = 59 - (floor (_time - (_minutes * 60)));
  _seconds = if (_seconds < 10) then {"0" + (str _seconds)} else {str _seconds};
  _minutes = 14 - _minutes;
  _minutes = if (_minutes < 10) then {"0" + (str _minutes)} else {str _minutes};
  titleText ["<t size='1.6'>" + (LLSTRING(Intro_ToEvacLeft)) + ":<br/>02:" + _minutes + ":" + _seconds +"</t>", "PLAIN", 0.001, false, true];
  titleFadeOut 999999999;

  waitUntil {(diag_tickTime - _start) >= 93.11};

  _time = _time + 1;
  _minutes = floor (_time / 60);
  _seconds = 59 - (floor (_time - (_minutes * 60)));
  _seconds = if (_seconds < 10) then {"0" + (str _seconds)} else {str _seconds};
  _minutes = 14 - _minutes;
  _minutes = if (_minutes < 10) then {"0" + (str _minutes)} else {str _minutes};
  titleText ["<t size='1.6'>" + (LLSTRING(Intro_ToEvacLeft)) + ":<br/>02:" + _minutes + ":" + _seconds +"</t>", "PLAIN", 0.001, false, true];
  titleFadeOut 999999999;

  waitUntil {(diag_tickTime - _start) >= 94.11};

  _time = _time + 1;
  _minutes = floor (_time / 60);
  _seconds = 59 - (floor (_time - (_minutes * 60)));
  _seconds = if (_seconds < 10) then {"0" + (str _seconds)} else {str _seconds};
  _minutes = 14 - _minutes;
  _minutes = if (_minutes < 10) then {"0" + (str _minutes)} else {str _minutes};
  titleText ["<t size='1.6'>" + (LLSTRING(Intro_ToEvacLeft)) + ":<br/>02:" + _minutes + ":" + _seconds +"</t>", "PLAIN", 0.001, false, true];
  titleFadeOut 999999999;

  waitUntil {(diag_tickTime - _start) >= 95.11};
  titleText [" ", "PLAIN", 0.001, false, true];

  missionNamespace setVariable [QGVAR(introSlideshowEnd), true];
};

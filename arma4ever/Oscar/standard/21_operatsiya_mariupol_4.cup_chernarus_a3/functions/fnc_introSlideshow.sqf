#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Intro slideshow
 */

params ["_display"];

// Prep all slides
for "_i" from 1201 to 1217 do {
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
  private _slide16 = _this displayCtrl 1216;
  private _slide17 = _this displayCtrl 1217;

  playSound QGVAR(intro_music);
  private _start = diag_tickTime;

  waitUntil {(diag_tickTime - _start) >= 0.528};
  _slide1 ctrlSetFade 0;
  _slide1 ctrlCommit 0;  
  _slide1 ctrlSetFade 0.2;
  _slide1 ctrlCommit 0;

  waitUntil {(diag_tickTime - _start) >= 8.528};
  _slide1 ctrlSetFade 1;
  _slide1 ctrlCommit 0;
  _slide2 ctrlSetFade 0.2;
  _slide2 ctrlCommit 0;

  waitUntil {(diag_tickTime - _start) >= 16.528};
  _slide2 ctrlSetFade 1;
  _slide2 ctrlCommit 0;
  _slide3 ctrlSetFade 0;
  _slide3 ctrlCommit 0.1;

  waitUntil {(diag_tickTime - _start) >= 24.335};
  _slide3 ctrlSetFade 1;
  _slide3 ctrlCommit 0;
  _slide4 ctrlSetFade 0;
  _slide4 ctrlCommit 0.1;

  waitUntil {(diag_tickTime - _start) >= 36.242};
  _slide4 ctrlSetFade 1;
  _slide4 ctrlCommit 0;
  _slide5 ctrlSetFade 0;
  _slide5 ctrlCommit 0.1;

  waitUntil {(diag_tickTime - _start) >= 44.335};
  _slide5 ctrlSetFade 1;
  _slide5 ctrlCommit 0.2;
  _slide6 ctrlSetFade 0;
  _slide6 ctrlCommit 0.2;

  waitUntil {(diag_tickTime - _start) >= 52.335};
  _slide6 ctrlSetFade 1;
  _slide6 ctrlCommit 0;
  _slide7 ctrlSetFade 0;
  _slide7 ctrlCommit 0;

  waitUntil {(diag_tickTime - _start) >= 60.335};
  _slide7 ctrlSetFade 1;
  _slide7 ctrlCommit 0;
  _slide8 ctrlSetFade 0;
  _slide8 ctrlCommit 0;

  waitUntil {(diag_tickTime - _start) >= 72.335};
  _slide8 ctrlSetFade 1;
  _slide8 ctrlCommit 0;
  _slide9 ctrlSetFade 0;
  _slide9 ctrlCommit 0;

  waitUntil {(diag_tickTime - _start) >= 76.335};
  _slide9 ctrlSetFade 1;
  _slide9 ctrlCommit 0;
  _slide10 ctrlSetFade 0;
  _slide10 ctrlCommit 0;

  waitUntil {(diag_tickTime - _start) >= 80.335};
  _slide10 ctrlSetFade 1;
  _slide10 ctrlCommit 0;
  _slide11 ctrlSetFade 0;
  _slide11 ctrlCommit 0;

  waitUntil {(diag_tickTime - _start) >= 82.335};
  _slide11 ctrlSetFade 1;
  _slide11 ctrlCommit 0;
  _slide12 ctrlSetFade 0;
  _slide12 ctrlCommit 0;

  waitUntil {(diag_tickTime - _start) >= 84.335};
  _slide12 ctrlSetFade 1;
  _slide12 ctrlCommit 0;
  _slide13 ctrlSetFade 0;
  _slide13 ctrlCommit 0;

  waitUntil {(diag_tickTime - _start) >= 85.335};
  _slide13 ctrlSetFade 1;
  _slide13 ctrlCommit 0;
  _slide14 ctrlSetFade 0;
  _slide14 ctrlCommit 0;

  waitUntil {(diag_tickTime - _start) >= 86.313};
  _slide14 ctrlSetFade 1;
  _slide14 ctrlCommit 0;
  _slide15 ctrlSetFade 0;
  _slide15 ctrlCommit 0;

  waitUntil {(diag_tickTime - _start) >= 87.313};
  _slide15 ctrlSetFade 1;
  _slide15 ctrlCommit 0;
  _slide16 ctrlSetFade 0;
  _slide16 ctrlCommit 0;

  waitUntil {(diag_tickTime - _start) >= 92.713};
  _slide16 ctrlSetFade 1;
  _slide16 ctrlCommit 0;
  _slide17 ctrlSetFade 0;
  _slide17 ctrlCommit 0;

  waitUntil {(diag_tickTime - _start) >= 64.0};
  _slide17 ctrlSetFade 1;
  _slide17 ctrlCommit 5;

  sleep 5.5;

  missionNamespace setVariable [QGVAR(introSlideshowEnd), true];
};

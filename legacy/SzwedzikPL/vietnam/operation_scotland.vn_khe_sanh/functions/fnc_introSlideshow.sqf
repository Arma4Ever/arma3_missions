#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Intro slideshow
 */

params ["_display"];

// Prep all slides
for "_i" from 1201 to 1203 do {
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

  playSound QGVAR(intro_music);

  private _start = diag_tickTime;

  waitUntil {(diag_tickTime - _start) >= 1.1};
  _slide1 ctrlSetFade 0;
  _slide1 ctrlCommit 1.5;

  waitUntil {(diag_tickTime - _start) >= 6.5};
  _slide1 ctrlSetFade 1;
  _slide1 ctrlCommit 2.5;
  _slide2 ctrlSetFade 0;
  _slide2 ctrlCommit 2.5;

  waitUntil {(diag_tickTime - _start) >= 11.5};
  _slide2 ctrlSetFade 1;
  _slide2 ctrlCommit 2.5;
  _slide3 ctrlSetFade 0;
  _slide3 ctrlCommit 2.5;

  waitUntil {(diag_tickTime - _start) >= 17};
  _slide3 ctrlSetFade 1;
  _slide3 ctrlCommit 10;

  waitUntil {(diag_tickTime - _start) >= 30};

  missionNamespace setVariable [QGVAR(introSlideshowEnd), true];
};

#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Intro slideshow
 */

params ["_display"];

// Prep all slides
for "_i" from 1201 to 1208 do {
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

  playSound QGVAR(intro_music);

  _slide1 ctrlSetFade 0;
  _slide1 ctrlCommit 3;
  waitUntil {ctrlCommitted _slide1};

  sleep 7;

  _slide1 ctrlSetFade 1;
  _slide1 ctrlCommit 3;
  waitUntil {ctrlCommitted _slide1};

  _slide2 ctrlSetFade 0;
  _slide2 ctrlCommit 3;
  waitUntil {ctrlCommitted _slide2};

  sleep 7;

  _slide2 ctrlSetFade 1;
  _slide2 ctrlCommit 3;
  waitUntil {ctrlCommitted _slide2};


  _slide3 ctrlSetFade 0;
  _slide3 ctrlCommit 3;
  waitUntil {ctrlCommitted _slide3};

  sleep 7;

  _slide3 ctrlSetFade 1;
  _slide3 ctrlCommit 3;
  waitUntil {ctrlCommitted _slide3};

  _slide4 ctrlSetFade 0;
  _slide4 ctrlCommit 3;
  waitUntil {ctrlCommitted _slide4};

  sleep 7;

  _slide4 ctrlSetFade 1;
  _slide4 ctrlCommit 3;
  waitUntil {ctrlCommitted _slide4};

  _slide5 ctrlSetFade 0;
  _slide5 ctrlCommit 3;
  waitUntil {ctrlCommitted _slide5};

  sleep 7;

  _slide5 ctrlSetFade 1;
  _slide5 ctrlCommit 3;
  waitUntil {ctrlCommitted _slide5};

  missionNamespace setVariable [QGVAR(introSlideshowEnd), true];
};

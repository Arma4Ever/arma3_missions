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
  private _slide6 = _this displayCtrl 1206;
  private _slide7 = _this displayCtrl 1207;
  private _slide8 = _this displayCtrl 1208;

  playSound QGVAR(intro_music);

  _slide1 ctrlSetFade 0;
  _slide1 ctrlCommit 3;
  waitUntil {ctrlCommitted _slide1};

  sleep 0.25;

  _slide1 ctrlSetFade 1;
  _slide1 ctrlCommit 3;
  waitUntil {ctrlCommitted _slide1};

  _slide2 ctrlSetFade 0;
  _slide2 ctrlCommit 3;
  waitUntil {ctrlCommitted _slide2};

  sleep 1;

  _slide2 ctrlSetFade 1;
  _slide2 ctrlCommit 3;
  waitUntil {ctrlCommitted _slide2};


  _slide3 ctrlSetFade 0;
  _slide3 ctrlCommit 3;
  waitUntil {ctrlCommitted _slide3};

  sleep 8;

  _slide3 ctrlSetFade 1;
  _slide3 ctrlCommit 3;
  waitUntil {ctrlCommitted _slide3};

  _slide4 ctrlSetFade 0;
  _slide4 ctrlCommit 3;
  waitUntil {ctrlCommitted _slide4};

  sleep 8;

  _slide4 ctrlSetFade 1;
  _slide4 ctrlCommit 3;
  waitUntil {ctrlCommitted _slide4};

  _slide5 ctrlSetFade 0;
  _slide5 ctrlCommit 3;
  waitUntil {ctrlCommitted _slide5};

  sleep 8;

  _slide5 ctrlSetFade 1;
  _slide5 ctrlCommit 3;
  waitUntil {ctrlCommitted _slide5};

  _slide6 ctrlSetFade 0;
  _slide6 ctrlCommit 3;
  waitUntil {ctrlCommitted _slide6};

  sleep 8;

  _slide6 ctrlSetFade 1;
  _slide6 ctrlCommit 3;
  waitUntil {ctrlCommitted _slide6};

  _slide7 ctrlSetFade 0;
  _slide7 ctrlCommit 3;
  waitUntil {ctrlCommitted _slide7};

  sleep 6;

  _slide7 ctrlSetFade 1;
  _slide7 ctrlCommit 3;
  waitUntil {ctrlCommitted _slide7};

  private _pos1 = ctrlPosition _slide8;
  private _pos2 = ctrlPosition _slide8;
  private _pos3 = ctrlPosition _slide8;

  _pos1 set [0, (_pos1 # 0) * 0.7];
  _pos1 set [1, (_pos1 # 1) * 0.6];

  _slide8 ctrlSetPosition _pos1;
  _slide8 ctrlsetScale 0.8;
  _slide8 ctrlCommit 0;

  _slide8 ctrlSetFade 0;
  _slide8 ctrlsetScale 1;
  _slide8 ctrlSetPosition _pos2;
  _slide8 ctrlCommit 7;

  waitUntil {ctrlCommitted _slide8};

  _pos3 set [0, (_pos3 # 0) * 1.35];
  _pos3 set [1, (_pos3 # 1) * 1.3];

  _slide8 ctrlsetScale 1.2;
  _slide8 ctrlSetPosition _pos3;
  _slide8 ctrlSetFade 1;
  _slide8 ctrlCommit 7;
  waitUntil {ctrlCommitted _slide8};

  missionNamespace setVariable [QGVAR(introSlideshowEnd), true];
};

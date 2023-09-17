#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Intro slideshow
 */

params ["_display"];

// Prep all slides
for "_i" from 1201 to 1211 do {
  private _slide = _display displayCtrl _i;
  _slide ctrlSetTextColor [1, 1, 1, 1];
  _slide ctrlSetFade 1;
  _slide ctrlCommit 0;
};

// Start slideshow
_display spawn {
  private _slide1 = _this displayCtrl 1202;
  private _slide2 = _this displayCtrl 1203;
  private _slide3 = _this displayCtrl 1204;
  private _slide4 = _this displayCtrl 1205;
  private _slide5 = _this displayCtrl 1206;
  private _slide6 = _this displayCtrl 1207;
  private _slide7 = _this displayCtrl 1208;
  private _slide9 = _this displayCtrl 1209;
  private _slide10 = _this displayCtrl 1210;
  private _slide11 = _this displayCtrl 1211;

  _slide9 ctrlSetFade 0;
  _slide9 ctrlCommit 0;
  cutText ["", "BLACK IN", 0.5];
  _slide10 ctrlSetFade 1;
  _slide10 ctrlCommit 0;
  sleep 13;
  waitUntil {ctrlCommitted _slide9};

  26 fadeMusic 0;
  _slide10 ctrlSetFade 0;
  _slide10 ctrlCommit 0;
  _slide9 ctrlSetFade 1;
  _slide9 ctrlCommit 0;
  _slide11 ctrlSetFade 1;
  _slide11 ctrlCommit 0;
  sleep 13;
  waitUntil {ctrlCommitted _slide10};

  _slide11 ctrlSetFade 0;
  _slide11 ctrlCommit 0;
  _slide10 ctrlSetFade 1;
  _slide10 ctrlCommit 0;
  sleep 13;
  playMusic "";
  _slide11 ctrlSetFade 1;
  _slide11 ctrlCommit 0;
  waitUntil {ctrlCommitted _slide11};

  ["data\movie.ogv"] call BIS_fnc_playVideo;
  playSound QGVAR(intro_sound);
  _slide1 ctrlSetFade 0;
  _slide1 ctrlCommit 0;
  _slide2 ctrlSetFade 1;
  _slide2 ctrlCommit 0;
  sleep 9;
  1 fadeMusic 0.5;
  playMusic "CUP_A2_Cobalt";
  waitUntil {ctrlCommitted _slide1};

  _slide2 ctrlSetFade 0;
  _slide2 ctrlCommit 0;
  _slide3 ctrlSetFade 1;
  _slide3 ctrlCommit 0;
  sleep 5;
  waitUntil {ctrlCommitted _slide2};

  _slide3 ctrlSetFade 0;
  _slide3 ctrlCommit 0;
  _slide4 ctrlSetFade 1;
  _slide4 ctrlCommit 0;
  sleep 0.75;
  waitUntil {ctrlCommitted _slide3};

  _slide4 ctrlSetFade 0;
  _slide4 ctrlCommit 0;
  _slide5 ctrlSetFade 1;
  _slide5 ctrlCommit 0;
  sleep 0.75;
  waitUntil {ctrlCommitted _slide4};

  _slide5 ctrlSetFade 0;
  _slide5 ctrlCommit 0;
  _slide6 ctrlSetFade 1;
  _slide6 ctrlCommit 0;
  sleep 0.75;
  waitUntil {ctrlCommitted _slide5};

  _slide6 ctrlSetFade 0;
  _slide6 ctrlCommit 0;
  _slide7 ctrlSetFade 1;
  _slide7 ctrlCommit 0;
  3 fadeMusic 0;
  sleep 3;
  playMusic "";
  waitUntil {ctrlCommitted _slide6};
  playSound QGVAR(intro_sound);

  _slide7 ctrlSetFade 0;
  _slide7 ctrlCommit 0;
  
  sleep 3;

  titleText ["", "PLAIN", 0.001, false, true];

  missionNamespace setVariable [QGVAR(introSlideshowEnd), true];
};

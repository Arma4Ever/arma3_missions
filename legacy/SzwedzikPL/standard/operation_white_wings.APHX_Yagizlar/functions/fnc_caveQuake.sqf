#include "script_component.hpp"
/*
	Author: Zozo, edit by SzwedzikPL

	Description:
	Earthquake simulation - now just camera shake and sound
*/

if !(player getVariable [QGVAR(inCaveArea), false]) exitWith {};

params ["_blur"];

private _power = 2.1;
private _duration = 20;
private _compensation = 6;
private _frequency = 30;
private _eqsound = "Earthquake_04";
private _offset = 1;

enableCamShake true;

private _soundSource = playSound _eqsound;

if (_blur > 0) then {
  "DynamicBlur" ppEffectEnable true;
  "DynamicBlur" ppEffectAdjust [_blur];
  "DynamicBlur" ppEffectCommit _offset;
};

sleep _offset;

if (_blur > 0) then {
  "DynamicBlur" ppEffectAdjust [0];
  "DynamicBlur" ppEffectCommit (_duration - _compensation);
};
addCamShake [_power, _duration, _frequency];

private _endtime = CBA_missionTime + (_duration - _compensation) + 1;

waitUntil {
  sleep 0.3;
  (CBA_missionTime >= _endtime) || {!(player getVariable [QGVAR(inCaveArea), false])}
};

if !(player getVariable [QGVAR(inCaveArea), false]) then {
  deleteVehicle _soundSource;
  resetCamShake;
  if (_blur > 0) then {
    "DynamicBlur" ppEffectAdjust [0];
    "DynamicBlur" ppEffectCommit 0;
  };
};

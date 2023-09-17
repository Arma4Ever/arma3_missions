#include "script_component.hpp"
/*
	Author: Zozo, edit by SzwedzikPL

	Description:
	Earthquake simulation - now just camera shake and sound
*/

if !(player getVariable [QGVAR(inCaveArea), false]) exitWith {};

private _power = 0.5;
private _duration = 13;
private _compensation = 4;
private _frequency = 200;
private _eqsound = "Earthquake_01";
private _offset = 1;

private _soundSource = playSound _eqsound;

sleep _offset;
addCamShake [_power, _duration, _frequency];

private _endtime = CBA_missionTime + (_duration - _compensation) + 1;

waitUntil {
  sleep 0.3;
  (CBA_missionTime >= _endtime) || {!(player getVariable [QGVAR(inCaveArea), false])}
};

if !(player getVariable [QGVAR(inCaveArea), false]) then {
  deleteVehicle _soundSource;
  resetCamShake;
};

#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Whole cave collapse client sequence
 */

if !(hasInterface) exitWith {};

sleep 0.5;

if !(player getVariable [QGVAR(inCaveArea), false]) exitWith {};

private _source = playSound "Earthquake_04";
GVAR(caveCollapseSounds) pushBack _source;

if !(player getVariable [QGVAR(inCaveArea), false]) exitWith {};

private _stoneDropper = "#particlesource" createVehicleLocal [0, 0, 0];
_stoneDropper setParticleClass "MineStones2";
_stoneDropper attachTo [player, [0, 4, 9.5]];
player setVariable [QGVAR(stoneDropper), _stoneDropper];

enableCamShake true;
addCamShake [2.6, 600, 38];

0 spawn {
  waitUntil {
    sleep 0.5;
    !(missionNamespace getVariable [QGVAR(caveCollapseInProgress), false])
  };
  private _stoneDropper = player getVariable [QGVAR(stoneDropper), objNull];
  if !(isNull _stoneDropper) then {
    deleteVehicle _stoneDropper;
  };
  if (player getVariable [QGVAR(inCaveArea), false]) then {
    resetCamShake;
    addCamShake [2.6, 1, 38];
  };
};

while {missionNamespace getVariable [QGVAR(caveCollapseInProgress), false]} do {
  if !(player getVariable [QGVAR(inCaveArea), false]) exitWith {};
  private _source = playSound "Earthquake_04";
  GVAR(caveCollapseSounds) pushBack _source;
  sleep 4.25;
};

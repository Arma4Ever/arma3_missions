#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Client stone drop effect
 */

params ["_pos", "_startPosASL", "_endHASL", "_dir", "_type"];

if !(
  hasInterface &&
  {player getVariable [QGVAR(inCaveArea), false]}
) exitWith {};

_pos spawn {
  private _pos = _this;
  private _source1 = "#particlesource" createVehicleLocal _pos;
  _source1 setPos _pos;
  private _source2 = "#particlesource" createVehicleLocal _pos;
  _source2 setPos _pos;

  _source1 setParticleClass "BombSmk5";
  _source2 setParticleClass "BombSmk5_5";
  sleep 1;
  deleteVehicle _source1;
  deleteVehicle _source2;
};

sleep 0.6;

private _rock = _type createVehicleLocal [0, 0, 0];
_rock setPosASL _startPosASL;
_rock setDir _dir;

private _posASLt = +_startPosASL;
private _startHASL = _startPosASL # 2;
private _difH = _endHASL - _startHASL;

for "_i" from 1 to 40 do {
  _posASLt set [2, _startHASL + (_difH * (_i / 40))];
  _rock setPosASL _posASLt;
  sleep 0.025;
};

_rock setPosASL [_startPosASL # 0, _startPosASL # 1, _endHASL];

sleep 30;

deleteVehicle _rock;

/*
  Author: SzwedzikPL
  Checks if qiven quad can attach some vehicle
*/

params ["_quad", "_player"];

mission_quad_attachableVehicle = objNull;

if !((driver _quad) isEqualTo _player) exitWith {false};

private _vehicles = nearestObjects [_quad, mission_carrier_supportedVehicles, 14];
if (_vehicles isEqualTo []) exitWith {false};

private _vehicle = _vehicles # 0;

if (!((crew _vehicle) isEqualTo []) && !(_vehicle isKindOf "B_UAV_05_F")) exitWith {false};

(_vehicle worldToModelVisual (getPos _quad)) params ["_posX", "_poxY"];

if ((abs _posX) > 2) exitWith {false};
if (_poxY > 13) exitWith {false};

private _relDir = _vehicle getRelDir _quad;

if ((_relDir > 16) && (_relDir < 344)) exitWith {false};

private _quadDir = getDir _quad;
if (_quadDir < 180) then {_quadDir = _quadDir + 360};

private _vehicleDir = getDir _vehicle;
if (_vehicleDir < 180) then {_vehicleDir = _vehicleDir + 360};

if ((abs (_quadDir - _vehicleDir)) > 30) exitWith {false};

if !(isNull (_quad getVariable ["mission_quad_attachedVehicle", objNull])) exitWith {false};

mission_quad_attachableVehicle = _vehicle;

true

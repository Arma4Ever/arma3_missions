/*
  Author: SzwedzikPL
  Hides vehicle by carrier ramp
*/

params ["_rampId"];

private _rampStart = missionNamespace getVariable [format ["carrier_ramp_%1_start", _rampId], objNull];
private _rampMid = missionNamespace getVariable [format ["carrier_ramp_%1_mid", _rampId], objNull];
private _rampEnd = missionNamespace getVariable [format ["carrier_ramp_%1_end", _rampId], objNull];
private _rampSound = missionNamespace getVariable [format ["carrier_ramp_%1_sound", _rampId], objNull];
private _rampPanel = missionNamespace getVariable [format ["carrier_ramp_%1_panel", _rampId], objNull];
private _rampArea = missionNamespace getVariable [format ["carrier_ramp_%1_area", _rampId], objNull];

private _vehicles = _rampArea call mission_fnc_getRampVehicles;

if !((count _vehicles) isEqualTo 1) exitWith {};

private _vehicle = _vehicles # 0;

if !((toLower (typeOf _vehicle)) in mission_carrier_supportedVehicles) exitWith {};
if (!((crew _vehicle) isEqualTo []) && !(_vehicle isKindOf "B_UAV_05_F")) exitWith {};

private _posStart = getPosASL _rampStart;
private _posMid = getPosASL _rampMid;
private _posEnd = getPosASL _rampEnd;

// Exit if ramp is already doing something
if (_rampPanel getVariable ["isBusy", false]) exitWith {};

_rampPanel setVariable ["isBusy", true, true];
_rampPanel setObjectTextureGlobal [1, "data\panels\ramp_motion_down.paa"];

_vehicle allowDamage false;
_vehicle call mission_fnc_packVehicle;
_vehicle enableSimulationGlobal false;
_vehicle setDir ((getDir carrier_object) + 180);
_vehicle setPosASL _posEnd;

private _vectorDir = vectorDir _vehicle;
private _vectorUp = vectorUp _vehicle;

playSound3D [
  "a3\sounds_f_jets\buildings\carrier\deflector_down_1.wss",
  _rampSound,
  false,
  getPosASL _rampSound,
  4.9,
  1,
  250
];

for "_i" from 0 to 100 step 5 do {
  _vehicle setVelocityTransformation [
    _posEnd,
    _posMid,
    [0,0,0],
    [0,0,0],
    _vectorDir,
    _vectorDir,
    _vectorUp,
    _vectorUp,
    _i/100
  ];
  sleep 0.2;
};

for "_i" from 0 to 100 step 5 do {
  _vehicle setVelocityTransformation [
    _posMid,
    _posStart,
    [0,0,0],
    [0,0,0],
    _vectorDir,
    _vectorDir,
    _vectorUp,
    _vectorUp,
    _i/100
  ];
  sleep 0.25;
};

deleteVehicle _vehicle;
_rampPanel setVariable ["isBusy", false, true];
_rampPanel setObjectTextureGlobal [1, "data\panels\ramp_ready.paa"];

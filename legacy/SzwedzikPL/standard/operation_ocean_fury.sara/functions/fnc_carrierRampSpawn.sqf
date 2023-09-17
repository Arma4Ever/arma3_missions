/*
  Author: SzwedzikPL
  Spawns vehicle by carrier ramp
*/

params ["_vehicleClass", "_rampId"];

if !(isServer) exitWith {};

private _rampStart = missionNamespace getVariable [format ["carrier_ramp_%1_start", _rampId], objNull];
private _rampMid = missionNamespace getVariable [format ["carrier_ramp_%1_mid", _rampId], objNull];
private _rampEnd = missionNamespace getVariable [format ["carrier_ramp_%1_end", _rampId], objNull];
private _rampSound = missionNamespace getVariable [format ["carrier_ramp_%1_sound", _rampId], objNull];
private _rampPanel = missionNamespace getVariable [format ["carrier_ramp_%1_panel", _rampId], objNull];
private _rampArea = missionNamespace getVariable [format ["carrier_ramp_%1_area", _rampId], objNull];

// Exit if ramp is not clear
if !((_rampArea call mission_fnc_getRampVehicles) isEqualTo []) exitWith {};

private _posStart = getPosASL _rampStart;
private _posMid = getPosASL _rampMid;
private _posEnd = getPosASL _rampEnd;

// Exit if ramp is already doing something
if (_rampPanel getVariable ["isBusy", false]) exitWith {};

_rampPanel setVariable ["isBusy", true, true];
_rampPanel setObjectTextureGlobal [1, "data\panels\ramp_motion_up.paa"];

private _vehicle = createVehicle [_vehicleClass, [0, 0, 500], [], 0, "NONE"];
_vehicle allowDamage false;
_vehicle call mission_fnc_packVehicle;
_vehicle setVehicleAmmoDef 0;
_vehicle enableSimulationGlobal false;
_vehicle setPosASL _posStart;
_vehicle setDir ((getDir carrier_object) + 180);

private _displayName = getText (configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "displayName");
_vehicle setVariable ["displayName", _displayName, true];

private _vectorDir = vectorDir _vehicle;
private _vectorUp = vectorUp _vehicle;

playSound3D [
  "a3\sounds_f_jets\buildings\carrier\deflector_up_1.wss",
  _rampSound,
  false,
  getPosASL _rampSound,
  4.9,
  1,
  250
];

for "_i" from 0 to 100 step 5 do {
  _vehicle setVelocityTransformation [
    _posStart,
    _posMid,
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

for "_i" from 0 to 100 step 5 do {
  _vehicle setVelocityTransformation [
    _posMid,
    _posEnd,
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

sleep 0.2;
_vehicle enableSimulationGlobal true;
sleep 1;
_vehicle allowDamage true;

_rampPanel setVariable ["isBusy", false, true];
_rampPanel setObjectTextureGlobal [1, "data\panels\ramp_ready.paa"];

if ((toLower (typeOf _vehicle)) isEqualTo "b_uav_05_f") then {
  createVehicleCrew _vehicle;
};

sleep 0.5;

{
  _x addCuratorEditableObjects [[_vehicle], true];
} forEach allCurators;

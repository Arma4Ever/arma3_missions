#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Moves unit to plane
 */

params ["_unit"];

if (is3DENPreview) then {systemChat str ["moveToPlane", _unit];};

if !(local _unit) exitWith {};

private _planeNumber = _unit getVariable ["mission_planeNumber", 0];
if !(_planeNumber in [1,2]) exitWith {};

private _plane = missionNamespace getVariable [format ["mission_plane_%1", _planeNumber], objNull];
if (isNull _plane) exitWith {};

private _placeNumber = _unit getVariable ["mission_planePlaceNumber", 0];
if (_placeNumber == 0) exitWith {};

private _sideDif = _placeNumber % 2;
private _sideBase = [
  [-0.65, -9.6, -4.8],
  [0.65, -9.6, -4.8]
] select _sideDif;
private _vector = _sideBase vectorAdd [0, 1.3 * ((_placeNumber + _sideDif) / 2), 0];

_unit setPos (_plane modelToWorld _vector);
_unit setDir (getDir _plane);
_unit disableAI "PATH";

if (hasInterface && {_unit == player}) then {
  0 call FUNC(checkBasePresence);
};

[_unit, _plane] spawn {
  params ["_unit", "_plane"];

  if (!hasInterface || {_unit != player}) exitWith {};

  enableEnvironment [false, false];
  inGameUISetEventHandler ["Action", "
    (_this select 0) in [
      missionNamespace getVariable ['mission_plane_1', objNull],
      missionNamespace getVariable ['mission_plane_2', objNull]
    ]
  "];

  enableCamShake true;
  addCamShake [0.6, 600, 100];

  sleep 5;

  while {!(missionNamespace getVariable [QGVAR(localOutPlane), false])} do {
    private _audio = format [QGVAR(turbulence_%1), ceil random 9];
    _plane say3D _audio;
    _plane say3D _audio;
    _plane say3D _audio;
    sleep 0.25;
    addCamShake [1.8, 4, 55];
    sleep (4 + (random 4));
  };

  if (is3DENPreview) then {systemChat "turbulence end";};
};

[_unit, _plane] spawn {
  params ["_unit", "_plane"];

  // DEBUG
  if (!hasInterface || {_unit != player}) exitWith {};

  waitUntil {
    !(alive _plane) || {(_unit distance _plane) > 10.5}
  };

  inGameUISetEventHandler ["Action", ""];
  deleteMarkerLocal "mission_tmpPlayerMarker";

  // Prevent player detection before touchdown
  _unit setCaptive true;

  if (alive _plane) then {
    private _dir = direction _plane;
    private _speed = 45 + (random 35);
    _unit setVelocity ((velocity _unit) vectorAdd [
      (sin _dir) * _speed,
      (cos _dir) * _speed,
      0
    ]);

    if (is3DENPreview) then {systemChat "PUSH";};
    missionNamespace setVariable [QGVAR(localOutPlane), true];
    resetCamShake;

    sleep 10;

    while {((getPosATL _unit) # 2) > 3500} do {
      private _cameraDirVector = getCameraViewDirection _unit;
      private _dir = (_cameraDirVector # 0) atan2 (_cameraDirVector # 1) + (40 - (random 80));
      private _factor = random 200;
      private _posATL = _unit getPos [250 + (_factor * 3), _dir];
      _posATL set [2, ((getPosATL _unit) # 2) - (200 + (_factor * 1.5))];
      _posATL spawn FUNC(lightningLocal);

      sleep (4 + (random 8));
    };

    if (is3DENPreview) then {systemChat "clouds end";};
  };

  waitUntil {
    sleep 1;
    ((getPosATL (vehicle _unit)) # 2) < 4
  };

  if (is3DENPreview) then {systemChat "Captive end";};
  _unit setCaptive false;
};

[_unit, _plane] spawn {
  params ["_unit", "_plane"];

  if (!hasInterface || {_unit != player}) exitWith {};

  private _marker = createMarkerLocal ["mission_tmpPlayerMarker", [worldSize/2, worldSize/2, 0]];
  _marker setMarkerShapeLocal "Rectangle";
  _marker setMarkerSizeLocal [worldSize*2, worldSize*2];
  _marker setMarkerBrushLocal "SolidFull";
  _marker setMarkerColorLocal "ColorBlack";

  while {
    (alive _plane) &&
    {(_unit distance _plane) < 200}
  } do {
    private _sound = [QGVAR(c130_ambient_closed), QGVAR(c130_ambient_open)] select (_plane getVariable [QGVAR(doorOpen), false]);

    GVAR(C130AmbientSound) = _plane say3D _sound;
    private _end = CBA_missionTime + 6.2;
    waitUntil {
      (isNull GVAR(C130AmbientSound)) || {CBA_missionTime >= _end}
    };
  };

  if (is3DENPreview) then {systemChat "Plane sound end";};
};

_unit spawn {
  _this switchMove "amovpercmstpslowwrfldnon";
  sleep 0.5;
  [_this, "amovpercmstpslowwrfldnon"] remoteExec ["switchMove", 0];
  sleep 0.5;
  _this switchMove "amovpercmstpslowwrfldnon";
  sleep 2;

  if (!hasInterface || {_this != player}) exitWith {};

  0 cutText ["", "BLACK IN", -1];
  enableEnvironment [false, true];
};

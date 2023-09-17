#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Plane sequence
 */

if !(isServer) exitWith {};
if (missionNamespace getVariable [QGVAR(planeSequenceStarted), false]) exitWith {};
missionNamespace setVariable [QGVAR(planeSequenceStarted), true, true];

[QGVAR(zeusLog), "Plane seq started"] call CBA_fnc_globalEvent;

private _plane1 = missionNamespace getVariable ["mission_plane_1", objNull];
private _plane2 = missionNamespace getVariable ["mission_plane_2", objNull];
if ((isNull _plane1) || (isNull _plane2)) exitWith {};

private _planes = [_plane1, _plane2];

private _ambientLights = [];
for "_i" from 1 to 6 do {
  _ambientLights pushBack (missionNamespace getVariable [
    format ["mission_plane_light_%1", _i],
    objNull
  ]);
};
private _redLights = [
  missionNamespace getVariable ["mission_plane_red_light_1", objNull],
  missionNamespace getVariable ["mission_plane_red_light_2", objNull]
];
private _greenLights = [
  missionNamespace getVariable ["mission_plane_green_light_1", objNull],
  missionNamespace getVariable ["mission_plane_green_light_2", objNull]
];

// Blackout screens
[QGVAR(2hLater)] call CBA_fnc_globalEvent;
sleep 1;

// Cleanup base
0 spawn (compileScript ["scripts\baseCleanup.sqf"]);
(missionNamespace getVariable ["mission_hqroom_lamp", objNull]) enableSimulationGlobal true;

// Sync
sleep 1;

// Teleport players to plane
{
  if (
    (side (group _x) == west) &&
    {!(_x getVariable ["mission_isHQ", false])}
  ) then {
    [QGVAR(moveToPlane), _x, _x] call CBA_fnc_targetEvent;
    sleep 0.1;
  };
} forEach (playableUnits + switchableUnits);

// Wait
sleep 15;

// Tell platoon leaders about 2 minutes - intro
[QGVAR(planeTimeHint), 120] call CBA_fnc_globalEvent;

_planes spawn {
  params ["_plane1", "_plane2"];

  sleep 35;

  private _pos = _plane1 getPos [250, (getDir _plane1) - 45];
  _pos set [2, (getPosATL _plane1) # 2];
  [QGVAR(planeLightning), _pos] call CBA_fnc_globalEvent;

  sleep 10;

  _pos = _plane2 getPos [250, (getDir _plane2) + 45];
  _pos set [2, (getPosATL _plane2) # 2];
  [QGVAR(planeLightning), _pos] call CBA_fnc_globalEvent;

  sleep 12;

  _pos = _plane1 getPos [300, (getDir _plane1) + 25];
  _pos set [2, (getPosATL _plane1) # 2];
  [QGVAR(planeLightning), _pos] call CBA_fnc_globalEvent;

  sleep 15;

  _pos = _plane2 getPos [300, (getDir _plane2) + 25];
  _pos set [2, (getPosATL _plane2) # 2];
  [QGVAR(planeLightning), _pos] call CBA_fnc_globalEvent;
};

sleep 60;

// Tell platoon leaders about 1 minute
[QGVAR(planeTimeHint), 60] call CBA_fnc_globalEvent;


sleep 26.5;
{
  playSound3D ["a3\missions_f_beta\data\sounds\firing_drills\target_pop-down_large.wss", _x, false, getPosASL _x, 5, 1, 100];
} forEach _planes;
sleep 0.5;
{deleteVehicle _x} forEach _ambientLights;

sleep 1.5;
{
  playSound3D ["a3\missions_f_beta\data\sounds\firing_drills\target_pop-down_small.wss", _x, false, getPosASL _x, 5, 1, 100];
} forEach _planes;
sleep 0.5;
{_x enableSimulationGlobal true} forEach _redLights;

sleep 1;

// Open doors
{
  _x animateSource ["CargoAction", 0.8, 0.46];
  _x setVariable [QGVAR(doorOpen), true, true];
  playSound3D [getMissionPath "data\sounds\ramp_open.ogg", _x, false, getPosASL _x, 2, 1, 100];
  0 spawn {
    [QGVAR(resetC130Ambient), 0] call CBA_fnc_globalEvent;
  };
} forEach _planes;

_planes spawn {
  params ["_plane1", "_plane2"];

  sleep 7;

  private _pos = _plane1 getPos [800, (getDir _plane1) - 6];
  _pos set [2, ((getPosATL _plane1) # 2) - 150];
  [QGVAR(planeLightning), _pos] call CBA_fnc_globalEvent;

  sleep 5;

  _pos = _plane2 getPos [800, (getDir _plane2) - 6];
  _pos set [2, ((getPosATL _plane2) # 2) - 150];
  [QGVAR(planeLightning), _pos] call CBA_fnc_globalEvent;

  sleep 5;

  _pos = _plane1 getPos [750, (getDir _plane1) + 7];
  _pos set [2, ((getPosATL _plane1) # 2) - 100];
  [QGVAR(planeLightning), _pos] call CBA_fnc_globalEvent;

  sleep 6;

  _pos = _plane2 getPos [750, (getDir _plane2) + 7];
  _pos set [2, ((getPosATL _plane2) # 2) - 100];
  [QGVAR(planeLightning), _pos] call CBA_fnc_globalEvent;

  sleep 6;

  _pos = _plane1 getPos [750, (getDir _plane1) - 12];
  _pos set [2, ((getPosATL _plane1) # 2) - 150];
  [QGVAR(planeLightning), _pos] call CBA_fnc_globalEvent;

  sleep 5;

  _pos = _plane2 getPos [750, (getDir _plane2) - 12];
  _pos set [2, ((getPosATL _plane2) # 2) - 150];
  [QGVAR(planeLightning), _pos] call CBA_fnc_globalEvent;

  sleep 7;

  _pos = _plane1 getPos [800, (getDir _plane1) + 6];
  _pos set [2, ((getPosATL _plane1) # 2) - 150];
  [QGVAR(planeLightning), _pos] call CBA_fnc_globalEvent;

  sleep 5;

  _pos = _plane2 getPos [800, (getDir _plane2) + 6];
  _pos set [2, ((getPosATL _plane2) # 2) - 150];
  [QGVAR(planeLightning), _pos] call CBA_fnc_globalEvent;
};

// Wait 15 sec
sleep 15;

// Tell platoon leaders about 15 sec
[QGVAR(planeTimeHint), 15] call CBA_fnc_globalEvent;

sleep 14.5;

{
  playSound3D ["a3\missions_f_beta\data\sounds\firing_drills\target_pop-down_small.wss", _x, false, getPosASL _x, 5, 1, 100];
} forEach _planes;
sleep 0.5;
{deleteVehicle _x} forEach _redLights;
{_x enableSimulationGlobal true} forEach _greenLights;

waitUntil {
  sleep 5;
  (isNull _plane1) ||
  {isNull _plane2} ||
  {
    ((_plane1 nearEntities ["B_recon_F", 500]) isEqualTo []) &&
    {(_plane2 nearEntities ["B_recon_F", 500]) isEqualTo []}
  }
};

deleteVehicle _plane1;
deleteVehicle _plane2;
{deleteVehicle _x} forEach _greenLights;
[QGVAR(zeusLog), "plane cleanup"] call CBA_fnc_globalEvent;

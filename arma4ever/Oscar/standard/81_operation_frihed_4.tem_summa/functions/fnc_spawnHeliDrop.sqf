#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Spawns helidrop
 */

private _index = [
  missionNamespace getVariable ["mission_helipad_1", objNull],
  missionNamespace getVariable ["mission_helipad_2", objNull],
  missionNamespace getVariable ["mission_helipad_3", objNull],
  missionNamespace getVariable ["mission_helipad_4", objNull],
  missionNamespace getVariable ["mission_helipad_5", objNull]
] findIf {!(_x getVariable ["isTaken", false])};

// Exit if no helipads are available
if (_index == -1) exitWith {};

private _helipad = missionNamespace getVariable [format ["mission_helipad_%1", _index + 1], objNull];
if (isNull _helipad) exitWith {};

private _spawnPos = [6166.04, 6172.21, 0.25];
private _heli = createVehicle ["RHS_Mi8MTV3_vdv", _spawnPos, [], 0, "NONE"];
_heli setPos _spawnPos;
_heli setDir 224.332;

private _moveDir = _heli getDir _helipad;
private _movePos = _heli getPos [500, _moveDir];

if (isNull _heli) exitWith {};

createVehicleCrew _heli;

for "_i" from 1 to 2 do {
  private _group = creategroup east;
  if (isNull _group) exitWith {};
  {
    private _unit = _group createUnit [_x, [6171.43,6147.74,0], [], 0.2, "NONE"];
    _unit assignAsCargo _heli;
    _unit moveInCargo _heli;
    sleep 0.02;
  } forEach [
    "rhs_vdv_recon_marksman_asval", 
    "rhs_vdv_recon_arifleman", 
    "rhs_vdv_recon_rifleman_scout", 
    "rhs_vdv_recon_grenadier_scout", 
    "rhs_vdv_recon_efreitor", 
    "rhs_vdv_recon_arifleman_rpk_scout"
  ];
};

private _driverGroup = group (driver _heli);
private _wp = _driverGroup addWaypoint [_movePos, 0];
_wp setWaypointType "MOVE";

private _wp2 = _driverGroup addWaypoint [position _helipad, 0];
_wp2 setWaypointType "SCRIPTED";
_wp2 setWaypointScript "A3\functions_f\waypoints\fn_wpLand.sqf";
_wp2 setWaypointStatements ["true", "this spawn mission_fnc_handleHeliLanded"];

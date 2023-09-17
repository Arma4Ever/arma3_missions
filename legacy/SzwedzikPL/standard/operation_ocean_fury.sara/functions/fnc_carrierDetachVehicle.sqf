/*
  Author: SzwedzikPL
  Detaches vehicle from quad
*/

params ["_quad"];

private _vehicle = _quad getVariable ["mission_quad_attachedVehicle", objNull];
if (isNull _vehicle) exitWith {};

detach _vehicle;
_quad setVariable ["mission_quad_attachedVehicle", objNull, true];

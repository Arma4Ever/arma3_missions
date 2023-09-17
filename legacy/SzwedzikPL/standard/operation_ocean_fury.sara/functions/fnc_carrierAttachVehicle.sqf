/*
  Author: SzwedzikPL
  Attaches vehicle to quad
*/

params ["_quad", "_player"];

if (isNil "mission_quad_attachableVehicle") exitWith {};
if (isNull mission_quad_attachableVehicle) exitWith {};

private _vehicle = mission_quad_attachableVehicle;

if ((_quad distance _vehicle) > 14) exitWith {};
if (!((crew _vehicle) isEqualTo []) && !(_vehicle isKindOf "B_UAV_05_F")) exitWith {};

private _model = (toLower (typeOf _vehicle)) call {
  if (_this in ["b_plane_fighter_01_f", "b_plane_fighter_01_stealth_f"]) exitWith {[0,-10,1.5]};
  if (_this isEqualTo "b_uav_05_f") exitWith {[0,-7,1.2]};
  if (_this isEqualTo "rhsusf_ch53e_usmc") exitWith {[0,-14,4]};
  if (_this isEqualTo "rhs_ah1z") exitWith {[0,-8.5,1.2]};
  if (_this isEqualTo "rhs_uh1y_ffar") exitWith {[0,-8.5,1.5]};
  []
};
if (_model isEqualTo []) exitWith {};

_vehicle attachTo [_quad, _model];
_quad setVariable ["mission_quad_attachedVehicle", _vehicle, true];

mission_quad_attachableVehicle = objNull;

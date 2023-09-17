#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Spawns vehicle
 */

params ["_type"];

if !(_type in [
  "vn_b_wheeled_m54_mg_01",
  "vn_b_armor_m41_01_02"
]) exitWith {};

private _pos = [9059.64, 6507.02, 0.41153];
private _dir = 167.258;

private _vehicle = _type createVehicle _pos;
_vehicle setDir _dir;

_vehicle enableDynamicSimulation true;

{
  _x addCuratorEditableObjects [[_vehicle], true];
} forEach allCurators;

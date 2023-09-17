#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Spawns static turrets
 */

params ["_type"];

if !(_type in [
  "rhsgref_cdf_b_NSV_TriPod",
  "rhsgref_cdf_b_SPG9",
  "rhsgref_cdf_b_AGS30_TriPod"

   
]) exitWith {};

private _turret = _type createVehicle [7213.527,11053.513,0];


#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Spawns static turrets
 */

params ["_type"];

if !(_type in [
  "BWA3_MRS120_Tropen",
  "RHS_M252_WD"
]) exitWith {};

private _turret = _type createVehicle [6422.956,5393.491,0];


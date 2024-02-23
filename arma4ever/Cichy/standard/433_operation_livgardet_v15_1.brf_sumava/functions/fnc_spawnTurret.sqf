#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Spawns static turrets
 */

params ["_type"];

if !(_type in [
  "UK3CB_AAF_B_M240_Low",
  "UK3CB_AAF_B_M240_High",
  "RHS_M252_WD"
]) exitWith {};

private _turret = _type createVehicle [5718.695,12084.12,0];


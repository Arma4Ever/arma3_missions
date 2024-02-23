#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Spawns static turrets
 */

params ["_type"];

if !(_type in [
  "UK3CB_BAF_Static_L16_Deployed_MTP_RM",
  "UK3CB_AAF_B_M240_High",
  "RHS_M252_WD"
]) exitWith {};

private _turret = _type createVehicle [2319.263,3628.559,0.2];


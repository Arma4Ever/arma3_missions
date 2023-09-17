#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Spawns vehicles
 */

params ["_type"];

if !(_type in [
  "UK3CB_LDF_B_T72A",
  "UK3CB_LDF_O_M1151_GPK_M2",
  "UK3CB_LDF_O_M1151_GPK_MK19",
  "UK3CB_LDF_B_M1151",
  "rhs_bmp3_msv"
]) exitWith {};

private _vehicle = _type createVehicle [11870.29,10860.163,0];
_vehicle setDir 35;
_vehicle enableDynamicSimulation true;
_vehicle addItemCargoGlobal ["ToolKit", 1];
clearMagazineCargoGlobal _vehicle;
clearWeaponCargoGlobal _vehicle;
clearBackpackCargoGlobal _vehicle;


{
  _x addCuratorEditableObjects [[_vehicle], true];
} forEach allCurators;


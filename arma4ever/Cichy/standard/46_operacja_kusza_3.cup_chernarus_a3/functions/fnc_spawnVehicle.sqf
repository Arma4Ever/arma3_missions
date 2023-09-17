#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Spawns vehicles
 */

params ["_type"];

if !(_type in [
  "CUP_O_BMP1_TKA"
]) exitWith {};

private _vehicle = _type createVehicle [8767.947,2825.027,1];
_vehicle setDir 35;
_vehicle enableDynamicSimulation true;
_vehicle addItemCargoGlobal ["ToolKit", 1];
_vehicle setObjectTextureGlobal [0, "kad3.paa"];
_vehicle setObjectTextureGlobal [1, "wiez2.paa"];
clearMagazineCargoGlobal _vehicle;
clearWeaponCargoGlobal _vehicle;
clearBackpackCargoGlobal _vehicle;


{
  _x addCuratorEditableObjects [[_vehicle], true];
} forEach allCurators;


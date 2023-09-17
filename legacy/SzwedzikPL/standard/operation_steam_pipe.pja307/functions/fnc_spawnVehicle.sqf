#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Spawns vehicles
 */

params ["_type"];

if !(_type in ["CUP_B_UH60M_FFV_US", "CUP_B_MH60L_DAP_4x_US", "B_Plane_CAS_01_dynamicLoadout_F"]) exitWith {};

private _vehicle = _type createVehicle [719.059, 1620.42, 0];
_vehicle setDir 179.277;

_vehicle enableDynamicSimulation true;

if (_type isNotEqualTo "B_Plane_CAS_01_dynamicLoadout_F") then {
  _vehicle addItemCargoGlobal ["ACE_BodyBag", 20];
  _vehicle addItemCargoGlobal ["ToolKit", 2];
} else {
  _vehicle addItemCargoGlobal ["ToolKit", 1];
};

{
  _x addCuratorEditableObjects [[_vehicle], true];
} forEach allCurators;

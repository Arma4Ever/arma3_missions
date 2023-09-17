#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Creates vehicle
 */
params ["_type", "_target", "_dir"];

private _vehicle = _type createVehicle (getPos _target);
_vehicle setDir _dir;

clearItemCargoGlobal _vehicle;
clearMagazineCargoGlobal _vehicle;
clearWeaponCargoGlobal _vehicle;
clearBackpackCargoGlobal _vehicle;

_vehicle enableDynamicSimulation true;

if (_type == "CUP_O_BMP_HQ_RU") exitWith {
  _vehicle addItemCargoGlobal ["ToolKit", 4];
  _vehicle addItemCargoGlobal ["CUP_launch_RPG7V", 2];
  _vehicle addItemCargoGlobal ["FirstAidKit", 40];
  _vehicle addItemCargoGlobal ["Medikit", 8];
  _vehicle addItemCargoGlobal ["CUP_arifle_AK103_railed", 4];
  _vehicle addItemCargoGlobal ["CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M", 20];
  _vehicle addItemCargoGlobal ["CUP_1Rnd_HE_GP25_M", 25];
  _vehicle addItemCargoGlobal ["CUP_PG7V_M", 8];
  _vehicle addItemCargoGlobal ["CUP_HandGrenade_RGD5", 30];
  _vehicle addItemCargoGlobal ["SmokeShell", 30];
  _vehicle addItemCargoGlobal ["CUP_30Rnd_TE1_Green_Tracer_762x39_AK103_bakelite_M", 80];
  _vehicle addItemCargoGlobal ["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M", 15];
  _vehicle addItemCargoGlobal ["ACE_10Rnd_762x54_Tracer_mag", 12];

  [_vehicle, 99999] call ace_refuel_fnc_makeSource;
  [_vehicle, 99999] call ace_rearm_fnc_makeSource;
  [_vehicle, 512] call ace_cargo_fnc_setSpace;
  _vehicle setVariable ['ace_isRepairVehicle', true, true];
};


if (_type == "O_Heli_Light_02_unarmed_F") exitWith {
  _vehicle addItemCargoGlobal ["ToolKit", 2];
  _vehicle addItemCargoGlobal ["FirstAidKit", 20];
  _vehicle addItemCargoGlobal ["Medikit", 4];
  _vehicle addBackpackCargoGlobal ["B_Parachute", 8];
};

if (_type == "CUP_O_Su25_Dyn_RU") exitWith {
  _vehicle addItemCargoGlobal ["CUP_arifle_AKS74U", 1];
  _vehicle addItemCargoGlobal ["CUP_30Rnd_545x39_AK_M", 5];
  _vehicle addItemCargoGlobal ["FirstAidKit", 5];
  _vehicle addItemCargoGlobal ["SmokeShell", 5];
  _vehicle addItemCargoGlobal ["ToolKit", 1];
  _vehicle addBackpackCargoGlobal ["B_Parachute", 1];

  _vehicle setPylonLoadout [1, "CUP_PylonPod_1Rnd_R73_Vympel"];
  _vehicle setPylonLoadout [2, "PylonRack_1Rnd_Missile_AGM_01_F"];
  _vehicle setPylonLoadout [3, "CUP_PylonPod_32Rnd_S5_plane_M"];
  _vehicle setPylonLoadout [4, "CUP_PylonPod_1Rnd_FAB250_plane_M"];
  _vehicle setPylonLoadout [5, "CUP_PylonPod_1Rnd_FAB250_plane_M"];
  _vehicle setPylonLoadout [6, "CUP_PylonPod_1Rnd_FAB250_plane_M"];
  _vehicle setPylonLoadout [7, "CUP_PylonPod_1Rnd_FAB250_plane_M"];
  _vehicle setPylonLoadout [8, "CUP_PylonPod_32Rnd_S5_plane_M"];
  _vehicle setPylonLoadout [9, "PylonRack_1Rnd_Missile_AGM_01_F"];
  _vehicle setPylonLoadout [10, "CUP_PylonPod_1Rnd_R73_Vympel"];
};

/*
CUP_O_BMP3_RU
CUP_O_BTR90_RU
CUP_O_T90_RU
CUP_O_T72_RU
*/

_vehicle addItemCargoGlobal ["ToolKit", 2];
_vehicle addItemCargoGlobal ["CUP_launch_RPG7V", 1];
_vehicle addItemCargoGlobal ["FirstAidKit", 30];
_vehicle addItemCargoGlobal ["Medikit", 5];
_vehicle addItemCargoGlobal ["CUP_arifle_AK103_railed", 4];
_vehicle addItemCargoGlobal ["CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M", 25];
_vehicle addItemCargoGlobal ["CUP_1Rnd_HE_GP25_M", 15];
_vehicle addItemCargoGlobal ["CUP_PG7V_M", 5];
_vehicle addItemCargoGlobal ["CUP_HandGrenade_RGD5", 20];
_vehicle addItemCargoGlobal ["SmokeShell", 20];
_vehicle addItemCargoGlobal ["CUP_30Rnd_TE1_Green_Tracer_762x39_AK103_bakelite_M", 30];
_vehicle addItemCargoGlobal ["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M", 5];
_vehicle addItemCargoGlobal ["ACE_10Rnd_762x54_Tracer_mag", 5];

#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Spawns vehicles
 */

params ["_type"];

if !(_type in ["vn_b_air_f4c_cas", "vn_b_air_uh1d_02_02", "vn_b_air_uh1c_01_02"]) exitWith {};

private _pos = [];
private _dir = -1;

if (_type isEqualTo "vn_b_air_f4c_cas") then {
  _pos = [15739.4, 7086.65, 0];
  _dir = 183;
};
if (_type in ["vn_b_air_uh1d_02_02", "vn_b_air_uh1c_01_02"]) then {
  _pos = [15778.2, 7213.08, 0];
  _dir = 271;
};

private _vehicle = _type createVehicle _pos;
_vehicle setDir _dir;

clearItemCargoGlobal _vehicle;
clearMagazineCargoGlobal _vehicle;
clearWeaponCargoGlobal _vehicle;
clearBackpackCargoGlobal _vehicle;
_vehicle enableDynamicSimulation true;
_vehicle addItemCargoGlobal ["ToolKit", 1];

{
  _x addCuratorEditableObjects [[_vehicle], true];
} forEach allCurators;

if (_type isEqualTo "vn_b_air_f4c_cas") exitWith {
  _vehicle setPylonLoadout [1, "vn_bomb_f4_out_500_blu1b_fb_mag_x4", false, []];
  _vehicle setPylonLoadout [2, "vn_bomb_f4_out_500_blu1b_fb_mag_x4", false, []];
  _vehicle setPylonLoadout [3, "vn_rocket_ffar_f4_lau3_m151_he_x57", false, []];
  _vehicle setPylonLoadout [4, "vn_rocket_ffar_f4_lau3_m151_he_x57", false, []];
  _vehicle setPylonLoadout [5, "vn_bomb_f4_in_500_mk82_he_mag_x6", false, []];
  _vehicle setPylonLoadout [6, "vn_missile_f4_lau7_aim9e_mag_x2", false, []];;
  _vehicle setPylonLoadout [7, "vn_missile_f4_lau7_aim9e_mag_x2", false, []];
  _vehicle setPylonLoadout [8, "vn_missile_aim7e2_mag_x1", false, []];
  _vehicle setPylonLoadout [9, "vn_missile_aim7e2_mag_x1", false, []];
  _vehicle setPylonLoadout [10, "vn_missile_aim7e2_mag_x1", false, []];
  _vehicle setPylonLoadout [11, "vn_missile_aim7e2_mag_x1", false, []];
};

// heli gear?

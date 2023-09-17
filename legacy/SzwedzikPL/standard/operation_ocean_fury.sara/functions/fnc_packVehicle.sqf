/*
  Author: SzwedzikPL
  Folds wings and rotor blades on supported air vehicles
*/

params ["_vehicle"];

private _type = toLower (typeOf _vehicle);

if (_type in ["b_plane_fighter_01_f", "b_plane_fighter_01_stealth_f"]) exitWith {
  _vehicle animate ['wing_fold_l', 1, true];
  _vehicle animate ['wing_fold_r', 1, true];
  _vehicle animate ['wing_fold_cover_l', 1, true];
  _vehicle animate ['wing_fold_cover_r', 1, true];
};

if (_type isEqualTo "b_uav_05_f") exitWith {
  _vehicle animate ["wing_fold_l", 1, true];
  _vehicle animate ["wing_fold_l_arm", 1, true];
  _vehicle animate ["wing_fold_cover_l_arm", 1, true];
  _vehicle animate ["wing_fold_cover_l", 1, true];
  _vehicle animate ["wing_fold_r", 1, true];
  _vehicle animate ["wing_fold_r_arm", 1, true];
  _vehicle animate ["wing_fold_cover_r_arm", 1, true];
  _vehicle animate ["wing_fold_cover_r", 1, true];
};

if (_type isEqualTo "rhs_ah1z") exitWith {
  _vehicle animate ["mainrotor_folded", 1, true];
};

if (_type isEqualTo "rhsusf_ch53e_usmc") exitWith {
  _vehicle animateDoor ['mainRotor_folded', 1, true];
};

if (_type isEqualTo "rhs_uh1y_ffar") exitWith {
  _vehicle animate ["mainRotor_folded", 1, true];
};

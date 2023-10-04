#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Spawns supplies boxes
 */

params ["_type"];

if !(_type in ["ammo", "mortar", "mortarAmmo", "medical"]) exitWith {};

private _class = "";
private _items = [];

if (_type isEqualTo "ammo") then {
    _class = "vn_b_ammobox_02";
    _items = [
      // m16 30rnd
      ["vn_m16_30_t_mag", 40],
      // m14 20rnd,
      ["vn_m14_t_mag", 6],
      // pistol mag
      ["vn_m1911_mag", 10],
      // m60 belt
      ["vn_m60_100_mag", 6],
      // he grenade
      ["vn_m61_grenade_mag", 10],
      // Smoke grenades
      ["vn_m18_white_mag", 4],
      ["vn_m18_red_mag", 4],
      ["vn_m18_green_mag", 4],
      ["vn_m18_purple_mag", 4],
      ["vn_m18_yellow_mag", 4],
      // Launchers
      ["vn_m72", 4],
      ["vn_m72_mag", 4],
      // 40mm he rounds
      ["vn_40mm_m381_he_mag", 16],
      // 40mm flare rounds
      ["vn_40mm_m583_flare_w_mag", 3],
      ["vn_40mm_m661_flare_g_mag", 3],
      ["vn_40mm_m662_flare_r_mag", 3],
      ["vn_40mm_m695_flare_y_mag", 3],
      // 40mm smoke rounds
      ["vn_40mm_m680_smoke_w_mag", 3],
      ["vn_40mm_m682_smoke_r_mag", 3],
      ["vn_40mm_m715_smoke_g_mag", 3],
      ["vn_40mm_m716_smoke_y_mag", 3],
      ["vn_40mm_m717_smoke_p_mag", 3]
    ];
};
if (_type isEqualTo "mortar") then {
  _class = "vn_b_army_static_mortar_m29";
  _items = [];
};
if (_type isEqualTo "mortarAmmo") then {
  _class = "vn_b_ammobox_15";
  _items = [
    // 82mm he rounds
    ["ACE_1Rnd_82mm_Mo_HE", 6],
    // 82mm illum rounds
    ["ACE_1Rnd_82mm_Mo_Illum", 2]
  ];
};
if (_type isEqualTo "medical") then {
  _class = "ACE_medicalSupplyCrate_advanced";
  _items = [
    ["ACE_fieldDressing", 10],
    ["ACE_elasticBandage", 10],
    ["ACE_packingBandage", 10],
    ["ACE_quikclot", 40],
    ["ACE_splint", 5],
    ["ACE_morphine", 4],
    ["ACE_epinephrine", 4],
    ["ACE_plasmaIV_500", 4],
    ["ACE_salineIV_250", 8],
    ["ACE_personalAidKit", 3]
  ];
};

if (_class isEqualTo "") exitWith {};

private _box = _class createVehicle [15805.3, 7248.21, 0];

{
  _x addCuratorEditableObjects [[_box], true];
} forEach allCurators;

clearWeaponCargoGlobal _box;
clearMagazineCargoGlobal _box;
clearItemCargoGlobal _box;
clearBackpackCargoGlobal _box;

{_box addItemCargoGlobal _x} forEach _items;

[_box, 4] call ace_cargo_fnc_setSize;

if (_type isEqualTo "mortar") then {
  {
    _box removeMagazine _x;
  } forEach (magazines _box);
};

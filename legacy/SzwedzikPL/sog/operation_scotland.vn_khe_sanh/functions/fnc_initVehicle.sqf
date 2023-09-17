#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Inits vehicle
 */
params ["_vehicle"];

if !(alive _vehicle) exitWith {};

private _type = typeOf _vehicle;

if !(_type in [
  "vn_b_wheeled_m54_mg_01",
  "vn_b_armor_m41_01_02"
]) exitWith {};

clearItemCargoGlobal _vehicle;
clearMagazineCargoGlobal _vehicle;
clearWeaponCargoGlobal _vehicle;
clearBackpackCargoGlobal _vehicle;

if (_type == "vn_b_wheeled_m54_mg_01") exitWith {
  _vehicle setMaxLoad 340000;
  {_vehicle addItemCargoGlobal _x} forEach [
    // Med
    ["ACE_fieldDressing", 3000],
    ["ACE_elasticBandage", 3000],
    ["ACE_packingBandage", 3000],
    ["ACE_quikclot", 3000],
    ["ACE_epinephrine", 1000],
    ["ACE_morphine", 1000],
    ["ACE_adenosine", 1000],
    ["A3CS_painkillers", 1000],
    ["ACE_tourniquet", 500],
    ["ACE_splint", 1000],
    ["ACE_plasmaIV_500", 1000],
    ["ACE_plasmaIV_250", 3000],
    ["ACE_plasmaIV", 500],
    ["ACE_personalAidKit", 500],
    // Mags
    ["vn_m16_30_t_mag", 3000],
    ["vn_m14_t_mag", 1000],
    ["vn_m60_100_mag", 1000],
    ["vn_40mm_m406_he_mag", 1500],
    ["vn_40mm_m680_smoke_w_mag", 1500],
    ["vn_40mm_m682_smoke_r_mag", 1500],
    ["vn_40mm_m715_smoke_g_mag", 1500],
    ["vn_40mm_m716_smoke_y_mag", 1500],
    ["vn_40mm_m717_smoke_p_mag", 1500],
    ["vn_m1911_mag", 500],
    ["ACE_40mm_Flare_red", 1500],
    ["ACE_40mm_Flare_green", 1500],
    ["ACE_40mm_Flare_white", 1500],
    // Launchers
    ["vn_m72", 1000],
    ["vn_m72_mag", 1000],
    // Grenades
    ["vn_m61_grenade_mag", 1500],
    ["vn_m34_grenade_mag", 1500],
    ["vn_m18_green_mag", 1000],
    ["vn_m18_purple_mag", 1000],
    ["vn_m18_red_mag", 1000],
    ["vn_m18_white_mag", 1000],
    ["vn_m18_yellow_mag", 1000],
    ["ACE_HandFlare_Green", 1000],
    ["ACE_HandFlare_White", 1000],
    ["ACE_HandFlare_Red", 1000],
    ["ACE_HandFlare_Yellow", 1000],
    ["ToolKit", 2]
  ];

  [_vehicle, 99999] call ace_rearm_fnc_makeSource;
  [_vehicle, 99999] call ace_refuel_fnc_makeSource;
  _vehicle setVariable ["ace_isRepairVehicle", 1, true];
  _vehicle setVariable ["ace_medical_isMedicalVehicle", true, true];

  [_vehicle, 200] call ace_cargo_fnc_setSpace;
  [_vehicle, 25, "ACE_Track"] call ace_repair_fnc_addSpareParts;
  [_vehicle, 25, "ACE_Wheel"] call ace_repair_fnc_addSpareParts;

  [_vehicle, 5, "vn_b_army_static_mortar_m2"] call ace_repair_fnc_addSpareParts;
  [_vehicle, 5, "vn_b_army_static_m1919a4_high"] call ace_repair_fnc_addSpareParts;
  [_vehicle, 10, "vn_b_army_static_m1919a4_low"] call ace_repair_fnc_addSpareParts;

  {_vehicle setObjectTextureGlobal [_forEachIndex, _x]} forEach [
    "vn\wheeled_f_vietnam\m54\data\vn_wheeled_m54_01_01_black_co.paa",
    "vn\wheeled_f_vietnam\m54\data\vn_wheeled_m54_01_02_black_co.paa",
    "vn\wheeled_f_vietnam\m54\data\vn_wheeled_m54_01_04_black_co.paa",
    "vn\wheeled_f_vietnam\m54\data\vn_wheeled_m54_mg_03_co.paa",
    "vn\wheeled_f_vietnam\m54\decals\vn_wheeled_m54_gun_decal_08_ca.paa",
    "vn\wheeled_f_vietnam\m54\decals\vn_wheeled_m54_gun_decal_08_ca.paa",
    "vn\wheeled_f_vietnam\m54\decals\vn_wheeled_m54_gun_decal_08_ca.paa"
  ];
};
if (_type == "vn_b_armor_m41_01_02") exitWith {
  _vehicle setMaxLoad 35000;
  {_vehicle addItemCargoGlobal _x} forEach [
    // Med
    ["ACE_fieldDressing", 300],
    ["ACE_elasticBandage", 300],
    ["ACE_packingBandage", 300],
    ["ACE_quikclot", 300],
    ["ACE_epinephrine", 100],
    ["ACE_morphine", 100],
    ["ACE_adenosine", 100],
    ["A3CS_painkillers", 100],
    ["ACE_tourniquet", 50],
    ["ACE_splint", 100],
    ["ACE_plasmaIV_500", 100],
    ["ACE_plasmaIV_250", 300],
    ["ACE_plasmaIV", 50],
    ["ACE_personalAidKit", 50],
    // Mags
    ["vn_m16_30_t_mag", 300],
    ["vn_m14_t_mag", 100],
    ["vn_m60_100_mag", 100],
    ["vn_40mm_m406_he_mag", 150],
    ["vn_40mm_m680_smoke_w_mag", 150],
    ["vn_40mm_m682_smoke_r_mag", 150],
    ["vn_40mm_m715_smoke_g_mag", 150],
    ["vn_40mm_m716_smoke_y_mag", 150],
    ["vn_40mm_m717_smoke_p_mag", 150],
    ["vn_m1911_mag", 50],
    ["ACE_40mm_Flare_red", 150],
    ["ACE_40mm_Flare_green", 150],
    ["ACE_40mm_Flare_white", 150],
    // Launchers
    ["vn_m72", 100],
    ["vn_m72_mag", 100],
    // Grenades
    ["vn_m61_grenade_mag", 150],
    ["vn_m34_grenade_mag", 150],
    ["vn_m18_green_mag", 100],
    ["vn_m18_purple_mag", 100],
    ["vn_m18_red_mag", 100],
    ["vn_m18_white_mag", 100],
    ["vn_m18_yellow_mag", 100],
    ["ACE_HandFlare_Green", 100],
    ["ACE_HandFlare_White", 100],
    ["ACE_HandFlare_Red", 100],
    ["ACE_HandFlare_Yellow", 100],
    ["ToolKit", 2]
  ];

  for "_i" from 1 to 3 do {
    _vehicle addMagazineTurret ["vn_m32a1_v_24_he_mag", [0]];
  };
  for "_i" from 1 to 2 do {
    _vehicle addMagazineTurret ["vn_m32a1_v_12_heat_mag", [0]];
  };
  for "_i" from 1 to 2 do {
    _vehicle addMagazineTurret ["vn_m32a1_v_12_hvap_mag", [0]];
  };
  for "_i" from 1 to 4 do {
    _vehicle addMagazineTurret ["vn_m32a1_v_6_apt_mag", [0]];
  };
  for "_i" from 1 to 5 do {
    _vehicle addMagazineTurret ["vn_m32a1_v_5_wp_mag", [0]];
  };
  for "_i" from 1 to 5 do {
    _vehicle addMagazineTurret ["vn_m1919_v_250_mag", [0]];
  };
  for "_i" from 1 to 10 do {
    _vehicle addMagazineTurret ["vn_m2_v_100_mag", [0,0]];
  };
};

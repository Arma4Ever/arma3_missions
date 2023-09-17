#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Creates transportable cargo box
 */
params ["_type"];

private _class = ["CUP_BOX_RU_Ammo_F", "ACE_medicalSupplyCrate_advanced"] select _type;
private _items = if (_type isEqualTo 0) then {
  [
    ["CUP_launch_RShG2", 10],
    ["CUP_launch_RPG18", 10],
    ["CUP_1Rnd_HE_GP25_M", 50],
    ["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M", 25],
    ["CUP_30Rnd_TE1_Green_Tracer_762x39_AK103_bakelite_M", 120],
    ["CUP_HandGrenade_RGD5", 40],
    ["CUP_HandGrenade_RGO", 40],
    ["SmokeShellGreen", 16],
    ["SmokeShellRed", 16],
    ["SmokeShell", 16],
    ["ACE_M84", 40],
    ["ACE_10Rnd_762x54_Tracer_mag", 25],
    ["CUP_75Rnd_TE4_LRT4_Green_Tracer_762x39_RPK_M", 30],
    ["CUP_RPG18_M", 10],
    ["CUP_RSHG2_M", 10],
    ["CUP_AT13_M", 5],
    ["CUP_PG7VL_M", 10]
  ]
} else {
  [
    ["ACE_fieldDressing", 40],
    ["ACE_packingBandage", 40],
    ["ACE_elasticBandage", 40],
    ["ACE_tourniquet", 15],
    ["ACE_splint", 15],
    ["ACE_morphine", 25],
    ["ACE_epinephrine", 25],
    ["ACE_bloodIV", 10],
    ["ACE_bloodIV_500", 15],
    ["ACE_bloodIV_250", 25],
    ["ACE_quikclot", 40],
    ["ACE_personalAidKit", 10],
    ["ACE_surgicalKit", 1]
  ]
};

private _box = _class createVehicle (getPos mission_cargoboxes_target);
_box setDir (getDir mission_cargoboxes_target);

clearItemCargoGlobal _box;
clearMagazineCargoGlobal _box;
clearWeaponCargoGlobal _box;

{_box addItemCargoGlobal _x} forEach _items;

hint "Skrzynia pobrana i gotowa do transportu";

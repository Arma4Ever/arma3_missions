#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Creates transportable cargo box
 */
params ["_type"];

private _class = ["CUP_BOX_RU_Ammo_F", "ACE_medicalSupplyCrate_advanced"] select _type;
private _items = if (_type isEqualTo 0) then {
  [
    ["CUP_launch_RPG18", 60],
    ["CUP_1Rnd_HE_GP25_M", 250],
    ["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M", 100],
    ["CUP_30Rnd_TE1_Green_Tracer_762x39_AK103_bakelite_M", 800],
    ["CUP_HandGrenade_RGD5", 340],
    ["CUP_HandGrenade_RGO", 340],
    ["SmokeShellGreen", 160],
    ["SmokeShellRed", 160],
    ["SmokeShell", 160],
    ["ACE_M84", 340],
    ["ACE_10Rnd_762x54_Tracer_mag", 200],
    ["CUP_75Rnd_TE4_LRT4_Green_Tracer_762x39_RPK_M", 150],
    ["CUP_RPG18_M", 60],
    ["CUP_AT13_M", 15],
    ["CUP_PG7VL_M", 50]
  ]
} else {
  [
    ["ACE_fieldDressing", 340],
    ["ACE_packingBandage", 340],
    ["ACE_elasticBandage", 340],
    ["ACE_tourniquet", 150],
    ["ACE_splint", 150],
    ["ACE_morphine", 325],
    ["ACE_epinephrine", 325],
    ["ACE_bloodIV", 100],
    ["ACE_bloodIV_500", 150],
    ["ACE_bloodIV_250", 250],
    ["ACE_quikclot", 400],
    ["ACE_personalAidKit", 100],
    ["ACE_surgicalKit", 5]
  ]
};

private _box = _class createVehicle (getPos mission_cargoboxes_target);
_box setDir (getDir mission_cargoboxes_target);

clearItemCargoGlobal _box;
clearMagazineCargoGlobal _box;
clearWeaponCargoGlobal _box;

{_box addItemCargoGlobal _x} forEach _items;

hint "Skrzynia pobrana i gotowa do transportu";

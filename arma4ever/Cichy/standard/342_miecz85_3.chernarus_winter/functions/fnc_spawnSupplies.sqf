#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Spawns supplies boxes
 */

params ["_type"];

if !(_type in ["ammo", "medical","ammoMortar"]) exitWith {};

private _class = "";
private _items = [];

if (_type isEqualTo "ammo") then {
  _class = "rhs_gear_crate";
  _items = [
    ["rhs_GRD40_White", 10],
    ["rhs_mag_rdg2_white", 10],
    ["rhs_VG40OP_red", 10],
    ["UK3CB_SVD_10rnd_762x54_G", 20],
    ["rhs_VOG25", 20],
    ["UK3CB_SVD_10rnd_762x54_R", 20],
    ["PSZ_762x54_Belt_100", 10],
    ["rhs_mag_9x18_8_57N181S", 10],
    ["rhs_30Rnd_762x39mm_89", 50],
    ["rhs_mag_f1", 10],
    ["rhs_rpg7_PG7VL_mag", 10],
    ["rhs_rpg7_OG7V_mag", 10],
    ["rhs_10Rnd_762x54mmR_7N1", 20],
    ["rhs_GRD40_Green", 10],
    ["rhs_GRD40_Red", 10]
  ];
};
if (_type isEqualTo "medical") then {
  _class = "ACE_medicalSupplyCrate_advanced";
  _items = [
    ["ACE_fieldDressing", 100],
    ["ACE_packingBandage", 100],
    ["ACE_elasticBandage", 100],
    ["ACE_tourniquet", 15],
    ["ACE_splint", 15],
    ["ACE_morphine", 15],
    ["ACE_adenosine", 15],
    ["ACE_epinephrine", 15],
    ["ACE_salineIV", 8],
    ["ACE_salineIV_500", 8],
    ["ACE_quikclot", 20],
    ["ACE_personalAidKit", 8],
    ["ACE_bodyBag", 5],
    ["A4ES_painkillers", 50]
  ];
};
if (_type isEqualTo "ammoMortar") then {
  _class = "Box_NATO_Support_F";
  _items = [
    ["ACE_1Rnd_82mm_Mo_HE", 8],
    ["ACE_1Rnd_82mm_Mo_Smoke", 3]
  ];
};

if (_class isEqualTo "") exitWith {};

private _box = _class createVehicle [9044.701,6187.505,0];

{
  _x addCuratorEditableObjects [[_box], true];
} forEach allCurators;

clearWeaponCargoGlobal _box;
clearMagazineCargoGlobal _box;
clearItemCargoGlobal _box;
clearBackpackCargoGlobal _box;
_box setMaxLoad 99999;

{_box addItemCargoGlobal _x} forEach _items;

[_box, 4] call ace_cargo_fnc_setSize;

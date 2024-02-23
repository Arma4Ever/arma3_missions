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
  _class = "UK3CB_HK33_Equipbox_Indfor";
  _items = [
    ["rhs_30Rnd_762x39mm_89", 40],
    ["rhs_30Rnd_762x39mm_tracer", 40],
    ["uk3cb_10rnd_magazine_sks_G", 40],
    ["UK3CB_SVD_10rnd_762x54_G", 20],
    ["UK3CB_RPK_75rnd_762x39_G", 40],
    ["uk3cb_PPSH_71rnd_magazine_G", 20],
    ["rhs_rpg7_PG7V_mag", 6],
    ["rhs_rpg7_OG7V_mag", 10],
    ["rhs_VOG25", 15],
    ["rhs_GRD40_White", 15],
    ["rhs_GRD40_Red", 10],
    ["rhs_mag_f1", 15],
    ["rhs_mag_rdg2_white", 15]
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

private _box = _class createVehicle [7852.289,252.411,0];

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

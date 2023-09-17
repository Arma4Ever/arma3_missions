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
  _class = "UK3CB_Bren_Equipbox_Blufor";
  _items = [
    ["rhssaf_mag_brd_m83_green", 10],
    ["rhssaf_mag_brd_m83_yellow", 10],
    ["rhs_GRD40_Green", 20],
    ["rhs_GRD40_White", 20],
    ["rhs_VOG25", 20],
    ["rhs_GRD40_Red", 20],
    ["rhs_rpg7_PG7VL_mag", 10],
    ["rhs_rpg7_OG7V_mag", 10],
    ["rhs_30Rnd_545x39_7N10_plum_AK", 70],
    ["rhs_mag_rgd5", 20],
    ["rhs_weap_rpg26", 10],
    ["rhs_100Rnd_762x54mmR_green", 40],
    ["rhs_60Rnd_545X39_7N10_AK", 30],
    ["SmokeShell", 15],
    ["SmokeShellGreen", 15]
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
  _class = "UK3CB_Bren_Equipbox_Blufor";
  _items = [
    ["ACE_1Rnd_82mm_Mo_HE", 8],
    ["ACE_1Rnd_82mm_Mo_Smoke", 3]
  ];
};

if (_class isEqualTo "") exitWith {};

private _box = _class createVehicle [7213.527,11053.513,0];

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

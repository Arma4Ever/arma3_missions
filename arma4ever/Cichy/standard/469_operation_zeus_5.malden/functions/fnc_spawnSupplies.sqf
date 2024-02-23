#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Spawns supplies boxes
 */

params ["_type"];

if !(_type in ["ammo", "medical","moz"]) exitWith {};

private _class = "";
private _items = [];

if (_type isEqualTo "ammo") then {
  _class = "UK3CB_Bren_Equipbox_Blufor";
  _items = [
    ["SmokeShellOrange", 10],
    ["SmokeShellYellow", 10],
    ["1Rnd_SmokeRed_Grenade_shell", 10],
    ["1Rnd_SmokeBlue_Grenade_shell", 10],
    ["rhs_mag_M441_HE", 20],
    ["1Rnd_Smoke_Grenade_shell", 10],
    ["SmokeShell", 10],
    ["SmokeShellGreen", 10],
    ["UK3CB_BAF_556_30Rnd", 10],
    ["UK3CB_BAF_556_30Rnd_T", 20],
    ["rhs_mag_m67", 10],
    ["UK3CB_BAF_Javelin_Slung_Tube", 2],
    ["rhs_fim92_mag", 4],
    ["UK3CB_BAF_9_17Rnd", 10],
    ["rhs_weap_m72a7", 4],
    ["UK3CB_BAF_762_100Rnd_T", 20],
    ["UK3CB_BAF_762_L42A1_20Rnd_T", 15],
    ["SmokeShell", 10],
    ["SmokeShellGreen", 10]
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
    ["ACE_surgicalKit", 1],
    ["ACE_bodyBag", 5],
    ["A4ES_dressingSet", 1],
    ["A4ES_painkillers", 50]
  ];
};
if (_type isEqualTo "moz") then {
  _class = "Box_NATO_Support_F";
  _items = [
    ["UK3CB_BAF_1Rnd_81mm_Mo_Shells", 30],
    ["rhs_mag_m67", 10],
    ["UK3CB_BAF_1Rnd_81mm_Mo_AB_Shells", 10],
    ["UK3CB_BAF_1Rnd_81mm_Mo_Smoke_White", 10]
  ];
};
if (_type isEqualTo "ammoMortar1") then {
  _class = "Box_NATO_Support_F";
  _items = [
    ["UK3CB_BAF_1Rnd_81mm_Mo_Shells", 30],
    ["UK3CB_BAF_1Rnd_81mm_Mo_AB_Shells", 10],
    ["UK3CB_BAF_1Rnd_81mm_Mo_Smoke_White", 10]
  ];
};

if (_class isEqualTo "") exitWith {};

private _box = _class createVehicle [2319.263,3628.559,0.2];

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

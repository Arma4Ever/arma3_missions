#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Spawns supplies boxes
 */

params ["_type"];

if !(_type in ["ammo", "medical","ammoMortar", "granate", "at"]) exitWith {};

private _class = "";
private _items = [];

if (_type isEqualTo "ammo") then {
  _class = "ACE_Box_Ammo";
  _items = [
    ["UK3CB_HK33_30rnd_556x45", 40],
    ["UK3CB_HK33_30rnd_556x45_RT", 40],
    ["UK3CB_HK33_30rnd_556x45_GT", 40],
    ["UK3CB_HK33_30rnd_556x45_YT", 40],
    ["UK3CB_HK33_30rnd_556x45_WT", 40],
    ["rhsusf_200Rnd_556x45_M855_soft_pouch_coyote", 20],
    ["rhsusf_100Rnd_556x45_soft_pouch", 20],
    ["rhssaf_mag_15Rnd_9x19_FMJ", 40]
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
if (_type isEqualTo "granate") then {
  _class = "Box_NATO_Grenades_F";
  _items = [
    ["1Rnd_HE_Grenade_shell", 40],
    ["1Rnd_Smoke_Grenade_shell", 10],
    ["1Rnd_SmokeGreen_Grenade_shell", 10],
    ["1Rnd_SmokeRed_Grenade_shell", 10],
    ["1Rnd_SmokeYellow_Grenade_shell", 10],
    ["1Rnd_SmokePurple_Grenade_shell", 10],
    ["1Rnd_SmokeBlue_Grenade_shell", 10],
    ["1Rnd_SmokeOrange_Grenade_shell", 10],
    ["HandGrenade", 12],
    ["MiniGrenade", 12],
    ["SmokeShell", 20],
    ["SmokeShellRed", 20],
    ["SmokeShellGreen", 20],
    ["SmokeShellYellow", 20],
    ["SmokeShellPurple", 20],
    ["SmokeShellBlue", 20],
    ["SmokeShellOrange", 20],
    ["ACE_M84", 10]
  ];
};
if (_type isEqualTo "at") then {
  _class = "PSZ_AmmoBox_Launchers";
  _items = [
    ["rhs_weap_M136", 5],
    ["rhs_mag_maaws_HEAT", 10]
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

private _box = _class createVehicle [3299.12,4306.26,0];

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

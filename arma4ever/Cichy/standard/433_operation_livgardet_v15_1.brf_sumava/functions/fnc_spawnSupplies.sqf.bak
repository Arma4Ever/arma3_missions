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
    ["SmokeShellOrange", 10],
    ["SmokeShellYellow", 10],
    ["1Rnd_SmokeRed_Grenade_shell", 10],
    ["1Rnd_SmokeBlue_Grenade_shell", 10],
    ["rhs_mag_M441_HE", 20],
    ["1Rnd_Smoke_Grenade_shell", 10],
    ["SmokeShell", 20],
    ["SmokeShellGreen", 20],
    ["rhsusf_mag_17Rnd_9x19_FMJ", 10],
    ["UK3CB_G3_20rnd_762x51_Y", 50],
    ["rhs_mag_m67", 10],
    ["rhs_m136_mag", 4],
    ["rhs_weap_M136", 4],
    ["sfp_200Rnd_556x45_ksp90", 20],
    ["sfp_grg_heat_66_mag", 5],
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

private _box = _class createVehicle [5718.695,12084.12,0];

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

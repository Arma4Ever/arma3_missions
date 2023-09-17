#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Spawns supplies boxes
 */

params ["_type"];

private _class = "";
private _items = [];

if (_type isEqualTo "ammo") then {
  _class = "rhs_7ya37_1_single";
  _items = [
    ["HandGrenade", 20],
    ["SmokeShell", 10],
    ["SmokeShellGreen", 5],
    ["SmokeShellRed", 5],
    ["SmokeShellBlue", 5],
    ["1Rnd_HE_Grenade_shell", 10],
    ["rhs_rpg7_PG7VL_mag", 3],
    ["rhs_rpg7_PG7VR_mag", 3],
    ["rhs_rpg7_PG7VS_mag", 3],
    ["rhs_30Rnd_545x39_AK_plum_green", 60],
    ["UGL_FlareGreen_F", 5],
    ["1Rnd_SmokeRed_Grenade_shell", 5],
    ["1Rnd_SmokeBlue_Grenade_shell", 5],
    ["rhs_mag_9x18_8_57N181S", 15],
    ["Titan_AT", 2],
    ["30Rnd_556x45_Stanag_Tracer_Green", 15],
    ["rhs_100Rnd_762x54mmR_green", 5],
    ["UK3CB_MG3_100rnd_762x51_GT", 5],
    ["ACE_20Rnd_762x51_M993_AP_Mag", 10],
    ["rhs_VOG25", 10]
  ];
};
if (_type isEqualTo "medical") then {
  _class = "ACE_medicalSupplyCrate_advanced";
  _items = [
    ["ACE_packingBandage", 100],
    ["ACE_tourniquet", 15],
    ["ACE_splint", 15],
    ["ACE_morphine", 15],
    ["ACE_epinephrine", 15],
    ["ACE_salineIV_500", 12],
    ["ACE_personalAidKit", 10],
    ["ACE_bodyBag", 5],
    ["A4ES_painkillers", 20]
  ];
};
if (_type isEqualTo "ammoMortar") then {
  _class = "Box_IED_Exp_F";
  _items = [
    ["ACE_1Rnd_82mm_Mo_HE", 5],
    ["ACE_1Rnd_82mm_Mo_Smoke", 2]
  ];
};

if (_class isEqualTo "") exitWith {};

private _box = createVehicle [_class , [0, 0, 0], [], 0, "CAN_COLLIDE"];
_box setPosASL [4738.22, 6275.17, 0];

{
  _x addCuratorEditableObjects [[_box], true];
} forEach allCurators;

clearWeaponCargoGlobal _box;
clearMagazineCargoGlobal _box;
clearItemCargoGlobal _box;
clearBackpackCargoGlobal _box;
_box setMaxLoad 99999;

{_box addItemCargoGlobal _x} forEach _items;

[_box, 18] call ace_cargo_fnc_setSize;

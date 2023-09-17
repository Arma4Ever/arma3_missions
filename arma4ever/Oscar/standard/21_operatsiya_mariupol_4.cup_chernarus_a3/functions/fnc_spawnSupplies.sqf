#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Spawns supplies boxes
 */

params ["_type"];

if !(_type in ["ammo", "medical"]) exitWith {};

private _class = "";
private _items = [];

if (_type isEqualTo "ammo") then {
  _class = "UK3CB_Bren_Equipbox_Blufor";
  _items = [
    ["ACE_Clacker", 4],
    ["ACE_M26_Clacker", 4],
    ["ToolKit", 2],
    ["SmokeShell", 25],
    ["SmokeShellGreen", 25],
    ["SmokeShellRed", 25],
    ["rhs_mag_m67", 25],
    ["DemoCharge_Remote_Mag", 10],
    ["MRAWS_HEAT_F", 5],
    ["rhs_rpg7_PG7V_mag", 5],
    ["rhs_rpg7_PG7VM_mag", 5],
    ["rhs_rpg7_PG7VL_mag", 5],
    ["rhs_rpg7_PG7VR_mag", 5],
    ["rhs_VOG25", 20],
    ["UK3CB_RPK_75rnd_762x39_G", 8],
    ["afou_30Rnd_762x39_PS_01", 50],
    ["rhsusf_200rnd_556x45_M855_mixed_box", 10],
    ["rhsusf_20Rnd_762x51_SR25_m62_Mag", 10],
    ["rhs_mag_9x18_8_57N181S", 20]
  ];
};
if (_type isEqualTo "medical") then {
  _class = "ACE_medicalSupplyCrate_advanced";
  _items = [
    ["ACE_fieldDressing", 30],
    ["ACE_packingBandage", 50],
    ["ACE_elasticBandage", 50],
    ["ACE_tourniquet", 20],
    ["ACE_splint", 15],
    ["ACE_morphine", 30],
    ["ACE_adenosine", 30],
    ["ACE_epinephrine", 30],
    ["ACE_bloodIV", 10],
    ["ACE_bloodIV_500", 10],
    ["ACE_bloodIV_250", 10],
    ["ACE_personalAidKit", 10],
    ["ACE_surgicalKit", 3],
    ["A4ES_dressingSet", 3],
    ["A4ES_painkillers", 30]
  ];
};

if (_class isEqualTo "") exitWith {};

private _box = _class createVehicle [4691.2, 2591.69, 0];

{
  _x addCuratorEditableObjects [[_box], true];
} forEach allCurators;

clearWeaponCargoGlobal _box;
clearMagazineCargoGlobal _box;
clearItemCargoGlobal _box;
clearBackpackCargoGlobal _box;
_box setMaxLoad 99999;
_box spawn {
  _this setMaxLoad 99999;
};

{_box addItemCargoGlobal _x} forEach _items;

[_box, 1] call ace_cargo_fnc_setSize;

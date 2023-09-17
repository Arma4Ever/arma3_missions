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
	["sfp_30Rnd_556x45_Stanag_tracer_plastic", 50],
	["SmokeShell", 20], 
	["SmokeShellGreen", 10],
	["SmokeShellRed", 10],
	["SmokeShellBlue", 10],
	["sfp_handgrenade_shgr2000", 24],
	["1Rnd_HE_Grenade_shell", 23],
	["1Rnd_Smoke_Grenade_shell", 13],
	["1Rnd_SmokeRed_Grenade_shell", 14],
	["1Rnd_SmokeGreen_Grenade_shell", 13],
	["sfp_249Rnd_762x51_ksp58", 10],
	["sfp_9Rnd_762x51_psg90_tracer", 20],
	["rhs_fim92_mag", 5],
	["rhs_fgm148_magazine_AT", 2],
	["sfp_pskott86", 2],
	["sfp_grg_heat_mag", 5],
	["ACE_20Rnd_762x51_Mk316_Mod_0_Mag", 10],
	["ACE_CableTie", 10]
  ];
};
if (_type isEqualTo "medical") then {
  _class = "ACE_medicalSupplyCrate_advanced";
  _items = [
    ["ACE_fieldDressing", 50],
    ["ACE_packingBandage", 30],
    ["ACE_elasticBandage", 30],
    ["ACE_tourniquet", 15],
    ["ACE_splint", 15],
    ["ACE_morphine", 25],
    ["ACE_adenosine", 25],
    ["ACE_epinephrine", 25],
    ["ACE_salineIV", 5],
    ["ACE_salineIV_500", 10],
    ["ACE_quikclot", 50],
    ["ACE_personalAidKit", 8],
    ["ACE_bodyBag", 5],
    ["A4ES_painkillers", 30],
    ["ACE_surgicalKit", 2],
    ["ACE_CableTie", 20],
    ["A4ES_emptyBloodBag", 30],
    ["A4ES_dressingSet", 2]
  ];
};

if (_class isEqualTo "") exitWith {};

private _box = _class createVehicle [4403.424,508.937,0];

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

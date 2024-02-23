#include "script_component.hpp"

params ["_player"];
private _posStart = [11955.4,19255.1,400];
private _posEnd = getPosASL _player;
private _dir = _posStart getDir _posEnd;
private _plane = createVehicle ["UK3CB_AAF_B_C130J_G", _posStart, [], 0, "FLY"];
_plane engineOn true;
_plane setDir _dir;
private _przewodnik = "TestSphere2" createVehicle [0,0,0];
_przewodnik setPosASL _posStart;
_przewodnik hideObjectGlobal true;
_przewodnik setDir _dir;
_przewodnik setVelocity [70*(sin(_dir)),70*(cos(_dir)),0];
_plane attachTo [_przewodnik, [0,0,-2]];

private _box1 = "C_IDAP_supplyCrate_F" createVehicle [23129.3,18524.5,0];
private _box2 = "C_IDAP_supplyCrate_F" createVehicle [23121.3,18524.5,0];
private _boxes = [_box1, _box2];

{[_x, 1] call ace_cargo_fnc_setSize;} forEach _boxes;

{_x allowDamage false;
clearWeaponCargoGlobal _x;
clearMagazineCargoGlobal _x;
clearItemCargoGlobal _x;
clearBackpackCargoGlobal _x} forEach _boxes;

private _items = [
	["ACE_1Rnd_82mm_Mo_HE", 5],
    ["ACE_1Rnd_82mm_Mo_Smoke", 2],
	["rhs_30Rnd_762x39mm_Savz58_tracer", 200],
	["1Rnd_HE_Grenade_shell", 40],
	["UGL_FlareCIR_F", 10],
	["HandGrenade", 40],
	["SmokeShell", 40],
	["SmokeShellYellow", 40],
	["SmokeShellGreen", 40],
	["SmokeShellRed", 40],
	["MS_Strobe_Mag_2", 10],
	["150Rnd_762x54_Box_Tracer", 60],
	["rhsusf_100Rnd_762x51_m62_tracer", 30],
	["16Rnd_9x21_green_Mag", 30],
	["ACE_fieldDressing",100],
    ["ACE_packingBandage",300],
	["ACE_elasticBandage",150],
	["ACE_tourniquet",60],
	["ACE_splint",60],
	["ACE_morphine",20],
	["ACE_adenosine",20],
	["ACE_epinephrine",20],
	["ACE_salineIV",20],
	["ACE_salineIV_500",30],
	["ACE_salineIV_250",20],
	["ACE_personalAidKit",20],
	["ACE_surgicalKit",1],
	["ACE_bodyBag",10],
	["ACE_CableTie",20],
	["A4ES_dressingSet",1],
	["A4ES_painkillers",50]
];

{_box1 addItemCargoGlobal _x} forEach _items;
{_box2 addItemCargoGlobal _x} forEach _items;

{
  _x addCuratorEditableObjects [[_box1,_box2], true];
} forEach allCurators;

{[_x, _plane, true] call ace_cargo_fnc_loadItem;} forEach _boxes;

waitUntil {
	sleep 0.1;
	_plane distance2d _posEnd < 200
};

[_box1, _plane, false] call ace_cargo_fnc_paradropItem;

sleep 0.25;

[_box2, _plane, false] call ace_cargo_fnc_paradropItem;

sleep 5;

private _smoke1 = createVehicle ["SmokeShellYellow", [0,0,0]];
private _smoke2 = createVehicle ["SmokeShellYellow", [0,0,0]];
_smoke1 attachTo [_box1, [0,0,0]];
_smoke2 attachTo [_box2, [0,0,0]];

private _vehArray = [_przewodnik,_plane,_smoke1,_smoke2];
[
	{	
	params ["_vehArray"];
	{deleteVehicle _x} forEach _vehArray;
}, [_vehArray], 70] call CBA_fnc_waitAndExecute;

[{	
	missionNamespace setVariable [QGVAR(supplyDrop), 1];
}, [], 1200] call CBA_fnc_waitAndExecute;

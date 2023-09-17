#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Adds curator modules
 */

if !(hasInterface) exitWith {};

// Dzwieki AI

["- MISJA: Dzwieki AI", "VIET Okrzyk walka", {
  params ["", "_target"];
  if (isNull _target || {!(_target isKindOf "CAManBase")}) exitWith {};
  private _id = ceil (random 30);
  if (_id < 10) then {
    _id = format ["0%1", _id];
  };
  [_target, format ["vn_sam_vccomba_0%1", _id]] remoteExec ["vn_fnc_sam_dynamic_audio", 0, false];
}] call zen_custom_modules_fnc_register;

["- MISJA: Dzwieki AI", "VIET Szept", {
  params ["", "_target"];
  if (isNull _target || {!(_target isKindOf "CAManBase")}) exitWith {};
  private _id = ceil (random 15);
  if (_id < 10) then {
    _id = format ["0%1", _id];
  };
  [_target, format ["vn_sam_vcsteal_0%1", _id]] remoteExec ["vn_fnc_sam_dynamic_audio", 0, false];
}] call zen_custom_modules_fnc_register;

["- MISJA: Dzwieki AI", "VIET Umieranie", {
  params ["", "_target"];
  if (isNull _target || {!(_target isKindOf "CAManBase")}) exitWith {};
  private _id = ceil (random 23);
  if (_id < 10) then {
    _id = format ["0%1", _id];
  };
  [_target, format ["vn_sam_vcdeath_0%1", _id]] remoteExec ["vn_fnc_sam_dynamic_audio", 0, false];
}] call zen_custom_modules_fnc_register;

["- MISJA: Dzwieki AI", "VIET Sygnal zaniepokojony", {
  params ["", "_target"];
  if (isNull _target || {!(_target isKindOf "CAManBase")}) exitWith {};
  private _id = ceil (random 35);
  if (_id < 10) then {
    _id = format ["0%1", _id];
  };
  [_target, format ["vn_sam_vcaware_0%1", _id]] remoteExec ["vn_fnc_sam_dynamic_audio", 0, false];
}] call zen_custom_modules_fnc_register;

["- MISJA: Dzwieki AI", "VIET Rozmowa casual", {
  params ["", "_target"];
  if (isNull _target || {!(_target isKindOf "CAManBase")}) exitWith {};
  private _id = ceil (random 35);
  if (_id < 10) then {
    _id = format ["0%1", _id];
  };
  [_target, format ["vn_sam_vccarel_0%1", _id]] remoteExec ["vn_fnc_sam_dynamic_audio", 0, false];
}] call zen_custom_modules_fnc_register;

["- MISJA: Dzwieki AI", "VIET Ranny", {
  params ["", "_target"];
  if (isNull _target || {!(_target isKindOf "CAManBase")}) exitWith {};
  private _id = ceil (random 12);
  if (_id < 10) then {
    _id = format ["0%1", _id];
  };
  [_target, format ["vn_sam_vcwound_0%1", _id]] remoteExec ["vn_fnc_sam_dynamic_audio", 0, false];
}] call zen_custom_modules_fnc_register;

["- MISJA: Dzwieki AI", "Gwizd", {
  params ["", "_target"];
  if (isNull _target || {!(_target isKindOf "CAManBase")}) exitWith {};
  private _id = ceil (random 4);
  [QGVAR(playWhistling), [format ["vn_enemy_whislting_%1", _id], _target]] call CBA_fnc_globalEvent;
}] call zen_custom_modules_fnc_register;

["- MISJA: Dzwieki AI", "Gwizdek", {
  params ["", "_target"];
  if (isNull _target || {!(_target isKindOf "CAManBase")}) exitWith {};
  private _id = ceil (random 4);
  [QGVAR(playWhistle), [format ["vn_enemy_whislte_%1", _id], _target]] call CBA_fnc_globalEvent;
}] call zen_custom_modules_fnc_register;

["- MISJA: Dzwieki AI", "Gwizdek x3", {
  params ["", "_target"];
  if (isNull _target || {!(_target isKindOf "CAManBase")}) exitWith {};
  [QGVAR(playWhistle), ["vn_enemy_whislte_three_times", _target]] call CBA_fnc_globalEvent;
}] call zen_custom_modules_fnc_register;

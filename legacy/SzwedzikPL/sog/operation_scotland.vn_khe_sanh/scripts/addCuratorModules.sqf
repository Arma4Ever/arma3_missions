#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Adds curator modules
 */

["- MISJA: Funkcje", "Pokaz licznik", {
  ["Pokazac licznik?", [], {
    [QGVAR(showCounter), 0] call CBA_fnc_serverEvent;
  }, {}, []] call zen_dialog_fnc_create;
}] call zen_custom_modules_fnc_register;

["- MISJA: AI", "Okrzyk", {
  params ["", "_target"];
  if (isNull _target || {!(_target isKindOf "CAManBase")}) exitWith {};
  private _id = ceil (random 30);
  if (_id < 10) then {
    _id = format ["0%1", _id];
  };
  [_target, format ["vn_sam_vccomba_0%1", _id]] remoteExec ["vn_fnc_sam_dynamic_audio", 0, false];
}] call zen_custom_modules_fnc_register;

["- MISJA: AI", "Gwizd", {
  params ["", "_target"];
  if (isNull _target || {!(_target isKindOf "CAManBase")}) exitWith {};
  private _id = ceil (random 4);
  [QGVAR(playWhistling), [format ["vn_enemy_whislting_%1", _id], _target]] call CBA_fnc_globalEvent;
}] call zen_custom_modules_fnc_register;

["- MISJA: AI", "Gwizdek", {
  params ["", "_target"];
  if (isNull _target || {!(_target isKindOf "CAManBase")}) exitWith {};
  private _id = ceil (random 4);
  [QGVAR(playWhistle), [format ["vn_enemy_whislte_%1", _id], _target]] call CBA_fnc_globalEvent;
}] call zen_custom_modules_fnc_register;

["- MISJA: AI", "Gwizdek x3", {
  params ["", "_target"];
  if (isNull _target || {!(_target isKindOf "CAManBase")}) exitWith {};
  [QGVAR(playWhistle), ["vn_enemy_whislte_three_times", _target]] call CBA_fnc_globalEvent;
}] call zen_custom_modules_fnc_register;

["- MISJA: AI", "Defender: stand", {
  params ["", "_target"];
  if (isNull _target || {!(_target isKindOf "CAManBase")}) exitWith {};
  [QGVAR(defenderLogic), [_target, 0]] call CBA_fnc_globalEvent;
}] call zen_custom_modules_fnc_register;

["- MISJA: AI", "Defender: max stand", {
  params ["", "_target"];
  if (isNull _target || {!(_target isKindOf "CAManBase")}) exitWith {};
  [QGVAR(defenderLogic), [_target, 2]] call CBA_fnc_globalEvent;
}] call zen_custom_modules_fnc_register;

["- MISJA: AI", "Defender: max crouch", {
  params ["", "_target"];
  if (isNull _target || {!(_target isKindOf "CAManBase")}) exitWith {};
  [QGVAR(defenderLogic), [_target, 3]] call CBA_fnc_globalEvent;
}] call zen_custom_modules_fnc_register;

["- MISJA: Funkcje", "Wylacz dyn sim", {
  params ["", "_target"];
  if (isNull _target) exitWith {};
  [QGVAR(switchDynSim), [_target, false]] call CBA_fnc_serverEvent;
}] call zen_custom_modules_fnc_register;

["- MISJA: Funkcje", "Wlacz dyn sim", {
  params ["", "_target"];
  if (isNull _target) exitWith {};
  [QGVAR(switchDynSim), [_target, true]] call CBA_fnc_serverEvent;
}] call zen_custom_modules_fnc_register;

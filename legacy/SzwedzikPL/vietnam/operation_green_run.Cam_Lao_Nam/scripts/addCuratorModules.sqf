#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Adds curator modules
 */

if !(hasInterface) exitWith {};

["- MISJA: Funkcje", "1. Garry owen", {
  if (missionNamespace getVariable [QGVAR(mottoShowed), false]) exitWith {};
  ["Garry owen?", [], {
    if (missionNamespace getVariable [QGVAR(mottoShowed), false]) exitWith {};
    missionNamespace setVariable [QGVAR(mottoShowed), true, true];
    [QGVAR(showMotto), 0] call CBA_fnc_globalEvent;
  }, {}, []] call zen_dialog_fnc_create;
}] call zen_custom_modules_fnc_register;

["- MISJA: Funkcje", "2. Rozpocznij operacje", {
  ["Rozpoczac operacje?", [], {
    [QGVAR(startOperation), 0] call CBA_fnc_serverEvent;
  }, {}, []] call zen_dialog_fnc_create;
}] call zen_custom_modules_fnc_register;

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

["- MISJA: Zadania", "1. Zalicz zabezpieczenie perymetru", {
  ["Zaliczyc zabezpieczenie perymetru?", [], {
    [QGVAR(perimeterSecured), 0] call CBA_fnc_serverEvent;
  }, {}, []] call zen_dialog_fnc_create;
}] call zen_custom_modules_fnc_register;

["- MISJA: Zadania", "2. Rozpocznij obrone", {
  ["Rozpoczac obrone?", [], {
    [QGVAR(initDefence), 0] call CBA_fnc_serverEvent;
  }, {}, []] call zen_dialog_fnc_create;
}] call zen_custom_modules_fnc_register;

["- MISJA: Zadania", "3. Dodaj zadanie artylerii w rejonie", {
  params ["_pos"];
  ["Dodac zadanie artylerii w rejonie?", [], {
    params ["", "_pos"];
    [QGVAR(addArtTask), [_pos]] call CBA_fnc_serverEvent;
  }, {}, _pos] call zen_dialog_fnc_create;
}] call zen_custom_modules_fnc_register;

["- MISJA: Zadania", "3.1. Zalicz zadanie artylerii w rejonie", {
  ["Zaliczyc zadanie artylerii w rejonie?", [], {
    [QGVAR(successArtTask), 0] call CBA_fnc_serverEvent;
  }, {}, []] call zen_dialog_fnc_create;
}] call zen_custom_modules_fnc_register;

["- MISJA: Zadania", "4. Zalicz obrone", {
  ["Zaliczyc obrone?", [], {
    [QGVAR(defenceResult), true] call CBA_fnc_serverEvent;
  }, {}, []] call zen_dialog_fnc_create;
}] call zen_custom_modules_fnc_register;

["- MISJA: Zadania", "4. Oblej obrone", {
  ["Oblac obrone?", [], {
    [QGVAR(defenceResult), false] call CBA_fnc_serverEvent;
  }, {}, []] call zen_dialog_fnc_create;
}] call zen_custom_modules_fnc_register;

["- MISJA: Zadania", "4.5. Zalicz body count", {
  ["Zaliczyc body count?", [], {
    [QGVAR(bodyCountResult), true] call CBA_fnc_serverEvent;
  }, {}, []] call zen_dialog_fnc_create;
}] call zen_custom_modules_fnc_register;

["- MISJA: Zadania", "4.5. Oblej body count", {
  ["Oblac body count?", [], {
    [QGVAR(bodyCountResult), false] call CBA_fnc_serverEvent;
  }, {}, []] call zen_dialog_fnc_create;
}] call zen_custom_modules_fnc_register;

["- MISJA: Zadania", "5. Rozpocznij odwrot", {
  ["Rozpoczac odwrot?", [], {
    [QGVAR(startRetreat), 0] call CBA_fnc_serverEvent;
  }, {}, []] call zen_dialog_fnc_create;
}] call zen_custom_modules_fnc_register;

["- MISJA: Zadania", "6. Zakoncz odwrot", {
  ["Zakonczyc odwrot?", [], {
    [QGVAR(endRetreat), 0] call CBA_fnc_serverEvent;
  }, {}, []] call zen_dialog_fnc_create;
}] call zen_custom_modules_fnc_register;

["- MISJA: Zadania", "6.5. Zalicz powrot cial", {
  ["Zaliczyc powrot cial?", [], {
    [QGVAR(bodiesResult), true] call CBA_fnc_serverEvent;
  }, {}, []] call zen_dialog_fnc_create;
}] call zen_custom_modules_fnc_register;

["- MISJA: Zadania", "6.5. Oblej powrot cial", {
  ["Oblac powrot cial?", [], {
    [QGVAR(bodiesResult), false] call CBA_fnc_serverEvent;
  }, {}, []] call zen_dialog_fnc_create;
}] call zen_custom_modules_fnc_register;

#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Checks unit ID
 */

params ["_target"];

private _id = _target getVariable ["mission_unitId", "Nieznana"];
private _text = format [
  "<t size='2'>%1</t>",
  _id
];
if (_id == "whitney") then {
  _text = _text + "<br/><br/>Jackpot Whitney!";
};
if (_id == "Yellowstone") then {
  _text = _text + "<br/><br/>Jackpot Yellowstone!";

  if !(missionNamespace getVariable [QGVAR(yellowstoneIdChecked), false]) then {
    [QGVAR(yellowstoneIdChecked), 0] call CBA_fnc_serverEvent;
  };
};

removeGoggles _target;

[
  _text,
  LLSTRING(Action_CheckID_Title),
  false,
  "OK",
  [] call BIS_fnc_displayMission,
  false,
  false
] spawn BIS_fnc_guiMessage;

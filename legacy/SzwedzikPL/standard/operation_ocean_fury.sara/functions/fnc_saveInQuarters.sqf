/*
  Author: SzwedzikPL
  Saves civilian in carrier quarters
*/

params ["_unit"];

if !(isServer) exitWith {};

// Validate situation
if !((side group _unit) isEqualTo civilian) exitWith {};
if !(_unit inArea carrier_quarters_area) exitWith {};
if !(isNull (attachedTo _unit)) exitWith {};
if !(alive _unit) exitWith {};

deleteVehicle _unit;

private _counter = (missionNamespace getVariable ["carrier_quarters_counter", 0]) + 1;
private _panels = [1, 0];

private _digits = (str _counter) splitString "";
reverse _digits;

{
  private _index = _panels param [_forEachIndex, -1];
  if !(_index isEqualTo -1) then {
    carrier_quarters_panel setObjectTextureGlobal [_index, format ["data\panels\digit_%1.paa", _x]];
  };
} forEach _digits;

missionNamespace setVariable ["carrier_quarters_counter", _counter];

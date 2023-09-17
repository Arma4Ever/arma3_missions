/*
  Author: SzwedzikPL
  Handles building changed event
*/

params ["_oldObject", "_new", "_isRuin"];

if !(isServer) exitWith {};
if !(_isRuin) exitWith {};

private _garrisonId = _oldObject getVariable ["mission_garrisonId", ""];
if (_garrisonId isEqualTo "") exitWith {};

private _var = format ["mission_garrison_%1", _garrisonId];
private _garrison = missionNamespace getVariable [_var, []];

private _index = _garrison findIf {alive _x};
if !(_index isEqualTo -1) exitWith {};

private _marker = format ["marker_%1", _garrisonId];

_marker setMarkerColor "ColorGrey";
_marker setMarkerText "";

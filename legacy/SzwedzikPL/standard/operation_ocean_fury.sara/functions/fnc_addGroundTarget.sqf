/*
  Author: SzwedzikPL
  Adds ground target assigned to given garrison
*/

params ["_target", "_garrisonId"];

if !(isServer) exitWith {};

private _var = format ["mission_garrison_%1", _garrisonId];
private _garrison = missionNamespace getVariable [_var, []];
_garrison pushBack _target;
missionNamespace setVariable [_var, _garrison];
_target setVariable ["mission_garrisonId", _garrisonId];
_target spawn {
  sleep 2;
  _this setDamage 0.75;
};

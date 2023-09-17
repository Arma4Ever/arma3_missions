/*
  Author: SzwedzikPL
  Spawns simple objects on server
*/

if !(isServer) exitWith {};

params ["_dataFile"];

private _data = call compile preprocessFileLineNumbers (format ["scripts\%1.sqf", _dataFile]);

{
  _x params ["_model", "_posWorld", "_vector", "_reversed"];
  private _object = createSimpleObject [_model, [0,0,0]];
  _object setPosWorld _posWorld;
  _object setVectorDirAndUp _vector;
  if (_model isEqualTo "a3\structures_f\training\shoot_house_tunnel_f.p3d") then {
    _object animateSource ["Stand_Hide", 1, true];
    _object animateSource ["Crouch_Hide", 1, true];
    _object animateSource ["Prone_Hide", 1, true];
  };

  sleep 0.01;
} forEach _data;

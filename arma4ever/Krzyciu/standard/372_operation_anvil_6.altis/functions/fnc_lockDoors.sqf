#include "script_component.hpp"

private _doors = 0;
private _var = "";
{
  _doors = getNumber (configfile >> "CfgVehicles" >> typeOf _x >> "numberOfDoors");
  for "_i" from 0 to _doors - 1 do {
    _var = format ["bis_disabled_Door_%1", _i];
    _x setVariable [_var,selectRandom [0,1],true];
  };
} forEach (nearestTerrainObjects [[8635, 18272, 0], ["House"], 350]);
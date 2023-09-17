#include "script_component.hpp"

params ["_module"];

private _building = nearestBuilding _module;
private _distance = _building distance2D _module;
private _dammage = getDammage _building;

if (_dammage > 0.75 || _distance > 10) exitWith {
    false
};

true
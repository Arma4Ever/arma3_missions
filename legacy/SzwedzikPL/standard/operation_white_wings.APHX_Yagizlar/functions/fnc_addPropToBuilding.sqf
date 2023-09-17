#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Adds prop to building
 */
params ["_prop", "_buildingVar"];

private _building = missionNamespace getVariable [_buildingVar, objNull];
if (isNull _building) exitWith {};

private _props = _building getVariable [QGVAR(props), []];
_props pushBack _prop;
_building setVariable [QGVAR(props), _props];

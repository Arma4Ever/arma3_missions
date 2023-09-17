#include "script_component.hpp"
params ["_projectile", "_posASL"];

if (GVAR(sizeCoef) <= 0 || {!isServer}) exitWith {};

private _type = typeOf _projectile;
private _indirectHitRange = GVAR(indirectHitRangeCache) getOrDefault [_type, -1];
if (_indirectHitRange < 0) then {
    _indirectHitRange = getNumber (configFile >> "CfgAmmo" >> _type >> "indirectHitRange");
    GVAR(indirectHitRangeCache) set [_type, _indirectHitRange];
};

if (_indirectHitRange < 10 || {((getPosATL _projectile) select 2) > 0.25}) exitWith {};

_indirectHitRange = _indirectHitRange * GVAR(sizeCoef);
private _heightDiff = linearConversion [0, 31, _indirectHitRange, -0.25, -1, true];
private _terrainDeform = [_posASL vectorAdd [0, 0, _heightDiff]];
setTerrainHeight [_terrainDeform, true];

[QGVAR(create), [_posASL, _indirectHitRange]] call CBA_fnc_globalEvent;
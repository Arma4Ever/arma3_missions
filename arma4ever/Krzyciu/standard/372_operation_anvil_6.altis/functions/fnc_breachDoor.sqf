#include "script_component.hpp"

params ["_unit"];

private _position0 = eyePos _unit;
private _position1 = _position0 vectorAdd (eyeDirection _unit vectorMultiply 1);

private _intersections = lineIntersectsSurfaces [_position0, _position1, _unit, objNull, true, 1, "GEOM"];

if (_intersections isEqualTo []) exitWith {[objNull, ""]};

private _house = _intersections #0 #2;

// shithouse is bugged
if (typeOf _house == "") exitWith {[objNull, ""]};

_intersections = [_house, "GEOM"] intersect [ASLToAGL _position0, ASLToAGL _position1];

private _door = toLower (_intersections #0 #0);

if !(isNil "_door") then {
	_house setVariable ["bis_disabled_" + _door, 0, true];
	playSound "click";
};
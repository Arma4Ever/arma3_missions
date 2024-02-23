/*
 * Author: Commy2, SzwedzikPL
 * Returns random pos inside given area
 */

if !(isServer) exitWith {};
_this select 0 call BIS_fnc_getArea params ["_center", "_x", "_y", "_angle", "_isRectangle"];
_this select 1 params ["_offset"];
private "_position";


// 	Allows MM to set minefield offset from area boundary
if !(_offset == 0) then {
	if (_x > _offset) then {_x = _x - 2 * _offset} else {_x = _x - 0.2 * _x};
	if (_y > _offset) then {_y = _y - 2 * _offset} else {_y = _y - 0.2 * _y};
};



// Get random pos inside area
while {
  _position = _center vectorAdd [_x * (random 2 - 1), _y * (random 2 - 1), 0];
  !(_position inArea [_center, _x, _y, 0, _isRectangle])
} do {};

// Return pos rotated to correct angle
_center getPos [
  _position distance2D _center,
  (_center getDir _position) + _angle
]

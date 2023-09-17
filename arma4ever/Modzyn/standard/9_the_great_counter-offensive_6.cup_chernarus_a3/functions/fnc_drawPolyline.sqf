#include "script_component.hpp"

params ["_name"];

private _marker = QGVAR(polyline_) + _name;
private _count = 0;
private _pos = [];

while {getMarkerType (_marker + "_" + str(_count)) != ""} do {
    private _markerPos = (getMarkerPos (_marker + "_" + str(_count)));

    _pos pushBack (_markerPos # 0);
    _pos pushBack (_markerPos # 1);

    _count = _count + 1;
};

_marker setMarkerShape "polyline";
_marker setMarkerPolyline _pos;
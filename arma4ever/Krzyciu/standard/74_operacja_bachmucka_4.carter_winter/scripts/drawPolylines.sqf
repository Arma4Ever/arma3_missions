#include "script_component.hpp"

"marker_road" setMarkerShape "polyline";
"marker_road" setMarkerColor "plp_colorOrangeLight";
"marker_blue" setMarkerShape "polyline";
"marker_blue" setMarkerColor "ColorBlue";
"marker_red" setMarkerShape "polyline";
"marker_red" setMarkerColor "ColorRed";

private _markers = [];
private _return = [];
private _mrk = [];

for "_i" from 0 to 77 do {
 _mrk = [('road_' + (str _i))];
 _markers pushback _mrk;
 _mrk = [];
};

{_return pushBack (getMarkerPos _x#0);
_return pushBack (getMarkerPos _x#1);} forEach _markers;

"marker_road" setMarkerPolyline _return;

_return = [];
_markers = [];

for "_i" from 0 to 71 do {
 _mrk = [('blue_' + (str _i))];
 _markers pushback _mrk;
 _mrk = [];
};

{_return pushBack (getMarkerPos _x#0);
_return pushBack (getMarkerPos _x#1);} forEach _markers;

"marker_blue" setMarkerPolyline _return;

_return = [];
_markers = [];

for "_i" from 0 to 70 do {
 _mrk = [('red_' + (str _i))];
 _markers pushback _mrk;
 _mrk = [];
};

{_return pushBack (getMarkerPos _x#0);
_return pushBack (getMarkerPos _x#1);} forEach _markers;

"marker_red" setMarkerPolyline _return;

_return = [];
_markers = [];



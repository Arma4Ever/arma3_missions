"marker_line_1" setMarkerShape "polyline";
"marker_line_1" setMarkerColor "colorBLUFOR";
private _markersLine = [];
private _return = [];

for "_i" from 1 to 70 do
{
   private _mrk = [('mrk_' + (str _i))];
   _markersLine append _mrk;
   _mrk = [];
};
_markersLine append ["mrk_0"];
{_return pushBack (getMarkerPos _x#0);  _return pushBack (getMarkerPos _x#1);}forEach _markersLine;

"marker_line_1" setMarkerPolyline _return;

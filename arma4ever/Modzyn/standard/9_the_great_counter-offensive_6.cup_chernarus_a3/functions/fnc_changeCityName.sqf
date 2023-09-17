#include "script_component.hpp"

params ["_name", "_newName"];

private _marker = QGVAR(location_) + _name;
private _location = nearestLocation [(getMarkerPos _marker), ""];

createLocation [_location];
_location setText _newName;
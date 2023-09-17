/*
  Author: SzwedzikPL
  Updates ships positions on map
*/

private _ships = ["uss_newton", "uss_titan"];

while {!(_ships isEqualTo [])} do {
  {
    private _ship = missionNamespace getVariable [_x, objNull];
    if !(alive _ship) then {
      _ships = _ships - [_x];
    } else {
      (format ["marker_%1", _x]) setMarkerPos (getPos _ship);
    };
  } forEach _ships;
  sleep 5;
};

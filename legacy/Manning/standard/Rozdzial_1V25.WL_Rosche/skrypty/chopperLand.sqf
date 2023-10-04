if(hasInterface) exitWith {};

_heli = _this select 0;
_helipad = _this select 1;
_trigger = _this select 2;
_endPoint = _this select 3;

_heliGrp = group driver _heli;
_posToLand = getPos _helipad;
_wp = _heliGrp addWaypoint [_posToLand, 0];
_wp setWaypointType "MOVE";
_wp setWaypointBehaviour "CARELESS";
_wp setWaypointCombatMode "GREEN";
_wp setWaypointSpeed "NORMAL";
_wp setWaypointFormation "COLUMN";
_wp setWaypointStatements ["true", "(vehicle this) land 'LAND'"];

waitUntil{triggerActivated _trigger};

_posNextWaypoint = getMarkerPos _endPoint;
_wp1 = _heliGrp addWaypoint [_posNextWaypoint, 0];
_wp1 setWaypointType "MOVE";
_wp1 setWaypointBehaviour "CARELESS";
_wp1 setWaypointCombatMode "GREEN";
_wp1 setWaypointSpeed "NORMAL";
_wp1 setWaypointFormation "COLUMN";
_wp1 setWaypointStatements ["true", "deleteVehicle _heli; {deleteVehicle _x} forEach units _heliGrp;"];

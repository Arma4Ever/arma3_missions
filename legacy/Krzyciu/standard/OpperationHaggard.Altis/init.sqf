/***********************************************************************
	init.sqf
	Poniższy kod wykona się lokalnie u gracza oraz na serwerze w trakcie ładowania misji przez grę
************************************************************************/

//-- Twój kod --//
// klasa, strona, punkt poczatkowy, punkt koncowy, wysokosc, czas w sekundach po jakim samolot powinien zniknac w przypadku 
//jak sie spierdoli waypoint czy cos (tylko zabezpieczenie w razie czego)
//["B_Plane_Fighter_01_F", east, "start_plane_1", "stop_plane_1", 100, 30] call mission_fnc_spawnPlane;


mission_fnc_spawnPlane = {
    if (!isServer) exitWith {};
    params ["_class", "_side", "_markerStart", "_markerEnd", "_height", "_safeTime"];
    private _posStart = getMarkerPos _markerStart;
    _posStart set [2, _height];
    private _posEnd = getMarkerPos _markerEnd;
    _posEnd set [2, _height];
    private _dir = _posStart getDir _posEnd;
    ([_posStart, _dir, _class, _side] call BIS_fnc_spawnVehicle) params ["_vehicle", "_crew", "_group"];
    private _wp =_group addWaypoint [_posEnd, 0];
    _wp setWaypointType "MOVE";
    _wp setWaypointBehaviour "CARELESS";
    _wp setWaypointCombatMode "BLUE";
    _wp setWaypointSpeed "FULL";
    _wp setWaypointStatements ["true", "private _veh = vehicle this;deleteGroup (group this);deleteVehicle this;deleteVehicle _veh"];

    [_vehicle, _safeTime] spawn {
        params ["_vehicle", "_safeTime"];
        sleep _safeTime;
        if (!isNull _vehicle) then {
            deleteGroup (group (driver _vehicle));
            deleteVehicle (driver _vehicle);
            deleteVehicle _vehicle;
        };
    }
};
null=[] execVM "skrypty\crash.sqf"; 

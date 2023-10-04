/**
 * Zwraca pojazdy dla strefy serwisowej
 */
params ["_serviceArea"];
_vehiclesInArea = [];
_area = [
	getPos _serviceArea, 
	getNumber (missionconfigfile >> "HVR_VS_cfg" >> "serviceAreaRadius"),
	getNumber (missionconfigfile >> "HVR_VS_cfg" >> "serviceAreaRadius"),
	0,
	false,
	getNumber (missionconfigfile >> "HVR_VS_cfg" >> "serviceAreaHeight")
];

{
	if(_x inArea _area && (_x isKindOf "LandVehicle" || _x isKindOf "Air" || _x isKindOf "Ship" ) ) then { 
		_vehiclesInArea pushBack _x; 
	};
} foreach vehicles;

_vehiclesInArea;
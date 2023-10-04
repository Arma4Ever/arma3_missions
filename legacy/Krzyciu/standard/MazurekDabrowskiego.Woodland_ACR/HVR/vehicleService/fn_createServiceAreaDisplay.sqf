/**
 * Tworzy okno dialogowe obsługi punktu serwisowego
 */
params ["_serviceArea"];

[_serviceArea] spawn {
	_serviceArea = _this select 0;
	_serviceAreaDisplay = findDisplay 46 createDisplay "HvrBasic";
	_serviceAreaDisplay setVariable ["HVR_VS_currentServiceArea", _serviceArea];
	[] call HVR_VS_fnc_viewServiceAreaVehicleSelect;
};



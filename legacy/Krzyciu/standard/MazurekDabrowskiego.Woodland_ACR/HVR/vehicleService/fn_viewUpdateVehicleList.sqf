/**
 * Aktualizuję listę pojazdów na widoku
 */
_display = [] call HVR_VS_fnc_getVehicleServiceAreaDisplay; 
_currentView = _display getVariable ["HVR_VS_currentView", ""];
_serviceArea = _display getVariable "HVR_VS_currentServiceArea";

if(_currentView == "ServiceAreaVehicleSelect") then {
	_vehiclesInArea = [_serviceArea] call HVR_VS_fnc_getVehiclesForServiceArea;
	_display setVariable ["HVR_VS_vehiclesInArea", _vehiclesInArea];

	_btnFillData = [];
	{
		_btnFillData pushBack [
			getText (configFile >> "CfgVehicles" >> (typeOf _x) >> "DisplayName"),
			format["[%1] call HVR_VS_fnc_viewServiceAreaVehicle", _forEachIndex]
		];
	} forEach _vehiclesInArea;
	_btnFillData pushBack [
		"Zamknij",
		"([] call HVR_VS_fnc_getVehicleServiceAreaDisplay) closeDisplay 2"
	];

	[] call HVR_VS_fnc_guiResetButtons;
	[_btnFillData] call HVR_VS_fnc_guiFillButtons;
};
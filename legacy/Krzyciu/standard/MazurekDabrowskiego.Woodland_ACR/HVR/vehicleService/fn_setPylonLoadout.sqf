/**
 * Ustawienie uzbrojenia na pylonie
 */
params ["_weapon"];
_display = [] call HVR_VS_fnc_getVehicleServiceAreaDisplay;
_vehicle = _display getVariable "HVR_VS_currentVehicle";
_pylonIndex = _display getVariable "HVR_VS_currentPylon";

[_vehicle, _pylonIndex, _weapon] call HVR_fnc_setPylonLoadout;
[] call HVR_VS_fnc_viewServiceAreaVehiclePylonSelect;
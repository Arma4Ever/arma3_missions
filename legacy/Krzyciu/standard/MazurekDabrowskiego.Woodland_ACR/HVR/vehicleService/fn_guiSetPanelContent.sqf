/**
 * Ustawia tytuł i treść dla widoku
 */
params ["_header", "_content"];
_controls = [1000,1100];
{
	ctrlShow [_x, true];
} forEach _controls;
([] call HVR_VS_fnc_getVehicleServiceAreaDisplay) displayCtrl (_controls select 0) ctrlSetStructuredText parseText _header;
([] call HVR_VS_fnc_getVehicleServiceAreaDisplay) displayCtrl (_controls select 1) ctrlSetStructuredText parseText _content;
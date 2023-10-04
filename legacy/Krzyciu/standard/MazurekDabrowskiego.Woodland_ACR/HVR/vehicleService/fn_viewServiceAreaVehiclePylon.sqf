/**
 * WIDOK
 * Widok pojazdu w obszarze serwisowym  - wybór uzbrojenia na podwieszeniu
 */
 params ["_pylonIndex"];
_display = [] call HVR_VS_fnc_getVehicleServiceAreaDisplay;
_display setVariable ["HVR_VS_currentView", "ServiceAreaVehiclePylon"];
_vehicle = _display getVariable "HVR_VS_currentVehicle";
_display setVariable ["HVR_VS_currentPylon", _pylonIndex];

[
	"Konfiguracja podwieszenia dla pojazdu: " + (getText (configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "DisplayName")),
	"Wybierz, co chcesz zamontować na podwieszeniu."
] call HVR_VS_fnc_guiSetPanelContent;

_btnFillData = [];
{
	_btnFillData pushBack [
		getText (configFile >> "CfgMagazines" >> _x >> "DisplayName"),		
		format["[%1] call HVR_VS_fnc_setPylonLoadout", (str _x)]
	];
} forEach (_vehicle getCompatiblePylonMagazines (_pylonIndex + 1));

_btnFillData pushBack [
	"Powrót",
	"[] call HVR_VS_fnc_viewServiceAreaVehiclePylonSelect"
];
_btnFillData pushBack [
	"Zamknij",
	"([] call HVR_VS_fnc_getVehicleServiceAreaDisplay) closeDisplay 2"
];

[] call HVR_VS_fnc_guiResetButtons;
[_btnFillData] call HVR_VS_fnc_guiFillButtons;
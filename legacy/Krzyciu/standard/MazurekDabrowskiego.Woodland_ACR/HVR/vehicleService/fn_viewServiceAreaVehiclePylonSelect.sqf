/**
 * WIDOK
 * Widok pojazdu w obszarze serwisowym  - wybór podwieszenia do konfiguracji
 */
_display = [] call HVR_VS_fnc_getVehicleServiceAreaDisplay;
_display setVariable ["HVR_VS_currentView", "ServiceAreaVehiclePylonSelect"];
_vehicle = _display getVariable "HVR_VS_currentVehicle";

[
	"Konfiguracja podwieszenia dla pojazdu: " + (getText (configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "DisplayName")),
	"Wybierz, które podwieszenie chcesz konfigurować"
] call HVR_VS_fnc_guiSetPanelContent;

_btnFillData = [];
{
	_btnFillData pushBack [
		getText (configFile >> "CfgMagazines" >> _x >> "DisplayName"),
		format["[%1] call HVR_VS_fnc_viewServiceAreaVehiclePylon", _forEachIndex]
	];
} forEach (getPylonMagazines _vehicle);
_btnFillData pushBack [
	"Zamknij",
	"([] call HVR_VS_fnc_getVehicleServiceAreaDisplay) closeDisplay 2"
];

[] call HVR_VS_fnc_guiResetButtons;
[_btnFillData] call HVR_VS_fnc_guiFillButtons;
/**
 * WIDOK
 * Widok wyboru pojazdu w obszarze serwisowym
 */
_display = [] call HVR_VS_fnc_getVehicleServiceAreaDisplay;
_display setVariable ["HVR_VS_currentView", "ServiceAreaVehicleSelect"];

[
	"Serwis pojazdów",
	"Wybierz pojazd, który chcesz serwisować"
] call HVR_VS_fnc_guiSetPanelContent;

[] call HVR_VS_fnc_viewUpdateVehicleList;
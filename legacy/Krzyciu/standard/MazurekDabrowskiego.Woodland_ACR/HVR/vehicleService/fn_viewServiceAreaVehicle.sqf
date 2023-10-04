/**
 * WIDOK
 * Widok pojazdu w obszarze serwisowym
 */
 params ["_vehicleIndex"];

_display = [] call HVR_VS_fnc_getVehicleServiceAreaDisplay;
_display setVariable ["HVR_VS_currentView", "ServiceAreaVehicle"];
_vehicle = (_display getVariable ["HVR_VS_vehiclesInArea", 0]) select _vehicleIndex;
_display setVariable ["HVR_VS_currentVehicle", _vehicle];

[
	"Serwis pojazdu: " + (getText (configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "DisplayName")),
	""
] call HVR_VS_fnc_guiSetPanelContent;


_btnFillData = [];
/** Paliwo */
if((fuel _vehicle) < 1) then {
	_btnFillData pushBack [
		"Zatankuj pojazd",
		"[] call HVR_VS_fnc_refuelVehicle"
	];
};

/** Obrażenia */
if((damage _vehicle) > 0) then {
	_btnFillData pushBack [
		"Napraw pojazd",
		"[] call HVR_VS_fnc_repairVehicle"
	];
};

/** Podwieszenia */
if(count (getPylonMagazines _vehicle) > 0) then {	
	_btnFillData pushBack [
		"Konfiguracja uzbrojenia",
		"[] call HVR_VS_fnc_viewServiceAreaVehiclePylonSelect"			
	];
	
	
	_btnFillData pushBack [
		"Uzupełnij uzbrojenie na pylonach",
		"[] call HVR_VS_fnc_rearmPylons"
	];
};


_btnFillData pushBack [
	"Powrót",
	"[] call HVR_VS_fnc_viewServiceAreaVehicleSelect"
];

_btnFillData pushBack [
	"Zamknij",
	"([] call HVR_VS_fnc_getVehicleServiceAreaDisplay) closeDisplay 2"
];

[] call HVR_VS_fnc_guiResetButtons;
[_btnFillData] call HVR_VS_fnc_guiFillButtons;
/** 
 * Naprawianie pojazdu z strefie serwisowej
 */
_display = [] call HVR_VS_fnc_getVehicleServiceAreaDisplay;
_vehicle = _display getVariable "HVR_VS_currentVehicle";
[_vehicle] call HVR_fnc_setDamage;
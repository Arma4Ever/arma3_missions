/**
 * Usunięcie akcji "serwis pojazdów" z obiektu
 */
params ["_object"];

if(!isNil {_object getVariable "HVR_VS_hasVehicleServiceAction"}) then {
	_object removeAction (_object getVariable "HVR_VS_vehicleServiceActionIndex");

	_object setVariable ["HVR_VS_hasVehicleServiceAction", false, true];
	_object setVariable ["HVR_VS_vehicleServiceActionIndex", nil, true];
};
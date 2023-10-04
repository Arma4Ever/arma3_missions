params ["_vehicle"];

if(local _vehicle) then {
	_vehicle setFuel 1;
} else {
	HVR_PV_setFuel = _vehicle;
	if(isDedicated) then {
		(owner _vehicle) publicVariableClient "HVR_PV_setFuel";
	} else {
		publicVariableServer "HVR_PV_setFuel";
	};
};
params ["_vehicle"];
if(local _vehicle) then {
	_vehicle setDamage 0;
} else {
	HVR_PV_setDamage = _vehicle;
	if(isDedicated) then {
		(owner _vehicle) publicVariableClient "HVR_PV_setDamage";
	} else {
		publicVariableServer "HVR_PV_setDamage";
	};
};
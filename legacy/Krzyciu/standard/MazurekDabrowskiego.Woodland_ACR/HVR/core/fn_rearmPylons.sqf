params ["_vehicle"];
if(local _vehicle) then {
	_magazines = getPylonMagazines _vehicle;
	{
		_maxAmmo = getNumber (configFile >> "CfgMagazines" >> _x >> "count");
		_vehicle setAmmoOnPylon [_forEachIndex + 1, _maxAmmo];
	} forEach _magazines;
} else {
	HVR_PV_rearmPylons = _vehicle;
	if(isDedicated) then {
		(owner _vehicle) publicVariableClient "HVR_PV_rearmPylons";
	} else {
		publicVariableServer "HVR_PV_rearmPylons";
	};
};
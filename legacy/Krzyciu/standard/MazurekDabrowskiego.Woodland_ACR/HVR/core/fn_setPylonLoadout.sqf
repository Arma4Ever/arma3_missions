params ["_vehicle", "_pylonIndex", "_weapon"];
if(local _vehicle) then {
	[_vehicle, _pylonIndex] call HVR_fnc_removeWeaponFromPylon;
	_vehicle setPylonLoadOut [(_pylonIndex + 1), _weapon];
} else {
	HVR_PV_setPylonLoadout = [_vehicle, _pylonIndex, _weapon];
	if(isDedicated) then {
		(owner _vehicle) publicVariableClient "HVR_PV_setPylonLoadout";
	} else {
		publicVariableServer "HVR_PV_setPylonLoadout";
	};
};
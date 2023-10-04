/**
 * Ustawienie akcji dla obiektów, które mają być punktami serwisowymi
 */
if(hasInterface) then {
	{
		[_x] call HVR_VS_fnc_addServicePointAction;
	} forEach HVR_VS_arr_servicePoints;
};
/**
 * Resetuje ustawienia przycisków
 */
_display = [] call HVR_VS_fnc_getVehicleServiceAreaDisplay; 

{
	_btn = (_display) displayCtrl _x;	
	_btn buttonSetAction ""; 
	_btn ctrlSetText "";
	_btn ctrlShow false;
} forEach [
	1600, 1601, 
	1602, 1603, 
	1604 ,1605, 
	1606, 1607, 
	1608, 1609,
	1610, 1611,
	1612, 1613,
	1614, 1615,
	1616, 1617,
	1618, 1619
];
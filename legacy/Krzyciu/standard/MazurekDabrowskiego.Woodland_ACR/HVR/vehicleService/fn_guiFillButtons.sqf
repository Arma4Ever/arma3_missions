/**
 * Uzupełnia dane dla przycisków widoku
 */
params ["_dataArr"];

_display = [] call HVR_VS_fnc_getVehicleServiceAreaDisplay; 
_vsButtons = [
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

_btnIndex = 0;
{
	_btn = (_display) displayCtrl (_vsButtons select _btnIndex);	
	_btn ctrlShow true;
	_btn ctrlSetText (_x select 0);
	_btn buttonSetAction (_x select 1);
	_btnIndex = _btnIndex + 1;
} forEach _dataArr;
/**
 * Usuwa uzbrojenie z panelu wyboru broni
 */
params ["_vehicle", "_pylonIndex"];

_pylonMagazines = getPylonMagazines _vehicle;
_changedPylonMagazine = _pylonMagazines select _pylonIndex;
_currentWeapon = getText (configfile >> "CfgMagazines" >> _changedPylonMagazine >> "pylonWeapon");
_sameMagazineOnOtherPylon = false;
{
	if(_foreachIndex != _pylonIndex) then {
		if(_x == _changedPylonMagazine) exitWith {_sameMagazineOnOtherPylon = true;};
	};
} forEach _pylonMagazines;

if(!_sameMagazineOnOtherPylon) then {
	_vehicle removeWeapon _currentWeapon;
};
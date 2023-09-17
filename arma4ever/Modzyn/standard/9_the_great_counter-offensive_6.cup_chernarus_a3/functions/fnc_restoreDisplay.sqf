#include "script_component.hpp"

private _display = findDisplay 47500;
private _data = player getVariable ["GridOwn", ["000", "000", "000", "000", "", "", "", 0]];
_data params ["_xOwn", "_yOwn", "_xTarget", "_yTarget", "_dir", "_dis", "_elev", "_charge"];

private _ctrlChargeList = _display displayCtrl 47519;
private _fireModes = [[0,"850m-2400m"], [1,"2100m-6000m"], [2,"5300m-15400m"], [3,"14700m-29900m"], [4,"22900m-29900m"]];
{
	_x params ["_charge", "_nameShort"];
	private _index = _ctrlChargeList lbAdd format ["[Charge %1]", _forEachIndex];
	_ctrlChargeList lbSetData [_index, str _charge];
	_ctrlChargeList lbSetTooltip [_forEachIndex, format ["%1", _nameShort]];
} forEach _fireModes;
_ctrlChargeList lbSetCurSel 0;
sleep 0.25;

(_display displayCtrl 47504) ctrlSetText _xOwn;
(_display displayCtrl 47505) ctrlSetText _yOwn;
(_display displayCtrl 47509) ctrlSetText _xTarget; 
(_display displayCtrl 47510) ctrlSetText _yTarget;
(_display displayCtrl 47515) ctrlSetText _dir;
(_display displayCtrl 47516) ctrlSetText _dis;
(_display displayCtrl 47517) ctrlSetText _elev;
_ctrlChargeList lbSetCurSel _charge;
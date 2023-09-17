#include "script_component.hpp"
#define GRAVITY 9.8066
 
private _display = findDisplay 47500;
 
private _xOwn = ctrlText (_display displayCtrl 47504); 
private _yOwn = ctrlText (_display displayCtrl 47505);
private _xTarget = ctrlText (_display displayCtrl 47509); 
private _yTarget = ctrlText (_display displayCtrl 47510);
private _dir = ctrlText (_display displayCtrl 47515);
private _dis = ctrlText (_display displayCtrl 47516);
private _elev = ctrlText (_display displayCtrl 47517);
private _charge = lbCurSel (_display displayCtrl 47519);
 
private _data = switch _charge do {
    case 0: {[153.9, 850, 2400]};
    case 1: {[243.0, 2100, 6000]};
    case 2: {[388.8, 5300, 15400]};
    case 3: {[648.0, 14700, 29900]};
    case 4: {[810.0, 22900, 29900]};
    default {[153.9, 850, 2400]};
};
 
_data params ["_muzzelVel", "_minDist", "_maxDist"];

private _gridPosOwn = _xOwn + _yOwn;
private _realPosOwn = [_gridPosOwn] call ace_common_fnc_getMapPosFromGrid;
if (typeName _realPosOwn isNotEqualTo "ARRAY") exitWith {systemChat "[A4ES] Niepoprawne koordynaty własne"};
private _zOwn = getTerrainHeightASL _realPosOwn + 168;
 
private _gridPosTarget = _xTarget + _yTarget;
private _realPosTarget = [_gridPosTarget] call ace_common_fnc_getMapPosFromGrid;
if (typeName _realPosTarget isNotEqualTo "ARRAY") exitWith {systemChat "[A4ES] Niepoprawne koordynaty celu"};
 
private _azimuth = round ((_realPosOwn getDir _realPosTarget)*17.777778);
private _distance = round (_realPosOwn distance2d _realPosTarget);
 
if (_distance < _minDist || _distance > _maxDist) exitWith {systemChat format ["[A4ES] Niepoprawny dystans %1m", _distance]};
private _zOwn = getTerrainHeightASL _realPosOwn;
private _zTarget = getTerrainHeightASL _realPosTarget;
private _zdiff = _zTarget - _zOwn;
 
(_display displayCtrl 47515) ctrlSetText str _azimuth;
(_display displayCtrl 47516) ctrlSetText str _distance;
 
private _calc = (atan((_muzzelVel^2+sqrt(_muzzelVel^4-GRAVITY*(GRAVITY*(_distance^2)+2*_zDiff*_muzzelVel^2)))/(GRAVITY*_distance)));
_calc = _calc*17.777778;
_calc = round _calc;
 
(_display displayCtrl 47517) ctrlSetText str _calc;
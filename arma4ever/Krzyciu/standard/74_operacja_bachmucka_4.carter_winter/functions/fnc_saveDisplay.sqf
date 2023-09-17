#include "script_component.hpp"

private _display = findDisplay 47500;

private _xOwn = ctrlText (_display displayCtrl 47504); 
private _yOwn = ctrlText (_display displayCtrl 47505);
private _xTarget = ctrlText (_display displayCtrl 47509); 
private _yTarget = ctrlText (_display displayCtrl 47510);
private _dir = ctrlText (_display displayCtrl 47515);
private _dis = ctrlText (_display displayCtrl 47516);
private _elev = ctrlText (_display displayCtrl 47517);
private _charge = lbCurSel (_display displayCtrl 47519);

player setVariable [QGVAR(computerData), [_xOwn, _yOwn, _xTarget, _yTarget, _dir, _dis, _elev, _charge]];
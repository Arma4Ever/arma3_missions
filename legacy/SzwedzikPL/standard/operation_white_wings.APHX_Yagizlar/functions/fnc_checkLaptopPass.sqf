#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Checks laptop password typed in password input dialog
 */

disableSerialization;

if (missionNamespace getVariable [QGVAR(laptopT2Unlocked), false]) exitWith {};
private _display = uiNamespace getVariable ["mission_ui_editBox", displayNull];
if (isNull _display) exitWith {};

private _password = toLower (ctrlText (_display displayCtrl 8852));
[QGVAR(zeusLog), format ["checkLaptopPass '%1' by %2", _password, name player]] call CBA_fnc_globalEvent;
if ((_password == "dallas1977") || {_password == "dallas 1977"}) exitWith {
  closeDialog 0;
  missionNamespace setVariable [QGVAR(laptopT2Unlocked), true, true];
  [QGVAR(laptopT2Unlock), 0] call CBA_fnc_serverEvent;
  (missionNamespace getVariable ["mission_laptop_t2", objNull]) setObjectTextureGlobal [0, "a3\missions_f_oldman\data\img\screens\oldmanntbdesktop_co.paa"];
  hint parseText LLSTRING(Action_LaptopUnlocked);
};

hint parseText LLSTRING(Action_IncorrectPassword);

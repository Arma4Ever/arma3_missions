#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Opens input dialog
 */

params ["_title", "_label", "_subLabel", "_actionName", "_action"];


while {dialog} do {closeDialog 0;};

private _dialog = createDialog "mission_ui_editBox";
if (!_dialog) exitWith {};

disableSerialization;

private _display = uiNamespace getVariable ["mission_ui_editBox", displayNull];
if (isNull _display) exitWith {};

(_display displayCtrl 8849) ctrlsetText _title;
(_display displayCtrl 8851) ctrlsetText _label;
(_display displayCtrl 8853) ctrlsetText _subLabel;
(_display displayCtrl 8856) ctrlsetText _actionName;
(_display displayCtrl 8856) buttonSetAction _action;

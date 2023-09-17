#include "script_component.hpp"
/*
 * Author: mharis001
 * Initializes the "Global Hint" Zeus module display.
 * Modified for Beaver Bridge mission by SzwedzikPL
 */

params ["_display"];

[_display] call zen_common_fnc_initDisplayPositioning;

// Update the preview when the input text changes
private _fnc_update = {
    params ["_ctrlEdit"];

    private _display = ctrlParent _ctrlEdit;
    private _ctrlPreview = _display displayCtrl 60602;
    private _text = "<t size='2'>CENTCOM do HQ</t><br/><br/><t size='1.5'>" + (ctrlText _ctrlEdit) +"</t>";
    _ctrlPreview ctrlSetStructuredText parseText _text;
    _ctrlPreview ctrlSetPositionH (ctrlTextHeight _ctrlPreview max 1);
    _ctrlPreview ctrlCommit 0;
};

private _ctrlEdit = _display displayCtrl 60601;
_ctrlEdit ctrlAddEventHandler ["KeyDown", _fnc_update];
_ctrlEdit ctrlAddEventHandler ["KeyUp", _fnc_update];

private _fnc_onConfirm = {
    params ["_ctrlButtonOK"];
    private _display = ctrlParent _ctrlButtonOK;
    private _ctrlEdit = _display displayCtrl 60601;
    [QGVAR(HQhint), ctrlText _ctrlEdit] call CBA_fnc_globalEvent;
};

private _ctrlButtonOK = _display displayCtrl 1;
_ctrlButtonOK ctrlAddEventHandler ["ButtonClick", _fnc_onConfirm];

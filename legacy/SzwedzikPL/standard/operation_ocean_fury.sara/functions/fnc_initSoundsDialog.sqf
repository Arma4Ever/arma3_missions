/*
  Author: SzwedzikPL
  Inits sounds dialog
*/

params ["_display"];

if !(ace_player getVariable ["isCarrierCrew", false]) exitWith {closeDialog 0;};

private _titleCtrl = _display displayCtrl 1100;
_titleCtrl ctrlSetStructuredText parseText format [
  "<t align='center' size='1.6'>%1</t>",
  localize "STR_Mission_Dialog_SoundPanel_Title"
];

private _deckEmergencyButtonCtrl = _display displayCtrl 2403;
_deckEmergencyButtonCtrl ctrlAddEventHandler ["ButtonClick", {
  ["mission_carrier_playSound", ["deck_emergency"]] call CBA_fnc_serverEvent;
}];

private _clearDeckButtonCtrl = _display displayCtrl 2404;
_clearDeckButtonCtrl ctrlAddEventHandler ["ButtonClick", {
  ["mission_carrier_playSound", ["clear_deck"]] call CBA_fnc_serverEvent;
}];

private _deckEmergencyDrillButtonCtrl = _display displayCtrl 2406;
_deckEmergencyDrillButtonCtrl ctrlAddEventHandler ["ButtonClick", {
  ["mission_carrier_playSound", ["deck_emergency_drill"]] call CBA_fnc_serverEvent;
}];

private _clearDeckDrillButtonCtrl = _display displayCtrl 2407;
_clearDeckDrillButtonCtrl ctrlAddEventHandler ["ButtonClick", {
  ["mission_carrier_playSound", ["clear_deck_drill"]] call CBA_fnc_serverEvent;
}];

private _airDefenceDrillButtonCtrl = _display displayCtrl 2405;
_airDefenceDrillButtonCtrl ctrlAddEventHandler ["ButtonClick", {
  ["mission_carrier_playSound", ["air_defence_drill"]] call CBA_fnc_serverEvent;
}];

private _briefingButtonCtrl = _display displayCtrl 2401;
private _deckButtonCtrl = _display displayCtrl 2400;
private _pilotButtonCtrl = _display displayCtrl 2402;

private _briefingComboCtrl = _display displayCtrl 2100;
_briefingButtonCtrl setVariable ["sourceCombo", _briefingComboCtrl];
{
  private _index = _briefingComboCtrl lbAdd (_x # 0);
  _briefingComboCtrl lbSetData [_index, "briefing_" + (_x # 1)];
} forEach [
  ["Seal team", "seal_team"],
  ["Alpha", "alpha"],
  ["Bravo", "bravo"],
  ["Oficerowie", "all_oficers"],
  ["Piloci", "all_pilots"]
];
_briefingComboCtrl lbSetCurSel 0;

private _deckComboCtrl = _display displayCtrl 2101;
_deckButtonCtrl setVariable ["sourceCombo", _deckComboCtrl];
{
  private _index = _deckComboCtrl lbAdd (_x # 0);
  _deckComboCtrl lbSetData [_index, "deck_" + (_x # 1)];
} forEach [
  ["Seal team", "seal_team"],
  ["Alpha", "alpha"],
  ["Bravo", "bravo"]
];
_deckComboCtrl lbSetCurSel 0;

private _pilotComboCtrl = _display displayCtrl 2102;
_pilotButtonCtrl setVariable ["sourceCombo", _pilotComboCtrl];
{
  private _index = _pilotComboCtrl lbAdd (_x # 0);
  _pilotComboCtrl lbSetData [_index, "pilot_" + (_x # 1)];
} forEach [
  ["Eagle 1", "eagle_1"],
  ["Eagle 2", "eagle_2"],
  ["Hawk 1", "hawk_1"],
  ["Hawk 2", "hawk_2"],
  ["Raven 1", "raven_1"],
  ["Raven 2", "raven_2"],
  ["Falcon 1", "falcon_1"],
  ["Falcon 2", "falcon_2"],
  ["Cobra 1", "cobra_1"],
  ["Cobra 2", "cobra_2"],
  ["Big foot", "big_foot"]
];
_pilotComboCtrl lbSetCurSel 0;

private _clickHandler = {
  params ["_button"];
  private _combo = _button getVariable ["sourceCombo", controlNull];
  if (isNull _combo) exitWith {};
  ["mission_carrier_playSound", [_combo lbData (lbCurSel _combo)]] call CBA_fnc_serverEvent;
};

{
  _x ctrlAddEventHandler ["ButtonClick", _clickHandler];
} forEach [_briefingButtonCtrl, _deckButtonCtrl, _pilotButtonCtrl];

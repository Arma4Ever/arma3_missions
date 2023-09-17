/*
  Author: SzwedzikPL
  Inits ramp dialog
*/

params ["_display"];

if (mission_ramp_dialog_rampId isEqualTo -1) exitWith {closeDialog 0;};

private _rampId = mission_ramp_dialog_rampId;
private _rampPanel = missionNamespace getVariable [format ["carrier_ramp_%1_panel", _rampId], objNull];
private _rampArea = missionNamespace getVariable [format ["carrier_ramp_%1_area", _rampId], objNull];

if (isNull _rampPanel) exitWith {closeDialog 0;};

mission_ramp_dialog = true;

private _backgroundCtrl = _display displayCtrl 1200;

private _titleCtrl = _display displayCtrl 1100;
private _statusCtrl = _display displayCtrl 1101;
private _spawnTitleCtrl =  _display displayCtrl 1102;

private _comboCtrl = _display displayCtrl 2100;

private _hideButtonCtrl = _display displayCtrl 2400;
private _spawnButtonCtrl = _display displayCtrl 2401;

_titleCtrl ctrlSetStructuredText parseText format [
  "<t align='center' size='1.6'>USS Freedom : Rampa #%1</t>",
  _rampId
];

{
  private _displayName = getText (configFile >> "CfgVehicles" >> _x >> "displayName");
  private _index = _comboCtrl lbAdd _displayName;
  _comboCtrl lbSetData [_index, _x];
} forEach mission_carrier_supportedVehicles;

_comboCtrl lbSetCurSel 0;

_spawnButtonCtrl ctrlAddEventHandler ["ButtonClick", {
  params ["_button"];
  private _display = ctrlParent _button;
  private _comboCtrl = _display displayCtrl 2100;
  private _class = _comboCtrl lbData (lbCurSel _comboCtrl);
  ["mission_carrier_ramp_spawn", [_class, mission_ramp_dialog_rampId]] call CBA_fnc_serverEvent;
}];

_hideButtonCtrl ctrlAddEventHandler ["ButtonClick", {
  ["mission_carrier_ramp_hide", [mission_ramp_dialog_rampId]] call CBA_fnc_serverEvent;
}];

{
  _x ctrlEnable false;
  _x ctrlSetFade 0.6;
  _x ctrlCommit 0;
} forEach [_hideButtonCtrl, _spawnButtonCtrl, _comboCtrl];

private _statusColors = [
  "#de0909", //error
  "#de9e09", //busy
  "#159638" //ready
];

while {mission_ramp_dialog} do {
  private _isBusy = _rampPanel getVariable ["isBusy", false];
  private _status = [2, "Wolna"];
  private _canHide = false;
  private _canSpawn = false;

  if !(_isBusy) then {
    private _vehicles = _rampArea call mission_fnc_getRampVehicles;

    if !(_vehicles isEqualTo []) then {
      if !((count _vehicles) isEqualTo 1) exitWith {
        _status = [0, localize "STR_Mission_CarrierRamp_ToManyVehicles"];
      };

      private _vehicle = _vehicles # 0;

      if !((toLower (typeOf _vehicle)) in mission_carrier_supportedVehicles) exitWith {
        _status = [0, localize "STR_Mission_CarrierRamp_WrongVehicle"];
      };

      if (!((crew _vehicle) isEqualTo []) && !(_vehicle isKindOf "B_UAV_05_F")) exitWith {
        _status = [0, localize "STR_Mission_CarrierRamp_CrewInVehicle"];
      };

      private _displayName = _vehicle getVariable ["displayName", ""];
      if (_displayName isEqualTo "") then {
        _displayName = getText (configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "displayName");
        _vehicle setVariable ["displayName", _displayName, true];
      };
      _status = [2, format ["%1 gotowy do zjazdu", _displayName]];
      _canHide = true;
    } else {
      _canSpawn = true;
    };
  } else {
    _status = [1, "W ruchu"];
  };

  _statusCtrl ctrlSetStructuredText parseText format [
    "<t size='1.1'>Status: <t color='%1' font='PuristaMedium'>%2</t>",
    _statusColors select (_status # 0),
    _status # 1
  ];

  {
    _x params ["_control", "_value"];
    if (_value) then {
      if !(ctrlEnabled _control) then {
        _control ctrlEnable true;
        _control ctrlSetFade 0;
        _control ctrlCommit 0;
      };
    } else {
      if (ctrlEnabled _control) then {
        _control ctrlEnable false;
        _control ctrlSetFade 0.6;
        _control ctrlCommit 0;
      };
    };
  } forEach [
    [_hideButtonCtrl, _canHide],
    [_spawnButtonCtrl, _canSpawn],
    [_comboCtrl, _canSpawn]
  ];

  sleep 0.5;
};

#include "script_component.hpp"
params ["_box", "_player"];
private _vehicles = nearestObjects [_box, ["AllVehicles"], 20];
_vehicles = _vehicles select {
  (_x isKindOf "UK3CB_CW_US_B_LATE_M113_M2")
  || {(_x isKindOf "UK3CB_CW_US_B_LATE_LAV25")}
};
private _vehicleActions = [];
{
  private _vehicle = _x;
  private _icon = getText(configOf _vehicle >> "Icon");
  if !((_icon select [0, 1]) == "\") then {
      _icon = "";
  };
  private _action = [
    _vehicle,
    getText(configOf _vehicle >> "displayName"),
    _icon,
    {
      params ["_target", "_player", "_vehicle"];
      [
        5,
        [_target, _player, _vehicle],
        {
          param [0] params ["_target", "_player", "_vehicle"];
          hint str _this;
          [QGVAR(addMagazine), [_vehicle]] call CBA_fnc_globalEvent;
          private _supply = _target getVariable [QGVAR(currentSupply), 2];
          _supply = _supply -1;
          _target setVariable [QGVAR(currentSupply), _supply, true];
          hint format ["Pozostało %1 przezbrojeń pojazdów", _supply];
        },
        {},
        "Ładowanie"
      ] call ace_common_fnc_progressBar;
    },
    {true},
    {},
    _vehicle
  ] call ace_interact_menu_fnc_createAction;
  _vehicleActions pushBack [_action, [], _box];
} forEach _vehicles;
_vehicleActions

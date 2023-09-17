/*
  Author: SzwedzikPL
  Adds fold/unfold actions on vehicles, attach vehicle on quads, etc.
*/

private _unfoldAction = [
  "mission_vehicleUnfold",
  localize "STR_Mission_Action_VehicleUnfold",
  "",
  {
    if ((toLower (typeOf _target)) isEqualTo "rhsusf_ch53e_usmc") then {
      _target animateDoor ["mainrotor_folded", 0];
    } else {
      _target animate ["mainrotor_folded", 0];
    };
  },
  {
    (isNull (objectParent _player)) && {(_target animationPhase "mainrotor_folded") isEqualTo 1}
  },
  {},
  [],
  [0,0,0],
  4
] call ace_interact_menu_fnc_createAction;

private _foldAction = [
  "mission_vehicleFold",
  localize "STR_Mission_Action_VehicleFold",
  "",
  {
    if ((toLower (typeOf _target)) isEqualTo "rhsusf_ch53e_usmc") then {
      _target animateDoor ["mainrotor_folded", 1];
    } else {
      _target animate ["mainrotor_folded", 1];
    };
  },
  {
    (isNull (objectParent _player)) && {(_target animationPhase "mainrotor_folded") isEqualTo 0}
  },
  {},
  [],
  [0,0,0],
  4
] call ace_interact_menu_fnc_createAction;

["rhs_ah1z", 0, ["ACE_MainActions"], _unfoldAction] call ace_interact_menu_fnc_addActionToClass;
["rhs_ah1z", 0, ["ACE_MainActions"], _foldAction] call ace_interact_menu_fnc_addActionToClass;

["rhs_uh1y_ffar", 0, ["ACE_MainActions"], _unfoldAction] call ace_interact_menu_fnc_addActionToClass;
["rhs_uh1y_ffar", 0, ["ACE_MainActions"], _foldAction] call ace_interact_menu_fnc_addActionToClass;

["rhsusf_ch53e_usmc", 0, ["ACE_MainActions"], _unfoldAction] call ace_interact_menu_fnc_addActionToClass;
["rhsusf_ch53e_usmc", 0, ["ACE_MainActions"], _foldAction] call ace_interact_menu_fnc_addActionToClass;

private _attachVehicleAction = [
  "mission_attachVehicle",
  "Holuj pojazd",
  "a3\ui_f\data\igui\cfg\simpletasks\types\use_ca.paa",
  {[_target, _player] call mission_fnc_carrierAttachVehicle},
  {[_target, _player] call mission_fnc_carrierCanAttachVehicle},
  {},
  [],
  [0,0,0],
  3
] call ace_interact_menu_fnc_createAction;

private _detachVehicleAction = [
  "mission_detachVehicle",
  "Odczep pojazd",
  "a3\ui_f\data\igui\cfg\simpletasks\types\use_ca.paa",
  {[_target] call mission_fnc_carrierDetachVehicle},
  {!(isNull (_target getVariable ["mission_quad_attachedVehicle", objNull]))},
  {},
  [],
  [0,0,0],
  3
] call ace_interact_menu_fnc_createAction;

{
  [_x, 1, ["ACE_SelfActions"], _attachVehicleAction] call ace_interact_menu_fnc_addActionToObject;
  [_x, 1, ["ACE_SelfActions"], _detachVehicleAction] call ace_interact_menu_fnc_addActionToObject;
} forEach [carrier_quad_1, carrier_quad_2, carrier_quad_3];

private _shipGetOutHandler = {
  params ["_vehicle", "_role", "_unit"];
  if !(_unit isEqualTo player) exitWith {};
  private _pos = _vehicle modelToWorldVisual [0,-100, -15];
  private _boat = createVehicle ["B_Boat_Transport_01_F", _pos, [], 0, "NONE"];
  _boat setDir ((getDir _vehicle) + 180);
  _unit moveInAny _boat;
};

private _getOnTitanAction = [
  "mission_getOnTitanAction",
  localize "STR_Mission_Action_GetOnUSSTitan",
  "a3\ui_f\data\igui\cfg\simpletasks\types\getin_ca.paa",
  {_player moveInAny uss_titan},
  {alive uss_titan},
  {},
  [],
  [0,0,0],
  25
] call ace_interact_menu_fnc_createAction;
[uss_titan_helper, 0, [], _getOnTitanAction] call ace_interact_menu_fnc_addActionToObject;

private _getOnNewtonAction = [
  "mission_getOnTitanAction",
  localize "STR_Mission_Action_GetOnUSSNewton",
  "a3\ui_f\data\igui\cfg\simpletasks\types\getin_ca.paa",
  {_player moveInAny uss_newton},
  {alive uss_newton},
  {},
  [],
  [0,0,0],
  25
] call ace_interact_menu_fnc_createAction;
[uss_newton_helper, 0, [], _getOnNewtonAction] call ace_interact_menu_fnc_addActionToObject;

{
  private _ship = missionNamespace getVariable [_x, objNull];
  if !(isNull _ship) then {
    _ship addEventHandler ["GetOut", _shipGetOutHandler];
  };
} forEach ["uss_titan", "uss_newton"];
